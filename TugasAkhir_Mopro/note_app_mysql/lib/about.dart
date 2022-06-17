// ignore_for_file: prefer_const_constructors, unused_import, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:note_app_mysql/home.dart';
import 'package:note_app_mysql/data.dart';

class aboutapp extends StatelessWidget {
  const aboutapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Notes App'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 5.0, right: 20.0, bottom: 5.0),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Colors.white),
        child: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Aplikasi Notes App \n',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    Text(
                      'Aplikasi Sticky Notes ini dibuat sebagai syarat kelulusan mata kuliah Mobile Programming yang diampu oleh dosen bapak Muhamad Saad Nurul Ishlah, M.Comp.',
                      style: TextStyle(
                        color: const Color(0xff808ba2),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Divider(thickness: 3,),
                    Text(
                      '\nAnggota Kelompok',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/edon.jpg',
                      name: 'Ahmad Soleh Edon',
                      text: '065119200',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/pw.jpg',
                      name: 'Putri Witia Ayu A',
                      text: '065119224',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/reff.jpg',
                      name: 'Muhammad Refansyach Sugianto',
                      text: '065119226',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
