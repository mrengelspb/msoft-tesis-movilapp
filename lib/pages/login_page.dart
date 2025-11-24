import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 65),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.monitor_heart_rounded, size: 70),
                Text(
                  "BMP APP",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: InputDecoration(
                    hintText: "Usuario",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Contraseña",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      _formKey.currentState!.reset();
                      Navigator.pushNamed(context, "/home");
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                    ),
                    child: Text("Iniciar sesión"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
