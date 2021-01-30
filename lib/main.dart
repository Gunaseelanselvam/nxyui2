import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(5, 99, 231, 1),
          body: Column(
            children: [
              Stack(
                children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight:Radius.circular(50.0), bottomLeft: Radius.circular(50.0)),
                      color: Colors.white
                  ),
                ),
                Positioned(
                  bottom: 1,
                  left: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 10,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child:Center(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 13,
                          ),
                        ),
                      ),
                    ),
                    SizedBox( width: 50),
                    Image(image: AssetImage('images/1-01.png'),height: 100,width: 100,),
                    SizedBox( width: 50),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 10,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child:Center(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),),
                CustomPaint(
                  child: Container(
                    color: Color.fromRGBO(7, 18, 107, 1),
                    width: double.infinity,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left:10.0,right: 10.0),
                            child: Container(
                              child: Icon(
                                Icons.list,
                                size: 20.0,
                                color: Colors.black,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              height: 50,
                            ),
                          ),
                        ),
                        Expanded(child: CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage('images/icon.png'),
                        ),),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('NAME', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0,color: Colors.white),),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                  size: 20.0,
                                ),
                                Text('10', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.blue),),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Cash Mode', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 5.0,color: Colors.white),
                            ),
                            Image(
                              image: AssetImage('images/Group 1.png'),
                              height: 50,
                              width: 50,
                            ),
                            Text(
                              'Free Mode', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 5.0,color:Colors.white,),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Image(
                          image: AssetImage('images/Group 204.png'),
                          height: 60.0,
                          width: 150.0,
                        ),
                      ],
                    ),
                  ),
                  painter: HeaderCurvedContainer(),
                ),
              ],),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      listviewContainer(listviewImage: 'images/sports.png', boxcolor: Colors.yellow, boxnamecolor: Colors.blue,textname: 'SPORTS',),
                      SizedBox( width: 20,),
                      listviewContainer(listviewImage: 'images/history.png', boxcolor: Colors.blue, boxnamecolor: Colors.white,textname: 'HISTORY',),
                      SizedBox( width: 20,),
                      listviewContainer(listviewImage: 'images/science.png', boxcolor: Colors.blue, boxnamecolor: Colors.white,textname: 'SCIENCE',),
                      SizedBox( width: 20,),
                      listviewContainer(listviewImage: 'images/movie.png', boxcolor: Colors.blue, boxnamecolor: Colors.white,textname: 'MOVIE',),
                      Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(flex: 80, child:Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(child: Image(image: AssetImage('images/movie.png'),)),
                            ), ),
                            Expanded(flex:20, child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),
                                ),
                                child: Center(child: Text('MOVIE', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold,  color: Colors.white),))),),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text('SELECT GAME MODE', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0, color: Colors.white),),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0),),
                    color: Colors.white,
                    border: Border.all(color: Colors.blue,width: 5.0),
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     finalContainer(textname: 'SOLO',),
                     finalContainer(textname: 'VERSES',),
                     finalContainer(textname: 'TABLE',),
                   ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class listviewContainer extends StatelessWidget {
  final  listviewImage;
  final Color boxcolor;
  final Color boxnamecolor;
  final String textname;

  listviewContainer({@required this.listviewImage,@required this.boxcolor,@required this.boxnamecolor , @required this.textname});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0),),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 80, child:Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(child: Image(image: AssetImage('$listviewImage'),)),
          ), ),
          Expanded(flex:20, child: Container(
              decoration: BoxDecoration(
                color: boxcolor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0),),
              ),
              child: Center(child: Text('$textname', style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold, color: boxnamecolor),))),),

        ],
      ),
    );
  }
}

class finalContainer extends StatelessWidget {
  final String textname;
  finalContainer({@required this.textname});
  @override
  Widget build(BuildContext context) {
    return Text('$textname', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.grey),);
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = const Color.fromRGBO(7, 18, 107, 1);
    Path path = Path()
      ..relativeLineTo(0, 100)
      ..quadraticBezierTo(size.width/2 , 150.0, size.width, 100)
      ..relativeLineTo(0, -150)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}



