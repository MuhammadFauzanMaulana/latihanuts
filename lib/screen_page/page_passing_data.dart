import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class PagePassingData extends StatelessWidget {
  const PagePassingData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Page Passing Data'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return ListTile(
              title: Text('Judul Berita ke ${index}'),
              subtitle: Text('Ini sub Berita ke ${index}'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageGetData(index)));
              },
            );
          }
      ),
    );
  }
}
class PageGetData extends StatelessWidget {
  final int index;
  const PageGetData(this.index,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Page Get data'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('ini adalah judul berita ke ${index}'),
            Text('ini adalah sub judul berita ke ${index}'),
          ],
        ),
      ),
    );
  }
}

class PageLogin extends StatefulWidget {
  const PageLogin({Key? key}) : super(key: key);

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Page Login'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            TextFormField(
              controller: txtUsername,
              decoration: InputDecoration(
                  hintText: 'Input Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: txtPassword,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Input Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 15),
            MaterialButton(
              onPressed: () {
                String username = txtUsername.text;
                String pwd = txtPassword.text;

                if (username == 'admin' && pwd == '123') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomePage(),
                    ),
                  );
                } else {
                  _showSnackBar(context, 'Username atau password salah');
                }
              },
              child: Text('Login'),
              color: Colors.green,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Welcome Admin'),
      ),
      body: Center(
        child: Text('Hello, Selamat Datang Admin'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PageLogin(),
  ));
}





