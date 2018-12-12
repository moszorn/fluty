import 'package:flutter/material.dart';

/*
前端我們有一個canvas元素，可以提供給我們直接去繪製元素，給了我們很大的靈活性，
那麼Flutter中對應的應該就是這個CustomPaint控件了。
 */
Widget buildCustomPaint(){
  return Container( 
    color: Colors.black,
    
    child: CustomPaint( 
      painter: CustomPainterSample(progress: 10),
    )
  );
}




//必須繼承CustomPainter
class CustomPainterSample extends CustomPainter {

  double progress;

  CustomPainterSample({this.progress: 0.0});

  @override
  void paint(Canvas canvas, Size size) {
    Paint p = new Paint();
    p.color = Colors.green;
    p.isAntiAlias = true;
    p.style = PaintingStyle.fill;
    canvas.drawCircle(size.center(const Offset(0.0, 0.0)), size.width / 2 * progress, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


class SquareFragmentState extends State<SquareFragment> with TickerProviderStateMixin {

  double progress = 0.0;

  @override
  void initState() {
    AnimationController ac = new AnimationController(
       vsync: this, 
       duration: const Duration(milliseconds: 10000)
    );
    ac.addListener(() {
      this.setState(() {
        this.progress = ac.value;
      });
    });
    ac.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new CustomPaint(
        painter: new CustomPainterSample(progress: this.progress),
      )
    );
  }
}