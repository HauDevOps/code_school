import 'package:flutter/material.dart';

class EduProgram extends StatelessWidget {
  const EduProgram({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: MediaQuery.of(context).size.height / 1.7,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                'CHƯƠNG TRÌNH ĐÀO TẠO',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
            ),
            itemTextWidget(
                imageData: 'assets/edu_program/edu_a.jpg',
                textTop: 'CÔNG NGHỆ THÔNG TIN \nQUỐC TẾ',
                textBottom1: 'Lập trình trí tuệ nhân tạo (AI)',
                textBottom2: 'Kỹ thuật phần mềm',
                textBottom3: '',
                context: context),
            SizedBox(height: 10),
            itemTextWidget(
                imageData: 'assets/edu_program/edu_b.png',
                textTop: 'THIẾT KẾ ĐỒ HỌA & \nMỸ THUẬT QUỐC TẾ',
                textBottom1: 'Thiết kế đồ hoạ & \nMỹ thuật quốc tế',
                textBottom2: '',
                textBottom3: '',
                context: context),
            SizedBox(height: 10),
            itemTextWidget(
                imageData: 'assets/edu_program/edu_c.png',
                textTop: 'KINH TẾ QUỐC TẾ',
                textBottom1: 'Marketing quốc tế',
                textBottom2: 'Tài chính quốc tế',
                textBottom3: 'Quản trị kinh doanh quốc tế',
                context: context),
          ],
        ),
      ),
    );
  }

  Widget itemTextWidget(
      {String imageData,
      String textTop,
      String textBottom1,
      String textBottom2,
      String textBottom3,
      BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 50, right: 50),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width / 4,
              child: CircleAvatar(
                backgroundImage: AssetImage(imageData),
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textTop,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.orange),
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    textBottom1,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    textBottom2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    softWrap: true,
                  ),
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    textBottom3,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14) ??
                            null,
                    overflow: TextOverflow.ellipsis,
                  ),

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
