import 'package:cart_view_apps/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';
import 'cart_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void reorderData(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = mobileProducts.removeAt(oldindex);
      mobileProducts.insert(newindex, items);
    });
  }
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20)),
        child: TabBarView(
          children: [
            ReorderableListView.builder(
              itemCount: mobileProducts.length,
              itemBuilder: (context, index) =>
                  Padding(
                    key: Key(mobileProducts[index].id.toString()),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Dismissible(
                      key: Key(mobileProducts[index].id.toString()),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        setState(() {
                          mobileProducts.removeAt(index);
                        });
                      },
                      background: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFE6E6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            const Spacer(),
                            SvgPicture.asset("assets/icons/Trash.svg"),
                          ],
                        ),
                      ),
                      child: CartCard(product: mobileProducts[index]),
                    ),
                  ),
              onReorder: reorderData,
            ),
            ReorderableListView.builder(
              itemCount: acProducts.length,
              itemBuilder: (context, index) =>
                  Padding(
                    key: Key(acProducts[index].id.toString()),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Dismissible(
                      key: Key(acProducts[index].id.toString()),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        setState(() {
                          acProducts.removeAt(index);
                        });
                      },
                      background: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE6E6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            const Spacer(),
                            SvgPicture.asset("assets/icons/Trash.svg"),
                          ],
                        ),
                      ),
                      child: CartCard(product: acProducts[index]),
                    ),
                  ),
              onReorder: reorderDataAc,
            ),
            ReorderableListView.builder(
              itemCount: laptopProducts.length,
              itemBuilder: (context, index) =>
                  Padding(
                    key: Key(laptopProducts[index].id.toString()),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Dismissible(
                      key: Key(laptopProducts[index].id.toString()),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        setState(() {
                          laptopProducts.removeAt(index);
                        });
                      },
                      background: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE6E6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Spacer(),
                            SvgPicture.asset("assets/icons/Trash.svg"),
                          ],
                        ),
                      ),
                      child: CartCard(product: laptopProducts[index]),
                    ),
                  ),
              onReorder: reorderDataLap,
            ),
            ReorderableListView.builder(
              itemCount: tvProducts.length,
              itemBuilder: (context, index) =>
                  Padding(
                    key: Key(tvProducts[index].id.toString()),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Dismissible(
                      key: Key(tvProducts[index].id.toString()),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        setState(() {
                          tvProducts.removeAt(index);
                        });
                      },
                      background: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE6E6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Spacer(),
                            SvgPicture.asset("assets/icons/Trash.svg"),
                          ],
                        ),
                      ),
                      child: CartCard(product: tvProducts[index]),
                    ),
                  ),
              onReorder: reorderDataTv,
            ),
            ReorderableListView.builder(
              itemCount: tvProducts.length,
              itemBuilder: (context, index) =>
                  Padding(
                    key: Key(tvProducts[index].id.toString()),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Dismissible(
                      key: Key(tvProducts[index].id.toString()),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        setState(() {
                          tvProducts.removeAt(index);
                        });
                      },
                      background: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE6E6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Spacer(),
                            SvgPicture.asset("assets/icons/Trash.svg"),
                          ],
                        ),
                      ),
                      child: CartCard(product: desktopProducts[index]),
                    ),
                  ),
              onReorder: reorderDataDes,
            ),
          ],
        ),
      );
    }
  void reorderDataAc(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = acProducts.removeAt(oldindex);
      acProducts.insert(newindex, items);
    });
  }
  void reorderDataLap(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = laptopProducts.removeAt(oldindex);
      laptopProducts.insert(newindex, items);
    });
  }
  void reorderDataTv(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = tvProducts.removeAt(oldindex);
      tvProducts.insert(newindex, items);
    });
  }
  void reorderDataDes(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = desktopProducts.removeAt(oldindex);
      desktopProducts.insert(newindex, items);
    });
  }
}
