import 'package:store_app/learn/color.dart';

void main (){
  MyColor color = MyColor.instance;
  MyColor color2 = MyColor.instance;
  MyColor color3 = MyColor();
  print(color);
  print(color2);
  print(color3);
}