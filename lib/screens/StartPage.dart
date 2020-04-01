import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'loginPage.dart';


class Home extends StatefulWidget{
  @override
  createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin{
  Animation animation;
  AnimationController animationController;
  

  @override
  void initState(){
    super.initState();
    animationController = AnimationController(duration: Duration(seconds: 2), vsync:this );
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
    animationController.addStatusListener((listener){
      if(listener == AnimationStatus.completed){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => Login()
          )
        );
      }
    });
  }

  @override
  Widget build(BuildContext context){
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child){
        return Scaffold(
          body: Transform(
            transform: Matrix4.translationValues(animation.value*width, 0.0, 0.0),
            child: new Center(
              child: Container(child: Text('Scan - Q',style: TextStyle(fontSize:20.0, fontWeight: FontWeight.bold ),),),
            ),
          ),  

        );
      }
    );
  }
}
