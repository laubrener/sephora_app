import 'dart:convert';

class BrandsModel {
  final List<Brand>? data;
  final Meta? meta;

  BrandsModel({
    this.data,
    this.meta,
  });

  factory BrandsModel.fromRawJson(String str) =>
      BrandsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BrandsModel.fromJson(Map<String, dynamic> json) => BrandsModel(
        data: json["data"] == null
            ? []
            : List<Brand>.from(json["data"]!.map((x) => Brand.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
      };
}

class Brand {
  final String? id;
  final String? type;
  final Attributes? attributes;

  Brand({
    this.id,
    this.type,
    this.attributes,
  });

  factory Brand.fromRawJson(String str) => Brand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json["id"],
        type: json["type"],
        attributes: json["attributes"] == null
            ? null
            : Attributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "attributes": attributes?.toJson(),
      };
}

class Attributes {
  final String? slugUrl;
  final String? name;
  final String? description;
  final int? brandLimit;
  final dynamic mobileAppBannerImage;

  Attributes({
    this.slugUrl,
    this.name,
    this.description,
    this.brandLimit,
    this.mobileAppBannerImage,
  });

  factory Attributes.fromRawJson(String str) =>
      Attributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        slugUrl: json["slug-url"],
        name: json["name"],
        description: json["description"],
        brandLimit: json["brand-limit"],
        mobileAppBannerImage: json["mobile-app-banner-image"],
      );

  Map<String, dynamic> toJson() => {
        "slug-url": slugUrl,
        "name": name,
        "description": description,
        "brand-limit": brandLimit,
        "mobile-app-banner-image": mobileAppBannerImage,
      };
}

class Meta {
  final int? totalPages;
  final int? totalItems;
  final int? total;
  final int? currentPage;
  final int? perPage;

  Meta({
    this.totalPages,
    this.totalItems,
    this.total,
    this.currentPage,
    this.perPage,
  });

  factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        totalPages: json["total-pages"],
        totalItems: json["total-items"],
        total: json["total"],
        currentPage: json["current-page"],
        perPage: json["per-page"],
      );

  Map<String, dynamic> toJson() => {
        "total-pages": totalPages,
        "total-items": totalItems,
        "total": total,
        "current-page": currentPage,
        "per-page": perPage,
      };
}
