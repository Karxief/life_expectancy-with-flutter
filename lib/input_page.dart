// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'My Widgets/Input_pages_containers.dart';
import 'My Widgets/sex_icons.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double sigara = 15.0;
  double spor = 3.5;
  int boy = 170;
  int kilo = 80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: const Text(
              'Yaşam Beklentisi',
            ),
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
            Widget>[
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: CustomContainerWdt(
                        child: buildRowOutlineButtons("1"),
                      )),
                  Expanded(
                      flex: 6,
                      child: CustomContainerWdt(
                        child: buildRowOutlineButtons("2"),
                      ))
                ],
              )),
          Expanded(
              flex: 1,
              child: CustomContainerWdt(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Günde kaç sigara içiyorsunuz?",
                        style: TextStyle(color: Colors.black54, fontSize: 20)),
                    Text(
                      sigara.round().toString(),
                      style:
                          TextStyle(color: Colors.orangeAccent, fontSize: 30),
                    ),
                    Slider(
                        min: 0,
                        max: 30,
                        divisions: 30,
                        value: sigara,
                        onChanged: (double newValue) {
                          setState(() {
                            sigara = newValue;
                          });
                        })
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: CustomContainerWdt(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Haftada kaç kez spor yapıyorsunuz?",
                        style: TextStyle(color: Colors.black54, fontSize: 20)),
                    Text(
                      spor.round().toString(),
                      style:
                          TextStyle(color: Colors.orangeAccent, fontSize: 30),
                    ),
                    Slider(
                        min: 0,
                        max: 7,
                        divisions: 7,
                        value: spor,
                        onChanged: (double newValue) {
                          setState(() {
                            spor = newValue;
                          });
                        })
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            seciliCinsiyet = "KADIN";
                          });
                        },
                        child: CustomContainerWdt(
                            color: seciliCinsiyet == "KADIN"
                                ? Colors.grey
                                : Theme.of(context).primaryColor,
                            child: sex_button(
                                cinsiyet: "KADIN",
                                icon: FontAwesomeIcons.venus)),
                      )),
                  Expanded(
                      flex: 6,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            seciliCinsiyet = "ERKEK";
                          });
                        },
                        child: CustomContainerWdt(
                            color: seciliCinsiyet == "ERKEK"
                                ? Colors.grey
                                : Theme.of(context).primaryColor,
                            child: sex_button(
                                cinsiyet: "ERKEK",
                                icon: FontAwesomeIcons.mars)),
                      ))
                ],
              )),
          FlatButton(
              color: Colors.white, onPressed: () {}, child: Text("Hesapla"))
        ]));
  }

  Row buildRowOutlineButtons(String baslik) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      RotatedBox(
        quarterTurns: -1,
        child: Text(
          baslik == "1" ? "BOY" : "KİLO",
          style: TextStyle(color: Colors.black54, fontSize: 20),
        ),
      ),
      RotatedBox(
        quarterTurns: -1,
        child: Text(baslik == "1" ? boy.toString() : kilo.toString(),
            style: TextStyle(color: Colors.orangeAccent, fontSize: 27)),
      ),
      SizedBox(width: 25),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonTheme(
              child: OutlinedButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                baslik == "1" ? boy++ : kilo++;
              });
            },
          )),
          ButtonTheme(
              child: OutlinedButton(
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                baslik == "1" ? boy-- : kilo--;
              });
            },
          ))
        ],
      )
    ]);
  }
}
