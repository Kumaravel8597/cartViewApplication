import 'package:cart_view_apps/components/custom_bottom_tab_bar.dart';
import 'package:cart_view_apps/constants.dart';
import 'package:cart_view_apps/screens/home/components/check_out.dart';
import 'package:cart_view_apps/size_config.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  String netWorkImage = "https://unsplash.com/photos/s9CC2SKySJM/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8Mjh8fG5ldHdvcmt8ZW58MHx8fHwxNjQyNTg1MTY1&force=true&w=640";


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: buildAppBar(context),
        body: Body(),
        bottomNavigationBar: CheckoutCard(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
        toolbarHeight: SizeConfig.screenHeight * 0.09,
      flexibleSpace: SafeArea(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(netWorkImage),
              maxRadius: 25,
            ),
             const SizedBox(height: 5),
             Expanded(
              child:  Text(userName ?? "Kumar",
                style: TextStyle(fontSize: getProportionateScreenWidth(15))
              ),
            ),
          ],
        ),
      ),

      bottom: PreferredSize(
        preferredSize: Size.fromHeight(SizeConfig.screenHeight * 0.10),
        child: const CustomTabBar(),
      ),

    );
  }
}
