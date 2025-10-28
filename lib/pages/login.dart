import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/authC.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/controllers/loginC.dart';

class LoginPage extends StatelessWidget {
  final c = Get.find<LoginC>();
  final auth = Get.find<AuthC>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: c.emailC,
              autocorrect: false,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Obx(
              () => TextField(
                controller: c.passC,
                obscureText: c.hidden.value,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      c.hidden.value ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      c.hidden.toggle();
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Obx(
              () => CheckboxListTile(
                value: c.rememberMe.value,
                onChanged: (value) {
                  c.rememberMe.value = value ?? false;
                },
                title: Text('Remember Me'),
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
            ElevatedButton(
              onPressed: () => auth.login(c.emailC.text, c.passC.text, c.rememberMe.value),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
