import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ToptenItem.dart';



class ToptenDetails extends StatefulWidget {
  static const routeName = '/topdetail';

  const ToptenDetails({Key? key}) : super(key: key);

  @override
  _ToptenDetailsState createState() => _ToptenDetailsState();
}

class _ToptenDetailsState extends State<ToptenDetails> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as GrandItem;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          (args.name),
          style: GoogleFonts.prompt(fontSize: 24.0),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/top.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /*Image.asset(
              'assets/images/${args.image}',
            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ('ตำแหน่ง: ' + args.name),
                          style: GoogleFonts.prompt(fontSize: 18.0),
                        ),
                        if (args.id == 1)
                          Text(
                              'ผลการประกวด\n'
                                  'กรุงเทพมหานคร - อิงฟ้า วราหะ \n'
                                  '(เกิด 15 กุมภาพันธ์ พ.ศ. 2538) ชื่อเล่น มุก, ฟ้า, อิงฟ้า เป็นนักร้อง หมอทำขวัญนาค นางงามชาวไทย \n'
                                  'อิงฟ้าเป็นที่รู้จักในฐานะผู้ชนะการประกวดมิสแกรนด์ไทยแลนด์ 2022 และเป็นตัวแทนประเทศไทยในการประกวดมิสแกรนด์อินเตอร์เนชันแนล\n'
                                  '2022, ซึ่งเธอได้รับรางวัล รองหนึ่งมิสแกรนด์อินเตอร์เนชันแนล 2022 และเธอเป็นผู้ชนะการประกวดมิสแกรนด์ไทยแลนด์คนที่ 10\n'
                                  'นับตั้งแต่ที่มีจัดการประกวดขึ้นเมื่อ พ.ศ. 2556'
                          ),
                        if (args.id == 2)
                          Text(
                              'ลูกครึ่งไทย-เดนมาร์ก เจ้าของตำแหน่ง มิสแกรนด์ภูเก็ต 2022 และ รองอันดับ 1\n'
                                  'Miss Grand Thailand 2022 เป็นตัวแทนประเทศไทยเข้าร่วมการประกวด Miss Intercontinental ครั้งที่ 50 \n'
                                  'ณ เมือง Sharm El-Sheikh สาธารณรัฐอียิปต์ ในการประกวดครั้งนี้ไฮดี้เลือกชุดชื่อ ศรัทธาสมุทร \n'
                                  'ในรอบชุดประจำชาติ ซึ่งได้รับแรงบันดาลใจมากจาก องค์ นาคา นาคิณี ผู้ยิ่งใหญ่ แต่เป็นที่น่าเสียดายที่ในการประกวด Miss Intercontinental 2022\n'
                                  'ไฮดี้ผ่านเพียงแค่รอบ 20 คนสุดท้ายเท่านั้น'
                          ),
                        if (args.id == 3)
                          Text(
                              'เจ้าของตำแหน่ง มิสแกรนด์กาฬสินธุ์ 2022 และรองอันดับ 2 มิสแกรนด์ไทนแลนด์ 2022 (Miss Grand Thailand 2022)\n'
                                  'ตัวแทนสาวไทยเข้าร่วมการประกวด The Miss Globe 2022 ณ สาธารณรัฐแอลเบเนีย สามารถคว้ารองอันดับ3 มิสโกล์บ2022 ที่ประเทศอัลบาเนีย'
                          ),
                        if (args.id == 4)
                          Text(
                              'หนูดี อรปรียา เรียกว่าเป็นอีกหนึ่งตัวเต็งสำหรับเวที มิสแกรนด์ไทยแลนด์ 2022 \n'
                                  'เพราะนอกจากเธอจะมีตำแหน่งเป็นถึง มิสแกรนด์อ่างทอง 2022 แล้ว เธอยังเรียกว่าคว้าตำแหน่งสุดปังอย่าง\n'
                                  'มิสแกรนด์ขวัญใจขอนแก่น ซึ่งเป็นจังหวัดเจ้าภาพของปีนี้อีกด้วย'
                          ),
                        if (args.id == 5)
                          Text(
                              'มารีม่า สุภัทรา เกลี้ยงพร้อม รองอันดับ 4 มิสแกรนด์ไทยแลนด์ 2022 นางงามตัวแทนสาวไทย\n'
                                  'ผู้เข้าร่วมประกวดเวที Miss Tourism International 2022 ณ นครกูจิง รัฐซาราวัก ประเทศมาเลเซีย \n '
                                  'สามารถคว้ามงกุฎใหญ่ระดับนานาชาติมาให้คนไทยได้ชื่นชมสำเร็จในรอบ 20 ปี'
                          ),
                        if (args.id == 6)
                          Text(
                              ''
                          ),
                        if (args.id == 7)
                          Text(
                              'ชมพู อทิตา พยัคฆ์ กองประกวดมิสแกรนด์ไทยแลนด์ประกาศอย่างเป็นทางการ\n'
                                  'บนเฟซบุ๊ก Miss Grand Thailand แต่งตั้ง "ชมพู อทิตา" รองอันดับ 5 มิสแกรนด์ไทยแลนด์2022 \n'
                                  'เป็นตัวแทนประเทศไทยเข้าร่วมการประกวด Face of Beauty International \n'
                                  'และได้รับตำแหน่ง 1st runner up Face of Beauty'
                          ),
                        if (args.id == 8)
                          Text(
                              'ชาล็อต ออสติน รองอันดับ 5 มิสแกรนด์ไทยแลนด์ 2022 มิสแกรนด์ชุมพร 2022\n'
                                  'และเคยประกวดมิสแกรนด์ภูเก็ต 2022 ได้รับตำแหน่ง รองอันดับ 1'
                          ),
                        if (args.id == 9)
                          Text(
                              'มาลัย มาลัยกะ คาร สาวน้อยวัยเพียง 18 ปี ที่กำลังศึกษาอยู่ชั้นมัธยมศึกษาปีที่ 5 เท่านั้น\n'
                                  'แต่มีความสามารถโดดเด่น จนได้รับคะแนนโหวตในรอบตัดสินอย่างเป็นเอกฉันท์ จนมงลงไปแบบไม่ค้านสายตา\n'
                                  'ก่อนจะกลายเป็นตัวแทนนางงามของจังหวัดเชียงรายที่จะร่วมชิงสายสะพายบนเวทีใหญ่อย่าง\n'
                                  'มิสแกรนด์ไทยแลนด์ 2022 และได้รับรางวัล 5th runner up Miss grand Thailand และ มิสแกรนด์เชียงราย 2022'
                          ),
                        if (args.id == 10)
                          Text(
                              'บิวตี้ วรัญชนา ระดมเล็ก รองอันดับ 5 มิสแกรนด์ไทยแลด์ และมิสแกรนด์ขอนแก่น ซึ่งปี2023\n'
                                  'เธอได้รับตำแหน่งในกองประกวดมิสแกรนด์ คือรองผู้จัดการกองประกวดมิสแกรนด์ไทยแลนด์'
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
