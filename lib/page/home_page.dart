import 'package:flutter/material.dart';
import 'package:school_code/widget/banner_slider_widget.dart';
import 'package:school_code/widget/edu_program_widget.dart';
import 'package:school_code/widget/news_widget.dart';
import 'package:school_code/widget/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  static const routeName = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.png',
          width: 90,
          height: 80,
        ),
        actions: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'HOTLINE: 0329605828',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                  fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                color: Colors.orange,
                height: 40,
                width: 40,
                child: IconButton(
                  icon: Icon(Icons.view_headline,size: 25,),
                  onPressed: (){},
                ),
              ),
            )
          ]),
        ],
        backgroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.message_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BannerSlider(),
            TextWidget(),
            EduProgram(),
            NewsWidget(),
          ],
        ),
      ),
    );
  }
}
