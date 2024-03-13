import 'human.dart';

void main() {
  Human p1 = Human(id: 8,name: "aggg",number: 9,salary: 1000);
  p1.id = 8888;
  print(p1.id);
  //p1.setNumberofarmes(2);
//  print(p1.getNumberofarms());
  p1.numberofarms=1;
  print(p1.numberofarms);
  Lion scar=Lion();
  Dog bob=Dog();
  Cat katty=Cat();
  katty.sleeping();
 print( bob.numberoflambs);
 // this is polymerphasm is more than shape of class but it must extends like scar is object of lion that extends frpm animal if i have super class and more that class
  // extends from it it can must use all classes that extends from it
  List<Animal> zooAnimal=[scar,bob,katty];
  // example of polymorphism give object by sub class
  A ai=A();
  A a2=P();
  A a3=C();
  ai.pp();
  a2.pp();
  Obj(a3);
  // abstract example
  J s1=K();
  s1.eats();
// default constructor
 Circle circle1= Circle(x: 8, y: 9, raduis: 2.4);
 circle1.draw();
 // named constructor
  Circle circle2=Circle.oragin(raduis: 6);
  circle2.draw();
// mixin class
Dogs boby=Dogs();
boby.walk();
boby.play();
// enum
Gender gender=Gender.male;
if(gender==Gender.male){
  print("gender is male");
}

}

class Animal{
  int numberoflambs=4;
  String name;
  double weight;
  Animal({required this.name, required this.weight});
  walk(){
    print('animals it walk');
  }
  sleeping(){
    print('animals it sleep');
  }
  eat(){
    print("eating");

  }

}

class Lion extends Animal{
  /*
  * super return to class that extends from it and this attribute in sub class it will go to super class that extends from it
  *
  *
  * */
  Lion() : super(name:"jjj",weight: 999);


  rar(){
    print("this is lion");

  }
  // override that method from class that extends and update from it add or delete use
  @override
  void eat(){
    print("lion is eating");
  }
}
class Dog extends Animal{
  Dog() : super(name:"jjj",weight: 999);
  h(){
    print("this is dog");

  }
}
class Cat extends Animal{
  Cat() : super(name:"jjj",weight: 999);
  m(){
    print("this is cat");

  }
}
// polymorphism example
class A{
  void pp(){
    print("A");
  }
}
class P extends A{
@override
  void pp() {
print("B");
    super.pp();
  }
}
class C extends A{
  @override
  void pp() {
print("c");
    super.pp();
  }

}
//example of polymorphism
 void Obj(A a){

  a.pp();
}
/* example of Abstract class
abstract class that make classes must implement override method on it  and other classes that extends declate methods
as he like  and in super you don't implement that method and abstract class can take object from it but cant complete it like X  a; not x a=x()
; error
if you wont to make it make class and extends of super and amke object but from sub
*/
abstract class Family{
eat();
}
class Th extends Family{
  // function abstract
  @override
  eat() {

  }

}
class L extends Family{
  @override
  eat() {
   print("iam eating");
  }

}
 abstract class J{
  eats();
}
class K extends J{
  @override
  eats() {
 print("K");
  }

}
// implement
/*

* implement like extends on all things but it must do all things like it from super class on sub class all things and
* do it like in  super and do it in all class like abstract or not
do any thing like methods and parameters and objects

* */
class Birds{
 int wings=2;
 String color='';
 Fly(){}
  drink(){}

 }
 class Castel implements Birds{
  @override
  String color="s";

  @override
  int wings=9;

  @override
  Fly() {
    // TODO: implement Fly
    throw UnimplementedError();
  }

  @override
  drink() {
    // TODO: implement drink
    throw UnimplementedError();
  }

 }
 class Castel2 implements Birds {
  @override
  String color="";

  @override
  int wings=6;

  @override
  Fly() {
    // TODO: implement Fly
    throw UnimplementedError();
  }

  @override
  drink() {
    // TODO: implement drink
    throw UnimplementedError();
  }

 }
// named constructor
/*
*
* named constructor use to make object by specail way like give it value in it
class circle{
double radius;
circle.origin({required this.radius}){
x=0;
y=0;
}
}
* */
class Circle{
 late int x;
late int y;
  double raduis;
  Circle({required this.x,required this.y,required this.raduis});
  draw(){
    print("draw this circle at x $x and y at $y and raduis $raduis");
  }
  // named constructor
Circle.oragin({required this.raduis}){
    x=0;
    y=0;
}
}
// mixin
/*
* mixin like class but it make you use class like animal  and have class mamles and class repetiles
* in it dogs have method like walk and in it class like sanke cant walk it make you use each for
*   all like use walk with dog and crawl with snake we can make class extend from animal and memels but type animal
* and class can have more than mixin if you have the same method in more than mixin the last one it will used
* we use mixin to solve multi inheritance
* */
class Animals{
  int lamp=4;
 //walk(){}
}
mixin Mammels{
  walk(){
    print('is walking');
  }
}
mixin Reptiles{
  crawl(){
print("is crawling");
  }

}
mixin Pet{
  play(){
    print("animals is playing");
  }
  walk(){
    print(' pet is walking');
  }
}
class Dogs extends Animals with Mammels, Pet{

}
class Snake extends Animals with Reptiles{

}
// object class
/* object class like any object but by defalut it will be in all class like methods in language can we use it
*
* void main(){
* Late ob1=Late();
* ob1.toString
* }
*  class Lat{

}
*
* */
/*class Animal

class dog extends Animal{}

void main(){

Dog jack =Dog();

//jack is not an object it reference in memory that refer to information of  object it in memeory in calss to acess informstion

anonymous object without name and cant call it

like Dog();

}
*/
//enums use when make object and value can probity know it like gender
enum Gender{
male,female
}