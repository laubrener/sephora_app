import 'dart:convert';

class CategoriesModel {
  final List<RootCategory>? rootCategories;

  CategoriesModel({
    this.rootCategories,
  });

  factory CategoriesModel.fromRawJson(String str) =>
      CategoriesModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      CategoriesModel(
        rootCategories: json["rootCategories"] == null
            ? []
            : List<RootCategory>.from(
                json["rootCategories"]!.map((x) => RootCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "rootCategories": rootCategories == null
            ? []
            : List<dynamic>.from(rootCategories!.map((x) => x.toJson())),
      };
}

class RootCategory {
  final String? categoryId;
  final String? displayName;
  final bool? hasChildCategories;
  final bool? hasDropdownMenu;
  final List<MegaNavMarketingBanner>? megaNavMarketingBanner;
  final String? selectedThumbImage;
  final bool? showInAppJaBsDropdown;
  final String? targetUrl;
  final String? thumbImage;

  RootCategory({
    this.categoryId,
    this.displayName,
    this.hasChildCategories,
    this.hasDropdownMenu,
    this.megaNavMarketingBanner,
    this.selectedThumbImage,
    this.showInAppJaBsDropdown,
    this.targetUrl,
    this.thumbImage,
  });

  factory RootCategory.fromRawJson(String str) =>
      RootCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RootCategory.fromJson(Map<String, dynamic> json) => RootCategory(
        categoryId: json["categoryId"],
        displayName: json["displayName"],
        hasChildCategories: json["hasChildCategories"],
        hasDropdownMenu: json["hasDropdownMenu"],
        megaNavMarketingBanner: json["megaNavMarketingBanner"] == null
            ? []
            : List<MegaNavMarketingBanner>.from(json["megaNavMarketingBanner"]!
                .map((x) => MegaNavMarketingBanner.fromJson(x))),
        selectedThumbImage: json["selectedThumbImage"],
        showInAppJaBsDropdown: json["showInAppJaBsDropdown"],
        targetUrl: json["targetUrl"],
        thumbImage: json["thumbImage"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "displayName": displayName,
        "hasChildCategories": hasChildCategories,
        "hasDropdownMenu": hasDropdownMenu,
        "megaNavMarketingBanner": megaNavMarketingBanner == null
            ? []
            : List<dynamic>.from(
                megaNavMarketingBanner!.map((x) => x.toJson())),
        "selectedThumbImage": selectedThumbImage,
        "showInAppJaBsDropdown": showInAppJaBsDropdown,
        "targetUrl": targetUrl,
        "thumbImage": thumbImage,
      };
}

class MegaNavMarketingBanner {
  final String? altText;
  final String? componentName;
  final int? componentType;
  final bool? enableTesting;
  final String? height;
  final String? imageId;
  final String? imagePath;
  final String? name;
  final String? width;

  MegaNavMarketingBanner({
    this.altText,
    this.componentName,
    this.componentType,
    this.enableTesting,
    this.height,
    this.imageId,
    this.imagePath,
    this.name,
    this.width,
  });

  factory MegaNavMarketingBanner.fromRawJson(String str) =>
      MegaNavMarketingBanner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MegaNavMarketingBanner.fromJson(Map<String, dynamic> json) =>
      MegaNavMarketingBanner(
        altText: json["altText"],
        componentName: json["componentName"],
        componentType: json["componentType"],
        enableTesting: json["enableTesting"],
        height: json["height"],
        imageId: json["imageId"],
        imagePath: json["imagePath"],
        name: json["name"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "altText": altText,
        "componentName": componentName,
        "componentType": componentType,
        "enableTesting": enableTesting,
        "height": height,
        "imageId": imageId,
        "imagePath": imagePath,
        "name": name,
        "width": width,
      };
}
