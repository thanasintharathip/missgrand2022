import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          //color: Colors.teal.shade100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/top.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:18.0,right: 20,left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)),
                      color: Colors.white,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(4.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Text(
                              '\n มิสแกรนด์ไทยแลนด์ (อังกฤษ: Miss Grand Thailand) เป็นการประกวดนางงามในประเทศไทย \n'
                                  ' ซึ่งจัดขึ้นเป็นครั้งแรกเมื่อ พ.ศ. 2556 โดยมีณวัฒน์ อิสรไกรศีล เป็นประธานกองประกวด, อารยะ ศุภฤกษ์ \n'
                                  ' เป็นผู้จัดการกองประกวด และวรัญชนา ระดมเล็ก เป็นรองผู้จัดการกองประกวด เพื่อส่งผู้ชนะเลิศเป็นตัวแทน\n'
                                  'ประเทศไทยเข้าประกวดมิสแกรนด์อินเตอร์เนชันแนล และมีการส่งผู้ได้รับรางวัลรองชนะเลิศและผู้เข้ารอบสุดท้ายต่าง ๆ \n'
                                  'ไปประกวดยังเวทีนานาชาติอื่น ๆ ในปี พ.ศ. 2559 มิสแกรนด์ไทยแลนด์ได้มีการเปลี่ยนรูปแบบใหม่ให้เหมือนกับการประกวดนางงามในสหรัฐ,\n'
                                  'ประเทศฝรั่งเศส และประเทศเวเนซุเอลา โดยการให้ทั้ง 77 จังหวัดจัดการประกวดมิสแกรนด์ขึ้น เพื่อหาตัวแทนของแต่ละจังหวัด โดยให้ใช้ชื่อ "มิสแกรนด์" แล้วตามด้วยจังหวัด ',
                              //textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(fontSize: 16.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),




            ],
          ),
        ));
  }
}
