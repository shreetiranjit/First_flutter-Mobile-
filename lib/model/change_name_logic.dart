class PrintNameLoop {
  List<String> namelist = ['Shyam', 'Ram', 'Shyam Parent'];

  String nextname(String namee) {
    String name = namelist[0];
    bool found = false;
    for (String i in namelist) {
      if (found) {
        return i;
      }
      if (i == namee) {
        found = true;
      }
    }
    return name;
  }
}
