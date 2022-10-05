import 'package:flutter/material.dart';
import 'package:prova_flutter/routes.dart';


const List<String> stateList = <String>['SP', 'MG', 'RJ', 'SC'];
const List<String> cityList = <String>[
  'Bragança Paulista',
  'Belo Horizonte',
  'Rio de Janeiro',
  'Urupema'
];

class Location extends StatelessWidget {
  const Location();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      floatingActionButton: FloatingActionButton(
                                onPressed: () {
                                  Navigator.of(context).popAndPushNamed(RouterGenerator.cameraPage);
                                },
                                child: const Icon(Icons.camera_alt_outlined),
                                backgroundColor: Color.fromARGB(255, 15, 163, 47),
                              ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 100),
              width: 250,
              height: 180,
              child: Image.asset('assets/illustration.png'),
              
            ),
          ),
          const SizedBox(height: 40),
          Column(
            children: const [
              Text(
                "Select Your Location",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Switch on your location to stay in tune with',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'what’s happening in your area',
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
          const SizedBox(height: 100),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Your State",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const DropdownState(),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Your City",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const DropdownCities(),
              const SizedBox(height: 20),
              TextButton(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size.fromWidth(364),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(15),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.green,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        18.0,
                      ),
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                onPressed: () => null,
              ),
            ],
          )
        ],
      ),
    ),
    ); 
    
  }
}

class DropdownState extends StatefulWidget {
  const DropdownState({super.key});

  @override
  State<DropdownState> createState() => _DropdownState();
}

class _DropdownState extends State<DropdownState> {
  String dropdownValue = stateList.first;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: DropdownButtonFormField<String>(
        value: dropdownValue,
        style: const TextStyle(color: Colors.black, fontSize: 16),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: stateList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropdownCities extends StatefulWidget {
  const DropdownCities({super.key});

  @override
  State<DropdownCities> createState() => _DropdownCities();
}

class _DropdownCities extends State<DropdownCities> {
  String dropdownValue = cityList.first;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: DropdownButtonFormField<String>(
        value: dropdownValue,
        style: const TextStyle(color: Colors.black, fontSize: 16),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: cityList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
