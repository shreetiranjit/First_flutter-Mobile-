import 'package:flutter/material.dart';

class StudentsInformation extends StatefulWidget {
  const StudentsInformation({super.key});

  @override
  State<StudentsInformation> createState() => _StudentsInformationState();
}

enum Gender { male, female }

class _StudentsInformationState extends State<StudentsInformation> {
  Gender gender = Gender.male;
  // String address = '';
  String selectedCity = 'Kathmandu';
  final List<String> cities = [
    'Kathmandu',
    'Pokhara',
    'Biratnagar',
    'Birgunj',
    'Chitwan',
    'Lumbini',
    'Dhangadi',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Student DETAILS"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: 'Enter First Name*',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter the name";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: 'Enter Last Name*',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter the last name";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Age*',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter the age";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text("Select Gender:"),
                ),
                RadioListTile<Gender>(
                  title: const Text('Male'),
                  value: Gender.male,
                  groupValue: gender,
                  onChanged: (Gender? value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                RadioListTile<Gender>(
                  title: const Text('Female'),
                  value: Gender.female,
                  groupValue: gender,
                  onChanged: (Gender? value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  maxLines: null,
                  minLines: 2,
                  // onChanged: (value) {
                  //   setState(() {
                  //     address = value;
                  //   });
                  // },
                  decoration: const InputDecoration(
                    labelText: 'Enter Address*',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter the address";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                DropdownButtonFormField(
                  value: selectedCity,
                  onChanged: (String? value) {
                    setState(() {
                      selectedCity = value!;
                    });
                  },
                  items: cities
                      .map((city) => DropdownMenuItem(
                            value: city,
                            child: Text(city),
                          ))
                      .toList(),
                  decoration: const InputDecoration(
                    labelText: 'Select City*',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 30),
                  ),
                  onPressed: () {},
                  child: const Text("Save Student"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 30),
                  ),
                  onPressed: () {},
                  child: const Text("Display Student"),
                ),
              ],
            ),
          ),
        ));
  }
}
