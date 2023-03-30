import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String? text)? validator;
  final TextEditingController? controller;

  const LoginField({
    Key? key,
    required this.label,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[400],
            ),
            border: _outlineInputBorder,
            enabledBorder: _outlineInputBorder,
            focusedBorder: _outlineInputBorder,
            filled: true,
            fillColor: const Color(0xffF5F5F5),
          ),
          keyboardType: keyboardType,
          obscureText: obscureText,
          validator: validator,
          controller: controller,
        ),
      ],
    );
  }

  OutlineInputBorder get _outlineInputBorder => const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffF5F5F5)),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      );
}
