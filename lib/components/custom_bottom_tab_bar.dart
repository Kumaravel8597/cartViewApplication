import 'package:cart_view_apps/constants.dart';
import 'package:flutter/material.dart';


class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child:  const SafeArea(
          top: false,
          child: TabBar(
            indicatorColor: kPrimaryColor,
            labelColor: kPrimaryColor,
            unselectedLabelColor: kTextColor,
            tabs: [
               Tab(child: Text("Mobile",style: TextStyle(fontWeight: FontWeight.w600,overflow: TextOverflow.ellipsis)),),
               Tab(child: Text("AC",style: TextStyle(fontWeight: FontWeight.w600,overflow: TextOverflow.ellipsis)),),
               Tab(child: Text("Laptop",style: TextStyle(fontWeight: FontWeight.w600,overflow: TextOverflow.ellipsis)),),
               Tab(child: Text("TV",style: TextStyle(fontWeight: FontWeight.w600,overflow: TextOverflow.ellipsis)),),
               Tab(child: Text("Desktop",style: TextStyle(fontWeight: FontWeight.w600,overflow: TextOverflow.ellipsis)),),

            ],
          )),
    );
  }
}
