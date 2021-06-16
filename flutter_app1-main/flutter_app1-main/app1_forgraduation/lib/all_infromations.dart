
var detail_information={
  'name':'懂达一米打',
  'age':'3岁',
  'constellation':'天秤座',
  'current_address':'广州',
  'hometown':'重庆',
  'job':'【IT】计算机/互联网/通信'
};
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
GetDatas(){
  String datas='';
  for(var value in detail_information.values){
    if(value!='懂达一米打'){
      datas+=value+" | ";
    }
  }
  print(datas);
  return datas;
}