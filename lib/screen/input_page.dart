import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var _formKey = GlobalKey<FormState>();
  var _controllerUserName = TextEditingController();
  var _controllerPassword = TextEditingController();

  var _gender = "Laki - Laki";

  List<String> _hobi = [
    "Berenang",
    "Membaca",
    "Bersepeda",
    "Fashion",
  ];

  List<String> _selectHobi = [];

  var _darkMode = false;

  double _slider = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 20, 20),
        centerTitle: true,
        title: const Text(
          "Isi Data Diri",
        ),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              "Nama",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _textField(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Masukkan Data",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _textFormField(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Jenis Kelamin",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _radio(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Hobi",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _checkBox(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Switch",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _switch(),
          const SizedBox(
            height: 32,
          ),
          const ListTile(
            title: Text(
              "Zoom page",
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          _sliderWitDivision(),
          const SizedBox(
            height: 32,
          ),
          ElevatedButton(
            onPressed: () => openModalBootmSheet(),
            child: Text(
              'Modal BottomSheet',
            ),
          ),
        ],
      ),
    );
  }

  Padding _sliderWitDivision() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Slider(
        value: _slider,
        min: 0,
        max: 10,
        label: '$_slider',
        divisions: 20,
        onChanged: (value) {
          setState(() => _slider = value);
        },
      ),
    );
  }

  ListTile _switch() {
    return ListTile(
      onTap: () => setState(() => _darkMode = !_darkMode),
      title: Text("Dark Mode"),
      trailing: Switch(
        value: _darkMode,
        onChanged: (value) => setState(() => _darkMode = value),
      ),
    );
  }

  Column _checkBox() {
    return Column(
        children: List.generate(_hobi.length, (index) {
      String hobi = _hobi[index];
      return CheckboxListTile(
        title: Text(hobi),
        value: _selectHobi.contains(hobi),
        onChanged: (value) {
          if (value!) {
            _selectHobi.add(hobi);
          } else {
            _selectHobi.remove(hobi);
          }
          setState(() {});
          print(_selectHobi);
        },
      );
    }));
  }

  Column _radio() {
    return Column(
      children: [
        ListTile(
          onTap: () => setState(() => _gender = 'Laki - Laki'),
          leading: Radio(
            value: "Laki - Laki",
            groupValue: _gender,
            onChanged: (value) {
              setState(() => _gender = value.toString());
            },
          ),
          title: Text("Laki-laki"),
        ),
        ListTile(
          onTap: () => setState(() => _gender = 'Perempuan'),
          leading: Radio(
            value: "Perempuan",
            groupValue: _gender,
            onChanged: (value) {
              setState(() => _gender = value.toString());
            },
          ),
          title: Text("Perempuan"),
        ),
      ],
    );
  }

  Padding _textFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) => value == '' ? "Dont Empty" : null,
              controller: _controllerUserName,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextFormField(
              validator: (value) => value == '' ? "Dont Empty" : null,
              controller: _controllerPassword,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(_controllerUserName.text);
                  print(_controllerPassword.text);
                  //.......
                }
              },
              child: Text(
                "Submit",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _textField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          TextField(
            obscureText: true,
            controller: TextEditingController(),
            decoration: const InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              prefixIcon: Icon(Icons.vpn_key),
              suffixIcon: Icon(Icons.visibility),
            ),
          )
        ],
      ),
    );
  }

  void openModalBootmSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              const Divider(
                thickness: 3,
                color: Colors.grey,
                indent: 150,
                endIndent: 150,
              ),
              ListTile(
                title: Text("Modal bottom sheet"),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {},
                        title: Text("Item $index"),
                      );
                    }),
              )
            ],
          ),
        );
      },
    );
  }
}
