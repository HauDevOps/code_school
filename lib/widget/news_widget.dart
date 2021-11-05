import 'package:flutter/material.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({Key key}) : super(key: key);

  @override
  _NewsWidgetState createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Tin mới nhất',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.orange),
          textAlign: TextAlign.center,
        ),
        itemTextWidget(),
      ],
    );
  }


  Widget itemTextWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.white70,
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 150,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 150,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 150,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
            Container(
              height: 150,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        ),
      ),
    );
  }
}
