import 'package:flutter/material.dart';
import 'package:testapp/style/theme.dart' as Theme;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    Material backButon;
    return Scaffold(

      body: Center(

        child:Container(
          height:MediaQuery.of(context).size.height ,
          width:MediaQuery.of(context).size.width ,
          color: Theme.Colors.background,

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,

              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    width:MediaQuery.of(context).size.width ,
                     alignment: Alignment.topCenter,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('تطبيق تجريبي'  ,
                              style: TextStyle( fontSize: 30, color: Theme.Colors.textcolor, fontFamily: 'Tajawal' ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('تطبيق الادارة'  ,
                              style: TextStyle(fontSize: 20, color: Theme.Colors.textcolor , fontFamily: 'Tajawal Meduim'), ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('تسليم مركبة لسائق'  ,
                              style: TextStyle(fontSize: 15, color: Theme.Colors.textcolor,fontFamily: 'Tajawal Light'),),
                          ),

                        ]),

              ),
                ),

                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(

                    width:MediaQuery.of(context).size.width ,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Container(

                            width:MediaQuery.of(context).size.width ,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Icon(Icons.check_circle, color: Theme.Colors.iconscolor, size: 100,),
                                      ),
                                    ),

                                    Text('تم التسجيل'  ,
                                      style: TextStyle( fontSize: 35, color: Theme.Colors.textcolor,fontFamily: 'Tajawal'),),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text('تم تسجيل السجل بنجاح'  ,
                                        style: TextStyle(fontSize: 20, color: Theme.Colors.textcolor,fontFamily: 'Tajawal Meduim'),),
                                    ),
                                  ]),
                          ),

                          SizedBox(height: 30,),

                          backButon = Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.Colors.buttonbackground,
                            child: MaterialButton(
                                minWidth: 200,
                                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                onPressed: () {},
                              child: Text("العودة الى الرئيسية",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Theme.Colors.textcolor, fontWeight: FontWeight.bold)),

                            ),

                  ),

                     SizedBox(height: 130,),




        ],


      ),

      ),
                ),
                Container(
                  width:MediaQuery.of(context).size.width ,
                 child: Row(
                    children: <Widget>[
                      Expanded(flex: 5, child: Text('V1.0.0'  , style: TextStyle( fontSize: 17, color: Theme.Colors.textcolor,fontWeight: FontWeight.bold), textAlign: TextAlign.left,),),
                      Expanded(flex: 5,child: Text('تطبيق تجريبي'  , style: TextStyle(fontSize: 17, color: Theme.Colors.textcolor,fontWeight: FontWeight.bold, fontFamily: 'Tajawal Light'),textAlign: TextAlign.right,),),],
                  ),
                ),

    ]),
            ),
    ),
    ),
    );
  }
}
