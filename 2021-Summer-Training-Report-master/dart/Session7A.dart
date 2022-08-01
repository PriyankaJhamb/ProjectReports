mixin c {
  int g=0;
  void f()
  {
    print('Hello');
  }  
}
mixin b
{
  int d=0;
  void u()
  {
    print("World");
  }
}
class a with c,b
{
    void func()
    {
      f();
      u();
      print(g);
      print(d);

    }
}
void main()
{
  a obj=a();
  obj.g=78;
  obj.func();

}
