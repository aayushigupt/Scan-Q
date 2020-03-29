import 'package:flutter/material.dart';

class Login extends StatefulWidget
{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 400.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,

                  ),
                ),
              ),
              
              title(),
              Container(
                padding: EdgeInsets.only(bottom: 20.0),

              ),
              emailAddress(),
              Container(
                
                
                padding: EdgeInsets.only(bottom: 10.0),
              ),
              password(),
               Container(
                 padding: EdgeInsets.only(top: 17.0),
                 width: 200.0,
                 height: 70.0,
                 
                 child: RaisedButton(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.0)),  

                   onPressed: (){},
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
  
Widget emailAddress()
  {
    return Container(
      width: 350.0,
      child: Form(
        child: Column(
                children:[
                 
                  Material (
                    elevation: 10.0,
                   shadowColor: Colors.blue[400],
                    
          child:       TextFormField(
    
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
  Widget password()
  {
    return Container(
      width: 350.0,
      child: Form(
        child: Column(
                children:[
                 
                  Material (
                    elevation: 30.0,
                   shadowColor: Colors.blue[400],
                    
          child:       TextFormField(
    
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
    child: Column(
      children: <Widget>[
        Text('Welcome!', style: TextStyle(
          color: Colors.blue[600],
          fontSize: 30.0,

        ),
        ),
      ],
    ),
  );
}


}
class MyClipper extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0.0, size.height);
    
   path.lineTo(size.width,size.height/2-40 );
   path.lineTo(size.width, 0.0);
        
    
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }
  
  


}
