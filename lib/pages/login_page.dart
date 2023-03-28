import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const route = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 80,
                  bottom: 8,
                ),
                child: Text(
                  'Masuk-PSB',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.1),
                child: const Text(
                  'Ma’had Al-Furqon Al-Islami Gresik',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              const LoginField(
                label: 'NIK (Nomor Induk Kependudukan)',
                hintText: '1234567890',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              const LoginField(
                label: 'Sandi / Password',
                hintText: 'Masukkan Sandi/Password',
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;

  const LoginField({
    Key? key,
    required this.label,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
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
        ),
      ],
    );
  }

  OutlineInputBorder get _outlineInputBorder => const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffF5F5F5)),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      );
}
