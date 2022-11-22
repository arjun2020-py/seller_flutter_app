// To parse this JSON data, do
//
//     final userProdct = userProdctFromJson(jsonString);

import 'dart:convert';

UserProdct userProdctFromJson(String str) => UserProdct.fromJson(json.decode(str));

String userProdctToJson(UserProdct data) => json.encode(data.toJson());

class UserProdct {
    UserProdct({
        this.image,
        this.name,
        this.price,
        this.offer,
    });

    String? image;
    String? name;
    String? price;
    bool? offer;

    factory UserProdct.fromJson(Map<String, dynamic> json) => UserProdct(
        image: json["image"],
        name: json["name"],
        price: json["price"],
        offer: json["offer"],
    );

    Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "price": price,
        "offer": offer,
    };
}
