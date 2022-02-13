import 'package:cart_view_apps/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          trailing: const SizedBox(),
          title: Row(
            children: [
              SizedBox(
                width: 88,
                child: AspectRatio(
                  aspectRatio: 0.88,
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(product.images[0]),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/3,
                    child: Text(product.title,
                      style: const TextStyle(color: Colors.black, fontSize: 16,overflow: TextOverflow.ellipsis),
                      maxLines: 3,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width:  MediaQuery.of(context).size.width/3,
                    child: Text(
                      "Model : ${product.model}",
                      style: const TextStyle(color: Colors.blue, fontSize: 15,overflow: TextOverflow.ellipsis),
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "\$${product.price}",
                    style: const TextStyle(fontWeight: FontWeight.w600, color: kPrimaryColor),
                  ),
                ],
              )
            ],
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Description : ",
                        style: TextStyle(color: Colors.black, fontSize: 16)),
                      SizedBox(
                        width: getProportionateScreenWidth(300),
                        child: Text(product.description,
                          style: const TextStyle(fontSize: 14,overflow: TextOverflow.ellipsis),
                          maxLines: 3,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Data : ${product.date}",
                              style: const TextStyle(color: Colors.black, fontSize: 16)),
                          Text("Location : ${product.location} ",
                              style: const TextStyle(color: Colors.black, fontSize: 16)),
                        ],
                      ),
                    ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
