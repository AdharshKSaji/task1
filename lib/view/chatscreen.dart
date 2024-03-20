import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
    body: Column(
      children: [
        Material(elevation: 5,child: Container(decoration: BoxDecoration(
          border:Border.all(style: BorderStyle.solid,color: ColorConstants.normalgrey)
        ),
          child: Column(
            children: [Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9hL57yL6ALTqwSTdj5ITglRZ_UwabHf7TEF7zIMM8yWju1cGqJePuGoYbZ99GFDX8z_Q&usqp=CAU",fit: BoxFit.cover,)
              ],
            ),SizedBox(height: 10,),
           Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Column(children: [Padding(
                 padding: const EdgeInsets.all(20),
                 child: Text("Red Label Tea"),
               )
                         ,Row(
                           children: [
                             Container(height: 10,width: 10,child: Icon(Icons.star,size: 10,),),Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text("96 rating"),
                             )
                           ],
                         )
                         ,
                         Row(
                           children: [
                             Text("\$12 "),Padding(
                               padding: const EdgeInsets.all(10),
                               child: Text("5% off",style: TextStyle(color: ColorConstants.primarygreen),),
                             )
                           ],
                         )]
                         ,),
             ],
           ),
            ],
          ),
        ),
        ), SizedBox(height: 10,),
           Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
              Text("Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
               
      ]),SizedBox(height: 10,),
      Material(elevation: 5,child: Container(decoration: BoxDecoration(
        border:Border.all(style: BorderStyle.solid,color: ColorConstants.normalgrey) ),
        child:
           Column(
            children: [
              SizedBox(height: 35,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("Brand",style: TextStyle(color: ColorConstants.normalgrey),),Text("Red Label")],
                ),
              ), SizedBox(height: 35,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("Type",style: TextStyle(color: ColorConstants.normalgrey)),Text("Tea")],
                ),
              ), SizedBox(height: 35,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("Quantity",style: TextStyle(color: ColorConstants.normalgrey)),Text("7 kg")],
                ),
              ), SizedBox(height: 35,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("shelf Life",style: TextStyle(color: ColorConstants.normalgrey)),Text("12Months")],
                ),
              ), SizedBox(height: 35,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("Organic",style: TextStyle(color: ColorConstants.normalgrey)),Text("No")],
                ),
              ),SizedBox(height: 35,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("Flavour",style: TextStyle(color: ColorConstants.normalgrey)),Text("Plain")],
                ),
              ),SizedBox(height: 35,
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("more details",style: TextStyle(color: ColorConstants.primarygreen))],
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 40,)
      ,Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.favorite,color: ColorConstants.primarygreen,)
          ,OutlinedButton(style: OutlinedButton.styleFrom(backgroundColor: ColorConstants.primarygreen),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context) => CartPage(),));
          }, 
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("ADD TO CART"),
          ))
        ],
      )]
      )       
      ,
    
    );
  }
}