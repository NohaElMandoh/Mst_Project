import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final usernameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.indigo[900],
              Colors.indigo[800],
              Colors.indigo[700],
              Colors.indigo[900],
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            ///////////////logo img
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 10,
                decoration: BoxDecoration(
                    // image:DecorationImage(image: AssetImage('Logoooooooo'))
                    ),
              ),
            ),
///////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                   _custFormField("Mobile Number",Icons.call),
                    SizedBox(
                      height: 30,
                    ),
                    _custFormField("Password",Icons.lock),
                    
                    SizedBox(
                      height: 10.0,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                         "Forget Password ?",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                   
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(
                                242, 156, 56, 1), //rgb(242, 156, 56)
                            borderRadius: BorderRadius.circular(60)),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "OR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "You Can Create A New Account Now !",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                     SizedBox(height: 30,),
                     InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(
                                242, 156, 56, 1), //rgb(242, 156, 56)
                            borderRadius: BorderRadius.circular(60)),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                   SizedBox(height: 30,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Enter As A Visitor",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextFormField _custFormField(String h_text,IconData i){
 return new TextFormField(
                      decoration: InputDecoration(
                        hintText:h_text, //"Mobile Number",
                        hintStyle:
                            TextStyle(color: Colors.white70, fontSize: 16),
                        prefixIcon: Icon(
                          i ,//icons.call,
                          color: Colors.white70,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                      ),
                      // controller: control_name,
                    );

}
