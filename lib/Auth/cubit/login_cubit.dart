import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran/Auth/services/auth_service.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  // AuthService should be provided

  // Constructor takes the AuthService and initial state
  LoginCubit() : super(LoginInitial());

  // Login method
  Future<void> login(String username, String password) async {
    final auth = AuthService();
    print("login enter");
    emit(LoginLoading());
    print("login loading");

    try {
      await auth.login(username, password);
      emit(LoginSuccess());
      print("login success");
    } catch (e) {
      emit(LoginFailed(e.toString()));
    }
  }
}
