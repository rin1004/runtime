import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IPL', 
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Color(0xfff4fef2),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Image(
                    image: AssetImage('images/logo1.png'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 350,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text("로그인",
                          style: const TextStyle(
                              color: const Color(0xff02171a), fontSize: 20),
                          textAlign: TextAlign.left),
                    ],
                  ),
                ),
                Form(
                    child: Theme(
                        data: ThemeData(
                            primaryColor: Color(0xff819395),
                            inputDecorationTheme: InputDecorationTheme(
                                labelStyle: TextStyle(
                                    color: Colors.grey, fontSize: 15))),
                        child: Container(
                          padding: EdgeInsets.all(45.0),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                decoration: InputDecoration(labelText: '아이디'),
                                keyboardType: TextInputType.text,
                              ),
                              SizedBox(height: 10),
                              TextField(
                                decoration: InputDecoration(labelText: '비밀번호'),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),
                              SizedBox(height: 50),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff45983f),
                                  minimumSize: Size(250, 55),
                                ),
                                child: const Text('로그인',
                                    style: TextStyle(
                                      fontSize: 20,
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => home()),
                                  );
                                },
                              ),
                              SizedBox(height: 15),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff14511a),
                                  minimumSize: Size(250, 55),
                                ),
                                child: const Text('회원가입',
                                    style: TextStyle(
                                      fontSize: 20,
                                    )),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => sign_up()),
                                  );
                                },
                              ),
                            ],
                          ),
                        )))
              ],
            ),
          ),
        ));
  }
}
