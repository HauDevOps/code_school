import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '5 LÝ DO NHẤT ĐỊNH PHẢI CHỌN BTEC FPT',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.orange),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15),
        Text(
          'Cao đẳng Anh Quốc BTEC FPT là sự hợp tác giữa tổ chức giáo dục FPT Education & Tổ chức giáo dục và khảo thí Pearson – Vương quốc Anh (Tổ chức giáo dục hàng đầu Thế Giới)',
          style: TextStyle(fontSize: 15, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 25),
        itemTextWidget(
            'assets/icon/aa.png',
            'BẰNG ANH QUỐC',
            'Được công nhận tại 700+ \ntrường Đại học trên toàn \nthế giới',
            context),
        itemTextWidget('assets/icon/bb.png', '2 NĂM',
            'Học nhanh, có việc\nlàm sớm, nghề nghiệp tốt ', context),
        itemTextWidget('assets/icon/cc.png', '98%',
            'Sinh viên có việc làm \nngay sau khi tốt nghiệp      ', context),
        itemTextWidget(
            'assets/icon/dd.png',
            '* * * * *',
            'Quá trình học tập được \nkiểm soát chặt chẽ bởi \nPearson, đảm bảo chất \nlượng đào tạo                      ',
            context),
        itemTextWidget('assets/icon/ff.png', 'FPT',
            'Uy tín chuyên nghiệp          ', context),
      ],
    );
  }

  Widget itemTextWidget(String imageData, String textTop, String textBottom,
      BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: MediaQuery.of(context).size.width / 1,
        height: MediaQuery.of(context).size.height / 6,
        color: Colors.white70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageData)),
            SizedBox(width: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textTop,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.orange),
                ),
                SizedBox(height: 10),
                Text(
                  textBottom,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
