import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pharmacynew/constants.dart';


class  Product{

  String pName,pPrice,pDescription;
Product({this.pName,this.pPrice,this.pDescription});
  final Firestore _firestore=Firestore.instance;
  addProduct(){
//print (this.pName);
    _firestore.collection(kProductsCollection).add(

        {
          kProductName: this.pName,
          kProductPrice: this.pPrice,
          kProductDescription: this.pDescription,


        });

  }
}