import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[288],
        body: Column(children: <Widget>[
          const SizedBox(
            height: 110,
          ),

          Text(
            'Welcome back !',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),

          const SizedBox(
            height: 5,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Silahkan',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
              Text(
                ' Log In',
                style: TextStyle(
                  color: Colors.yellow[900],
                  fontSize: 20,
                ),
              ),
              Text(
                ' Untuk Melanjutkan !',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 20,
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 40,
          ),

          CircleAvatar(
            backgroundImage: AssetImage('aset/image/navy.jpg'),
            radius: 100,
          ),

          const SizedBox(
            height: 40,
          ),

          //username
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  cursorColor: Colors.blue[900],
                  decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      border: InputBorder.none,
                      labelText: 'Username',
                      hintText: 'Masukkan Username'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.blue[900],
                  decoration: InputDecoration(
                      icon: Icon(Icons.password_rounded),
                      border: InputBorder.none,
                      labelText: 'Password',
                      hintText: 'Masukkan Password'),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          // Log in
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.00),
            child: ElevatedButton(
              onPressed: (){},
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          // register
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not A Member?',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue[900]),
              ),
              Text(
                ' Register Now!',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.yellow[900]),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
