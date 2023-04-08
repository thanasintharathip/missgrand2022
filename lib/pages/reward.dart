import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'rewardItem.dart';
class Reward extends StatefulWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  _RewardState createState() => _RewardState();
}

class _RewardState extends State<Reward> {
  var item = List<String>.generate(1000, (index) => 'dd $index');
  var items = [
    rewardItem(
        id:1,
        name: "อิงฟ้า วราหะ",
        reward:"-มิสแกรนด์หมอลำไรส์ซิ่งสตาร์ ได้รับเงินสด 50,000 บาท\n"
            "-ขวัญใจช่างภาพสื่อมวลชน ได้รับเงินรางวัล 50,000 บาท\n"
            "-Miss flora ได้รับเงินรางวัล 30,000 บาท\n"
            "-สาวผิววิงค์ By WHINK WHITE ได้รับเงินรางวัล 100,000 บาท\n"
            "-มิสป๊อปปูล่าโหวต (ขวัญใจขอนแก่น) ได้เข้ารอบ Top11 มิสแกรนด์ ขวัญใจขอนแก่น\n",
        image: '1.jpg'),
    rewardItem(
        id:2,
        name: "ไฮดี้ อมันดา อแมนด้า เจนเซ่น",
        reward:"-ผู้หญิงในสไตล์ Devonte Men ได้รับเงินรางวัล 500,000 บาท\n"
            "-Miss POND's หน้าสดสวย ได้รับเงินรางวัล 100,000 บาท\n"
            "-มิสจีรีช (ขวัญใจขอนแก่น) ได้เข้ารอบ Top11 มิสแกรนด์ขวัญใจขอนแก่น\n",


        image: '2.jpg'),
    rewardItem(
        id:4,
        name: "หนูดี อรปรียา",
        reward:  "-มิสแกรนด์ขวัญใจขอนแก่น ได้รับเงินรางวัล 50,000 บาท\n",
        image: '4.jpg'),
    rewardItem(
        id:5,
        name: "มารีม่า สุภัทรา เกลี้ยงพร้อม",
        reward: '-ขวัญใจผู้บริหาร AVILA ได้รับเงินรางวัล 10,000 บาท',
        image: '5.jpg'),
    rewardItem(
        id:6,
        name: "มาลี ทิพยาภรณ์ พรมราช",
        reward: "ป๊อปปูล่าโหวต ได้รับเงินรางวัล 50,000 บาท\n"

            "Miss grand best seller ได้รับเงินรางวัล 100,000 บาท\n",
        image: '6.jpg'),
    rewardItem(
        id:7,
        name: "ชมพู อทิตา พยัคฆ์",
        reward: '-ชุดว่ายน้ำยอดเยี่ยม ได้รับเงินรางวัล 100,000 บาท',
        image: '7.jpg'),
    rewardItem(
        id:8,
        name: "ชาล็อต ออสติน",
        reward:
        "-Miss grand best seller ได้รับเงินรางวัล 100,000 บาท\n"
            "-นางงามผิวสวย by W Collagen ได้รับเงินรางวัล 50,000 บาท\n"
            "-Best Promoter by WINK WHITE ได้รับเงินรางวัล 50,000 บาท\n"
            "-Miss HEALTHY NO COALORI (ขวัญใจขอนแก่น) ได้รับเงินรางวัล 10,000 บาท\n",
        image: '8.jpg'),
    rewardItem(
        id:10,
        name: "บิวตี้ วรัญชนา ระดมเล็ก",
        reward: '-Miss grand best seller ได้รับเงินรางวัล 100,000 บาท',
        image: '10.jpg'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top 10 Miss grand Thailand 2022"),
      ),
      body: Container(

        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            var item = items[index];

            return Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  print(item);

                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/${item.image}',
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: GoogleFonts.prompt(fontSize: 18.0),
                        ),
                        Text(
                          item.reward.toString()
                          ,
                          style: GoogleFonts.prompt(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
