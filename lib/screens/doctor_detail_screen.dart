
import 'package:flutter/material.dart';

import '../models/doctor.dart';

class DoctorDetailScreen extends StatelessWidget {
  const DoctorDetailScreen({super.key, required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doctor Details'),
      backgroundColor: Colors.red,
      ),
      body: Column(
        spacing: 20,
        children: [
          Image.asset(

              doctor.photo,
          width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),

          Text(doctor.name),
          Text(doctor.spe),
          Text(doctor.fee.toString()),
          Text(doctor.clinicAddress),


        ],
      ),
    );
  }
}
