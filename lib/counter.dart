class Counter{
  int value=0;

  int get count=>value;

  Counter({this.value=0});
  void increment(){
    value++;
  }

  void decrement(){
    value--;
  }

  void reset(){
    value =0;
  }

}