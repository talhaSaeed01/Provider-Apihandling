import 'package:flutter/cupertino.dart';

class Data {
  String id = '';
  String title = '';
  String description = '';
  String price = '';
  String discountPercentage = '';
  String rating = '';
  String stock = '';
  String brand = '';
  String category = '';
  String thumbnail = '';
  List<String> images = [];

  Data({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    // this.images=[],
  });
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      'stock': stock,
      'brand': brand,
      'category': category,
      'thumbnail': thumbnail,
    };
  }

  Data.fromJson(Map<String, dynamic> json) {
    if (json['id'] is String || json['id'] is int) {
      id = json['id'].toString();
    }
    if (json['title'] is String || json['title'] is int) {
      title = json['title'].toString();
    }
    if (json['description'] is String || json['description'] is int) {
      description = json['description'].toString();
    }
    if (json['price'] is String || json['price'] is int) {
      price = json['price'].toString();
    }
    if (json['discountPercentage'] is String || json['discountPercentage'] is int) {
      discountPercentage = json['discountPercentage'].toString();
    }

    if (json['rating'] is String || json['rating'] is int) {
      rating = json['rating'].toString();
    }

    if (json['stock'] is String || json['stock'] is int) {
      stock = json['stock'].toString();
    }

    if (json['brand'] is String || json['brand'] is int) {
      brand = json['brand'].toString();
    }

    if (json['category'] is String || json['category'] is int) {
      category = json['category'].toString();
    }
    if (json['thumbnail'] is String || json['thumbnail'] is int) {
      thumbnail = json['thumbnail'].toString();
    }

    if (json['images'] is List) {
      var list = json['images'] as List;
      for (var element in list) {
        print(element);
        images.add(element.toString());
      }
    }
  }
  // if (json["images"] is Map) {
  //   images = Imageclss.fromJson(json["images"]);
  // }
}

class Name {
  String title = '';
  String last = '';
  String first = '';
  Name();
  // Name({required this.title, required this.last, required this.first});
  Name.fromJson(Map<String, dynamic> json) {
    if (json['title'] is String || json['title'] is int) {
      title = json['title'].toString();
    }
    if (json['last'] is String || json['last'] is int) {
      last = json['last'].toString();
    }
    if (json['first'] is String || json['first'] is int) {
      first = json['first'].toString();
    }
  }
}

class Imageclss {
  String large = "";
  String medium = "";
  String thumbnail = "";
  Imageclss();
  Imageclss.fromJson(Map<String, dynamic> json) {
    if (json['large'] is String || json['large'] is int) {
      large = json['large'].toString();
    }
    if (json['medium'] is String || json['medium'] is int) {
      medium = json['medium'].toString();
    }
    if (json['thumbnail'] is String || json['thumbnail'] is int) {
      thumbnail = json['thumbnail'].toString();
    }
  }
}
