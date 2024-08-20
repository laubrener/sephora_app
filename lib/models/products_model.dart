import 'dart:convert';

class ProductsModel {
  final String? browseFilterName;
  final String? browseFilterValue;
  final String? breadcrumbsSeoJsonLd;
  final List<Category>? categories;
  final String? categoryId;
  final Content? content;
  final int? currentPage;
  final String? displayName;
  final bool? enableNoindexMetaTag;

  final String? navigationSeoJsonLd;
  final int? pageSize;
  final String? pageType;
  final ParentCategory? parentCategory;
  final List<Product>? products;

  final String? responseSource;
  final String? seoCanonicalUrl;
  final String? seoContent;
  final List<dynamic>? seoKeywords;
  final String? seoMetaDescription;
  final String? seoName;
  final String? seoTitle;
  final String? targetUrl;
  final int? template;
  final int? totalProducts;
  final bool? ugcWidgetEnabled;
  final bool? responseFromMicroService;

  final String? seoMetaContent;

  ProductsModel({
    this.browseFilterName,
    this.browseFilterValue,
    this.breadcrumbsSeoJsonLd,
    this.categories,
    this.categoryId,
    this.content,
    this.currentPage,
    this.displayName,
    this.enableNoindexMetaTag,
    this.navigationSeoJsonLd,
    this.pageSize,
    this.pageType,
    this.parentCategory,
    this.products,
    this.responseSource,
    this.seoCanonicalUrl,
    this.seoContent,
    this.seoKeywords,
    this.seoMetaDescription,
    this.seoName,
    this.seoTitle,
    this.targetUrl,
    this.template,
    this.totalProducts,
    this.ugcWidgetEnabled,
    this.responseFromMicroService,
    this.seoMetaContent,
  });

  factory ProductsModel.fromRawJson(String str) =>
      ProductsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        browseFilterName: json["browseFilterName"],
        browseFilterValue: json["browseFilterValue"],
        breadcrumbsSeoJsonLd: json["breadcrumbsSeoJsonLd"],
        categories: json["categories"] == null
            ? []
            : List<Category>.from(
                json["categories"]!.map((x) => Category.fromJson(x))),
        categoryId: json["categoryId"],
        content:
            json["content"] == null ? null : Content.fromJson(json["content"]),
        currentPage: json["currentPage"],
        displayName: json["displayName"],
        enableNoindexMetaTag: json["enableNoindexMetaTag"],
        navigationSeoJsonLd: json["navigationSeoJsonLd"],
        pageSize: json["pageSize"],
        pageType: json["pageType"],
        parentCategory: json["parentCategory"] == null
            ? null
            : ParentCategory.fromJson(json["parentCategory"]),
        products: json["products"] == null
            ? []
            : List<Product>.from(
                json["products"]!.map((x) => Product.fromJson(x))),
        responseSource: json["responseSource"],
        seoCanonicalUrl: json["seoCanonicalUrl"],
        seoContent: json["seoContent"],
        seoKeywords: json["seoKeywords"] == null
            ? []
            : List<dynamic>.from(json["seoKeywords"]!.map((x) => x)),
        seoMetaDescription: json["seoMetaDescription"],
        seoName: json["seoName"],
        seoTitle: json["seoTitle"],
        targetUrl: json["targetUrl"],
        template: json["template"],
        totalProducts: json["totalProducts"],
        ugcWidgetEnabled: json["ugcWidgetEnabled"],
        responseFromMicroService: json["responseFromMicroService"],
        seoMetaContent: json["seoMetaContent"],
      );

  Map<String, dynamic> toJson() => {
        "browseFilterName": browseFilterName,
        "browseFilterValue": browseFilterValue,
        "breadcrumbsSeoJsonLd": breadcrumbsSeoJsonLd,
        "categories": categories == null
            ? []
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "categoryId": categoryId,
        "content": content?.toJson(),
        "currentPage": currentPage,
        "displayName": displayName,
        "enableNoindexMetaTag": enableNoindexMetaTag,
        "navigationSeoJsonLd": navigationSeoJsonLd,
        "pageSize": pageSize,
        "pageType": pageType,
        "parentCategory": parentCategory?.toJson(),
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "responseSource": responseSource,
        "seoCanonicalUrl": seoCanonicalUrl,
        "seoContent": seoContent,
        "seoKeywords": seoKeywords == null
            ? []
            : List<dynamic>.from(seoKeywords!.map((x) => x)),
        "seoMetaDescription": seoMetaDescription,
        "seoName": seoName,
        "seoTitle": seoTitle,
        "targetUrl": targetUrl,
        "template": template,
        "totalProducts": totalProducts,
        "ugcWidgetEnabled": ugcWidgetEnabled,
        "responseFromMicroService": responseFromMicroService,
        "seoMetaContent": seoMetaContent,
      };
}

class Category {
  final String? categoryId;
  final String? displayName;
  final int? level;
  final List<CategorySubCategory>? subCategories;
  final String? targetUrl;

  Category({
    this.categoryId,
    this.displayName,
    this.level,
    this.subCategories,
    this.targetUrl,
  });

  factory Category.fromRawJson(String str) =>
      Category.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        categoryId: json["categoryId"],
        displayName: json["displayName"],
        level: json["level"],
        subCategories: json["subCategories"] == null
            ? []
            : List<CategorySubCategory>.from(json["subCategories"]!
                .map((x) => CategorySubCategory.fromJson(x))),
        targetUrl: json["targetUrl"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "displayName": displayName,
        "level": level,
        "subCategories": subCategories == null
            ? []
            : List<dynamic>.from(subCategories!.map((x) => x.toJson())),
        "targetUrl": targetUrl,
      };
}

class CategorySubCategory {
  final String? categoryId;
  final String? displayName;
  final int? level;
  final List<SubCategorySubCategory>? subCategories;
  final String? targetUrl;

  CategorySubCategory({
    this.categoryId,
    this.displayName,
    this.level,
    this.subCategories,
    this.targetUrl,
  });

  factory CategorySubCategory.fromRawJson(String str) =>
      CategorySubCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategorySubCategory.fromJson(Map<String, dynamic> json) =>
      CategorySubCategory(
        categoryId: json["categoryId"],
        displayName: json["displayName"],
        level: json["level"],
        subCategories: json["subCategories"] == null
            ? []
            : List<SubCategorySubCategory>.from(json["subCategories"]!
                .map((x) => SubCategorySubCategory.fromJson(x))),
        targetUrl: json["targetUrl"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "displayName": displayName,
        "level": level,
        "subCategories": subCategories == null
            ? []
            : List<dynamic>.from(subCategories!.map((x) => x.toJson())),
        "targetUrl": targetUrl,
      };
}

class SubCategorySubCategory {
  final String? categoryId;
  final String? displayName;
  final bool? isSelected;
  final int? level;
  final String? recordCount;
  final String? targetUrl;

  SubCategorySubCategory({
    this.categoryId,
    this.displayName,
    this.isSelected,
    this.level,
    this.recordCount,
    this.targetUrl,
  });

  factory SubCategorySubCategory.fromRawJson(String str) =>
      SubCategorySubCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubCategorySubCategory.fromJson(Map<String, dynamic> json) =>
      SubCategorySubCategory(
        categoryId: json["categoryId"],
        displayName: json["displayName"],
        isSelected: json["isSelected"],
        level: json["level"],
        recordCount: json["recordCount"],
        targetUrl: json["targetUrl"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "displayName": displayName,
        "isSelected": isSelected,
        "level": level,
        "recordCount": recordCount,
        "targetUrl": targetUrl,
      };
}

class Content {
  final String? sid;
  final String? slug;
  final List<String>? marketingTilePositions;

  Content({
    this.sid,
    this.slug,
    this.marketingTilePositions,
  });

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        sid: json["sid"],
        slug: json["slug"],
        marketingTilePositions: json["marketingTilePositions"] == null
            ? []
            : List<String>.from(json["marketingTilePositions"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "sid": sid,
        "slug": slug,
        "marketingTilePositions": marketingTilePositions == null
            ? []
            : List<dynamic>.from(marketingTilePositions!.map((x) => x)),
      };
}

class ParentCategory {
  final String? categoryId;
  final String? displayName;
  final String? targetUrl;

  ParentCategory({
    this.categoryId,
    this.displayName,
    this.targetUrl,
  });

  factory ParentCategory.fromRawJson(String str) =>
      ParentCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ParentCategory.fromJson(Map<String, dynamic> json) => ParentCategory(
        categoryId: json["categoryId"],
        displayName: json["displayName"],
        targetUrl: json["targetUrl"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "displayName": displayName,
        "targetUrl": targetUrl,
      };
}

class Product {
  final String? brandName;
  final CurrentSku? currentSku;
  final String? displayName;
  final String? heroImage;
  final String? altImage;
  final String? onSaleData;
  final String? productId;
  final String? rating;
  final String? reviews;
  final bool? pickupEligible;
  final bool? sameDayEligible;
  final bool? shipToHomeEligible;
  final String? targetUrl;
  final bool? sponsored;
  final int? moreColors;

  Product({
    this.brandName,
    this.currentSku,
    this.displayName,
    this.heroImage,
    this.altImage,
    this.onSaleData,
    this.productId,
    this.rating,
    this.reviews,
    this.pickupEligible,
    this.sameDayEligible,
    this.shipToHomeEligible,
    this.targetUrl,
    this.sponsored,
    this.moreColors,
  });

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        brandName: json["brandName"],
        currentSku: json["currentSku"] == null
            ? null
            : CurrentSku.fromJson(json["currentSku"]),
        displayName: json["displayName"],
        heroImage: json["heroImage"],
        altImage: json["altImage"],
        onSaleData: json["onSaleData"],
        productId: json["productId"],
        rating: json["rating"],
        reviews: json["reviews"],
        pickupEligible: json["pickupEligible"],
        sameDayEligible: json["sameDayEligible"],
        shipToHomeEligible: json["shipToHomeEligible"],
        targetUrl: json["targetUrl"],
        sponsored: json["sponsored"],
        moreColors: json["moreColors"],
      );

  Map<String, dynamic> toJson() => {
        "brandName": brandName,
        "currentSku": currentSku?.toJson(),
        "displayName": displayName,
        "heroImage": heroImage,
        "altImage": altImage,
        "onSaleData": onSaleData,
        "productId": productId,
        "rating": double.parse(rating ?? '0'),
        "reviews": reviews,
        "pickupEligible": pickupEligible,
        "sameDayEligible": sameDayEligible,
        "shipToHomeEligible": shipToHomeEligible,
        "targetUrl": targetUrl,
        "sponsored": sponsored,
        "moreColors": moreColors,
      };
}

class CurrentSku {
  final String? imageAltText;
  final bool? isAppExclusive;
  final bool? isBi;
  final bool? isBest;
  final bool? isFirstAccess;
  final bool? isLimitedEdition;
  final bool? isLimitedTimeOffer;
  final bool? isNatural;
  final bool? isNew;
  final bool? isOnlineOnly;
  final bool? isOrganic;
  final bool? isSephoraExclusive;
  final String? listPrice;
  final String? skuId;

  CurrentSku({
    this.imageAltText,
    this.isAppExclusive,
    this.isBi,
    this.isBest,
    this.isFirstAccess,
    this.isLimitedEdition,
    this.isLimitedTimeOffer,
    this.isNatural,
    this.isNew,
    this.isOnlineOnly,
    this.isOrganic,
    this.isSephoraExclusive,
    this.listPrice,
    this.skuId,
  });

  factory CurrentSku.fromRawJson(String str) =>
      CurrentSku.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CurrentSku.fromJson(Map<String, dynamic> json) => CurrentSku(
        imageAltText: json["imageAltText"],
        isAppExclusive: json["isAppExclusive"],
        isBi: json["isBI"],
        isBest: json["isBest"],
        isFirstAccess: json["isFirstAccess"],
        isLimitedEdition: json["isLimitedEdition"],
        isLimitedTimeOffer: json["isLimitedTimeOffer"],
        isNatural: json["isNatural"],
        isNew: json["isNew"],
        isOnlineOnly: json["isOnlineOnly"],
        isOrganic: json["isOrganic"],
        isSephoraExclusive: json["isSephoraExclusive"],
        listPrice: json["listPrice"],
        skuId: json["skuId"],
      );

  Map<String, dynamic> toJson() => {
        "imageAltText": imageAltText,
        "isAppExclusive": isAppExclusive,
        "isBI": isBi,
        "isBest": isBest,
        "isFirstAccess": isFirstAccess,
        "isLimitedEdition": isLimitedEdition,
        "isLimitedTimeOffer": isLimitedTimeOffer,
        "isNatural": isNatural,
        "isNew": isNew,
        "isOnlineOnly": isOnlineOnly,
        "isOrganic": isOrganic,
        "isSephoraExclusive": isSephoraExclusive,
        "listPrice": listPrice,
        "skuId": skuId,
      };
}
