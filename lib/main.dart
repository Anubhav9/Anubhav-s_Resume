import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_value/responsive_value.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:link/link.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';





class intro extends StatefulWidget {
  @override
  _introState createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    var textSize = Responsive<double>(30, lg: 80).getValue(context);
    var sSize = Responsive<double>(13, lg: 25).getValue(context);
    var width = Responsive<double>(100, md: 140, lg: 200).getValue(context);
    var height = Responsive<double>(100, md: 140, lg: 1000).getValue(context);
    //var boxColor = Responsive<Color>(Colors.red, lg: Colors.blue).getValue(context);
    var borderRadius = Responsive<double>(0, lg: 10).getValue(context);
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff4b6cb7),Color(0xff182848)],

            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12,50,0,0),
                child: Text('Hello World',style: TextStyle(fontSize: textSize,color: Colors.white,fontFamily: 'Courgette'),),
              ),
              SizedBox(
                height: 30,
              ),
              Text('This is Anubhav Sanyal',style: TextStyle(fontSize: textSize,color: Colors.yellow,fontFamily: 'Comfortaa'),),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 130,
                backgroundImage: AssetImage('me.jpg'),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Computer Vision | NLP | Flutter Enthusiast',style: TextStyle(fontSize: textSize,color: Colors.orange,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60,0,0,0),
                    child: FlatButton(
                      color: Colors.red,
                      onPressed:()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => draft_1()),
                        );
                      }
                      ,
                      child: Text('SKILLS',style: TextStyle(fontSize: sSize,color: Colors.white),),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,100,0),
                    child: FlatButton(
                      color: Colors.red,
                      onPressed:()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => draft_1()),
                        );
                      }
                      ,
                      child: Text('EDUCATION',style: TextStyle(fontSize: sSize,color: Colors.white),),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60,0,0,0),
                    child: FlatButton(
                      color: Colors.red,
                      onPressed:()
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => draft_1()),
                        );
                      }
                      ,
                      child: Text('EXPERIENCE',style: TextStyle(fontSize: sSize,color: Colors.white),),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,100,0),
                    child: FlatButton(
                      color: Colors.red,
                      onPressed:()
                      {}
                      ,
                      child: Text('PROJECTS',style: TextStyle(fontSize: sSize,color: Colors.white),),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),


      ),
    );
  }
}
class experiences_s extends StatefulWidget {
  @override
  _experiences_sState createState() => _experiences_sState();
}

class _experiences_sState extends State<experiences_s> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color(0xfffddc97),
          child: Column(
            children: [
              Text('Experiences',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.tealAccent),)
            ],
          ),
        ),
      ),
    );
  }
}
class draft_1 extends StatefulWidget {
  @override
  _draft_1State createState() => _draft_1State();
}

class _draft_1State extends State<draft_1> {
  @override
  Widget build(BuildContext context) {
    var textSize = Responsive<double>(30, lg: 60).getValue(context);
    var sSize = Responsive<double>(13, lg: 25).getValue(context);
    var sSize_f = Responsive<double>(13, lg: 50).getValue(context);
    var exSize = Responsive<double>(13, lg: 16).getValue(context);
    var exSize_1 = Responsive<double>(20, lg: 50).getValue(context);
    var width = Responsive<double>(100, md: 140, lg: 200).getValue(context);
    var height = Responsive<double>(100, md: 140, lg: 1000).getValue(context);
    //var boxColor = Responsive<Color>(Colors.red, lg: Colors.blue).getValue(context);
    var borderRadius = Responsive<double>(0, lg: 10).getValue(context);
    var device_size=MediaQuery.of(context).size;
    if(device_size.width<1000)
    {
      return MaterialApp(
        builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget),
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),

            ]),
        home: Scaffold(
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: double.infinity,
                height: 950,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xff4b6cb7),Color(0xff182848)],

                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12,50,0,0),
                      child: Text('Hello World',style: TextStyle(fontSize: textSize,color: Colors.white,fontFamily: 'Courgette'),),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text('This is Anubhav Sanyal',style: TextStyle(fontSize: textSize,color: Colors.yellow,fontFamily: 'Comfortaa'),),
                    SizedBox(
                      height: 50,
                    ),
                    CircleAvatar(
                      radius: 130,
                      backgroundImage: AssetImage('me.jpg'),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Text('Computer Vision | NLP | Flutter Enthusiast',style: TextStyle(fontSize: 20,color: Colors.orange,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60,0,0,0),
                          child: FlatButton(
                            color: Colors.red,
                            onPressed:()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => draft_1()),
                              );
                            }
                            ,
                            child: Text('SKILLS',style: TextStyle(fontSize: sSize,color: Colors.white),),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,100,0),
                          child: FlatButton(
                            color: Colors.red,
                            onPressed:()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => draft_1()),
                              );
                            }
                            ,
                            child: Text('EDUCATION',style: TextStyle(fontSize: sSize,color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(60,0,0,0),
                          child: FlatButton(
                            color: Colors.red,
                            onPressed:()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => draft_1()),
                              );
                            }
                            ,
                            child: Text('EXPERIENCE',style: TextStyle(fontSize: sSize,color: Colors.white),),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,100,0),
                          child: FlatButton(
                            color: Colors.red,
                            onPressed:()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => projects_f()),
                              );
                            }
                            ,
                            child: Text('PROJECTS',style: TextStyle(fontSize: sSize,color: Colors.white),),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),

              ),
              Container(
                width: double.infinity,
                height: 900,
                color: Color(0xfffddc97),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text('Experiences',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.teal,decoration: TextDecoration.underline),),
                    Row(


                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Education',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigoAccent,fontSize: exSize_1,decoration: TextDecoration.underline),),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: AutoSizeText('Jaypee Institute of Information Technology,Noida',
                          style: TextStyle(fontFamily: 'ed',fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold),
                          maxLines: 5,)),

                      ],

                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('B.Tech in Computer Science and Engineering',style: TextStyle(fontFamily: 'ed',fontSize: 18,color: Colors.purple,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('July 2017-Present',style: TextStyle(fontFamily: 'ed',fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),),
                      ],
                    ),

                    SizedBox(
                      height: 8,
                    ),
                    /*Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Course Covered: Data Structures and Algorithms, DBMS, Operating Systems\n, Artificial Intelligence, Computer Networks, Big Data, Theory of Computation\n and Compiler Design and Computational Intelligence',
                            style: TextStyle(fontSize:11,color: Colors.green[800],fontWeight: FontWeight.bold),
                            ),

                        ],

                      ),
                      SizedBox(
                        height: 8,
                      ),

                       */
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Current CGPA: 8.5',style: TextStyle(fontFamily:'ed',color: Colors.green[800],fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Pioneer Convent Indore',style: TextStyle(fontFamily: 'ed',fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold)),

                        ]),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Class XI-XIII',style: TextStyle(fontFamily: 'ed',fontSize: 18,color: Colors.purple,fontWeight: FontWeight.bold)),

                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('August 2015-May 2017',style: TextStyle(fontFamily: 'ed',fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('XII Percentage: 89.0%',style: TextStyle(fontSize:18,color: Colors.green[800],fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('DAV Public School SECL Kusmunda',style: TextStyle(fontFamily: 'ed',fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold)),

                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Class X',style: TextStyle(fontFamily: 'ed',fontSize: 18,color: Colors.purple,fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('2008-2015',style: TextStyle(fontFamily: 'ed',fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Xth CGPA: 10.0',style: TextStyle(fontSize:18,color: Colors.green[800],fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Work',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigoAccent,fontSize: exSize_1,decoration: TextDecoration.underline),),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Occupassion Inc',style: TextStyle(fontSize:18,color: Colors.pink,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Summer Intern-SDE',style: TextStyle(fontSize:18,color: Colors.purple,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('May 2020-July 2020',style: TextStyle(fontSize:18,color: Colors.green[800],fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('QuickSilver Technologies Pvt Ltd',style: TextStyle(fontSize:18,color: Colors.pink,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Technical Video Maker',style: TextStyle(fontSize:18,color: Colors.purple,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('May 2018-July 2018',style: TextStyle(fontSize:18,color: Colors.green[800],fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Upwork',style: TextStyle(fontSize:18,color: Colors.pink,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Freelance Contractor: Machine Learning & Content Writing',style: TextStyle(fontSize:15,color: Colors.purple,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('June 2018-Present',style: TextStyle(fontSize:18,color: Colors.green[800],fontWeight: FontWeight.bold),),
                      ],
                    ),



                  ],
                ),

              ),
              Container(
                width: double.infinity,
                height: 450,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Languages Known',style: TextStyle(fontWeight:FontWeight.bold,fontFamily:'cal',fontSize: 22,color: Color(0xffb97455)),),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('C++',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                        SmoothStarRating(

                          rating: 4,
                          isReadOnly: true,
                          size: 40,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Python',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                        SmoothStarRating(

                          rating: 3.8,
                          isReadOnly: true,
                          size: 40,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Frameworks Known',style: TextStyle(fontFamily:'cal',fontWeight:FontWeight.bold,fontSize: 22,color: Color(0xffb97455)),),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Scikit Learn',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                        SmoothStarRating(

                          rating: 4.2,
                          isReadOnly: true,
                          size: 40,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Keras',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                        SmoothStarRating(

                          rating: 4.4,
                          isReadOnly: true,
                          size: 40,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('OpenCV',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                        SmoothStarRating(

                          rating: 4.3,
                          isReadOnly: true,
                          size: 40,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Numpy/Pandas/Matplotlib ',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                        SmoothStarRating(

                          rating: 4.2,
                          isReadOnly: true,
                          size: 40,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Flutter Development',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                        SmoothStarRating(

                          rating: 3.5,
                          isReadOnly: true,
                          size: 40,
                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text('An analysis of my Github Profile can be found here!',
                              style: TextStyle(fontSize: 16,color: Colors.purple,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                          ),
                          onTap: ()
                          {
                            launch("https://sourcerer.io/anubhav9");
                          },
                        ),



                        ]

                    )


                  ],
                ),





              ),

              Container(
                width: double.infinity,
                height: 300,
                color: Color(0xff434242),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Contact Me',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email,
                          size: 50,
                          color: Colors.white,),
                        Text('princebest3@rediffmail.com',
                          style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Icon(FlutterIcons.linkedin_box_mco,
                          size: 50,
                          color: Colors.white,),
                        GestureDetector(
                          child: Text('Linkedin',style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold)),
                          onTap: ()
                          {

                            launch('https://www.linkedin.com/in/anubhav-sanyal-424852192/');
                          },

                        ),

                        //Text('https://www.linkedin.com/in/anubhav-sanyal-424852192/',style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FlutterIcons.github_box_mco,
                          size: 50,
                          color: Colors.white,),
                        GestureDetector(
                          child:Text('Github ',
                            style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),),
                          onTap: ()
                          {
                            launch('https://github.com/Anubhav9');
                          },
                        ),


                      ],
                    )
                  ],
                ),

              )


            ],

          ),
        ),
      );


    }
    return MaterialApp(


      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: double.infinity,
              height: 1000,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff4b6cb7),Color(0xff182848)],

                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12,50,0,0),
                    child: Text('Hello World',style: TextStyle(fontSize: textSize,color: Colors.white,fontFamily: 'Courgette'),),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('This is Anubhav Sanyal',style: TextStyle(fontSize: textSize,color: Colors.yellow,fontFamily: 'Comfortaa'),),
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    radius: 130,
                    backgroundImage: AssetImage('me.jpg'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Computer Vision | NLP | Flutter Enthusiast',style: TextStyle(fontSize: sSize_f,color: Colors.orange,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  SizedBox(
                    height: 90,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60,0,0,0),
                        child: FlatButton(
                          color: Colors.red,
                          onPressed:()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => draft_1()
                              ),
                            );
                          }
                          ,
                          child: Text('SKILLS',style: TextStyle(fontSize: sSize,color: Colors.white),),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,100,0),
                        child: FlatButton(
                          color: Colors.red,
                          onPressed:()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => draft_1()),
                            );
                          }
                          ,
                          child: Text('EDUCATION',style: TextStyle(fontSize: sSize,color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60,0,0,0),
                        child: FlatButton(
                          color: Colors.red,
                          onPressed:()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => draft_1()),
                            );
                          }
                          ,
                          child: Text('EXPERIENCE',style: TextStyle(fontSize: sSize,color: Colors.white),),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,100,0),
                        child: FlatButton(
                          color: Colors.red,
                          onPressed:()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => projects_f()),
                            );
                          }
                          ,
                          child: Text('PROJECTS',style: TextStyle(fontSize: sSize,color: Colors.white),),
                        ),
                      ),
                    ],
                  ),

                ],
              ),

            ),
            Container(
              width: double.infinity,
              height: 980,
              color: Color(0xfffddc97),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text('Experiences',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.teal,decoration: TextDecoration.underline),),

                  Row(


                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text('Education',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigoAccent,fontSize: 28,decoration: TextDecoration.underline),),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(child: AutoSizeText('Jaypee Institute of Information Technology,Noida',
                        style: TextStyle(fontFamily: 'ed',fontSize: 24,color: Colors.pink,fontWeight: FontWeight.bold),
                        maxLines: 5,)),
                      SizedBox(
                        width: 20,
                      ),
                      Center(child: Text('B.Tech in Computer Science and Engineering',style: TextStyle(fontFamily: 'ed',fontSize: 24,color: Colors.purple,fontWeight: FontWeight.bold))),
                      SizedBox(
                        width: 20,
                      ),
                      Center(child: Text('July 2017-Present',style: TextStyle(fontFamily: 'ed',fontSize: 24,color: Colors.red,fontWeight: FontWeight.bold))),

                    ],

                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText('Course Covered: Data Structures and Algorithms, DBMS, Operating Systems, Artificial Intelligence, Computer Networks, Big Data, Theory of Computation and Compiler Design and Computational Intelligence',
                        style: TextStyle(fontSize:17,color: Colors.green[800],fontWeight: FontWeight.bold),
                        maxLines: 3,),

                    ],

                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Current CGPA: 8.5',style: TextStyle(fontSize: 24,color: Colors.red,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Pioneer Convent Indore',style: TextStyle(fontFamily: 'ed',fontSize: 24,color: Colors.pink,fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Class XI-XIII',style: TextStyle(fontFamily: 'ed',fontSize: 24,color: Colors.purple,fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 20,
                      ),
                      Text('August 2015-May 2017',style: TextStyle(fontFamily: 'ed',fontSize: 24,color: Colors.red,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('XII Percentage: 89.0%',style: TextStyle(fontSize:24,color: Colors.green[800],fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('DAV Public School SECL Kusmunda',style: TextStyle(fontFamily: 'ed',fontSize: 24,color: Colors.pink,fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Class X',style: TextStyle(fontFamily: 'ed',fontSize: 24,color: Colors.purple,fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 20,
                      ),
                      Text('2008-2015',style: TextStyle(fontFamily: 'ed',fontSize: 24,color: Colors.red,fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Xth CGPA: 10.0',style: TextStyle(fontSize:24,color: Colors.green[800],fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(


                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text('Work',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigoAccent,fontSize: 28,decoration: TextDecoration.underline),),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Occupassion Inc',style: TextStyle(fontSize:24,color: Colors.pink,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Summer Intern-SDE',style: TextStyle(fontSize:24,color: Colors.purple,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('May 2020-July 2020',style: TextStyle(fontSize:24,color: Colors.green[800],fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('QuickSilver Technologies Pvt Ltd',style: TextStyle(fontSize:24,color: Colors.pink,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Technical Video Maker',style: TextStyle(fontSize:24,color: Colors.purple,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('May 2018-July 2018',style: TextStyle(fontSize:24,color: Colors.green[800],fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Upwork',style: TextStyle(fontSize:24,color: Colors.pink,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Freelance Contractor: Machine Learning & Content Writing',style: TextStyle(fontSize:24,color: Colors.purple,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('June 2018-Present',style: TextStyle(fontSize:24,color: Colors.green[800],fontWeight: FontWeight.bold),),
                    ],
                  ),



                ],
              ),

            ),
            Container(
              width: double.infinity,
              height: 650,
              color: Colors.white,
              child: Column(
                children: [
                  Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text('Languages Known',style: TextStyle(fontWeight:FontWeight.bold,fontFamily:'cal',fontSize: 30,color: Color(0xffb97455)),),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('C++',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                      SmoothStarRating(

                        rating: 4,
                        isReadOnly: true,
                        size: 40,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Python',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                      SmoothStarRating(

                        rating: 3.8,
                        isReadOnly: true,
                        size: 40,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                      ),
                    ],
                  ),
                  Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text('Frameworks Known',style: TextStyle(fontFamily:'cal',fontWeight:FontWeight.bold,fontSize: 30,color: Color(0xffb97455)),),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Scikit Learn',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                      SmoothStarRating(

                        rating: 4.2,
                        isReadOnly: true,
                        size: 40,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Keras',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                      SmoothStarRating(

                        rating: 4.4,
                        isReadOnly: true,
                        size: 40,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('OpenCV',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                      SmoothStarRating(

                        rating: 4.3,
                        isReadOnly: true,
                        size: 40,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Numpy/Pandas/Matplotlib ',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                      SmoothStarRating(

                        rating: 4.2,
                        isReadOnly: true,
                        size: 40,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Flutter Development',style: TextStyle(fontSize: 18,color: Colors.teal,fontWeight: FontWeight.bold),),
                      SmoothStarRating(

                        rating: 3.5,
                        isReadOnly: true,
                        size: 40,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Text('An analysis of my Github Profile can be found here!',
                    style: TextStyle(fontSize: 22,color: Colors.purple,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                        onTap: ()
                        {
                          launch("https://sourcerer.io/anubhav9");
                        },
                      )
                    ],
                  )


                ],
              ),





            ),

            Container(
              width: double.infinity,
              height: 300,
              color: Color(0xff434242),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Contact Me',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),

                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email,
                        size: 50,
                        color: Colors.white,),
                      Text('princebest3@rediffmail.com',
                        style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(FlutterIcons.linkedin_box_mco,
                        size: 50,
                        color: Colors.white,),
                      GestureDetector(
                        child: Text('Linkedin',style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold)),
                        onTap: ()
                        {
                          launch('https://www.linkedin.com/in/anubhav-sanyal-424852192/',);

                        },


                      ),

                      //Text('https://www.linkedin.com/in/anubhav-sanyal-424852192/',style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FlutterIcons.github_box_mco,
                        size: 50,
                        color: Colors.white,),
                      GestureDetector(
                        child: Text('Github ',
                          style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),),
                        onTap: ()
                        {
                          launch('https://github.com/Anubhav9');
                        },
                      )

                    ],
                  )
                ],
              ),

            )


          ],

        ),
      ),
    );
  }
}



class projects_f extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ps = Responsive<double>(10, lg: 400).getValue(context);
    var ps_1 = Responsive<double>(0, lg: 0).getValue(context);
    var device_data=MediaQuery.of(context).size;
    print(device_data);
    if(device_data.width< 1000)
    {
      return MaterialApp(
          home: Scaffold(
              backgroundColor: Color(0xff232323),
              body: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Text('PROJECTS',style: TextStyle(fontSize: 36,color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Column(
                          children: [
                            Text('A list of awesome Open Source Projects that I have made',
                              style: TextStyle(fontSize: 22,color: Colors.yellow,fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 500,
                              width: 340,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('Gender and Age Detection',style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 18),),
                                    ],
                                  ),
                                  Row(
                                    children: [

                                      Image.asset('male_face.jpeg',
                                        width: 170,
                                        height: 240,),
                                      Image.asset('gender.jpg',
                                        width: 170,
                                        height: 240,),

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(4,0,0,0),
                                        child: Text('It detects the face of person and based\n \non the detection classifies it into one\n\nof the 2 genders and predics the approx\n\n age of the person in real time',
                                          style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.bold),),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 28,
                                  ),
                                  Row(
                                    children: [
                                      Text('Skills Used: OpenCV, CNN & Transfer\nLearning',
                                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                                            ,color: Colors.red),)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        child:  Text('Github Link',
                                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                                              ,color: Colors.brown),),
                                        onTap: () {
                                          launch('https://github.com/Anubhav9/Gender-and-Age-Predictor');
                                        }
                                        ,
                                      )

                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],

                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Container(
                                height: 500,
                                width: 340,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('COVID-19 Face Mask Detector',style: TextStyle(fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('face.jpg',
                                          width: 170,
                                          height: 240,),
                                        Image.asset('face.jpeg',
                                          width: 170,
                                          height: 240,),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(4,0,0,0),
                                          child: Text('It detects in Real Time whether a\n\n person has worn a face mask or not.\n\nIt can prove very helpful in the\n \npost COVID Situation',
                                            style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 28,
                                    ),
                                    Row(
                                      children: [
                                        Text('Skills Used: OpenCV & CNN',
                                          style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          child:  Text('Github Link',
                                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                                                ,color: Colors.brown),),
                                          onTap: () {
                                            launch('https://github.com/Anubhav9/COVID-19-Face-Mask-Detector');
                                          }
                                          ,
                                        )

                                      ],
                                    ),
                                  ],
                                )
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 500,
                              width: 340,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [

                                      Text('Social Distancing Violation Detector',style: TextStyle(fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('sd.jpg',
                                        width: 170,
                                        height: 240,),
                                      Image.asset('sd.png',
                                        width: 170,
                                        height: 240,),

                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(4,0,0,0),
                                        child: Text('It raises an alert when social \n\ndistancing is not followed ie people\n\n are too close to each other. Currently\n\n an ongoing project',
                                          style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 28,
                                  ),
                                  Row(
                                    children: [
                                      Text('Skills Used: OpenCV & SVM',
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.red),)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        child:  Text('Github Link',
                                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                                              ,color: Colors.brown),),
                                        onTap: () {
                                          launch('');
                                        }
                                        ,
                                      )

                                    ],
                                  ),
                                ],
                              ),

                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Container(
                                height: 500,
                                width: 340,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('COVID-19 Real Time Stats Tracker',style: TextStyle(fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    Row(

                                      children: [

                                        Image.asset('tracking_1.jpg',
                                          width: 170,
                                          height: 240,),
                                        Image.asset('tracking_2.jpg',
                                          width: 170,
                                          height: 240,),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(4,0,0,0),
                                          child: Text('An android app developed in Flutter\n\n which gives you the real time stats\n\n of COVID-19 cases around the world\n\n and cities in India',
                                            style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 28,
                                    ),
                                    Row(
                                      children: [
                                        Text('Skills Used: Flutter & JSON Parsing',
                                          style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          child:  Text('Github Link',
                                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                                                ,color: Colors.brown),),
                                          onTap: () {
                                            launch('https://github.com/Anubhav9/HellO_Covid/tree/master/covid_19');
                                          }
                                          ,
                                        )

                                      ],
                                    ),
                                  ],
                                )

                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Container(
                                height: 500,
                                width: 340,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Summer of Machine Learning',style: TextStyle(fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('machine_learning_1.jpg',
                                          width: 170,
                                          height: 240,),
                                        Image.asset('machine_learning_2.jpg',
                                          width: 170,
                                          height: 240,),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(4,0,0,0),
                                          child: Text('A combination of different mini\n\n projects made in Machine Learning\n\nusing the Basic Algorithms',
                                            style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 28,
                                    ),
                                    Row(
                                      children: [
                                        Text('Skills Used: Cannot Say',
                                          style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          child:  Text('Github Link',
                                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                                                ,color: Colors.brown),),
                                          onTap: () {
                                            launch('https://github.com/Anubhav9/Summer_of_ML');
                                          }
                                          ,
                                        )

                                      ],
                                    ),
                                  ],
                                )

                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Container(

                                height: 500,
                                width: 340,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Summer of Deep Learning',style: TextStyle(fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('deep_learning_1.jpg',
                                          width: 170,
                                          height: 240,),
                                        Image.asset('deep_learning_2_3.jpg',
                                          width: 170,
                                          height: 240,),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(4,0,0,0),
                                          child: Text('A Combination of different mini\n\nprojects made using the basic\n\n Deep Learning Algorithms',
                                            style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text('Skills Used: ANN, CNN, Keras, NLP etc',
                                          style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          child:  Text('Github Link',
                                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                                                ,color: Colors.brown),),
                                          onTap: () {
                                            launch('https://github.com/Anubhav9/Deep-Learning-Summer_of_ML');
                                          }
                                          ,
                                        )

                                      ],
                                    ),
                                  ],
                                )
                            )
                          ],
                        ),
                        SizedBox(
                          height: 120,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('© Anubhav Sanyal. All rights reserved',style: TextStyle(fontSize: 16,color: Colors.yellow,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ],
                    ),

                  ]
              )
          )
      );

    }

    return MaterialApp(

      home: Scaffold(
      body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          width: double.infinity,
          height: 2050,
          color: Color(0xff232323),
          child: Column(
            children: [
            Text('PROJECTS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 80),),
          SizedBox(
            height: 5,
          ),
          Text('A list of awesome Open Source Projects that I have made',style: TextStyle(color: Colors.yellow,fontSize: 40),),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(400,0,0,0),
                child: Container(
                  height: 500,
                  width: 340,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Gender and Age Detection',style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 18),),
                        ],
                      ),
                      Row(
                        children: [

                          Image.asset('male_face.jpeg',
                            width: 170,
                            height: 240,),
                          Image.asset('gender.jpg',
                            width: 170,
                            height: 240,),

                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4,0,0,0),
                            child: Text('It detects the face of person and based\n \non the detection classifies it into one\n\nof the 2 genders and predics the approx\n\n age of the person in real time',
                              style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          Text('Skills Used: OpenCV, CNN & Transfer\nLearning',
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold
                                ,color: Colors.red),)
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Text('Github Link',style: TextStyle(fontSize: 18,color: Colors.brown,fontWeight: FontWeight.bold),),
                            onTap: ()
                            {
                              launch('https://github.com/Anubhav9/Gender-and-Age-Predictor');
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.fromLTRB(400,0,0,0),
                    child: Container(
                        height: 500,
                        width: 340,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('COVID-19 Face Mask Detector',style: TextStyle(fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('face.jpg',
                                  width: 170,
                                  height: 240,),
                                Image.asset('face.jpeg',
                                  width: 170,
                                  height: 240,),

                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(4,0,0,0),
                                  child: Text('It detects in Real Time whether a\n\n person has worn a face mask or not.\n\nIt can prove very helpful in the\n \npost COVID Situation',
                                    style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Text('Skills Used: OpenCV & CNN',
                                  style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Text('Github Link',style: TextStyle(fontSize: 18,color: Colors.brown,fontWeight: FontWeight.bold),),
                                  onTap: ()
                                  {
                                    launch('https://github.com/Anubhav9/COVID-19-Face-Mask-Detector');
                                  },
                                )
                              ],
                            ),
                          ],
                        )
                    ),
                  ),

                ],
              ),

            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(400,0,0,0),
                    child: Container(
                        height: 500,
                        width: 340,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text('Social Distancing Violation Detector',style: TextStyle(fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('sd.jpg',
                                  width: 170,
                                  height: 240,),
                                Image.asset('sd.png',
                                  width: 170,
                                  height: 240,),

                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(4,0,0,0),
                                  child: Text('It raises an alert when social \n\ndistancing is not followed ie people\n\n are too close to each other. Currently\n\n an ongoing project',
                                    style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Text('Skills Used: OpenCV & SVM',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.red),)
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Text('Github Link',style: TextStyle(fontSize: 18,color: Colors.brown,fontWeight: FontWeight.bold),),
                                  onTap: ()
                                  {
                                    launch('');
                                  },
                                )
                              ],
                            ),
                          ],
                        )
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(400,0,0,0),
                    child: Container(
                        height: 500,
                        width: 340,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('COVID-19 Real Time Stats Tracker',style: TextStyle(fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Row(

                              children: [

                                Image.asset('tracking_1.jpg',
                                  width: 170,
                                  height: 240,),
                                Image.asset('tracking_2.jpg',
                                  width: 170,
                                  height: 240,),

                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(4,0,0,0),
                                  child: Text('An android app developed in Flutter\n\n which gives you the real time stats\n\n of COVID-19 cases around the world\n\n and cities in India',
                                    style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Text('Skills Used: Flutter & JSON Parsing',
                                  style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: Text('Github Link',style: TextStyle(fontSize: 18,color: Colors.brown,fontWeight: FontWeight.bold),),
                                  onTap: ()
                                  {
                                    launch('https://github.com/Anubhav9/HellO_Covid/tree/master/covid_19');
                                  },
                                )
                              ],
                            ),
                          ],
                        )
                    ),
                  ),

                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
              children: [
          Row(
          children: [
          Row(
          children: [
          Padding(
          padding: const EdgeInsets.fromLTRB(400,0,0,0),
          child: Container(
              height: 500,
              width: 340,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Summer of Machine Learning',style: TextStyle(fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('machine_learning_1.jpg',
                        width: 170,
                        height: 240,),
                      Image.asset('machine_learning_2.jpg',
                        width: 170,
                        height: 240,),

                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4,0,0,0),
                        child: Text('A combination of different mini\n\n projects made in Machine Learning\n\nusing the Basic Algorithms',
                          style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Row(
                    children: [
                      Text('Skills Used: Cannot Say',
                        style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Text('Github Link',style: TextStyle(fontSize: 18,color: Colors.brown,fontWeight: FontWeight.bold),),
                        onTap: ()
                        {
                          launch('https://github.com/Anubhav9/Web-Scraping-Summer_of_ML');
                        },
                      )
                    ],
                  ),
                ],
              )
          ),
        ),

      ],
    ),
    Row(
    children: [
    Padding(
    padding: const EdgeInsets.fromLTRB(400,0,0,0),
    child: Container(
    height: 500,
    width: 340,
    color: Colors.white,
    child: Column(
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('Summer of Deep Learning',style: TextStyle(fontSize: 18,color: Colors.pink,fontWeight: FontWeight.bold),)
    ],
    ),
      Row(
        children: [
          Image.asset('deep_learning_1.jpg',
            width: 170,
            height: 240,),
          Image.asset('deep_learning_2_3.jpg',
            width: 170,
            height: 240,),

        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(4,0,0,0),
            child: Text('A Combination of different mini\n\nprojects made using the basic\n\n Deep Learning Algorithms',
              style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
      SizedBox(
        height: 28,
      ),
      Row(
        children: [
          Text('Skills Used: ANN, CNN, Keras, NLP etc',
            style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),),
        ],
      ),
      SizedBox(
        height: 14,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Text('Github Link',style: TextStyle(fontSize: 18,color: Colors.brown,fontWeight: FontWeight.bold),),
            onTap: ()
            {
              launch('https://github.com/Anubhav9/Deep-Learning-Summer_of_ML');
            },
          )
        ],
      ),
    ],
    )
    ),
    ),

    ],
    ),

          ],
          ),



              ],
          ),
              SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('© Anubhav Sanyal. All rights reserved',style: TextStyle(fontSize: 24,color: Colors.yellow,fontWeight: FontWeight.bold),)
                ],
              ),





            ],
          ),
        )
      ],
      ),
      ),
    );
  }
}




void main()
{
  runApp(
      MaterialApp(
        home: draft_1(),
      )
  );
}

