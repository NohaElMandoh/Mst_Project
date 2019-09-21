import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
   bool _value1 = false;


  //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
  void _value1Changed(bool value) => setState(() => _value1 = value);
  
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
                  "Sign Up",
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
                   _custFormField("Name",Icons.person),
                    SizedBox(
                      height: 30,
                    ),
                    _custFormField("Email Address",Icons.email),
                     SizedBox(
                      height: 30,
                    ),
                     _custFormField("Mobile Number",Icons.call),
                    SizedBox(
                      height: 30,
                    ),
                    _custFormField("Password",Icons.lock),
                    SizedBox(
                      height: 30.0,
                    ),

                      _custFormField("Confirm Password",Icons.lock),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                         new Checkbox(value: _value1,
                          onChanged: _value1Changed,
                          
                          ),
                          r_Text(),
                      ],
                    ),
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
                          "You Can Sign In With An Account !",
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
                        Navigator.of(context).pushNamed('/login');
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
                            'Sign In',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
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

Widget r_Text(){
 return Text.rich(
      TextSpan(
        text: 'I Agree To The',
        style: TextStyle(color: Colors.white),
        children: [
          TextSpan(
            text: 'Terms',
            style: TextStyle(
              color: Color.fromRGBO(
                                242, 156, 56, 1),
            ),
            
          ),
          TextSpan(
            text: ' And ',
            children: [
              TextSpan(
        text: 'Conditions',
        style: TextStyle(color: Color.fromRGBO(
                                242, 156, 56, 1),),)
            ],
          ),
        ],
      ),
    );
}