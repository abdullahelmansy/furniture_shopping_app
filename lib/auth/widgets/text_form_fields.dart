import 'package:flutter/material.dart';

class TextFormFields extends StatelessWidget {
  const TextFormFields({super.key, required this.validator, this.suffixIcon,this.suffixPressed,required this.obscureText, required this.type,});
  final String? Function(String?)? validator;
  final bool obscureText ;
  final IconData? suffixIcon;
  final Function()? suffixPressed;
final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:type ,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: suffixPressed,
          icon: Icon(suffixIcon),
        ),
        fillColor: const Color(0xffE0E0E0),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffE0E0E0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
