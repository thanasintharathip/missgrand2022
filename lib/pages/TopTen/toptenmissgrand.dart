import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'TopTenDetails.dart';
import 'ToptenItem.dart';

class TopTenGrand extends StatefulWidget {
  static const routeName = '/topten';

  const TopTenGrand({Key? key}) : super(key: key);

  @override
  _TopTenGrandState createState() => _TopTenGrandState();
}

class _TopTenGrandState extends State<TopTenGrand> {
  var item = List<String>.generate(1000, (index) => 'dd $index');
  var items = [
    GrandItem(
        id: 1,
        name: "Miss grand Thailand 2022",
        name_grand: "อิงฟ้า วราหะ",
        image: '1.jpg'),
    GrandItem(
        id: 2,
        name: "1st runner up Miss grand Thailand 2022",
        name_grand: "ไฮดี้ อมันดา อแมนด้า เจนเซ่น",
        image: '2.jpg'),
    GrandItem(
        id: 3,
        name: "2nd runner up Miss grand Thailand 2022",
        name_grand: "ทีน่า ธนวรรณ วิกก์",
        image: '3.jpg'),
    GrandItem(
        id: 4,
        name: "3rd runner up Miss grand Thailand 2022",
        name_grand: "หนูดี อรปรียา",
        image: '4.jpg'),
    GrandItem(
        id: 5,
        name: "4th runner up Miss grand Thailand 2022",
        name_grand: "มารีม่า สุภัทรา เกลี้ยงพร้อม",
        image: '5.jpg'),
    GrandItem(
        id: 6,
        name: "5th runner up Miss grand Thailand 2022",
        name_grand: "มาลี ทิพยาภรณ์ พรมราช",
        image: '6.jpg'),
    GrandItem(
        id: 7,
        name: "5th runner up Miss grand Thailand 2022",
        name_grand: "ชมพู อทิตา พยัคฆ์",
        image: '7.jpg'),
    GrandItem(
        id: 8,
        name: "5th runner up Miss grand Thailand 2022",
        name_grand: "ชาล็อต ออสติน",
        image: '8.jpg'),
    GrandItem(
        id: 9,
        name: "5th runner up Miss grand Thailand 2022",
        name_grand: "มาลัย มาลัยกะ คาร",
        image: '9.jpg'),
    GrandItem(
        id: 10,
        name: "5th runner up Miss grand Thailand 2022",
        name_grand: "บิวตี้ วรัญชนา ระดมเล็ก",
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
                  Navigator.pushNamed(
                    context,
                    ToptenDetails.routeName, //FoodDetails
                    arguments: items[index],
                  );
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
                          item.name_grand.toString()
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