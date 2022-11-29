import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/api/model/product_model.dart';

class CustomCard extends StatelessWidget {
   CustomCard({required this.product, Key? key}) : super(key: key);
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
//الاستاك بيحط الويدجتس فوق بعض يعني اول ويدجت تحت و بعدين و الويدجت ال وراها تبقي فوقيها
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 40,
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 0,
              offset: Offset(10, 10),
            )
          ]),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HandBag lv',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r'$225',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            left: 70,
// top: -85,
            bottom: 70,
            child: Image.network(
              product.image,
              height: 90,
            )),
      ],
    );
  }
}
