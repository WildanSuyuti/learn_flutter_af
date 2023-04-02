import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/first_page.dart';
import 'package:learn_flutter/pages/form_field_page.dart';

import 'login_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const route = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? _message;

  final _nik = TextEditingController();
  final _password = TextEditingController();
  bool _isValidated = false;

  @override
  void dispose() {
    _nik.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
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
                LoginField(
                  controller: _nik,
                  label: 'NIK (Nomor Induk Kependudukan)',
                  hintText: '1234567890',
                  keyboardType: TextInputType.number,
                  validator: (String? value) {
                    if (value?.isEmpty ?? false) {
                      return 'Silahkan isi NIK';
                    }
                    if ((value?.length ?? 0) < 12) {
                      return 'NIK tidak boleh kurang dari 12 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                LoginField(
                  controller: _password,
                  label: 'Sandi / Password',
                  hintText: 'Masukkan Sandi/Password',
                  obscureText: true,
                  validator: (String? value) {
                    if (value?.isEmpty ?? false) {
                      return 'Silahkan isi Password';
                    }
                    if ((value?.length ?? 0) < 6) {
                      return 'Password tidak boleh kurang dari 6 karakter';
                    }
                    return null;
                  },
                ),
                Center(
                  child: MaterialButton(
                      color: Colors.blue,
                      child: const Text('Submit'),
                      onPressed: () {
                        setState(() {
                          _isValidated =
                              _formKey.currentState?.validate() ?? false;
                        });

                        if (_isValidated) {
                          Navigator.pushNamed(
                            context,
                            FormFieldPage.route,
                            arguments: {
                              'nik': _nik.text,
                              'password': _password.text,
                            },
                          );

                          /*                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return FormFieldPage(
                                  nik: _nik.text,
                                  password: _password.text,
                                );
                              },
                            ),
                          );*/
                        }

/*                        if (_formKey.currentState?.validate() ?? false) {
                          setState(() => _isValidated = true);
                          // debugPrint('tervalidasi');
                          // debugPrint('NIK: ${_nik.text}');
                          // debugPrint('Password: ${_password.text}');
                          // setState(() {
                          //   _message = 'Tervalidasi';
                          //   _isValidated = true;
                          // });
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return FormFieldPage(
                          //       nik: _nik.text, password: _password.text);
                          // }));
                        }*/
                      }),
                ),
                Text(_message ?? 'belum tervalidasi'),
                if (_isValidated)
                  Center(
                    child: Column(
                      children: [
                        Text('NIK: ${_nik.text}'),
                        Text('Password: ${_password.text}')
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_() {
  int? angka;
  int angka2 = 1;
  int hasil = angka! + angka2;
}
