import 'package:flutter/material.dart';
import 'package:shop_app/core/design/app_image.dart';
import 'package:shop_app/core/design/section_title.dart';
import '../core/design/category_card.dart';
import '../core/design/custom_text_form_failed.dart';
import '../core/design/new_arrival_product.dart';
import '../core/design/popular_products.dart';
import '../models/category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppImage(
          "assets/icons/menu.svg",
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppImage(
              "assets/icons/Location.svg",
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "15/2 New Texas",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        actions: const [
          AppImage(
            "assets/icons/Notification.svg",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
              ),
              const Text(
                  "best Outfits for you",
                style: TextStyle(fontSize: 18),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Form(
                  child: CustomTextFormFailed(
                    labelText: "Search items...",
                    icon: "assets/icons/Search (1).svg",
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                  demoCategories.length,
                      (index) => Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: CategoryCard(
                      model: demoCategories[index],
                      onTap: () {},
                    ),
                  ),
                ),
                ),
              ),
              const SizedBox(height: 16,),
              const NewArrivalProducts(),
              const PopularProducts(),
            ],
          ),
        ),
      ),
    );
  }
}

