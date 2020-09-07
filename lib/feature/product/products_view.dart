import 'package:flutter/material.dart';
import 'package:letzShop/core/model/product.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:letzShop/feature/product/product_view_model.dart';
import 'package:stacked/stacked.dart';

class ProductView extends StatelessWidget {
  ProductView({Key key}) : super(key: key);

  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      name: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      name: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      name: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      name: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
    Product(
      id: 'p1',
      name: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      name: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      name: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      name: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            drawer: Drawer(),
            appBar: AppBar(
              // backgroundColor: Colors.white,
              elevation: 0.0,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                itemCount: loadedProducts.length,
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: GestureDetector(
                    onTap: (){
                      // model.navProductDetail(model.data.product)
                    },
                                      child: GridTile(
                      child: Image.network(
                        loadedProducts[index].imageUrl,
                        fit: BoxFit.cover,
                      ),
                      footer: GridTileBar(
                          backgroundColor: Colors.black87,
                          leading: Icon(Icons.shopping_cart),
                          trailing: IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {},
                          ),
                          title: Text(
                            loadedProducts[index].name,
                            textAlign: TextAlign.center,
                          )),
                    ),
                  ),
                ),
                staggeredTileBuilder: (int index) =>
                    StaggeredTile.count(1, index.isEven ? 1.5 : 1.0),
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 12.0,
              ),
            ),
          );
        },
        viewModelBuilder: () => ProductViewModel());
  }
}
