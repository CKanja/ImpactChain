import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyPledges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CollectionReference _sdgCollection;

  @override
  void initState() {
    super.initState();
    // Create a reference to the 'sdg' collection in Firestore
    _sdgCollection = FirebaseFirestore.instance.collection('sdg');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SDG List'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _sdgCollection.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          final sdgList = snapshot.data!.docs
              .map((document) => Sdg.fromFirestore(document))
              .toList();

          return ListView.builder(
            itemCount: sdgList.length,
            itemBuilder: (BuildContext context, int index) {
              final sdg = sdgList[index];

              return ListTile(
                title: Text(sdg.title ?? 'No Text'),
                subtitle: Text(sdg.shortDescription ?? 'No Text'),
                trailing: Text(sdg.country ?? 'No Text'),
              );
            },
          );
        },
      ),
    );
  }
}

class Sdg {
  final String? title;
  final String? shortDescription;
  final String? detailedInformation;
  final int? sdgNumber;
  final String? country;

  Sdg({
    required this.title,
    this.shortDescription,
    this.detailedInformation,
    this.sdgNumber,
    this.country,
  });

  factory Sdg.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Sdg(
      title: data['title'],
      shortDescription: data['shortDescription'],
      detailedInformation: data['detailedInformation'],
      sdgNumber: data['sdgNumber'],
      country: data['country'],
    );
  }
}
