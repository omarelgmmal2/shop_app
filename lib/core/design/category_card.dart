import 'package:flutter/material.dart';
import '../../models/category.dart';
import 'app_image.dart';

class CategoryCard extends StatelessWidget {
  final Category model;
  final VoidCallback onTap;
  const CategoryCard({super.key,required this.model, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 75,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.grey.shade300,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(model.icon,),
            Text(model.title,style: Theme.of(context).textTheme.titleSmall,),
          ],
        ),
      ),
    );
  }
}
