import 'package:flutter/material.dart';

class SetorSampahScreen extends StatefulWidget {
  @override
  _SetorSampahScreenState createState() => _SetorSampahScreenState();
}

class _SetorSampahScreenState extends State<SetorSampahScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedTrashType;
  final _trashTypes = [
    'Plastik',
    'Kertas',
    'Organik',
    'Logam',
    'Lainnya'
  ]; // Add more types as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setor Sampah'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              DropdownButtonFormField<String>(
                value: _selectedTrashType,
                hint: Text('Pilih jenis sampah'),
                onChanged: (newValue) {
                  setState(() {
                    _selectedTrashType = newValue;
                  });
                },
                validator: (value) =>
                    value == null ? 'Field ini wajib diisi' : null,
                items:
                    _trashTypes.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Masukkan Berat Sampah (Kg)',
                  suffixText: 'Kg',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Field ini wajib diisi';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Masukkan angka yang valid';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process data
                  }
                },
                child: Text('Setor'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
