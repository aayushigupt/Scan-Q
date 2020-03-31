import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Login extends StatefulWidget
{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailAddressController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  String emailAddress;
  String password;
  void _showDialog()
  {
    showDialog(
      context: context,
      builder: (BuildContext context)
      {
        return AlertDialog(
          title: Text('Wrong Credentials'),
          content: Text('Wrong Credentials Again'),
          actions: <Widget>[
            new FlatButton(
              child: Text('Close'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }

    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
          /*    ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,

                  ),
                ),
              ), */
              Container( padding: EdgeInsets.only(top: 40.0),),
              title(),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),

              ),
              username(),
              Container(
                
                
                padding: EdgeInsets.only(bottom: 10.0),
              ),
              passwordLog(),
               Container(
                 padding: EdgeInsets.only(top: 17.0),
                 width: 200.0,
                 height: 70.0,
                 
                 child: RaisedButton(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.0)),  

                   onPressed: () async{
                     setState(() {});
                     Map<String, dynamic> positionDetails = {
                       "emailAddress": emailAddressController.text,
                       "password": passwordController.text,
                     };
                     var temp = json.encode(positionDetails);
                     var url ="http://scanq.herokuapp.com/api/login/";
                     var response = await http.post(url,body:temp);
                     var t = response.body;
                     var jsonResult = json.decode(t.toString());
                     var result = jsonResult["login"];
                     if(result==true)
                     {
                       Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (BuildContext context) => Home(emailAddress: emailAddress, password:password)
                       ));
                     }
                     else
                     {
                       _showDialog();
                     }
                   },
                   color: Colors.blue,

                   child: Text('Login',
                   style: TextStyle(color: Colors.white,
                   fontSize: 18.0,
                   ),
                   ),
                 ),
               )
              
            ],
          ),
        ),
        
      ),

    );
  }
  
Widget username()
  {
    return Container(
      width: 350.0,
      child: Form(
        child: Column(
                children:[
                 
                  Material (
                    elevation: 10.0,
                   shadowColor: Colors.blue[400],
                    
                    child:TextFormField(
                       onChanged: (val)
                      {
                        emailAddress= val;
                      },
    
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      
        border: OutlineInputBorder(
          borderRadius:BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.grey[600]),
          
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.grey[600]),
        )
      ),
    ),
                  )
                ],
      ),
      
      ),
      
    );
    
  }
  Widget passwordLog()
  {
    return Container(
      width: 350.0,
      child: Form(
        child: Column(
                children:[
                 
                  Material (
                    elevation: 30.0,
                   shadowColor: Colors.blue[400],
                    
      child: TextFormField(
      onChanged: (val){
          password = val;
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      
        border: OutlineInputBorder(
          borderRadius:BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.grey[600]),
          
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.grey[600]),
        )
      ),
    ),
                  )
                ],
      ),
      
      ),
    );
    
  }

Widget title()
{
  return Container(
    padding: EdgeInsets.only(top: 30.0),
    child: Column(
      children: <Widget>[
        Text('Welcome!',
        style: TextStyle(
          color: Colors.blue[600],
          fontSize: 30.0,
        ),
        ),
      ],
    ),
  );
}


}
/*class MyClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0.0, size.height-40);
    path.quadraticBezierTo(size.width/4, size.height, size.width/2, size.height);
    path.quadraticBezierTo(size.width-(size.width/4), size.height, size.width, size.height-40);
    path.lineTo(size.width,0.0);
    path.close();
        
    
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }
  */
  



