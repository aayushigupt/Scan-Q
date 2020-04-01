import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {

  final String username, name, email;
  DashboardScreen({this.username, this.name, this.email});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  String getInitials(String text){
    var words = text.split(' ');
    return words[0][0].toUpperCase() + "" + words[1][0].toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 12
                ),
                child: CircleAvatar(
                  child: Text(
                    getInitials(widget.name),
                    style: GoogleFonts.raleway(
                      fontSize: 32
                    ),
                  ),
                  backgroundColor: Colors.blue,
                  radius: 42,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  widget.name,
                  style: GoogleFonts.raleway(
                    fontSize: 18
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  widget.email,
                  style: GoogleFonts.openSans(
                    fontSize: 14
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}