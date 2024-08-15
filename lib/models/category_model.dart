import 'dart:convert';

class CatModel {
  final String? categoryId;
  final List<ChildCategory>? childCategories;
  final CatModelContent? content;
  final String? displayName;
  final bool? enableNoindexMetaTag;
  final bool? hasChildCategories;
  final bool? hasDropdownMenu;
  final List<MegaNavMarketingBanner>? megaNavMarketingBanner;
  final String? seoCanonicalUrl;
  final List<dynamic>? seoKeywords;
  final String? seoMetaDescription;
  final String? seoName;
  final String? seoTitle;
  final String? targetUrl;
  final int? template;

  CatModel({
    this.categoryId,
    this.childCategories,
    this.content,
    this.displayName,
    this.enableNoindexMetaTag,
    this.hasChildCategories,
    this.hasDropdownMenu,
    this.megaNavMarketingBanner,
    this.seoCanonicalUrl,
    this.seoKeywords,
    this.seoMetaDescription,
    this.seoName,
    this.seoTitle,
    this.targetUrl,
    this.template,
  });

  factory CatModel.fromRawJson(String str) =>
      CatModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CatModel.fromJson(Map<String, dynamic> json) => CatModel(
        categoryId: json["categoryId"],
        childCategories: json["childCategories"] == null
            ? []
            : List<ChildCategory>.from(
                json["childCategories"]!.map((x) => ChildCategory.fromJson(x))),
        content: json["content"] == null
            ? null
            : CatModelContent.fromJson(json["content"]),
        displayName: json["displayName"],
        enableNoindexMetaTag: json["enableNoindexMetaTag"],
        hasChildCategories: json["hasChildCategories"],
        hasDropdownMenu: json["hasDropdownMenu"],
        megaNavMarketingBanner: json["megaNavMarketingBanner"] == null
            ? []
            : List<MegaNavMarketingBanner>.from(json["megaNavMarketingBanner"]!
                .map((x) => MegaNavMarketingBanner.fromJson(x))),
        seoCanonicalUrl: json["seoCanonicalUrl"],
        seoKeywords: json["seoKeywords"] == null
            ? []
            : List<dynamic>.from(json["seoKeywords"]!.map((x) => x)),
        seoMetaDescription: json["seoMetaDescription"],
        seoName: json["seoName"],
        seoTitle: json["seoTitle"],
        targetUrl: json["targetUrl"],
        template: json["template"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "childCategories": childCategories == null
            ? []
            : List<dynamic>.from(childCategories!.map((x) => x.toJson())),
        "content": content?.toJson(),
        "displayName": displayName,
        "enableNoindexMetaTag": enableNoindexMetaTag,
        "hasChildCategories": hasChildCategories,
        "hasDropdownMenu": hasDropdownMenu,
        "megaNavMarketingBanner": megaNavMarketingBanner == null
            ? []
            : List<dynamic>.from(
                megaNavMarketingBanner!.map((x) => x.toJson())),
        "seoCanonicalUrl": seoCanonicalUrl,
        "seoKeywords": seoKeywords == null
            ? []
            : List<dynamic>.from(seoKeywords!.map((x) => x)),
        "seoMetaDescription": seoMetaDescription,
        "seoName": seoName,
        "seoTitle": seoTitle,
        "targetUrl": targetUrl,
        "template": template,
      };
}

class ChildCategory {
  final String? categoryId;
  final ChildCategoryContent? content;
  final String? displayName;
  final bool? hasChildCategories;
  final bool? hasDropdownMenu;
  final int? megaNavColumn;
  final String? targetUrl;

  ChildCategory({
    this.categoryId,
    this.content,
    this.displayName,
    this.hasChildCategories,
    this.hasDropdownMenu,
    this.megaNavColumn,
    this.targetUrl,
  });

  factory ChildCategory.fromRawJson(String str) =>
      ChildCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChildCategory.fromJson(Map<String, dynamic> json) => ChildCategory(
        categoryId: json["categoryId"],
        content: json["content"] == null
            ? null
            : ChildCategoryContent.fromJson(json["content"]),
        displayName: json["displayName"],
        hasChildCategories: json["hasChildCategories"],
        hasDropdownMenu: json["hasDropdownMenu"],
        megaNavColumn: json["megaNavColumn"],
        targetUrl: json["targetUrl"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "content": content?.toJson(),
        "displayName": displayName,
        "hasChildCategories": hasChildCategories,
        "hasDropdownMenu": hasDropdownMenu,
        "megaNavColumn": megaNavColumn,
        "targetUrl": targetUrl,
      };
}

class ChildCategoryContent {
  final String? seoCanonicalUrl;
  final List<dynamic>? seoKeywords;
  final String? seoMetaDescription;
  final String? seoName;
  final String? seoTitle;
  final String? targetUrl;

  ChildCategoryContent({
    this.seoCanonicalUrl,
    this.seoKeywords,
    this.seoMetaDescription,
    this.seoName,
    this.seoTitle,
    this.targetUrl,
  });

  factory ChildCategoryContent.fromRawJson(String str) =>
      ChildCategoryContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChildCategoryContent.fromJson(Map<String, dynamic> json) =>
      ChildCategoryContent(
        seoCanonicalUrl: json["seoCanonicalUrl"],
        seoKeywords: json["seoKeywords"] == null
            ? []
            : List<dynamic>.from(json["seoKeywords"]!.map((x) => x)),
        seoMetaDescription: json["seoMetaDescription"],
        seoName: json["seoName"],
        seoTitle: json["seoTitle"],
        targetUrl: json["targetUrl"],
      );

  Map<String, dynamic> toJson() => {
        "seoCanonicalUrl": seoCanonicalUrl,
        "seoKeywords": seoKeywords == null
            ? []
            : List<dynamic>.from(seoKeywords!.map((x) => x)),
        "seoMetaDescription": seoMetaDescription,
        "seoName": seoName,
        "seoTitle": seoTitle,
        "targetUrl": targetUrl,
      };
}

class CatModelContent {
  final String? bestsellersTargetUrl;
  final String? justArrivedTargetUrl;
  final List<Region3>? region3;
  final String? seoCanonicalUrl;
  final List<dynamic>? seoKeywords;
  final String? seoMetaDescription;
  final String? seoName;
  final String? seoTitle;
  final String? targetUrl;

  CatModelContent({
    this.bestsellersTargetUrl,
    this.justArrivedTargetUrl,
    this.region3,
    this.seoCanonicalUrl,
    this.seoKeywords,
    this.seoMetaDescription,
    this.seoName,
    this.seoTitle,
    this.targetUrl,
  });

  factory CatModelContent.fromRawJson(String str) =>
      CatModelContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CatModelContent.fromJson(Map<String, dynamic> json) =>
      CatModelContent(
        bestsellersTargetUrl: json["bestsellersTargetURL"],
        justArrivedTargetUrl: json["justArrivedTargetURL"],
        region3: json["region3"] == null
            ? []
            : List<Region3>.from(
                json["region3"]!.map((x) => Region3.fromJson(x))),
        seoCanonicalUrl: json["seoCanonicalUrl"],
        seoKeywords: json["seoKeywords"] == null
            ? []
            : List<dynamic>.from(json["seoKeywords"]!.map((x) => x)),
        seoMetaDescription: json["seoMetaDescription"],
        seoName: json["seoName"],
        seoTitle: json["seoTitle"],
        targetUrl: json["targetUrl"],
      );

  Map<String, dynamic> toJson() => {
        "bestsellersTargetURL": bestsellersTargetUrl,
        "justArrivedTargetURL": justArrivedTargetUrl,
        "region3": region3 == null
            ? []
            : List<dynamic>.from(region3!.map((x) => x.toJson())),
        "seoCanonicalUrl": seoCanonicalUrl,
        "seoKeywords": seoKeywords == null
            ? []
            : List<dynamic>.from(seoKeywords!.map((x) => x)),
        "seoMetaDescription": seoMetaDescription,
        "seoName": seoName,
        "seoTitle": seoTitle,
        "targetUrl": targetUrl,
      };
}

class Region3 {
  final String? componentName;
  final int? componentType;
  final bool? enableTesting;
  final List<Link>? links;
  final String? name;
  final bool? testEnabled;
  final String? title;

  Region3({
    this.componentName,
    this.componentType,
    this.enableTesting,
    this.links,
    this.name,
    this.testEnabled,
    this.title,
  });

  factory Region3.fromRawJson(String str) => Region3.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Region3.fromJson(Map<String, dynamic> json) => Region3(
        componentName: json["componentName"],
        componentType: json["componentType"],
        enableTesting: json["enableTesting"],
        links: json["links"] == null
            ? []
            : List<Link>.from(json["links"]!.map((x) => Link.fromJson(x))),
        name: json["name"],
        testEnabled: json["testEnabled"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "componentName": componentName,
        "componentType": componentType,
        "enableTesting": enableTesting,
        "links": links == null
            ? []
            : List<dynamic>.from(links!.map((x) => x.toJson())),
        "name": name,
        "testEnabled": testEnabled,
        "title": title,
      };
}

class Link {
  final String? componentName;
  final int? componentType;
  final bool? enableTesting;
  final String? linkText;
  final String? name;
  final TargetScreen? targetScreen;
  final bool? testEnabled;

  Link({
    this.componentName,
    this.componentType,
    this.enableTesting,
    this.linkText,
    this.name,
    this.targetScreen,
    this.testEnabled,
  });

  factory Link.fromRawJson(String str) => Link.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        componentName: json["componentName"],
        componentType: json["componentType"],
        enableTesting: json["enableTesting"],
        linkText: json["linkText"],
        name: json["name"],
        targetScreen: json["targetScreen"] == null
            ? null
            : TargetScreen.fromJson(json["targetScreen"]),
        testEnabled: json["testEnabled"],
      );

  Map<String, dynamic> toJson() => {
        "componentName": componentName,
        "componentType": componentType,
        "enableTesting": enableTesting,
        "linkText": linkText,
        "name": name,
        "targetScreen": targetScreen?.toJson(),
        "testEnabled": testEnabled,
      };
}

class TargetScreen {
  final String? targetScreen;
  final String? targetValue;

  TargetScreen({
    this.targetScreen,
    this.targetValue,
  });

  factory TargetScreen.fromRawJson(String str) =>
      TargetScreen.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TargetScreen.fromJson(Map<String, dynamic> json) => TargetScreen(
        targetScreen: json["targetScreen"],
        targetValue: json["targetValue"],
      );

  Map<String, dynamic> toJson() => {
        "targetScreen": targetScreen,
        "targetValue": targetValue,
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
  final StyleList? styleList;
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
    this.styleList,
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
        styleList: json["styleList"] == null
            ? null
            : StyleList.fromJson(json["styleList"]),
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
        "styleList": styleList?.toJson(),
        "width": width,
      };
}

class StyleList {
  final String? bottomPadding;

  StyleList({
    this.bottomPadding,
  });

  factory StyleList.fromRawJson(String str) =>
      StyleList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StyleList.fromJson(Map<String, dynamic> json) => StyleList(
        bottomPadding: json["BOTTOM_PADDING"],
      );

  Map<String, dynamic> toJson() => {
        "BOTTOM_PADDING": bottomPadding,
      };
}
