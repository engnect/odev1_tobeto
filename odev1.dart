import "odev1_class.dart";

void main() {
  /* Hello Tobeto */
  print('Hello Tobeto!');

  // Variables
  var firstName = 'Engin';
  String lastName = 'Taşkın';
  int age = 24;
  double height = 1.72;
  bool hasOccupation = false;
  bool isItEqual = false;

  var favColors = ['red', 'grenn', 'blue', 'yellow'];

  // If-Else
  if (age > 18) {
    hasOccupation = true;
    print('${firstName} ${lastName} iş için uygun');
  } else
    print('${firstName} ${lastName} iş için uygun değil');

  // For & While loops
  for (String color in favColors) {
    print(color);
  }

  int i = 0;
  while (i < 5) {
    i++;
    print("${i} . döngü");
  }
  // Function on execution
  int favNumber = 5;
  int baseOfFavNumber = 3;
  print('Favori sayının seçilen kuvveti: ${pow(favNumber, baseOfFavNumber)}');

  // Shorthand/Arrow function on execution
  printFullName(firstName, lastName);

  // Class
  DateTime signDate = DateTime(2024, 03, 04);
  User firstUser = new User(firstName, age);

  // Comparison between class data
  firstUser.PrintUserInfo();
  if (signDate == firstUser.signupDate) {
    isItEqual = true;
  } else
    isItEqual = false;
  print("Is it equal? $isItEqual");

  User secondUser = User('2nd user', 2);
  secondUser.PrintUserInfo();

  // Enums
  final yourMatter = Matter.water;
  yourMatter.isItExpensive(yourMatter);

  // Inheritance
  AuthorizedUser authUser = AuthorizedUser("authorized user", 1234, true);

  //Mixin
  authUser.GetAuthUserCount();

  // late variables
  late String randomWord;
  String word;

  var ras;
  late var ras2;

  randomWord = 'deneme';
  word = '123';
  print("late variable value: $ras");
  //print(ras2);

  print(randomWord);
  print(word);

  // Operators
  var result = 5 / 2;
  print('Result1: $result');
  var doubleResult = 5 ~/ 2;
  print('Result2: $doubleResult');

  // Type-cast operator
  String kullaniciAdi = (authUser as AuthorizedUser).userName;
  print(kullaniciAdi);

  // Collections
  var list = [1, 5, 10];

  var names = <String>{};
  var names2 = {'engin', 'celal', 'taşkın'};
  Set<String> names3 = {};

  names.addAll(names2);
  names.add('isim');

  var map = {'ad': 'engin', 'soyad': 'taşkın', 'yaş': 26};
  Map<String, dynamic> arguments = {'argA': 'hello', 'argB': 42};

  // Collection-for
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[3] == '#3');
}

// function for calculating the power of the selected/favorite number
int pow(int base, int top) {
  int res = 1;
  for (int i = 0; i < top; i++) {
    res *= base;
  }
  return res;
}

// Shorthand/Arrow function
void printFullName(String firstname, String lastname) =>
    print('İsim soyisim: $firstname $lastname');

// Enums
enum MatterType { gas, solid, liquid }

enum Matter {
  gold(matterType: MatterType.solid),
  water(matterType: MatterType.liquid);

  // A constant generating constructor
  const Matter({required this.matterType});

  // All instance variables are final
  final MatterType matterType;

  void isItExpensive(Matter matter) {
    if (matter == Matter.gold) {
      print("yes");
    } else if (matter == Matter.water) {
      print("no");
    } else {
      print("no");
    }
  }
}
