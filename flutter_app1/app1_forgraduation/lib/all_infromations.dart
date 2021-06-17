
var detail_information={
  'name':'懂达一米打',
  'age':'3岁',
  'constellation':'天秤座',
  'current_address':'广州',
  'hometown':'重庆',
  'job':'【IT】计算机/互联网/通信'
};
List<String> review_study_photos=[
  'images/review_study1.jpg','images/review_study2.jpg',
  'images/review_study3.jpg','images/review_study4.jpg',
  'images/review_study5.jpg'
];
GetName(){
  print(detail_information['name']);
  return detail_information['name'];
}
GetPersonalInformation(){
  String datas='';
  for(var value in detail_information.values){
    if(value!='懂达一米打'){
      datas+=value+" | ";
    }
  }
  print(datas);
  return datas;
}
GetKeys(){
  List item_name=[];

  for(var value in detail_information.keys){
    if(value!='懂达一米打'){
      item_name.add(value);
    }
  }
  print(item_name);
  return item_name;
}
GetValues(){
  List item_context=[];
  for(var value in detail_information.values){
    if(value!='懂达一米打'){
      item_context.add(value);
    }
  }
  print('获取值：');
  print(item_context);
  return item_context;
}