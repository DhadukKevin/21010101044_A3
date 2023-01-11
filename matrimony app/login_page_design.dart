import 'package:flutter/material.dart';
import 'package:lab_8/user_login_page.dart';

class LoginPageDesign extends StatefulWidget {
  const LoginPageDesign({super.key});

  @override
  State<LoginPageDesign> createState() => _LoginPageDesignState();
}

class _LoginPageDesignState extends State<LoginPageDesign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Expanded(
          child: Container(
            child: Expanded(
              flex: 15,
              child: Stack(
                children: [
                  Container(
                    child: Image.asset(
                        'assets/pictures/bg_matrimony_prelogin.jpg',
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                        colorBlendMode: BlendMode.modulate),
                  ),
                  Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(40),
                      child: Column(
                        children: [
                          Image.network(
                            'https://upload.wikimedia.org/wikipedia/en/d/d5/Bharat-matrimony-logo.gif',
                          ),
                          text("India's"),
                          text("Most Trusted"),
                          text("Matrimony Brand"),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(4),
                color: Colors.green,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                padding: EdgeInsets.all(4),
                child: TextButton.icon(
                  label: Text(
                    'SignUp',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  icon: Icon(
                    Icons.arrow_forward_outlined,
                    size: 20.0,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                ),
              ),
            ),
          ],
        )
      ],
    )));
  }
}

var formKey = GlobalKey<FormState>();
var email = TextEditingController();
var pass = TextEditingController();
final email_1 = "kevin";
final pass_1 = "kevin";

Color clr = Colors.red;
var txt = "";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Color clr = Colors.red;
  @override
  // void initState(){
  //   super.initState();
  //   email.text='asdasd';
  //   pass.text='asdasd';
  // }
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Login'),
          ),
            body: Form(
      key: formKey,
      child: Center(
        child: Container(
          child: Card(
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 27, 182, 239)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email ID",
                        
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    height: 60,
                    width: 290,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      controller: pass,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: Icon(Icons.password),
                        hintText: "Password",
                      ),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    height: 60,
                    width: 290,
                  ),
                  Container(
                    // color: Colors.green,
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: ElevatedButton(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return UserLoginPage();
                          },));
                        }
                        if (pass.text == pass_1 && email.text == email_1) {
                          // print("Login completed")
                          setState(() {
                            txt = "Login completed";
                            clr = Colors.green;
                          });
                        } else {
                          // print("Login failed");
                          setState(() {
                            txt = "Login failed";
                            clr = Colors.red;
                          });
                        }
                      },
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Text(
                      txt,
                      style: TextStyle(color: clr),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          decoration: new BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.black,
                blurRadius: 15.0,
              ),
            ],
          ),
          height: 410,
          width: 350,
        ),
      ),
    )));
  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('SignUp'),
          ),
            body: Form(
      key: formKey,
      child: Center(
        child: Container(
          child: Card(
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                    child: Text(
                      'SignUp',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: Icon(Icons.email),
                        hintText: "Email",
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    height: 60,
                    width: 290,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextFormField(
                      obscureText: true,
                      controller: pass,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: Icon(Icons.password_sharp),
                        hintText: "Password",
                      ),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    height: 60,
                    width: 290,
                  ),
                  Container(
                    // color: Colors.green,
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: ElevatedButton(
                      child: Text(
                        'SignUp',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                        if (pass.text == pass_1 && email.text == email_1) {
                          // print("Login completed")
                          setState(() {
                            txt = "Login completed";
                            clr = Colors.green;
                          });
                        } else {
                          // print("Login failed");
                          setState(() {
                            txt = "Login failed";
                            clr = Colors.red;
                          });
                        }
                        // print('Email : ${email.text}');
                        // print('Pass : ${pass.text}');
                      },
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Text(
                      txt,
                      style: TextStyle(color: clr),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          decoration: new BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.black,
                blurRadius: 15.0,
              ),
            ],
          ),
          // color: Colors.red,
          height: 410,
          width: 350,
        ),
      ),
    )));
  }
}

Widget text(String txt) {
  return Text(txt,
      style: TextStyle(
        color: Colors.black,
        // fontWeight: FontWeight.bold,
        fontSize: 22.0,
      ));
}
