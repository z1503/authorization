import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
          backgroundColor: Colors.blue
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Логин',
                border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
              ),
            ),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Пароль',
              ),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdRoute()),
                );
              },
              child: const Text('Авторизироваться'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
              child: const Text('Нет аккаунта? Зарегистрироваться'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
          backgroundColor: Colors.blue
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Логин',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Пароль',
              ),
              obscureText: true,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Повторить пароль',
              ),
              obscureText: true,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FourthRoute()),
                );
              },

              child: const Text('Зарегистрироваться',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: const Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Вы авторизовались!')
            ]
        )
      ),
    );
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: const Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Вы зарегистрировались!')
              ]
          )
      ),
    );
  }
}
