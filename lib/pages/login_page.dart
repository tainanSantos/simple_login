import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _iconVisibli = false;
  _visible() {
    setState(() {
      _iconVisibli = !_iconVisibli;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red[800], Colors.red[900]],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              height: 450,
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      padding: EdgeInsets.all(20),
                      color: Colors.white,
                      height: 350,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: "E-mail",
                                suffixIcon: Icon(Icons.email)),
                          ),
                          TextFormField(
                            obscureText: _iconVisibli,
                            decoration: InputDecoration(
                              labelText: "Password",
                              suffixIcon: IconButton(
                                  icon: _iconVisibli
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                  onPressed: _visible),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width / 3,
                            child: RaisedButton(
                              color: Colors.red[800],
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: GestureDetector(
                              onTap: () {},
                              child: Text("Create account"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: GestureDetector(
                              onTap: () {},
                              child: Text("Reset your password?"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
