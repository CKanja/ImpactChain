import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});
  // collection reference
  final CollectionReference pledgeCollection =
      FirebaseFirestore.instance.collection('sdg');

  Future updateUserPledge(
    String avatarUrl,
    String author,
    String datetime,
    String message,
    String name,
  ) async {
    return await pledgeCollection.doc(uid).set({
      'avatarUrl':
          "https://images.unsplash.com/photo-1639949572414-60f01435194b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2RnfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      'author': author,
      'datetime': datetime,
      'message': message,
      'name': name,
    });
  }
}
