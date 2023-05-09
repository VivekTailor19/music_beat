import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_beat/screens/select_setting/setting_model.dart';
import 'package:sizer/sizer.dart';

class Beat_Setting extends StatefulWidget {
  const Beat_Setting({Key? key}) : super(key: key);

  @override
  State<Beat_Setting> createState() => _Beat_SettingState();
}

class _Beat_SettingState extends State<Beat_Setting> {
  List<SettingsModel> settinglist = [
    SettingsModel(name: "Backup", icon: Icons.backup_outlined),
    SettingsModel(name: "Notification", icon: Icons.notifications),
    SettingsModel(name: "Share App", icon: Icons.share),
    SettingsModel(name: "Change log", icon: Icons.text_snippet_outlined),
    SettingsModel(name: "Privacy Policy", icon: Icons.privacy_tip_outlined),
    SettingsModel(name: "FAQ", icon: Icons.info_outlined),
    SettingsModel(name: "Quit", icon: Icons.close),
  ];

  bool mode = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text(
            "Settings",
            style: TextStyle(color: Colors.white,fontSize: 25),
          ),
          leading: Icon(
            Icons.audiotrack,
            color: Colors.amber,
            size: 30,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.adjust_rounded,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Container(
                height: 25.h,
                width: 90.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.w),
                   // color: Colors.orange,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://img.freepik.com/free-vector/gradient-dynamic-lines-background_23-2149020285.jpg"),
                        fit: BoxFit.fill),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8.0,top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Enjoy All Benefits!",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Text(
                              "Enjoy listening songs with better \naudio quality without restrictions.\nand without ads",
                            style: TextStyle(fontSize: 12,color: Colors.white),),
                          Container(
                            height: 4.h,
                            width: 30.w,
                            alignment: Alignment.center,
                            child: Text(
                              "Get Premium",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.orange),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.w),
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        "assets/images/setting/setting_offer.png",
                        // height: 22.h,
                        // width: 30.w,
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 0.8,
                color: Colors.white70,
                height: 20,
              ),
              Column(
                children: [
                  SettingTile(settinglist[0].name, settinglist[0].icon),
                  SettingTile(settinglist[1].name, settinglist[1].icon),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Icon(Icons.language,
                            color: Colors.white, size: 25),
                        SizedBox(width: 10),
                        Text("Language",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("English(US)",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          size: 25,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Icon(Icons.remove_red_eye_outlined,
                            color: Colors.white, size: 25),
                        SizedBox(width: 10),
                        Text("Dark Mode",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        Spacer(),
                        CupertinoSwitch(
                          activeColor: Colors.orange,
                          trackColor: Colors.orange,
                          thumbColor: Colors.white,
                          value: mode,
                          onChanged: (value) {
                            setState(() {
                              mode = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  SettingTile(settinglist[2].name, settinglist[2].icon),
                  SettingTile(settinglist[3].name, settinglist[3].icon),
                  SettingTile(settinglist[4].name, settinglist[4].icon),
                  SettingTile(settinglist[5].name, settinglist[5].icon),
                  SettingTile(settinglist[6].name, settinglist[6].icon),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget SettingTile(String? titlename, IconData? icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 25),
          SizedBox(width: 10),
          Text("$titlename",
              style: TextStyle(fontSize: 18, color: Colors.white)),
          Spacer(),
          Icon(
            Icons.navigate_next_rounded,
            size: 25,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
