import 'package:flutter/material.dart';
import 'app_image.dart';

class AppInput extends StatefulWidget {
  final TextEditingController? controller;
  final String? labelText,icon;
  final double paddingBottom, paddingTop;
  final bool isPassword;
  final FormFieldValidator<String?>? validator;

  const AppInput(
      {super.key,
      this.validator,
      this.controller,
      required this.labelText,
        this.icon,
      this.paddingBottom = 16,
      this.paddingTop = 0,
      this.isPassword = false,
      });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: widget.paddingBottom,
        top: widget.paddingTop,
      ),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        obscureText: isPasswordHidden && widget.isPassword,
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
          prefixIcon: Padding(
            padding: const EdgeInsets.all(11),
            child: AppImage(
              "${widget.icon}",
              height: 25,
              width: 25,
              fit: BoxFit.scaleDown,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(isPasswordHidden
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    isPasswordHidden = !isPasswordHidden;
                    setState(() {});
                  },
                )
              : null,
        ),
      ),
    );
  }
}
