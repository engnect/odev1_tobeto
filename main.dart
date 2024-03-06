import 'package:flutter/material.dart';
import "models/student.dart";

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  String mesaj = 'Öğrenci Sistemi';
  List<Student> students = [Student('Engin', 'Taşkın', 25),Student('Ahmet', 'Yavaş', 45),
  Student('Mehmet', 'Türk', 65)];

  //var ogrenciler = ["engin", "ahmet", "mehmet"];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: buildBody(context),
      
    );
  }
  //refactor edilecek
  String sinavHesapla(int puan){
    if(puan >= 50){
      mesaj = 'geçti';
    }
    else if(puan >= 40){
      mesaj = 'bütünlemeye kaldı';
    }
    else{
      mesaj = 'kaldı';
    }
    return mesaj;
  }
  
  void mesajGoster(BuildContext context, String mesaj){
    var alert = AlertDialog(
              title: Text("Sınav Sonucu"),
              content: Text(mesaj); //refactor'den etkilenecek kısım
            );

            showDialog(context: context, builder: (BuildContext context) => alert);
  }

  Widget buildBody(BuildContext context){
    return Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2018/06/27/07/45/college-student-3500990_1280.jpg"),
                  ),
                  title: Text(students[index].firstName + " " + students[index].lastName),
                  subtitle: Text("Sınavdan aldığı not: " + students[index].grade.toString() + " [" +students[index].getStatus + "]"),
                  trailing: buildStatusIcon(students[index].grade),
                  onTap: (){
                    print(students[index].firstName + " " + students[index].lastName);
                  },
                );
              })),
          Center(
            child: RaisedButton(
              child: Text("Sonucu Gör"),
              onPressed: (){
                var mesaj = sinavHesapla(55);
                mesajGoster(context, mesaj);
              },
            ),
          ),
        ],
       );
  }

  Widget buildStatusIcon(int grade){
    if(grade >= 50){
      return Icon(Icons.done);
    }
    else if(grade >= 40){
      return Icon(Icons.album);
    }
    else{
      return Icon(Icons.clear);
    }
  }

}
