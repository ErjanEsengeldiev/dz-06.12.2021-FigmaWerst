import 'package:flutter/material.dart';
import 'package:urok06_12_2021/home.dart';

class RegistWidget extends StatefulWidget {
  const RegistWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RegistWidget> createState() => _RegistWidgetState();
}

class _RegistWidgetState extends State<RegistWidget> {
  //Контроллеры для TextFilds
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();

  //Цвет внутри TextFildов
  var whitePurple = const Color.fromRGBO(169, 140, 225, 1);
  //Функция посмотреть Password
  bool obscureTextForButton = true;
  void seePassword() {
    setState(() {
      obscureTextForButton == true
          ? obscureTextForButton = false
          : obscureTextForButton = true;
    });
  }

  //Список пользовотелей
  final List<_User> _users = [_User(login: 'admin', password: 'admin')];
  //Функция onTup для erorText
  void onTupForErorText() {
    erorTextForEmail = null;
    erorTextForPassword = null;
    setState(() {});
  }

  //Функция для проверки на наличие пользовотеля

  String? erorTextForEmail = null;
  String? erorTextForPassword = null;
  void _chekUser() {
    for (int i = 0; i < _users.length; i++) {
      if (_users[i].login == controllerEmail.text &&
          _users[i].password == controllerPassword.text) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
      } else if (controllerPassword.text.isEmpty &&
          controllerEmail.text.isEmpty) {
        erorTextForEmail = 'Заполните пустые поля';
        erorTextForPassword = '';
      } else {
        erorTextForEmail = 'Не парильный логи или пароль';
        erorTextForPassword = '';
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Текст "Вход"
            const Text(
              'Вход',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 36,
            ),
            //Email
            Container(
              color: const Color.fromRGBO(249, 248, 255, 1),
              child: TextField(
                onTap: onTupForErorText,
                controller: controllerEmail,
                decoration: InputDecoration(
                  errorText: erorTextForEmail,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: whitePurple)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: 'E-mail',
                  hintStyle: TextStyle(color: whitePurple),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //Password
            Container(
              color: const Color.fromRGBO(249, 248, 255, 1),
              child: TextField(
                onTap: onTupForErorText,
                controller: controllerPassword,
                obscureText: obscureTextForButton,
                decoration: InputDecoration(
                    errorText: erorTextForPassword,
                    suffixIcon: GestureDetector(
                      onTap: seePassword,
                      child: const Icon(
                        Icons.visibility_off,
                        color: Color.fromRGBO(208, 208, 208, 1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: whitePurple),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: whitePurple)),
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            //Кнопка "Войти"
            ElevatedButton(
                onPressed: _chekUser,
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(249, 6, 64, 1),
                    )),
                child: Container(
                  alignment: Alignment.center,
                  width: 132,
                  height: 50,
                  child: const Text(
                    'Вйоти',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

//Класс пользовотелей
class _User {
  String login;
  String password;

  _User({required this.login, required this.password});
}
