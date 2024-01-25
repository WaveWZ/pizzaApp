import 'package:flutter/material.dart';
import 'package:flutter_boot/colors.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


class PizzaMain extends StatefulWidget {
  const PizzaMain({super.key});
  @override
  State<PizzaMain> createState() => _MainPageState();
}

// left - start - leading
// right - end - trailing , bunlar tasarım yaparken işe yarayacak.
class _MainPageState extends State<PizzaMain> {
  @override
  Widget build(BuildContext context) {
    // Bu kısmı eğer bu uygulamayı kullanacak her telefona uyumlu yapmak istersek yazarız.
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    // var d = AppLocalizations.of(context); Aslında çalışmalıydı, eğer çalışsaydı

    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza Store",style: TextStyle(color: textColor1, fontFamily: "Pacifico",fontSize: 22)),
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:15.0), // Text'e alt enter ile tıklayarak add padding'i seçtik.
              child: Text("Beef Cheese",style: TextStyle(fontSize: 34,color: mainColor, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Image.asset("myimages/pizza_resim.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top:13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChipA(myTxt: "Cheese"),
                  ChipA(myTxt: "Sausage"),
                  ChipA(myTxt: "Olive"),
                  ChipA(myTxt: "Pepper"),
                  /* Aslında alttaki gibi tek tek yazmıştık ama görüntü kirliliği oluşmaması için widget olarak kullandık.
                  TextButton(onPressed: (){},
                        child: Text(myTxt,style: TextStyle(color: textColor1),),
                        style: TextButton.styleFrom(backgroundColor: mainColor),
                      ),
                  TextButton(onPressed: (){},
                        child: Text(myTxt,style: TextStyle(color: textColor1),),
                        tyle: TextButton.styleFrom(backgroundColor: mainColor),
                      );
                   */

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text("20 min",style: TextStyle(fontSize: 22,color: textColor2, fontWeight: FontWeight.bold)),
                  Text("Delivery",style: TextStyle(fontSize: 22,color: mainColor, fontWeight: FontWeight.bold)),
                  Text("Meat lover, get ready to meet our pizza!",
                      style: TextStyle(fontSize: 22,color: textColor2, fontWeight: FontWeight.bold)
                      ,textAlign: TextAlign.center),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:[
                  Text("\$ 5.98",style: TextStyle(fontSize: 44,color:mainColor,fontWeight: FontWeight.bold),),
                  const Spacer(), // İki elementin arasına koyarsan, onları itebildiği kadar kenara itip ortalarını bomboş bırakır.
                  TextButton(onPressed: (){}, child: Text("ADD TO CART",style: TextStyle(color:textColor1,fontSize: 18),),
                    style: TextButton.styleFrom(backgroundColor: mainColor),)
              ]
              ),
            ),
          ],
      ),
    );
  }
}

// Şimdi bir widget eklemeyi öğrenelim, bu bir fonksiyon gibidir ama widget halindedir.


class ChipA extends StatelessWidget{
  String myTxt;
  ChipA({required this.myTxt});


  @override
  Widget build(BuildContext context){
    return TextButton(onPressed: (){},
      child: Text(myTxt,style: TextStyle(color: textColor1),),
      style: TextButton.styleFrom(backgroundColor: mainColor),
    );
  }


}

