import 'package:flutter/material.dart';
import 'package:urok06_12_2021/home_%20tabs/begin_%20earn.dart';
import 'package:urok06_12_2021/objekts_for_home.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Задний коричневый цвет
          const HomeBackgraoundColors(),
          //Основной контент
          ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    // Текст "Главная"
                    child: Text(
                      'Главная',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  //Начни зарабатывать
                  const InkwellButtonNacniZarabatyvat(),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 44),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Color.fromRGBO(249, 248, 255, 1),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Категории',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 17),
                          height: 190,
                          child: Row(
                            children: const [
                              //Реклама
                              Expanded(child: ReclamButtonOnCategory()),
                              SizedBox(
                                width: 10,
                              ),
                              //Взаимопияр
                              Expanded(child: PiyarButtonCategory()),
                              SizedBox(
                                width: 10,
                              ),
                              //Бартер
                              Expanded(child: BarterButtonCategory()),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        //Рекламные компании и кнопка 'Все'
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ркламные компании',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromRGBO(249, 6, 64, 1),
                              ),
                              padding: EdgeInsets.all(4),
                              child: Text(
                                'Все',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //В новом обнавлении
                            const Expanded(child: VNovomObnavlenii()),
                            //Это для того что бы дать половину пространства
                            Expanded(
                              child: Column(
                                children: [],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

