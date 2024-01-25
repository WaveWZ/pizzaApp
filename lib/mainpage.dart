import 'package:flutter/material.dart';
import 'package:flutter_boot/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

// left - start - leading
// right - end - trailing , bunlar tasarım yaparken işe yarayacak.
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(// Aslında flutter'da elementlerin konumunu ayarlamak zordur, bu sebeple Scaffold'u yani "iskele"yi kullanıyoruz.
      appBar: AppBar(
        title: Text("Pizza Store",style: TextStyle(color: textColor1, fontFamily: "Pacifico",fontSize: 22)),
        backgroundColor: mainColor,
        centerTitle: true, // Başlığı ortalar
      ), // Üstteki barın ismi
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(width: 100,height:100,color:Colors.red),
            Container(width: 50, height: 50,color:Colors.blue),
            Container(width: 70, height: 70,color:Colors.green),
          ],
        ),
      ),
    );
  }
}
