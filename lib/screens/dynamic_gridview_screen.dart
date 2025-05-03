
import 'package:flutter/material.dart';
import 'package:uoajk_day3/screens/doctor_detail_screen.dart';

import '../models/doctor.dart';

class DynamicGridviewScreen extends StatelessWidget {
  const DynamicGridviewScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<Doctor> doctors = [
      Doctor(
        name: 'Muhammad Ali',
        spe: 'ENT',
        clinicAddress: 'Phase 2 Bahria Town',
        fee: 2000,
        photo: 'assets/images/ali.jpeg',
      ),
      Doctor(
        name: 'Bano Qudsia',
        spe: 'Psychiatrist',
        clinicAddress: 'F7 Islamabad',
        fee: 2500,
        photo: 'assets/images/bano.jpeg',
      ),
      Doctor(
        name: 'Bilal Khan',
        spe: 'Cardiologist',
        clinicAddress: 'KMC Peshawar',
        fee: 2000,
        photo: 'assets/images/bilal.jpeg',
      ),
      Doctor(
        name: 'Fawad Jan',
        spe: 'General Physician',
        clinicAddress: 'Phase 8 Bahria Town',
        fee: 3000,
        photo: 'assets/images/fawad.jpeg',
      ),
      Doctor(
        name: 'Fozia Waheed',
        spe: 'Gynaecologist',
        clinicAddress: 'Baldia Town Karachi',
        fee: 4000,
        photo: 'assets/images/fozia.jpeg',
      ),
      Doctor(
        name: 'Hina Pervaiz',
        spe: 'Gastroenterologist',
        clinicAddress: 'Phase 2 Bahria Town',
        fee: 2000,
        photo: 'assets/images/hina.jpeg',
      ),
      Doctor(
        name: 'Jin Huang',
        spe: 'Physiotherapist',
        clinicAddress: 'China Town',
        fee: 2000,
        photo: 'assets/images/jin.jpeg',
      ),
      Doctor(
        name: 'Riaz Awan',
        spe: 'ENT',
        clinicAddress: 'Abbottabad Sadar',
        fee: 2000,
        photo: 'assets/images/riaz.jpeg',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Grid View'),
        backgroundColor: Colors.deepOrange,
      ),
      body: GridView.builder(
        itemCount: doctors.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index){

          Doctor doctor = doctors[index];




          return InkWell(
            onTap: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return DoctorDetailScreen(doctor: doctor);
              }));
            },
            child: Card(
              color: Colors.green[100],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(doctor.photo),
                  ),

                  Text(doctor.name),
                  Text(doctor.spe),
                  Text(doctor.fee.toString()),
                ],
              ),
            ),
          );

          }),
    );
  }
}
