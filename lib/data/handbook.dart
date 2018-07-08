final appTitle = 'MD Handbook App';

final handbookCurrentTitle = 'CHONY Handbook';


List<String> createSectionTitles(int number) {
  return new List<String>.generate(number, (i) => 'Section ' + i.toString());
}

final handbookSectionTitles  = createSectionTitles(20);

final updatedDate = new DateTime.now();

final handbookTitles = new List<String>.generate(3, (i) => 'Title ' + i.toString());


