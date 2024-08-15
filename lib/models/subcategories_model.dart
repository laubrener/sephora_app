import 'dart:convert';

class SubcategoriesModel {
  final String? browseFilterName;
  final String? browseFilterValue;
  final String? breadcrumbsSeoJsonLd;
  final List<Category>? categories;
  final String? categoryId;
  final Content? content;
  final int? currentPage;
  final String? displayName;
  final bool? enableNoindexMetaTag;
  final LinkEquityBlock? linkEquityBlock;
  final String? navigationSeoJsonLd;
  final int? pageSize;
  final String? pageType;
  final ParentCategory? parentCategory;
  final List<Product>? products;
  final List<Refinement>? refinements;
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
  final List<Schema>? schemas;
  final String? seoMetaContent;

  SubcategoriesModel({
    this.browseFilterName,
    this.browseFilterValue,
    this.breadcrumbsSeoJsonLd,
    this.categories,
    this.categoryId,
    this.content,
    this.currentPage,
    this.displayName,
    this.enableNoindexMetaTag,
    this.linkEquityBlock,
    this.navigationSeoJsonLd,
    this.pageSize,
    this.pageType,
    this.parentCategory,
    this.products,
    this.refinements,
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
    this.schemas,
    this.seoMetaContent,
  });

  factory SubcategoriesModel.fromRawJson(String str) =>
      SubcategoriesModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubcategoriesModel.fromJson(Map<String, dynamic> json) =>
      SubcategoriesModel(
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
        linkEquityBlock: json["linkEquityBlock"] == null
            ? null
            : LinkEquityBlock.fromJson(json["linkEquityBlock"]),
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
        refinements: json["refinements"] == null
            ? []
            : List<Refinement>.from(
                json["refinements"]!.map((x) => Refinement.fromJson(x))),
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
        schemas: json["schemas"] == null
            ? []
            : List<Schema>.from(
                json["schemas"]!.map((x) => Schema.fromJson(x))),
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
        "linkEquityBlock": linkEquityBlock?.toJson(),
        "navigationSeoJsonLd": navigationSeoJsonLd,
        "pageSize": pageSize,
        "pageType": pageType,
        "parentCategory": parentCategory?.toJson(),
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
        "refinements": refinements == null
            ? []
            : List<dynamic>.from(refinements!.map((x) => x.toJson())),
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
        "schemas": schemas == null
            ? []
            : List<dynamic>.from(schemas!.map((x) => x.toJson())),
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

class LinkEquityBlock {
  final List<Link>? links;

  LinkEquityBlock({
    this.links,
  });

  factory LinkEquityBlock.fromRawJson(String str) =>
      LinkEquityBlock.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LinkEquityBlock.fromJson(Map<String, dynamic> json) =>
      LinkEquityBlock(
        links: json["links"] == null
            ? []
            : List<Link>.from(json["links"]!.map((x) => Link.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "links": links == null
            ? []
            : List<dynamic>.from(links!.map((x) => x.toJson())),
      };
}

class Link {
  final String? anchorText;

  Link({
    this.anchorText,
  });

  factory Link.fromRawJson(String str) => Link.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        anchorText: json["anchorText"],
      );

  Map<String, dynamic> toJson() => {
        "anchorText": anchorText,
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
        "rating": rating,
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
  final String? biExclusiveLevel;
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
  final String? skuType;

  CurrentSku({
    this.biExclusiveLevel,
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
    this.skuType,
  });

  factory CurrentSku.fromRawJson(String str) =>
      CurrentSku.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CurrentSku.fromJson(Map<String, dynamic> json) => CurrentSku(
        biExclusiveLevel: json["biExclusiveLevel"],
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
        skuType: json["skuType"],
      );

  Map<String, dynamic> toJson() => {
        "biExclusiveLevel": biExclusiveLevel,
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
        "skuType": skuType,
      };
}

class Refinement {
  final String? displayName;
  final String? type;
  final List<Value>? values;
  final String? property;

  Refinement({
    this.displayName,
    this.type,
    this.values,
    this.property,
  });

  factory Refinement.fromRawJson(String str) =>
      Refinement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Refinement.fromJson(Map<String, dynamic> json) => Refinement(
        displayName: json["displayName"],
        type: json["type"],
        values: json["values"] == null
            ? []
            : List<Value>.from(json["values"]!.map((x) => Value.fromJson(x))),
        property: json["property"],
      );

  Map<String, dynamic> toJson() => {
        "displayName": displayName,
        "type": type,
        "values": values == null
            ? []
            : List<dynamic>.from(values!.map((x) => x.toJson())),
        "property": property,
      };
}

class Value {
  final String? refinementValue;
  final String? refinementValueDisplayName;
  final int? refinementValueStatus;
  final int? count;

  Value({
    this.refinementValue,
    this.refinementValueDisplayName,
    this.refinementValueStatus,
    this.count,
  });

  factory Value.fromRawJson(String str) => Value.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        refinementValue: json["refinementValue"],
        refinementValueDisplayName: json["refinementValueDisplayName"],
        refinementValueStatus: json["refinementValueStatus"],
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "refinementValue": refinementValue,
        "refinementValueDisplayName": refinementValueDisplayName,
        "refinementValueStatus": refinementValueStatus,
        "count": count,
      };
}

class Schema {
  final String? type;
  final String? context;
  final List<ItemListElement>? itemListElement;

  Schema({
    this.type,
    this.context,
    this.itemListElement,
  });

  factory Schema.fromRawJson(String str) => Schema.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Schema.fromJson(Map<String, dynamic> json) => Schema(
        type: json["@type"],
        context: json["@context"],
        itemListElement: json["itemListElement"] == null
            ? []
            : List<ItemListElement>.from(json["itemListElement"]!
                .map((x) => ItemListElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "@context": context,
        "itemListElement": itemListElement == null
            ? []
            : List<dynamic>.from(itemListElement!.map((x) => x.toJson())),
      };
}

class ItemListElement {
  final String? name;
  final Type? type;
  final int? position;
  final String? description;
  final Item? item;

  ItemListElement({
    this.name,
    this.type,
    this.position,
    this.description,
    this.item,
  });

  factory ItemListElement.fromRawJson(String str) =>
      ItemListElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemListElement.fromJson(Map<String, dynamic> json) =>
      ItemListElement(
        name: json["name"],
        type: typeValues.map[json["@type"]]!,
        position: json["position"],
        description: json["description"],
        item: json["item"] == null ? null : Item.fromJson(json["item"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "@type": typeValues.reverse[type],
        "position": position,
        "description": description,
        "item": item?.toJson(),
      };
}

class Item {
  final String? name;
  final String? id;

  Item({
    this.name,
    this.id,
  });

  factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        id: json["@id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "@id": id,
      };
}

enum Type { LIST_ITEM, SITE_NAVIGATION_ELEMENT }

final typeValues = EnumValues({
  "ListItem": Type.LIST_ITEM,
  "SiteNavigationElement": Type.SITE_NAVIGATION_ELEMENT
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
