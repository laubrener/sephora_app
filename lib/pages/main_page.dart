import 'package:flutter/material.dart';
import 'package:sephora_app/pages/home_page.dart';
import 'package:sephora_app/pages/shop_page.dart';
import 'package:sephora_app/widgets/drawers_list.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'SEPHORA',
      ),
      drawer: const Menu(),
      drawerScrimColor: Colors.white.withOpacity(0.5),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.greenAccent,
              child: const Text(
                'Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const ShopPage())),
            ),
            MaterialButton(
              color: Colors.lightBlue,
              child: const Text(
                'Shop',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const HomePage(
                            name: 'HAIR DRYERS',
                            catId: 'cat1080037',
                          ))),
            )
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: const [
        Icon(Icons.search_outlined),
        SizedBox(width: 10),
        Icon(Icons.shopping_bag_outlined),
        SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Drawer(
            backgroundColor: Colors.black,
            child: Column(
              children: [
                CajaSaludo(),
                Expanded(child: DrawersList()),
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
              text: 'INICIAR SESIÓN',
              route: 'login',
            ),
            SizedBox(width: 10),
            Btn(
              text: 'CREAR CUENTA',
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
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      color: Colors.white,
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    );
  }
}
