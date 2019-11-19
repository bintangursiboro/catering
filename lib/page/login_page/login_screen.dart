import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamar_8c/page/login_page/bloc/login_screen_bloc.dart';
import 'package:kamar_8c/page/login_page/bloc/login_screen_event.dart';
import 'package:kamar_8c/page/login_page/bloc/login_screen_state.dart';
import 'package:kamar_8c/page/login_page/login_screen_view.dart';

class LoginScreen extends StatefulWidget {
  static const String PATH = '/login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isButtonDisabled;
  LoginScreenBloc _bloc = LoginScreenBloc();

  @override
  void initState() {
    isButtonDisabled = true;
    super.initState();
  }

  void onLogin(String username, String password) {
    _bloc.add(LoginEvent(username: username, password: password));
  }

  bool isDisabled() {
    if (passwordController.text.isEmpty || usernameController.text.isEmpty) {
      setState(() {
        isButtonDisabled = true;
      });
    } else {
      setState(() {
        isButtonDisabled = false;
      });
    }
    return isButtonDisabled;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _bloc,
      listener: (BuildContext context, LoginScreenState state) {
        if (state is LoginScreenLoaded) {
        } else if (state is LoginScreenError) {}
      },
      child: BlocBuilder(
          bloc: _bloc,
          builder: (BuildContext context, LoginScreenState state) {
            return LoginScreenView(
              onLogin: onLogin,
              passwordController: passwordController,
              usernameController: usernameController,
              onChangeText: isDisabled,
              isDisabled: isButtonDisabled,
              isLoading: (state is LoginScreenLoading),
            );
          }),
    );
  }
}
