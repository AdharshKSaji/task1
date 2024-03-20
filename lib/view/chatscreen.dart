import 'package:flutter/material.dart';
import 'package:task1/core/constants/colorconstants.dart';
import 'package:task1/view/checkout.dart';

class MyChat extends StatefulWidget {
  const MyChat({super.key});

  @override
  State<MyChat> createState() => _MyChatState();
}

class _MyChatState extends State<MyChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,title: Text("Product Details",
    style: TextStyle(color: ColorConstants.normalBlack,fontWeight: FontWeight.bold),),),
    body:   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAOo9Ja7izghmmXspAVD1FPLQwjEukbyYw_VDoh1B8yLqs42xEofvYihDPsYGZ6shaRJU&usqp=CAU"),
                              fit: BoxFit.fill)),
                    ),Positioned(top: 240,left: 25,
                    child: Column(children: [Text("Red Label Tea",style: TextStyle(color: ColorConstants.normalBlack),),
                    Text("96 rating"),
                    Text("\$12 5 5 off")
                    ],
                    )
                    ,),SizedBox(height: 30,),
                    Column(
                      children: [Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Details",style: TextStyle(
                          color: ColorConstants.normalBlack,fontSize: 20,fontWeight: FontWeight.bold
                        ),),
                      )],
                    ),
                    ListView(
                      children: [DecoratedBox(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))))
                        ,Column(
                          children: [
                            Column(
                              children: [Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [Text("brand",style: TextStyle(color: Colors.grey)),Text("Red Label")],
                              )],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text("Type",style: TextStyle(color: Colors.grey),),Text("Black Tea")],
                      )],
                    ),Column(
                      children: [Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text("Quantity",style: TextStyle(color: Colors.grey)),Text("7 KG")],
                      )],
                    ),Column(
                      children: [Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text("Shelf Life",style: TextStyle(color: Colors.grey)),Text("12 months")],
                      )],
                    ),Column(
                      children: [Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text("Organic",style: TextStyle(color: Colors.grey)),Text("No")],
                      )],
                    ),Column(
                      children: [Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text("Flavour",style: TextStyle(color: Colors.grey)),Text("Plain")],
                      )],
                    ),
                    SizedBox(height: 200,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite,color: ColorConstants.primarygreen,),
                        OutlinedButton(style: OutlinedButton.styleFrom(backgroundColor: ColorConstants.primarygreen)
                          ,onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
                        }, child: Text("        ADD TO CART        "))
                      ],
                    )
                    ]
      
      
      ),
    )
    );
  }
}