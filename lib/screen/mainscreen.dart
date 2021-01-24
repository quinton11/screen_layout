import 'package:flutter/material.dart';
import 'package:page_interface/Provider/appprovider.dart';
import 'package:page_interface/custom_icons/kebab_menu_icons.dart';
import 'package:page_interface/widget/appbody.dart';
import 'package:provider/provider.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final appData = Provider.of<AppProvider>(context).applist;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 37, 71, 0.7),
      appBar: CustomAppBar(
        height: 85,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: width,
            height: height,
            padding: EdgeInsets.all(14),
            color: Color.fromRGBO(15, 37, 71, 0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                maxCrossAxisExtent: 70,
              ),
              itemBuilder: (ctx, index) => AppBody(
                image: appData[index].image,
                title: appData[index].title,
              ),
              itemCount: appData.length,
            ),
          ),
          Positioned(
            left: width/2.3,
            bottom: 40,
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(15, 37, 71, 0),
                    border:
                        Border.all(color: Color.fromRGBO(95, 101, 110, 0.7))),
              ),
              SizedBox(width: 10,),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(15, 37, 71, 0),
                    border:
                        Border.all(color: Color.fromRGBO(95, 101, 110, 0.7))),
              ),
              SizedBox(width: 10,),

              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    border:
                        Border.all(color: Color.fromRGBO(95, 101, 110, 0.7))),
              ),
              SizedBox(width: 10,),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color.fromRGBO(95, 101, 110, 0.7)),
                  color: Color.fromRGBO(15, 37, 71, 0),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({
    Key key,
    this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 10),
      color: Color.fromRGBO(0, 0, 0, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromRGBO(95, 101, 110, 0.7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Finder Search',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                KebabMenu.kebab_vertical,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
