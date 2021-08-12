import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_flutter_course/Configs/ProjectColors/project_colors.dart';
import 'package:profile_flutter_course/Configs/ProjectStrings/project_strings.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        // enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      // Add the locale here
      builder: DevicePreview.appBuilder,
      title: 'selection',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        textTheme: GoogleFonts.playfairDisplayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const MyHomePage(title: 'PROFILE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: GoogleFonts.playfairDisplay(
            textStyle: const TextStyle(
              color: appBarColorCustom,
            ),
          ),
        ),
        elevation: 1.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              /// Logout Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton.icon(
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                    label: const Text(logOutString),
                    onPressed: () {},
                  ),
                ],
              ),

              /// Profile Picture, User Name, Email
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: greenIconColorCustom,
                          width: 2,

                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        child: Image.asset('lib/assets/images/222.png'),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      userNameString,
                      style: TextStyle(
                        color: greenIconColorCustom,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    userEmailString,
                    style: TextStyle(
                      color: subTitleColorCustom,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),

              /// Tab Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize : MainAxisSize.min,
                children: const [
                  Flexible(
                    fit: FlexFit.loose,
                    child: SizedBox(
                      height: 80.0,

                      // width: MediaQuery.of(context).size.width,
                      // width: double.infinity,

                      child: TabBar(
                        isScrollable: true,
                        // indicatorWeight : 0.10,
                        indicatorColor: subTitleColorCustom,
                        indicatorSize: TabBarIndicatorSize.tab,
                        automaticIndicatorColorAdjustment: true,
                        indicator: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.transparent, width: 10, style: BorderStyle.solid),
                            // left: BorderSide(
                            //   color: subTitleColorCustom,
                            //   width: 2,
                            // ),
                          ),
                          // Border.all(color: Colors.grey, width: 2),
                          // shape: BoxShape.rectangle,
                          // borderRadius: BorderRadius.circular(50),
                          // color: Colors.white,
                        ),

                        // indicatorPadding : EdgeInsets.zero,

                        labelStyle: TextStyle(
                            fontSize: 12.0, fontFamily: 'Playfair Display', color: subTitleColorCustom,),
                        //For Selected tab
                        unselectedLabelStyle: TextStyle(
                            fontSize: 12.0, fontFamily: 'Playfair Display',color: subTitleColorCustom,),

                        // physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
                        physics: BouncingScrollPhysics(),
                        tabs: <Widget>[
                          Tab(
                            icon: Icon(Icons.cloud_outlined,color: greenIconColorCustom,),
                            text: firstTabListString,
                          ),

                          Tab(
                            icon: Icon(Icons.beach_access_sharp,color: greenIconColorCustom,),
                            text: secondTabListString,
                          ),
                          Tab(
                            icon: Icon(Icons.brightness_5_sharp,color: greenIconColorCustom,),
                            text: thirdTabListString,
                          ),
                          Tab(
                            icon: Icon(Icons.brightness_5_sharp,color: greenIconColorCustom,),
                            text: fourthTabListString,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 2.0,
              ),

              /// Tab Bar Body
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                // mainAxisSize: MainAxisSize.min,

                children: [
                   Flexible(
                    fit: FlexFit.loose,
                    child: SizedBox(
                      height: 500.0,
                      // width: MediaQuery.of(context).size.width,

                      child: TabBarView(
                        children: <Widget>[

                          ListView(
                              // scrollDirection : Axis.vertical,


                            // physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics(),),
                            shrinkWrap : true,
                            children:const <Widget>[
                              SizedBox(
                                height: 40.0,
                                child: Center(
                                  child: ListTile(

                          // contentPadding: EdgeInsets.zero,
                          // minVerticalPadding:0.0,
                                    leading: Icon(Icons.map,color: greenIconColorCustom,),
                                    title: Text(firstListTileString),
                                    trailing: Icon(Icons.arrow_forward_ios_sharp),
                                  ),
                                ),
                              ),


                              Divider(thickness: 2.0,),
                              ListTile(
                                leading: Icon(Icons.map,color: greenIconColorCustom,),
                                title: Text(secondListTileString),
                                trailing: Icon(Icons.arrow_forward_ios_sharp),
                              ),
                              Divider(thickness: 2.0,),
                              ListTile(
                                leading: Icon(Icons.map,color: greenIconColorCustom,),
                                title: Text(thirdListTileString),
                                trailing: Icon(Icons.arrow_forward_ios_sharp),
                              ),
                              Divider(thickness: 2.0,),
                              ListTile(
                                leading: Icon(Icons.map,color: greenIconColorCustom,),
                                title: Text(fourthListTileString),
                                trailing: Icon(Icons.arrow_forward_ios_sharp),
                              ),
                              Divider(thickness: 2.0,),
                              ListTile(
                                leading: Icon(Icons.map,color: greenIconColorCustom,),
                                title: Text(fiveListTileString),
                                trailing: Icon(Icons.arrow_forward_ios_sharp),
                              ),
                              Divider(thickness: 2.0,),
                              ListTile(
                                leading: Icon(Icons.map,color: greenIconColorCustom,),
                                title: Text(sixListTileString),
                                trailing: Icon(Icons.arrow_forward_ios_sharp),
                              ),
                              Divider(thickness: 2.0,),

                            ],
                          ),
                          ListView(
                            children:const <Widget>[
                              ListTile(
                                leading: Icon(Icons.map),
                                title: Text('Map'),
                              ),
                              ListTile(
                                leading: Icon(Icons.photo_album),
                                title: Text('Album'),
                              ),
                              ListTile(
                                leading: Icon(Icons.phone),
                                title: Text('Phone'),
                              ),
                            ],
                          ),
                          ListView(
                            children:const <Widget>[
                              ListTile(
                                leading: Icon(Icons.map),
                                title: Text('Map'),
                              ),
                              ListTile(
                                leading: Icon(Icons.photo_album),
                                title: Text('Album'),
                              ),
                              ListTile(
                                leading: Icon(Icons.phone),
                                title: Text('Phone'),
                              ),
                            ],
                          ),
                          ListView(
                            children:const <Widget>[
                              ListTile(
                                leading: Icon(Icons.map),
                                title: Text('Map'),
                              ),
                              ListTile(
                                leading: Icon(Icons.photo_album),
                                title: Text('Album'),
                              ),
                              ListTile(
                                leading: Icon(Icons.phone),
                                title: Text('Phone'),
                              ),
                            ],
                          ),
                        ],
                      ),
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
