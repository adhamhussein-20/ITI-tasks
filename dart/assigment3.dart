void main() {
  var list = [10, 20, 30, 40];

  print("List elements:");
  for (var item in list) {
    print(item);
  }

  print("Each element multiplied by 2:");
  list.forEach((element) {
    print(element * 2);
  });

  var mergedList = [...list, ...[50, 60]];
  print("Merged List: $mergedList");

  var student = {'name': 'Ali', 'age': 22, 'grade': 'A'};

  print("Student details:");
  student.forEach((key, value) {
    print("$key: $value");
  });

  student['city'] = 'Cairo';
  student['grade'] = 'B';

  print("Updated Student details:");
  student.forEach((key, value) {
    print("$key: $value");
  });
}
