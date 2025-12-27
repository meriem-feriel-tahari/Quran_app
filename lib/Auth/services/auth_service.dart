class AuthService {
  Future<void> login(String username, String password) async {
    await Future.delayed(Duration(seconds: 10));
    if (username == "test" && password == "1234") {
      return;
    } else {
      throw Exception("invalid credentials");
    }
  }
}
