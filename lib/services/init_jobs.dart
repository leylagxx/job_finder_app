import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addJobs() async {
    List<Map<String, dynamic>> jobs = [
      {
        "name": "Flutter Developer",
        "job_time_type": "Full-time",
        "location": "Almaty, Kazakhstan",
        "salary": "\$3000 - \$5000",
        "created_at": DateTime.now().toString(),
      },
      {
        "name": "Backend Developer",
        "job_time_type": "Part-time",
        "location": "Astana, Kazakhstan",
        "salary": "\$4000 - \$6000",
        "created_at": DateTime.now().toString(),
      }
    ];

    for (var job in jobs) {
      await _firestore.collection('jobs').add(job);
    }

    print("Работы добавлены в Firestore!");
  }
}
