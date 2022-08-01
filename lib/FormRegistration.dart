import 'dart:ui';

import 'package:flutter/material.dart';
import 'SecondRoute.dart';

class FormRegistration extends StatefulWidget {
  const FormRegistration({Key? key}) : super(key: key);

  @override
  State<FormRegistration> createState() => _FormRegistrationState();
}

class _FormRegistrationState extends State<FormRegistration> {
  TextEditingController ctrusername = new TextEditingController();
  TextEditingController ctrpassword = new TextEditingController();
  TextEditingController ctrphone = new TextEditingController();
  int id = 1;
  String myPhone = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Registration')),
      body: Container(
        child: Column(children: [
          SizedBox(height: 20),
          Text(
            "Rangdev Registration",
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            controller: ctrusername,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),
          Container(
            height: 20,
          ),
          TextField(
            controller: ctrpassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text("Pilih Jenis Kelamin", style: TextStyle(fontSize: 20)),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: id,
                onChanged: (value) {
                  setState(() {
                    id = 1;
                  });
                },
              ),
              Text("Male"),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 2,
                groupValue: id,
                onChanged: (value) {
                  setState(() {
                    id = 2;
                  });
                },
              ),
              Text("Female")
            ],
          ),
          Text("Phone : " + myPhone),
          ElevatedButton(
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );

              print("hasil input phone number : " + result.toString());
              setState(() {
                myPhone = result.toString();
              });
            },
            child: Text("Edit Nomer Telepon"),
            style: ElevatedButton.styleFrom(fixedSize: const Size(160, 20)),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Masukkan Data"))
        ]),
      ),
    );
  }
}
