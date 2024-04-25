class MyColor {
  MyColor.name() {
    print('hi');
  }

  static final instance = MyColor.name();


// or :
  factory MyColor() {
    return instance;
  }
}
