import 'package:flutter/material.dart';

import '../models/doctor.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
    required this.doctor,
  });

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal[100],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 10,
          children: [

            Image.asset(
                width: 150,
                height: 150,
                fit: BoxFit.cover,
                doctor.photo),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${doctor.name}',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  '${doctor.spe}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  '${doctor.fee}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}