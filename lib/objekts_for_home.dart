import 'package:flutter/material.dart';
import 'package:urok06_12_2021/home_%20tabs/advertising.dart';
import 'package:urok06_12_2021/home_%20tabs/barter.dart';
import 'package:urok06_12_2021/home_%20tabs/begin_%20earn.dart';
import 'package:urok06_12_2021/home_%20tabs/mutual_p_r.dart';
//Задний фон
class HomeBackgraoundColors extends StatelessWidget {
  const HomeBackgraoundColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: const Color.fromRGBO(159, 138, 138, 1),
          height: MediaQuery.of(context).size.height * 0.5,
        ),
       const  Image(image: AssetImage('lib/images/Group 357main_shape.png'))
      ],
    );
  }
}
//Вкладка для "Рекламные Компании" "В новом обнавлении"
class VNovomObnavlenii extends StatelessWidget {
  const VNovomObnavlenii({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(217, 109, 255, 1),
                Color.fromRGBO(99, 34, 224, 1),
              ],
            ),
          ),
          child: const Image(
            image: AssetImage('lib/images/Frame 528.png'),
          ),
        ),
        InkWell(
          child: Container(
            alignment: Alignment.center,
            width: 270,
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1.2, 0),
                    color: Colors.grey,
                    blurRadius: 10,
                  )
                ]),
            child: const Text(
              'В новом обнавлении',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
//Вкладка для "Категории" "Бартер"
class BarterButtonCategory extends StatefulWidget {
  
  const BarterButtonCategory({
    Key? key,
  }) : super(key: key);

  @override
  State<BarterButtonCategory> createState() => _BarterButtonCategoryState();
}

class _BarterButtonCategoryState extends State<BarterButtonCategory> {
   void puushToBarter(){
    Navigator.push((context), MaterialPageRoute(builder: (context)=>const Barter()));
  }
  @override
  Widget build(BuildContext context) {
   
    return InkWell(
      onTap: puushToBarter,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.red),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage('lib/images/6 1.png'),
            ),
            Column(
              children: const [
                Text(
                  'Бартер',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '203 заявок',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//Вкладка для "Категории" "Взаимопияр"
class PiyarButtonCategory extends StatefulWidget {
  const PiyarButtonCategory({
    Key? key,
  }) : super(key: key);

  @override
  State<PiyarButtonCategory> createState() => _PiyarButtonCategoryState();
}

class _PiyarButtonCategoryState extends State<PiyarButtonCategory> {
  void pushToMutualPR(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MutualPR()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pushToMutualPR,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.red)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage('lib/images/5 1.png'),
            ),
            Column(
              children: const [
                Text(
                  'Взаимопияр',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '20 заявок',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
            // - lib/images/1 59.png
            // - lib/images/5 1.png
            // - lib/images/6 1.png
          ],
        ),
      ),
    );
  }
}
//Вкладка для "Категории" "Реклама"
class ReclamButtonOnCategory extends StatefulWidget {
  const ReclamButtonOnCategory({
    Key? key,
  }) : super(key: key);

  @override
  State<ReclamButtonOnCategory> createState() => _ReclamButtonOnCategoryState();
}

class _ReclamButtonOnCategoryState extends State<ReclamButtonOnCategory> {
  void pushToAdvertisting(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Advertising()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pushToAdvertisting,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.red)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage('lib/images/1 59.png'),
            ),
            Column(
              children: const [
                Text(
                  'Реклама',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '102 компаний',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
    
            // - lib/images/1 59.png
            // - lib/images/5 1.png
            // - lib/images/6 1.png
          ],
        ),
      ),
    );
  }
}
//Вкладка "Начни зарабатывать"
class InkwellButtonNacniZarabatyvat extends StatefulWidget {
  
  const InkwellButtonNacniZarabatyvat({
    Key? key,
  }) : super(key: key);

  @override
  State<InkwellButtonNacniZarabatyvat> createState() => _InkwellButtonNacniZarabatyvatState();
}

class _InkwellButtonNacniZarabatyvatState extends State<InkwellButtonNacniZarabatyvat> {
  void pushToBeginEarn(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder:(context)=> const BeginEarn()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pushToBeginEarn,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 17,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 17),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(255, 213, 65, 1)),
              child: const Icon(
                Icons.flash_on,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Начните зарабатывать!',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Приобретите тариф Behype-PRO\nи начните свою карьеру!',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class BackgroundForHomePage extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var sizeWidth = size.width;
//     var sizeHeight = size.height;
//     var paint = Paint();

//     Path mainBackground = Path();
//     mainBackground.addRect(Rect.fromLTRB(0, 0, sizeWidth, sizeHeight));

//     paint.color = Colors.black;
//     canvas.drawPath(mainBackground, paint);

//     //white
//     Path whiteWave = Path();
//     whiteWave.lineTo(sizeHeight, 0);

//     whiteWave.lineTo(sizeWidth, sizeHeight * 0.2);
//     whiteWave.quadraticBezierTo(
//         sizeWidth * 0.5, sizeHeight * 0.45, sizeWidth * 0.2, sizeWidth * 0.5);
//     paint.color = Colors.white;
//     canvas.drawPath(whiteWave, paint);

//     Path white = Path();
//     white.lineTo(0, -sizeHeight * 0.5);
//     white.lineTo(sizeWidth * 0.5, 0);
//     paint.color = Colors.white;
//     canvas.drawPath(white, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return oldDelegate != this;
//   }
// }
