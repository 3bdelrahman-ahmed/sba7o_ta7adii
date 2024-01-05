import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:o3d/o3d.dart';
import 'dart:ui' as ui;

import 'package:spa7o_ta7adii/core/widgets/home_screen_widgets/game_card_widget.dart';
import 'package:spa7o_ta7adii/features/home_screen/data/instructions_list.dart';
import 'package:spa7o_ta7adii/features/instructions_screen/presentaion/instructions_screen.dart';

class HomeScreen extends StatelessWidget{
    O3DController controller = O3DController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
  body: Stack(
    alignment: Alignment.center,
    children: [
   
      // Background Image with Blur
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/staduim.jpeg',
          fit: BoxFit.fill,
        ),
      ),
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Adjust the sigma values for the blur intensity
        child: Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
      ),
      
      // Centered Image with Blur

Center(
  child: ImageFiltered(
    imageFilter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
    child: Image.asset(
      'assets/noso7y.png',
      scale: 7.5,
    ),
  ),
),
   
   GridView.builder
   (
    itemCount: InstructionsList().gameNames.length,
    gridDelegate: 
   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context,  index){
      return GestureDetector(
        onTap: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context)=>InstructionsScreen(index: index))
        );
        },
        child: GameCard(gameTitle: InstructionsList().gameNames[index], instructionText: InstructionsList().instr[index],gameName: InstructionsList().photos[index],)
        );
    }
    )


    ],
  ),
);
  }
}












class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 121, 36, 36).withOpacity(0.5)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width*0.9929512,size.height*-0.0015634);
    path_0.quadraticBezierTo(size.width*0.5288293,size.height*0.0375352,size.width*0.9521463,size.height*0.0777324);
    path_0.cubicTo(size.width*0.9310000,size.height*0.0963662,size.width*0.9450976,size.height*0.0884930,size.width*0.8653415,size.height*0.1522535);
    path_0.cubicTo(size.width*0.5423171,size.height*0.0657042,size.width*0.5430732,size.height*0.0636479,size.width*0.7601707,size.height*0.2027324);
    path_0.cubicTo(size.width*0.6391463,size.height*0.2450986,size.width*0.6273415,size.height*0.2474225,size.width*0.6300976,size.height*0.2485211);
    path_0.quadraticBezierTo(size.width*0.3089268,size.height*0.0863944,size.width*0.5087561,size.height*0.2693239);
    path_0.quadraticBezierTo(size.width*0.4900732,size.height*0.2744507,size.width*0.3333415,size.height*0.2845070);
    path_0.quadraticBezierTo(size.width*0.1241951,size.height*0.1451690,size.width*0.1696829,size.height*0.2837183);
    path_0.lineTo(size.width*0.0025122,size.height*0.2845070);
    path_0.lineTo(size.width*0.0016098,size.height*0.2076479);
    path_0.lineTo(size.width*0.0016341,size.height*0.1380282);
    path_0.quadraticBezierTo(size.width*-0.0007805,size.height*0.0342218,size.width*-0.0015854,size.height*-0.0003803);

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(86, 243, 33, 33)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.05
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.round;
     
         
    
    canvas.drawPath(path_0, paint_stroke_0);
  

  // Layer 1 Copy
  
  Paint paint_fill_1 = Paint()
      ..color = Color.fromARGB(255, 23, 36, 84).withOpacity(0.5)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_1 = Path();
    path_1.moveTo(size.width*0.0265122,size.height*0.9994085);
    path_1.quadraticBezierTo(size.width*0.4906341,size.height*0.9603099,size.width*0.0673171,size.height*0.9201127);
    path_1.cubicTo(size.width*0.0884634,size.height*0.9014789,size.width*0.0743659,size.height*0.9093521,size.width*0.1541220,size.height*0.8455915);
    path_1.cubicTo(size.width*0.4771463,size.height*0.9321408,size.width*0.4763902,size.height*0.9341972,size.width*0.2592927,size.height*0.7951127);
    path_1.cubicTo(size.width*0.3803171,size.height*0.7527465,size.width*0.3921220,size.height*0.7504225,size.width*0.3893659,size.height*0.7493239);
    path_1.quadraticBezierTo(size.width*0.7105366,size.height*0.9114507,size.width*0.5107073,size.height*0.7285211);
    path_1.quadraticBezierTo(size.width*0.5293902,size.height*0.7233944,size.width*0.6861220,size.height*0.7133380);
    path_1.quadraticBezierTo(size.width*0.8952683,size.height*0.8526761,size.width*0.8497805,size.height*0.7141268);
    path_1.lineTo(size.width*1.0169512,size.height*0.7133380);
    path_1.lineTo(size.width*1.0178537,size.height*0.7901972);
    path_1.lineTo(size.width*1.0178293,size.height*0.8598169);
    path_1.quadraticBezierTo(size.width*1.0202439,size.height*0.9636197,size.width*1.0210488,size.height*0.9982254);

    canvas.drawPath(path_1, paint_fill_1);
  

  // Layer 1 Copy
  
  Paint paint_stroke_1 = Paint()
      ..color = Color.fromARGB(85, 13, 13, 89)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.05
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.round;
     
         
    
    canvas.drawPath(path_1, paint_stroke_1);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}



