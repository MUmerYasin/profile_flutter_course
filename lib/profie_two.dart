import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_flutter_course/Configs/ProjectColors/project_colors.dart';
import 'package:profile_flutter_course/Configs/ProjectStrings/project_strings.dart';
// import 'package:device_preview/device_preview.dart';

class ProfileTwoClass extends StatefulWidget {
  const ProfileTwoClass({Key? key}) : super(key: key);

  @override
  _ProfileTwoClassState createState() => _ProfileTwoClassState();
}

class _ProfileTwoClassState extends State<ProfileTwoClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            profileVar,
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
          child: Column(
            children: const [
              /// CALL constructor or Object OF all class to show in Main Screen
              ProfileInformation(),
              SocialDetails(),
              // Divider(),
              SettingListCellingClass(),
            ],
          ),
        ));
  }
}

///Class design for Show constant value or Data or content on Screen like Profile images, tile, email, logout button etc.
class ProfileInformation extends StatefulWidget {
  const ProfileInformation({Key? key}) : super(key: key);

  @override
  _ProfileInformationState createState() => _ProfileInformationState();
}

class _ProfileInformationState extends State<ProfileInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
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
                          offset:
                              const Offset(0, 3), // changes position of shadow
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

            //   ],
            // ),
            //           ),
            //         ),

            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //
            //   // mainAxisSize: MainAxisSize.min,
            //
            //   children: [
            //     // Flexible(
            //     //   fit: FlexFit.loose,
            //
            //         // width: MediaQuery.of(context).size.width,
            //
            //
            //
            //
            //             // Row(mainAxisAlignment: MainAxisAlignment.center,
            //             //   crossAxisAlignment: CrossAxisAlignment.center,
            //             //   children: [
            //             //     Flexible(
            //             //       flex : 1,
            //             //       fit: FlexFit.loose,
            //             //       child: SizedBox(
            //             //         height: 40,
            //             //         child: ListView(
            //             //           children: const <Widget>[
            //             //             ListTile(
            //             //               leading: Icon(Icons.map),
            //             //               title: Text('Map'),
            //             //             ),
            //             //             ListTile(
            //             //               leading: Icon(Icons.photo_album),
            //             //               title: Text('Album'),
            //             //             ),
            //             //             ListTile(
            //             //               leading: Icon(Icons.phone),
            //             //               title: Text('Phone'),
            //             //             ),
            //             //           ],
            //             //         ),
            //             //       ),
            //             //     ),
            //             //   ],
            //             // ),
            //             //
            //             // Row(mainAxisAlignment: MainAxisAlignment.center,
            //             //   crossAxisAlignment: CrossAxisAlignment.center,
            //             //   children: [
            //             //     Flexible(fit: FlexFit.loose,
            //             //       flex : 1,
            //             //       child: SizedBox(
            //             //         height: 40,
            //             //         child: ListView(
            //             //           children: const <Widget>[
            //             //             ListTile(
            //             //               leading: Icon(Icons.map),
            //             //               title: Text('Map'),
            //             //             ),
            //             //             ListTile(
            //             //               leading: Icon(Icons.photo_album),
            //             //               title: Text('Album'),
            //             //             ),
            //             //             ListTile(
            //             //               leading: Icon(Icons.phone),
            //             //               title: Text('Phone'),
            //             //             ),
            //             //           ],
            //             //         ),
            //             //       ),
            //             //     ),
            //             //   ],
            //             // ),
            //             //
            //             // Row(mainAxisAlignment: MainAxisAlignment.center,
            //             //   crossAxisAlignment: CrossAxisAlignment.center,
            //             //   children: [
            //             //     Flexible(fit: FlexFit.loose,flex : 1,
            //             //       child: SizedBox(
            //             //         height: 40,
            //             //         child: ListView(
            //             //           children: const <Widget>[
            //             //             ListTile(
            //             //               leading: Icon(Icons.map),
            //             //               title: Text('Map'),
            //             //             ),
            //             //             ListTile(
            //             //               leading: Icon(Icons.photo_album),
            //             //               title: Text('Album'),
            //             //             ),
            //             //             ListTile(
            //             //               leading: Icon(Icons.phone),
            //             //               title: Text('Phone'),
            //             //             ),
            //             //           ],
            //             //         ),
            //             //       ),
            //             //     ),
            //             //   ],
            //             // ),
            //
            //
            //     // ),
            //   ],
            // ),
          ],
        ),
      ],
    );
  }
}

/// This class is made for cell constructor or Object of SocialItems, so we cell this class object at 1 time and all object works as define sequence
/// this Technique help to reduce code in main class
class SocialDetails extends StatefulWidget {
  const SocialDetails({Key? key}) : super(key: key);

  @override
  _SocialDetailsState createState() => _SocialDetailsState();
}

class _SocialDetailsState extends State<SocialDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SocialItems(
                txt: firstTabListString,
                icon: Icons.camera,
              ),
              // SizedBox(
              //   height: 10.0,
              //   child:  Center(
              //     child:  Container(
              //       margin:  EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
              //       height: 5.0,
              //       color: Colors.red,
              //     ),
              //   ),
              // )
              VerticalDivider(indent: 12.0, endIndent: 20.0),
              SocialItems(
                  txt: secondTabListString,
                  icon: Icons.arrow_forward_ios_sharp),
              VerticalDivider(indent: 12.0, endIndent: 20.0),
              SocialItems(
                txt: thirdTabListString,
                icon: Icons.amp_stories,
              ),
              VerticalDivider(indent: 12.0, endIndent: 20.0),
              SocialItems(
                txt: thirdTabListString,
                icon: Icons.amp_stories,
              ),
              // VerticalDivider(),
            ],
          ),
        )
      ],
    );
  }
}

/// Code for design for Tab Bar so we cell it again and again,
class SocialItems extends StatefulWidget {
  final String txt;
  final IconData icon;

  const SocialItems({Key? key, required this.txt, required this.icon})
      : super(key: key);

  @override
  _SocialItemsState createState() => _SocialItemsState();
}

class _SocialItemsState extends State<SocialItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize : MainAxisSize.min,
              // mainAxisSize : MainAxisSize.min,
              children: [
                // Flexible(
                //   fit: FlexFit.loose,
                // SizedBox(width: MediaQuery.of(context).size.width/6,),
                // width: double.infinity,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      widget.icon,
                      color: greenIconColorCustom,
                    ), // icon
                    Text(
                      widget.txt,
                      style: const TextStyle(
                        color: subTitleColorCustom,
                        fontSize: 12.0,
                      ),
                    ), // text
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical : 8.0, horizontal : 0.0),
                //   child: const VerticalDivider(),
                // ),
                //
                // const VerticalDivider(
                // ),
                // Expanded(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisSize: MainAxisSize.min,
                //     children: <Widget>[
                //       Icon(
                //         Icons.call,
                //         color: greenIconColorCustom,
                //       ), // icon
                //       Text(secondTabListString,            style: TextStyle(
                //         color: subTitleColorCustom,
                //         fontSize: 12.0,),    ), // text
                //     ],
                //   ),
                // ),
                // const VerticalDivider(),
                // Expanded(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisSize: MainAxisSize.min,
                //     children: <Widget>[
                //       Icon(
                //         Icons.call,
                //         color: greenIconColorCustom,
                //       ), // icon
                //       Text(thirdTabListString,            style: TextStyle(
                //         color: subTitleColorCustom,
                //         fontSize: 12.0,),    ), // text
                //     ],
                //   ),
                // ),
                // const VerticalDivider(),
                // Expanded(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     mainAxisSize: MainAxisSize.min,
                //     children: <Widget>[
                //       Icon(
                //         Icons.call,
                //         color: greenIconColorCustom,
                //       ), // icon
                //       Text(thirdTabListString,            style: TextStyle(
                //         color: subTitleColorCustom,
                //         fontSize: 12.0,),    ), // text
                //     ],
                //   ),
                // ),
                // SizedBox(width: MediaQuery.of(context).size.width/6,),

                // ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 1.2,
        ),

        /// Tab Bar Body

        // Flexible (
        // child: Container(
        //   height: 200.0,
        // width: MediaQuery.of(context).size.width,
        // width: double.infinity,
        // child: ListView(
        //   physics: const NeverScrollableScrollPhysics(),
        //   shrinkWrap: true,
        //   scrollDirection: Axis.vertical,
        //
        //   children: <Widget>[
      ],
    );
  }
}

/// This class is made for cell constructor or Object of SocialItems, so we cell this class object at 1 time and all object works as define sequence
/// this Technique help to reduce code in main class
class SettingListCellingClass extends StatefulWidget {
  const SettingListCellingClass({Key? key}) : super(key: key);

  @override
  _SettingListCellingClassState createState() =>
      _SettingListCellingClassState();
}

class _SettingListCellingClassState extends State<SettingListCellingClass> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Divider(
            // thickness: 2.0,
            ),
        SettingList(
            icon: Icons.face,
            txt: firstListTileString,
            iconTwo: Icons.arrow_forward_ios),
        SettingList(
            icon: Icons.amp_stories,
            txt: secondListTileString,
            iconTwo: Icons.arrow_forward_ios),
        SettingList(
            icon: Icons.camera,
            txt: thirdListTileString,
            iconTwo: Icons.arrow_forward_ios),
        SettingList(
            icon: Icons.logout,
            txt: fourthListTileString,
            iconTwo: Icons.arrow_forward_ios),
        SettingList(
            icon: Icons.map,
            txt: fiveListTileString,
            iconTwo: Icons.arrow_forward_ios),
        SettingList(
            icon: Icons.zoom_out_map,
            txt: sixListTileString,
            iconTwo: Icons.arrow_forward_ios),
      ],
    );
  }
}

/// Code for design for Tab Bar so we cell it again and again,
class SettingList extends StatefulWidget {
  final IconData icon;
  final String txt;
  final IconData iconTwo;

  const SettingList({required this.icon, required this.txt, required this.iconTwo});

  @override
  _SettingListState createState() => _SettingListState();
}

class _SettingListState extends State<SettingList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   decoration: BoxDecoration(
        //     border: Border.all(
        //       color: Colors.red, // red as border color
        //     ),
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       Icon(
        //         widget.icon,
        //         color: greenIconColorCustom,
        //       ),
        //       Text(
        //         widget.txt,
        //       ),
        //       Icon(widget.iconTwo),
        //       // Divider(),
        //     ],
        //   ),
        // ),

        // const Divider(
        //   // thickness: 2.0,
        // ),

        ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
          leading: Icon(
            widget.icon,
            color: greenIconColorCustom,
          ),
          title: Text(
            widget.txt,
          ),
          trailing: Icon(widget.iconTwo),
          onTap: () {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text(widget.txt),
                content: Text(widget.txt),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, cancelString),
                    child: const Text(cancelString,style: TextStyle(color: logoutIconColorCustom,),),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, okString),
                    child: const Text(okString,style: TextStyle(color: logoutIconColorCustom,),),
                  ),
                ],
              ),
            );
          },
        ),


        const Divider(
            // thickness: 2.0,
            ),
        //
        // ListTile(
        //   visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        //   contentPadding: EdgeInsets.symmetric(
        //       vertical: 0.0, horizontal: 16.0),
        //   leading: Icon(
        //     Icons.map,
        //     color: greenIconColorCustom,
        //   ),
        //   title: Text(thirdListTileString),
        //   trailing: Icon(Icons.arrow_forward_ios_sharp),
        // ),
        //
        // Divider(
        //   thickness: 2.0,
        // ),
        //
        // ListTile(
        //   visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        //   contentPadding: EdgeInsets.symmetric(
        //       vertical: 0.0, horizontal: 16.0),
        //   leading: Icon(
        //     Icons.map,
        //     color: greenIconColorCustom,
        //   ),
        //   title: Text(fourthListTileString),
        //   trailing: Icon(Icons.arrow_forward_ios_sharp),
        // ),
        //
        // Divider(
        //   thickness: 2.0,
        // ),
        //
        // ListTile(
        //   visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        //   contentPadding: EdgeInsets.symmetric(
        //       vertical: 0.0, horizontal: 16.0),
        //   leading: Icon(
        //     Icons.map,
        //     color: greenIconColorCustom,
        //   ),
        //   title: Text(fiveListTileString),
        //   trailing: Icon(Icons.arrow_forward_ios_sharp),
        // ),
        //
        // Divider(
        //   thickness: 2.0,
        // ),
        //
        // ListTile(
        //   visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        //   contentPadding: EdgeInsets.symmetric(
        //       vertical: 0.0, horizontal: 16.0),
        //   leading: Icon(
        //     Icons.map,
        //     color: greenIconColorCustom,
        //   ),
        //   title: Text(sixListTileString),
        //   trailing: Icon(Icons.arrow_forward_ios_sharp),
        // ),
        //
        // Divider(
        //   thickness: 2.0,
        // ),
      ],
    );
  }
}
