import 'package:flutter/material.dart';
import 'package:shop/data/product_model.dart';
import 'package:shop/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    Key key,
    @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
              arguments: product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          /* leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: (() => {}),
          ), */
          title: Text(
            product.title,
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (() => {}),
          ),
        ),
      ),
    );
  }
}
