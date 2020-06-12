class Person{
  String name;
  int age;
  
  Person({this.name,this.age=30});
  
  String toString()
  {
    return 'Name:'+ name +' Age:'+ age.toString();
  }
  
}

void main()
{
  Person p1= new Person(name: 'Max',age: 40);
  print(p1);
  Person p2= new Person(name: 'Mary');
  print(p2);
}
