import 'package:flutter/material.dart';
import '../../models/product.dart';
import 'details_screen.dart';
import 'product_card.dart';
import 'section_title.dart';

class NewArrivalProducts extends StatelessWidget {
  const NewArrivalProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: SectionTitle(
            text: "New Arrival",
            onPress: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demoProduct.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ProductCard(
                  title: demoProduct[index].title,
                  image: demoProduct[index].image,
                  price: demoProduct[index].price,
                  bgColor: demoProduct[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: demoProduct[index],),
                        ),
                    );
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}