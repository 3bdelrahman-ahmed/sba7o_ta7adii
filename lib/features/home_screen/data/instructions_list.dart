

import 'package:spa7o_ta7adii/features/Games/arosty_screen/presentation/pages/arosty_screen.dart';
import 'package:spa7o_ta7adii/features/Games/bank_screen/presentation/pages/bank_screen.dart';
import 'package:spa7o_ta7adii/features/Games/erza3s7_screen/presentation/pages/erza3_screen.dart';
import 'package:spa7o_ta7adii/features/Games/labsSa7bah_screen/presentation/pages/labs_screen.dart';
import 'package:spa7o_ta7adii/features/Games/meenana_screen/presentation/pages/meenana_screen.dart';
import 'package:spa7o_ta7adii/features/Games/meenxelsora_screen/presentation/pages/meenxelsora_screen.dart';
import 'package:spa7o_ta7adii/features/Games/passwordchallenge_screen/presentation/pages/passwordchallenge_screen.dart';
import 'package:spa7o_ta7adii/features/Games/risk_screen/presentation/pages/risk_screen.dart';
import 'package:spa7o_ta7adii/features/Games/seba2_screen/presentation/pages/seba2_screen.dart';
import 'package:spa7o_ta7adii/features/Games/tamsel_screen/presentation/pages/tamseel_screen.dart';

class InstructionsList {
  static List screens = [
  TamseelScreen(),
    MeenAnaScreen(),
    LabsSa7bkScreen(),
    RiskScreen(),
    BankScreen(),
    PasswordScreen(),
    Seba2Screen(),
    ArostyScreen(),
    MeenXelsoraScreen(),
    Erza3Screen()
  ];


 static List <String> gameNames=[
    "تمثيل",
    " مين انا",
    "لبس صاحبك",
    " ريسك",
    " بنك",
    " كلمة السر",
    "سباق السرعة",
    "عروستي",
    "مين في الصورة",
    "ارزع صح",
  ];

 static List <String> instr =
  [  // تمثيل
       """  متاح 60 ثانية لكل فريق لتخمين اللاعب * 
       ومتاح للفريق 3 تخمينات فقط  
       
       
       
         ممنوع الاشارة او الكلام *
                                                         
                                                         
          في حالة فشل الفريق في التخمين متاح *
      للفريق الخصم  عشر ثواني لتخمين اسم واحد  """
    ,

// مين انا
    """
     هناك 5 ادلة متاحة لكل لاعب ويتم *
      لعب 3 جولات 
     
     
     في حالة تخمين اسم خاطئ من الفريق *
    يحرم الفريق من الاجابة في الدليل القادم   
    """,

   // لبس صاحبك
    """
    كل لاعب يزايد علي زميله في معرفة *
     عدد الاجابات في 30 ثانية 
     
     يتم لعب 8 جولات * 
     
     يتم اعلان السؤال بعد انتهاء المزاد *
      ومع بداية الوقت مباشرة 
     
      اذا لم يستطع الفائز بالمزاد بالاجابة *
       تذهب النقطة للفريق الاخر
         """,
   //ريسك
    """
    يختار الفريق سؤال من الاختيارت *
     المتاحة علي الشاشة ويربح نقاط السؤال في حالة الاجابة الصحيحة
    
    يفوز الفريق صاحب النقاط الاكثر *
    
    يوجد سؤال بضعف النقاط لا يعلمه * 
    المتسابقون 
    
  وسائل المساعدة *
 الاتصال بصديق – اضافة الوقت – اختيارات – الاجابة علي سؤال الخصم في حالة عدم الاجابة
    """,
   //بنك
    """
    يتم لعب ست جولات 3 لكل فريق *
    
    كل جولة 12 سؤال او دقيقتان *
    
    يمكن للفريق قول بنك قبل اي سؤال *
     لحفظ النقاط السابقة والعد من جديد 
     
     في حالة الاجابة الخطا وعدم قول بنك *
      سابقا يتم العد من جديد ومسح النقاط السابقة
      
       تسلسل النقاط  1 .. 2 .. 4 .. 8
    """,
   // كلمة السر
    """
    ممنوع ذكر اسم اي لاعب وممنوع ذكر اسم *
    اي فريق وممنوع ذكر جنسيه اللاعب او رقمه 
    
   يجب ذكر كلمة واحدة فقط كل مرة *
   
   متاح تلاتين ثانية لكل فريق لقول *
    الكلمة وسماع الاجابة
    """,
   // سباق السرعة
    """
    كل فرد من الفريق له سؤال يجب *
    اجابة خمس اجابات في 10 ثواني فقط 
    """,
   """
   يتم البدء بمزاد من كل لاعب علي *
   زميله في عدد الاسئلة المتاحة لمعرفة اللاعب صاحب الرقم الاقل هو من سيشارك في الجولة
   
   متلقي السؤال يجاوب بنعم او لا فقط *
   حتي في حالة عدم الاجابة
   
   في حالة عدم معرفة الاجابة بعد سماع *
    كل الاسئلة يمكن للفريق الاخر استخدام المتبقي من الاسئلة ثم الاجابة
    
    في حالة عدم المعرفة ايضا يتم المزايده *
     مجددا 
   """,
   // مين في الصورة
   """
   يتم عرض صورة لفريق في بداية *
   المباراه ويتم لعب خمس جولات
   
   يجب علي كل لاعب تخمين اسم لاعب *
   من الاحدي عشر
   
   الفريق صاحب اكبر عدد من الاجابات *
   الصحيحة يفوز بالجولة 
   
   
   اذا جاوب اللاعب اجابتين خاطئتين يتم *
 استبعاده من الجولة   

   """,
   // ارزع صح
        """
        يتم طرح السؤال علي الفريقين وصاحب *
        الاجابة الاقرب يفوز بالنقطة
        
        يتم لعب 5 جولات *
        """,


  ];

 static List <String> photos=
  [
    "assets/acting.jpeg",
    "assets/playershadow.jpg",
    "assets/friend.jpeg",
    "assets/risk.jpeg",
    "assets/bank.jpeg",
    "assets/lock.jpeg",
    "assets/speed.jpeg",
    "assets/who.jpeg",
    "assets/whoisPic.jpg",
    "assets/arza3.jpeg",
  ];
}