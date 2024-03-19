import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'setorSampah.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.purple),
            onPressed: () {
              // Handle logout logic
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            'Selamat Datang',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'herry081288@gmail.com',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Card(
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text('SALDO', style: TextStyle(color: Colors.grey)),
                      Text('Rp.0',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text('KG', style: TextStyle(color: Colors.grey)),
                      Text('0 Kg',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                penarikanUang(),
                riwayatSetor(),
                categorySampah(),
                setorSampah()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget penarikanUang() {
    return Card(
      child: InkWell(
        onTap: () {
          //kehalaman
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.money,
              size: 50,
              color: Colors.green,
            ),
            Text(
              "Penarikan Uang",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget riwayatSetor() {
    return Card(
      child: InkWell(
        onTap: () {
          //kehalaman
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.history,
              size: 50,
              color: Colors.green,
            ),
            Text(
              "Riwayat Setor",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget categorySampah() {
    return Card(
      child: InkWell(
        onTap: () {
          //kehalaman
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.category,
              size: 50,
              color: Colors.green,
            ),
            Text(
              "Jenis Sampah",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget setorSampah() {
    return Card(
      child: InkWell(
        onTap: () {
          print("setorSampah");
          Get.to(SetorSampahScreen());
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.recycling,
              size: 50,
              color: Colors.green,
            ),
            Text(
              "Setor Sampah",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
