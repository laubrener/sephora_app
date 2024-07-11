import 'package:flutter/material.dart';
import 'package:sephora_app/widgets/background.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SearchBar(
            hintText: 'Search Sephora',
            trailing: const [Icon(Icons.search_outlined)],
            constraints: const BoxConstraints(maxHeight: 40),
            backgroundColor: MaterialStatePropertyAll(Colors.grey[600]),
            textStyle:
                const MaterialStatePropertyAll(TextStyle(color: Colors.white)),
          ),
          backgroundColor: Colors.black,
          actions: const [Icon(Icons.shopping_bag_outlined)],
        ),
        drawer: const Menu(),
        body: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
            ),
            Expanded(
              child: PageView(
                children: [
                  Container(
                    color: Colors.amber,
                    height: double.infinity,
                    child: const Text('pagina 1'),
                  ),
                  Container(
                    color: Colors.greenAccent,
                    height: double.infinity,
                    child: const Text('pagina 2'),
                  ),
                  Container(
                    color: Colors.purpleAccent,
                    height: double.infinity,
                    child: const Text('pagina 3'),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Drawer(
            backgroundColor: Colors.black45,
            child: Column(
              children: [
                CajaSaludo(),
              ],
            )));
  }
}

class CajaSaludo extends StatelessWidget {
  const CajaSaludo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(5)),
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Hola, Belleza!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Btn(
              text: 'Iniciar Sesión',
              route: 'login',
            ),
            SizedBox(width: 10),
            Btn(
              text: 'Crear Cuenta',
              route: 'register',
            ),
          ],
        ),
      ]),
    );
  }
}

class Btn extends StatelessWidget {
  final String route;
  final String text;
  const Btn({
    super.key,
    required this.route,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    );
  }
}
