import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class CluesWidget extends StatelessWidget {
  const CluesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.sizeOf(context).height * .4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(45),
              top: Radius.circular(30)),
          gradient: LinearGradient(colors: [
            Color(0xff181d3c),
            Color(0xff181d3c).withOpacity(0.4),
            ColorsManager.Primary.withOpacity(0.2)
          ])),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                " "
                    "1- في مسيرتي لعبت مع: محمدو ديارا، بيانتش، كريستوف ميتزيلدر، فرانك ريبيري، ماركوس الونسو، مامادو ساكو، انتونيو آدان، مايكل ايسيان، ريكاردو كارفاليو، ييرزى دوديك، ايمانويل اديبايور، فان دير فارت، ايريك ابيدال، بابلو سارابيا، سيرجيو كاناليس",
                style: Styles.CluesStyle,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "2- شاركت في مسيرتي في دوريان من الدوريات الأوروبية الخمسة الكبري ودوري أخر خارجهم",
                style: Styles.CluesStyle,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "3- توجت بكل الألقاب التي نافست بها في أوروبا فأنا فزت ب 33 بطولة خلال مسيرتي إلي الأن",
                style: Styles.CluesStyle,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "4- غبت عن تمثيل منتخبي لفترة لمشكلة بيني وبين أحد زملائي في المنتخب، وخلال فترة أبتعادي عن المنتخب قلت في أحد التقارير الصحفية أنني أفضل من الهداف التاريخي لمنتخبي مما أثار غضبه وأشعل خلاف بيننا، لاحقاً عدت للمنتخب بعد نهاية المشكلة وتوجت معه ببطولة",
                style: Styles.CluesStyle,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "5- لم أشارك في كأس العالم الأخير رغم استدعائي في القائمة النهائية للمنتخب لداعي الأصابة مما جعلني اترك المعسكر قبل بداية البطولة وأعود إلي ناديَّ للعلاج لأكتشف انه تم المبالغة في حجم إصابتي وهو ما أكده طبيب المنتخب بعد البطولة وأكد انها كانت رغبة المدير الفني للمنتخب لجعلي ارحل مما دفعني للاعتزال دولياً",
                style: Styles.CluesStyle,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    )
    ;
  }
}
