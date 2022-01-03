import 'package:flutter/material.dart';
import 'package:khadk_restaurant/data/foodProvider.dart';
import 'package:khadk_restaurant/foodCard.dart';
import 'package:khadk_restaurant/foodList.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: FoodProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: Container(
            //padding: EdgeInsets.only(bottom: 6.0),
            decoration: BoxDecoration(color: Colors.grey),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(12.0)),
                    onPressed: () {},
                    child: const Icon(
                      Icons.home,
                      size: 27,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(12.0)),
                    onPressed: () {},
                    child: const Icon(
                      Icons.restaurant_menu,
                      size: 27,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(12.0)),
                    onPressed: () {},
                    child: const Icon(
                      Icons.settings,
                      size: 27,
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(12.0)),
                    onPressed: () {},
                    child: const Icon(
                      Icons.person,
                      size: 27,
                    ),
                  ),
                ),
              ],
            ),
          ),
          drawer: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purple.shade400,
                Colors.purple.shade200,
                Colors.purple.shade100
              ],
            )),
            child: Drawer(
                backgroundColor: Colors.transparent,
                child: ListView(
                  children: [
                    DrawerHeader(
                        child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60.0,
                          backgroundImage: AssetImage('images/limon.jpg'),
                        ),
                        Text('Limon ray')
                      ],
                    ))
                  ],
                )),
          ),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 55.0,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.restaurant_menu),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Khadk Restaruant')
                    ],
                  ),
                ),
              ),
              FoodList()
            ],
          ),
        ),
      ),
    );
  }
}
