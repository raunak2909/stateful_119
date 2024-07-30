void main(){


  List<String> names = ['Raman', 'Aditya', 'Abhijeet', 'Rohan', 'Abhishek', 'rajeev'];

  var filteredList = names.where((eachName){
    return eachName.toLowerCase().startsWith('r'); //|| eachName.startsWith('R');
  }).toList();

  print(filteredList);

}