import 'package:fluttermyapp/model/items_module.dart';
import 'package:fluttermyapp/model/product_module.dart';

List<productModule> getproductData() {
  List<productModule> productData = new List();
  productModule pdModule = new productModule();
  //1
  pdModule.productName = "lorem ipsum";
  pdModule.price = "\$10";
  pdModule.size = "free";
  pdModule.color = "orange";
  pdModule.imgURL = "images/beat.png";
  productData.add(pdModule);
  pdModule = new productModule();

  //2
  pdModule.productName = "lorem ipsum";
  pdModule.price = "\$10";
  pdModule.size = "Fixed";
  pdModule.color = "BlueWhite";
  pdModule.imgURL = "images/ip.png";
  productData.add(pdModule);
  pdModule = new productModule();

  //3
  pdModule.productName = "lorem ipsum";
  pdModule.price = "\$10";
  pdModule.size = "Fixed";
  pdModule.color = "red";
  pdModule.imgURL = "images/jbl.png";
  productData.add(pdModule);
  pdModule = new productModule();;

  //4
    pdModule.productName = "lorem ipsum";
    pdModule.price = "\$10";
    pdModule.size = "free";
    pdModule.color = "brown";
    pdModule.imgURL = "images/earbud.png";
    productData.add(pdModule);
    pdModule = new productModule();



  return productData;
}

List<itemModule> getItemData() {
  List<itemModule> itemdata = new List();
  itemModule itModule = new itemModule();
  //1
  itModule.price = "\$20";
  itModule.productName = "iphone";
  itModule.imgURL = "images/ip.png";
  itemdata.add(itModule);
  itModule = new itemModule();

  //2
  itModule.price = "\$20";
  itModule.productName = "iphone 11 pro";
  itModule.imgURL = "images/iphone11.png";
  itemdata.add(itModule);
  itModule = new itemModule();

  //3
  itModule.price = "\$20";
  itModule.productName = "headphones";
  itModule.imgURL = "images/beat.png";
  itemdata.add(itModule);
  itModule = new itemModule();

  //4
  itModule.price = "\$20";
  itModule.productName = "jbl";
  itModule.imgURL = "images/jbl.png";
  itemdata.add(itModule);
  itModule = new itemModule();

  //5
  itModule.price = "\$20";
  itModule.productName = "Rule Book";
  itModule.imgURL = "images/chessbook.jpg";
  itemdata.add(itModule);
  itModule = new itemModule();

  //6
  itModule.price = "\$20";
  itModule.productName = "camera";
  itModule.imgURL = "images/camera.png";
  itemdata.add(itModule);
  itModule = new itemModule();

  //7
  itModule.price = "\$20";
  itModule.productName = "camera";
  itModule.imgURL = "images/cam.png";
  itemdata.add(itModule);
  itModule = new itemModule();

  return itemdata;
}
