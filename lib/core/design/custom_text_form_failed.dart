import 'package:flutter/material.dart';
import 'app_image.dart';

class CustomTextFormFailed extends StatefulWidget {
  final TextEditingController? controller;
  final String? labelText,icon;
  final double paddingBottom, paddingTop;

  const CustomTextFormFailed({
    super.key,
    this.controller,
    required this.labelText,
    this.icon,
    this.paddingBottom = 16,
    this.paddingTop = 0,
  });

  @override
  State<CustomTextFormFailed> createState() => _CustomTextFormFailedState();
}

class _CustomTextFormFailedState extends State<CustomTextFormFailed> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        hintText: widget.labelText,
        hintStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xffB6B7B7),
        ),
        prefixIcon: AppImage(
          "${widget.icon}",
          height: 25,
          width: 25,
          //fit: BoxFit.scaleDown,
        ),
        suffixIcon: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
          ),
          onPressed: () {},
          child: const AppImage("assets/icons/Filter.svg"),
        ),
      ),
    );
  }
}
