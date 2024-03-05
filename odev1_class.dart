class User {
  // properties
  String userName;
  int password;
  DateTime signupDate = DateTime.now();

  //constructor
  User(this.userName, this.password) {
    userName = this.userName;
    password = this.password;
  }

  // method prints user info
  void PrintUserInfo() {
    print(userName);
    print(password);
    print(signupDate);
  }
}

// Inheritance
class AuthorizedUser extends User with AuthInfo {
  bool access = true;

  AuthorizedUser(super.userName, super.password, this.access);
}

mixin AuthInfo {
  int AuthUserCount = 1;

  void AuthUserCountIncrease() {
    AuthUserCount += 1;
  }

  void GetAuthUserCount() {
    print("Auth User Count: $AuthUserCount");
  }
}
