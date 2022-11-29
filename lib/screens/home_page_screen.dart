import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/api/model/product_model.dart';
import 'package:store_app/api/services/get_all_product_service.dart';
import '../widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'Home Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //FontAwesomeIcons.
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'New Trend',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 65),
            child: FutureBuilder<List<ProductModel>>(
                future: AllProductService().getAllProduct(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ProductModel> products = snapshot.data!;
                    return GridView.builder(
                      itemCount: products.length,
                        clipBehavior: Clip.none,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            //colums number
                            crossAxisCount: 2,
                            //w / h
                            childAspectRatio: 1.5,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 90),
                        itemBuilder: (context, index) {
                          return CustomCard(product: products[index],);
                        });
                  }
                  else {
                    return Center(child: CircularProgressIndicator());
                  }
                })));
  }
}
