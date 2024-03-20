import 'package:flutter/material.dart';
import 'package:task1/core/constants/colorconstants.dart';
import 'package:task1/view/chatscreen.dart';
import 'package:task1/view/dummydb.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:const Color.fromARGB(255, 201, 199, 199),
      appBar: AppBar(backgroundColor: ColorConstants.primarygreen,
      leading: Icon(Icons.sort,color: ColorConstants.primarWhite,),
      title: TextButton(onPressed: (){}, 
      child: TextField(
        decoration: InputDecoration(
          prefix: Icon(Icons.search,),hintText: "Search",hintStyle: TextStyle(
            color: Colors.grey,
          ),border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          )
        ),
      )
      )
      ,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: ListView(
            shrinkWrap: true,
            children: [Stack(
              children: [
                Container(height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage
                  (image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUkn2JADCjPh1VvuVD9SqeDKf1mxmNfN0kg9DehEAWByvYGXNkXiAXIACnOXveBcE3qfg&usqp=CAU"),fit: BoxFit.cover)
               , ),
               )
              ],
            )
            ,SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Category",style: 
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 20
                    ,color: ColorConstants.normalBlack),),
                    Text("View all",style: TextStyle(
                      color: ColorConstants.primarygreen
                    ),)
                  ],
                )
              ],
            ),SizedBox(height: 40,),
            Column(children: [
              Container(height: 120,decoration: BoxDecoration(
        border:Border.all(style: BorderStyle.solid,color: ColorConstants.normalgrey) ),
              child: ListView.builder(shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: DummyDb.category.length,
              itemBuilder:(BuildContext context,int index) {
                return Container(
                  width: 120,
                  child: Card(child: Image.network(DummyDb.category[index]["imgurl"],fit: BoxFit.fill,)),
                );
              }),)
            ],),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Best Seller",style: 
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 20
                    ,color: ColorConstants.normalBlack),),
                    Text("View all",style: TextStyle(
                      color: ColorConstants.primarygreen
                    ),)
                  ],
                )
              ],
            ),SizedBox(height: 40,),
            Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyChat(),));
                },
                  child: Container(height: 120,
                  child: ListView.builder(shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: DummyDb.products.length,
                  itemBuilder:(BuildContext context,int index) {
                    return Container(decoration: BoxDecoration(
                      border:Border.all(style: BorderStyle.solid,color: ColorConstants.normalgrey) ),
                      width: 180,
                      child: Card(child: Image.network(DummyDb.products[index]["imgurl"],fit: BoxFit.fill,),
                      ),
                    );
                  }
                  ),
                  
                  ),
                )
              ],),
            ),Column(
              children: [Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text("Red Label Tea Leaf 1kg",style: TextStyle(fontSize: 12),),Icon(Icons.shopping_cart,color: ColorConstants.primarygreen,),
                Text("Kaibavi Splits kashew",style: TextStyle(fontSize: 12)),Icon(Icons.shopping_cart,color: ColorConstants.primarygreen,)
                
          
                ],
              ),],
            ),Column(
              children: [Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text("\$12 5% off",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Text("\$5 50 %off",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                
                      
                ],
              ),],
            )
          
            ,SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Featured Deals",style: 
                    TextStyle(fontWeight: FontWeight.bold,fontSize: 20
                    ,color: ColorConstants.normalBlack),),
                    Text("View all",style: TextStyle(
                      color: ColorConstants.primarygreen
                    ),
                    )
                  ],
                )
              ],)
            
            ],
          ),
        ),
      ),
      
    )
    ;
  }
}