// ignore_for_file: public_member_api_docs, sort_constructors_first
class Travel {
  String name;
  String location;
  String img;
  Travel(
    this.name,
    this.location,
    this.img,
  );
  static List<Travel> travelInfo() {
    return [
      Travel('Balearic islands', 'spain',
          'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
      Travel('Balearic islands', 'spain',
          'https://cdn.pixabay.com/photo/2017/12/15/13/51/polynesia-3021072__340.jpg'),
      Travel('Balearic islands', 'spain',
          'https://images.unsplash.com/photo-1598751337485-0d57b0c50b83?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=682&q=80'),
      Travel('Balearic islands', 'spain',
          'https://images.unsplash.com/photo-1598751337485-0d57b0c50b83?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=682&q=80'),
    ];
  }

  static List mostPlace() {
    return [
      Travel('Sant martin', 'Bangladesh', 'images/bottom1.jpg'),
      Travel('Sant martin', 'Bangladesh', 'images/bottom2.jpg'),
      Travel('Sant martin', 'Bangladesh', 'images/bottom3.jpg'),
      Travel('Sant martin', 'Bangladesh', 'images/bottom4.jpg')
    ];
  }
}
