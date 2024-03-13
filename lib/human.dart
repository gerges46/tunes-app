
class Human {
  // encapsulation private set and get
 late  int _numberofarms;
  int? number;
  String? name;
  double? salary;
  int? id;
 /*

  ****************constructor******************
  Human(int id, String name, double salary, int number) {
    this.id = id;
    this.name = name;
    this.salary = salary;
    this.number = number;
  }*/

 Human({this.id,this.number,this.salary,this.name,});
/*  void setNumberofarmes(int numberofarms) {
    if (numberofarms <= 2 && numberofarms >= 0) {
      this._numberofarms = numberofarms;
    }
  }
*/
 set numberofarms(int numberofarms) {
   if (numberofarms <= 2 && numberofarms >= 0) {
     this._numberofarms = numberofarms;
   }
 }



 /* int getNumberofarms(){
    return this._numberofarms;
  }*/
  // the arrow function use ()=> one statement only and don't use return type
  //int  getNumberofarms()=> this._numberofarms;
  // getter with arrow function
  //int  get numberofarms=> this._numberofarms;
  // this the another way to make getter getter must have return type
int  get  numberofarms{
  return this._numberofarms;
}


}
