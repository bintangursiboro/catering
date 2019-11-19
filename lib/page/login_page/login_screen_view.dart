import 'package:flutter/material.dart';

class LoginScreenView extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final Function(String, String) onLogin;
  final bool isDisabled;
  final bool isLoading;
  final Function onChangeText;

  LoginScreenView({
    this.onLogin,
    this.passwordController,
    this.usernameController,
    this.isDisabled,
    this.onChangeText,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: usernameController,
                decoration: InputDecoration(hintText: 'Username'),
                onChanged: (val) {
                  onChangeText();
                },
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(hintText: 'Password'),
                onChanged: (val) {
                  onChangeText();
                },
                obscureText: true,
              ),
              (isLoading)
                  ? (Center(
                      child: CircularProgressIndicator(),
                    ))
                  : RaisedButton(
                      onPressed: (isDisabled)
                          ? null
                          : () {
                              onLogin(usernameController.text,
                                  passwordController.text);
                            },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
