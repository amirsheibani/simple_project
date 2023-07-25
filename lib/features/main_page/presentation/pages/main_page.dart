import 'package:flutter/material.dart';
import 'package:simple_project/features/myip/presentation/pages/myip_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyIpPage(),
    );
  }
}
