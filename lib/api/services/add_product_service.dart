import 'package:store_app/api/helper/api.dart';
import 'package:store_app/api/model/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String image,
    required String description,
    required String category,
  }) async {
  Map<String,dynamic> data= await Api().post(url: 'https://fakestoreapi.com/products',
      body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });
  return ProductModel.fromjson(data);
  }
}
