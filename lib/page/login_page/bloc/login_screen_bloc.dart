import 'package:bloc/bloc.dart';
import 'package:kamar_8c/page/login_page/bloc/login_screen_event.dart';
import 'package:kamar_8c/page/login_page/bloc/login_screen_state.dart';
import 'package:kamar_8c/utils/firebase_firestore/firestore_helper.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  @override
  LoginScreenState get initialState => LoginScreenInitial();

  FirestoreHelper firestoreHelper = FirestoreHelper();

  @override
  Stream<LoginScreenState> mapEventToState(LoginScreenEvent event) async* {
    yield LoginScreenLoading();

    if (event is LoginEvent) {
      yield await firestoreHelper
          .getUser(password: event.password, username: event.username)
          .then((isLogin) {
        if (isLogin) return LoginScreenLoaded();
        return LoginScreenError();
      });
    }
  }
}
