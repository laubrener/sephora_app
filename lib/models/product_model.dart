import 'dart:convert';

class ProductModel {
  final List<dynamic>? combinedMiddleProductBanner;
  final List<dynamic>? combinedProductBanner;
  final Content? content;
  final List<AncillarySkus>? ancillarySkus;
  final CurrentSku? currentSku;
  final bool? enableNoindexMetaTag;
  final String? fullSiteProductUrl;
  final bool? isHideSocial;
  final bool? isReverseLookupEnabled;
  final ParentCategory? parentCategory;
  final ProductDetails? productDetails;
  final List<ProductVideo>? productVideos;
  final String? quickLookDescription;
  final List<CurrentSku>? regularChildSkus;
  final List<ReviewFilter>? reviewFilters;
  final List<ReviewImage>? reviewImages;
  final String? skuSelectorType;
  final String? swatchType;
  final String? targetUrl;
  final String? type;
  final String? useItWithTitle;
  final String? variationType;
  final String? variationTypeDisplayName;

  ProductModel({
    this.combinedMiddleProductBanner,
    this.combinedProductBanner,
    this.content,
    this.ancillarySkus,
    this.currentSku,
    this.enableNoindexMetaTag,
    this.fullSiteProductUrl,
    this.isHideSocial,
    this.isReverseLookupEnabled,
    this.parentCategory,
    this.productDetails,
    this.productVideos,
    this.quickLookDescription,
    this.regularChildSkus,
    this.reviewFilters,
    this.reviewImages,
    this.skuSelectorType,
    this.swatchType,
    this.targetUrl,
    this.type,
    this.useItWithTitle,
    this.variationType,
    this.variationTypeDisplayName,
  });

  factory ProductModel.fromRawJson(String str) =>
      ProductModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        combinedMiddleProductBanner: json["combinedMiddleProductBanner"] == null
            ? []
            : List<dynamic>.from(
                json["combinedMiddleProductBanner"]!.map((x) => x)),
        combinedProductBanner: json["combinedProductBanner"] == null
            ? []
            : List<dynamic>.from(json["combinedProductBanner"]!.map((x) => x)),
        content:
            json["content"] == null ? null : Content.fromJson(json["content"]),
        ancillarySkus: json["ancillarySkus"] == null
            ? []
            : List<AncillarySkus>.from(
                json["ancillarySkus"]!.map((x) => AncillarySkus.fromJson(x))),
        currentSku: json["currentSku"] == null
            ? null
            : CurrentSku.fromJson(json["currentSku"]),
        enableNoindexMetaTag: json["enableNoindexMetaTag"],
        fullSiteProductUrl: json["fullSiteProductUrl"],
        isHideSocial: json["isHideSocial"],
        isReverseLookupEnabled: json["isReverseLookupEnabled"],
        parentCategory: json["parentCategory"] == null
            ? null
            : ParentCategory.fromJson(json["parentCategory"]),
        productDetails: json["productDetails"] == null
            ? null
            : ProductDetails.fromJson(json["productDetails"]),
        productVideos: json["productVideos"] == null
            ? []
            : List<ProductVideo>.from(
                json["productVideos"]!.map((x) => ProductVideo.fromJson(x))),
        quickLookDescription: json["quickLookDescription"],
        regularChildSkus: json["regularChildSkus"] == null
            ? []
            : List<CurrentSku>.from(
                json["regularChildSkus"]!.map((x) => CurrentSku.fromJson(x))),
        reviewFilters: json["reviewFilters"] == null
            ? []
            : List<ReviewFilter>.from(
                json["reviewFilters"]!.map((x) => ReviewFilter.fromJson(x))),
        reviewImages: json["reviewImages"] == null
            ? []
            : List<ReviewImage>.from(
                json["reviewImages"]!.map((x) => ReviewImage.fromJson(x))),
        skuSelectorType: json["skuSelectorType"],
        swatchType: json["swatchType"],
        targetUrl: json["targetUrl"],
        type: json["type"],
        useItWithTitle: json["useItWithTitle"],
        variationType: json["variationType"],
        variationTypeDisplayName: json["variationTypeDisplayName"],
      );

  Map<String, dynamic> toJson() => {
        "combinedMiddleProductBanner": combinedMiddleProductBanner == null
            ? []
            : List<dynamic>.from(combinedMiddleProductBanner!.map((x) => x)),
        "combinedProductBanner": combinedProductBanner == null
            ? []
            : List<dynamic>.from(combinedProductBanner!.map((x) => x)),
        "content": content?.toJson(),
        "ancillarySkus": ancillarySkus == null
            ? []
            : List<dynamic>.from(ancillarySkus!.map((x) => x.toJson())),
        "currentSku": currentSku?.toJson(),
        "enableNoindexMetaTag": enableNoindexMetaTag,
        "fullSiteProductUrl": fullSiteProductUrl,
        "isHideSocial": isHideSocial,
        "isReverseLookupEnabled": isReverseLookupEnabled,
        "parentCategory": parentCategory?.toJson(),
        "productDetails": productDetails?.toJson(),
        "productVideos": productVideos == null
            ? []
            : List<dynamic>.from(productVideos!.map((x) => x.toJson())),
        "quickLookDescription": quickLookDescription,
        "regularChildSkus": regularChildSkus == null
            ? []
            : List<dynamic>.from(regularChildSkus!.map((x) => x.toJson())),
        "reviewFilters": reviewFilters == null
            ? []
            : List<dynamic>.from(reviewFilters!.map((x) => x.toJson())),
        "reviewImages": reviewImages == null
            ? []
            : List<dynamic>.from(reviewImages!.map((x) => x.toJson())),
        "skuSelectorType": skuSelectorType,
        "swatchType": swatchType,
        "targetUrl": targetUrl,
        "type": type,
        "useItWithTitle": useItWithTitle,
        "variationType": variationType,
        "variationTypeDisplayName": variationTypeDisplayName,
      };
}

class Content {
  final String? seoCanonicalUrl;
  final List<dynamic>? seoKeywords;
  final String? seoMetaDescription;
  final String? seoName;
  final String? seoTitle;
  final String? targetUrl;

  Content({
    this.seoCanonicalUrl,
    this.seoKeywords,
    this.seoMetaDescription,
    this.seoName,
    this.seoTitle,
    this.targetUrl,
  });

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content.fromJson(Map<String, dynamic> json) => Content(
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

class AncillarySkus {
  final String? targetUrl;
  final String? skuId;
  final ActionFlags? actionFlags;
  final String? biExclusiveLevel;
  final String? brandName;
  final String? freeShippingMessage;
  final String? image;
  final bool? isAppExclusive;
  final bool? isBiOnly;
  final bool? isFirstAccess;
  final bool? isFree;
  final bool? isFreeShippingSku;
  final bool? isGoingFast;
  final bool? isLimitedEdition;
  final bool? isLimitedTimeOffer;
  final bool? isLimitedQuantity;
  final bool? isNew;
  final bool? isOnlineOnly;
  final bool? isOnlyFewLeft;
  final bool? isOutOfStock;
  final bool? isExternallySellable;
  final bool? isRopisEligibleSku;
  final bool? isPickUpEligibleSku;
  final bool? isSephoraExclusive;
  final String? listPrice;
  final int? maxPurchaseQuantity;
  final String? productId;
  final String? productName;
  final SkuImages? skuImages;
  final String? variationType;
  final String? variationTypeDisplayName;
  final bool? isReturnable;
  final bool? isSameDayEligibleSku;
  final String? size;
  final String? smallImage;
  final String? variationDesc;
  final String? variationValue;
  final String? badgeAltText;

  AncillarySkus({
    this.targetUrl,
    this.skuId,
    this.actionFlags,
    this.biExclusiveLevel,
    this.brandName,
    this.freeShippingMessage,
    this.image,
    this.isAppExclusive,
    this.isBiOnly,
    this.isFirstAccess,
    this.isFree,
    this.isFreeShippingSku,
    this.isGoingFast,
    this.isLimitedEdition,
    this.isLimitedTimeOffer,
    this.isLimitedQuantity,
    this.isNew,
    this.isOnlineOnly,
    this.isOnlyFewLeft,
    this.isOutOfStock,
    this.isExternallySellable,
    this.isRopisEligibleSku,
    this.isPickUpEligibleSku,
    this.isSephoraExclusive,
    this.listPrice,
    this.maxPurchaseQuantity,
    this.productId,
    this.productName,
    this.skuImages,
    this.variationType,
    this.variationTypeDisplayName,
    this.isReturnable,
    this.isSameDayEligibleSku,
    this.size,
    this.smallImage,
    this.variationDesc,
    this.variationValue,
    this.badgeAltText,
  });

  factory AncillarySkus.fromRawJson(String str) =>
      AncillarySkus.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AncillarySkus.fromJson(Map<String, dynamic> json) => AncillarySkus(
        targetUrl: json["targetUrl"],
        skuId: json["skuId"],
        actionFlags: json["actionFlags"] == null
            ? null
            : ActionFlags.fromJson(json["actionFlags"]),
        biExclusiveLevel: json["biExclusiveLevel"],
        brandName: json["brandName"],
        freeShippingMessage: json["freeShippingMessage"],
        image: json["image"],
        isAppExclusive: json["isAppExclusive"],
        isBiOnly: json["isBiOnly"],
        isFirstAccess: json["isFirstAccess"],
        isFree: json["isFree"],
        isFreeShippingSku: json["isFreeShippingSku"],
        isGoingFast: json["isGoingFast"],
        isLimitedEdition: json["isLimitedEdition"],
        isLimitedTimeOffer: json["isLimitedTimeOffer"],
        isLimitedQuantity: json["isLimitedQuantity"],
        isNew: json["isNew"],
        isOnlineOnly: json["isOnlineOnly"],
        isOnlyFewLeft: json["isOnlyFewLeft"],
        isOutOfStock: json["isOutOfStock"],
        isExternallySellable: json["isExternallySellable"],
        isRopisEligibleSku: json["isRopisEligibleSku"],
        isPickUpEligibleSku: json["isPickUpEligibleSku"],
        isSephoraExclusive: json["isSephoraExclusive"],
        listPrice: json["listPrice"],
        maxPurchaseQuantity: json["maxPurchaseQuantity"],
        productId: json["productId"],
        productName: json["productName"],
        skuImages: json["skuImages"] == null
            ? null
            : SkuImages.fromJson(json["skuImages"]),
        variationType: json["variationType"],
        variationTypeDisplayName: json["variationTypeDisplayName"],
        isReturnable: json["isReturnable"],
        isSameDayEligibleSku: json["isSameDayEligibleSku"],
        size: json["size"],
        smallImage: json["smallImage"],
        variationDesc: json["variationDesc"],
        variationValue: json["variationValue"],
        badgeAltText: json["badgeAltText"],
      );

  Map<String, dynamic> toJson() => {
        "targetUrl": targetUrl,
        "skuId": skuId,
        "actionFlags": actionFlags?.toJson(),
        "biExclusiveLevel": biExclusiveLevel,
        "brandName": brandName,
        "freeShippingMessage": freeShippingMessage,
        "image": image,
        "isAppExclusive": isAppExclusive,
        "isBiOnly": isBiOnly,
        "isFirstAccess": isFirstAccess,
        "isFree": isFree,
        "isFreeShippingSku": isFreeShippingSku,
        "isGoingFast": isGoingFast,
        "isLimitedEdition": isLimitedEdition,
        "isLimitedTimeOffer": isLimitedTimeOffer,
        "isLimitedQuantity": isLimitedQuantity,
        "isNew": isNew,
        "isOnlineOnly": isOnlineOnly,
        "isOnlyFewLeft": isOnlyFewLeft,
        "isOutOfStock": isOutOfStock,
        "isExternallySellable": isExternallySellable,
        "isRopisEligibleSku": isRopisEligibleSku,
        "isPickUpEligibleSku": isPickUpEligibleSku,
        "isSephoraExclusive": isSephoraExclusive,
        "listPrice": listPrice,
        "maxPurchaseQuantity": maxPurchaseQuantity,
        "productId": productId,
        "productName": productName,
        "skuImages": skuImages?.toJson(),
        "variationType": variationType,
        "variationTypeDisplayName": variationTypeDisplayName,
        "isReturnable": isReturnable,
        "isSameDayEligibleSku": isSameDayEligibleSku,
        "size": size,
        "smallImage": smallImage,
        "variationDesc": variationDesc,
        "variationValue": variationValue,
        "badgeAltText": badgeAltText,
      };
}

class CurrentSku {
  final ActionFlags? actionFlags;
  final List<AlternateImage>? alternateImages;
  final String? biExclusiveLevel;
  final String? displayName;
  final String? freeShippingMessage;
  final List<Highlight>? highlights;
  final String? ingredientDesc;
  final bool? isAppExclusive;
  final bool? isBiOnly;
  final bool? isBiReward;
  final bool? isExternallySellable;
  final bool? isFinalSale;
  final bool? isFirstAccess;
  final bool? isFlash;
  final bool? isFree;
  final bool? isFreeShippingSku;
  final bool? isGoingFast;
  final bool? isHazmat;
  final bool? isInBasket;
  final bool? isLimitedEdition;
  final bool? isLimitedQuantity;
  final bool? isLimitedTimeOffer;
  final bool? isNaturalOrganic;
  final bool? isNew;
  final bool? isOnlineOnly;
  final bool? isOnlyFewLeft;
  final bool? isOutOfStock;
  final bool? isPickUpEligibleSku;
  final bool? isReplenishmentEligible;
  final bool? isReturnable;
  final bool? isRopisEligibleSku;
  final bool? isSameDayEligibleSku;
  final bool? isSephoraExclusive;
  final String? listPrice;
  final int? maxPurchaseQuantity;
  final String? productId;
  final String? productName;
  final String? size;
  final String? skuId;
  final SkuImages? skuImages;
  final String? smallImage;
  final String? targetUrl;
  final bool? trialEligible;
  final String? type;
  final String? variationType;
  final String? variationTypeDisplayName;

  CurrentSku({
    this.actionFlags,
    this.alternateImages,
    this.biExclusiveLevel,
    this.displayName,
    this.freeShippingMessage,
    this.highlights,
    this.ingredientDesc,
    this.isAppExclusive,
    this.isBiOnly,
    this.isBiReward,
    this.isExternallySellable,
    this.isFinalSale,
    this.isFirstAccess,
    this.isFlash,
    this.isFree,
    this.isFreeShippingSku,
    this.isGoingFast,
    this.isHazmat,
    this.isInBasket,
    this.isLimitedEdition,
    this.isLimitedQuantity,
    this.isLimitedTimeOffer,
    this.isNaturalOrganic,
    this.isNew,
    this.isOnlineOnly,
    this.isOnlyFewLeft,
    this.isOutOfStock,
    this.isPickUpEligibleSku,
    this.isReplenishmentEligible,
    this.isReturnable,
    this.isRopisEligibleSku,
    this.isSameDayEligibleSku,
    this.isSephoraExclusive,
    this.listPrice,
    this.maxPurchaseQuantity,
    this.productId,
    this.productName,
    this.size,
    this.skuId,
    this.skuImages,
    this.smallImage,
    this.targetUrl,
    this.trialEligible,
    this.type,
    this.variationType,
    this.variationTypeDisplayName,
  });

  factory CurrentSku.fromRawJson(String str) =>
      CurrentSku.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CurrentSku.fromJson(Map<String, dynamic> json) => CurrentSku(
        actionFlags: json["actionFlags"] == null
            ? null
            : ActionFlags.fromJson(json["actionFlags"]),
        alternateImages: json["alternateImages"] == null
            ? []
            : List<AlternateImage>.from(json["alternateImages"]!
                .map((x) => AlternateImage.fromJson(x))),
        biExclusiveLevel: json["biExclusiveLevel"],
        displayName: json["displayName"],
        freeShippingMessage: json["freeShippingMessage"],
        highlights: json["highlights"] == null
            ? []
            : List<Highlight>.from(
                json["highlights"]!.map((x) => Highlight.fromJson(x))),
        ingredientDesc: json["ingredientDesc"],
        isAppExclusive: json["isAppExclusive"],
        isBiOnly: json["isBiOnly"],
        isBiReward: json["isBiReward"],
        isExternallySellable: json["isExternallySellable"],
        isFinalSale: json["isFinalSale"],
        isFirstAccess: json["isFirstAccess"],
        isFlash: json["isFlash"],
        isFree: json["isFree"],
        isFreeShippingSku: json["isFreeShippingSku"],
        isGoingFast: json["isGoingFast"],
        isHazmat: json["isHazmat"],
        isInBasket: json["isInBasket"],
        isLimitedEdition: json["isLimitedEdition"],
        isLimitedQuantity: json["isLimitedQuantity"],
        isLimitedTimeOffer: json["isLimitedTimeOffer"],
        isNaturalOrganic: json["isNaturalOrganic"],
        isNew: json["isNew"],
        isOnlineOnly: json["isOnlineOnly"],
        isOnlyFewLeft: json["isOnlyFewLeft"],
        isOutOfStock: json["isOutOfStock"],
        isPickUpEligibleSku: json["isPickUpEligibleSku"],
        isReplenishmentEligible: json["isReplenishmentEligible"],
        isReturnable: json["isReturnable"],
        isRopisEligibleSku: json["isRopisEligibleSku"],
        isSameDayEligibleSku: json["isSameDayEligibleSku"],
        isSephoraExclusive: json["isSephoraExclusive"],
        listPrice: json["listPrice"],
        maxPurchaseQuantity: json["maxPurchaseQuantity"],
        productId: json["productId"],
        productName: json["productName"],
        size: json["size"],
        skuId: json["skuId"],
        skuImages: json["skuImages"] == null
            ? null
            : SkuImages.fromJson(json["skuImages"]),
        smallImage: json["smallImage"],
        targetUrl: json["targetUrl"],
        trialEligible: json["trialEligible"],
        type: json["type"],
        variationType: json["variationType"],
        variationTypeDisplayName: json["variationTypeDisplayName"],
      );

  Map<String, dynamic> toJson() => {
        "actionFlags": actionFlags?.toJson(),
        "alternateImages": alternateImages == null
            ? []
            : List<dynamic>.from(alternateImages!.map((x) => x.toJson())),
        "biExclusiveLevel": biExclusiveLevel,
        "displayName": displayName,
        "freeShippingMessage": freeShippingMessage,
        "highlights": highlights == null
            ? []
            : List<dynamic>.from(highlights!.map((x) => x.toJson())),
        "ingredientDesc": ingredientDesc,
        "isAppExclusive": isAppExclusive,
        "isBiOnly": isBiOnly,
        "isBiReward": isBiReward,
        "isExternallySellable": isExternallySellable,
        "isFinalSale": isFinalSale,
        "isFirstAccess": isFirstAccess,
        "isFlash": isFlash,
        "isFree": isFree,
        "isFreeShippingSku": isFreeShippingSku,
        "isGoingFast": isGoingFast,
        "isHazmat": isHazmat,
        "isInBasket": isInBasket,
        "isLimitedEdition": isLimitedEdition,
        "isLimitedQuantity": isLimitedQuantity,
        "isLimitedTimeOffer": isLimitedTimeOffer,
        "isNaturalOrganic": isNaturalOrganic,
        "isNew": isNew,
        "isOnlineOnly": isOnlineOnly,
        "isOnlyFewLeft": isOnlyFewLeft,
        "isOutOfStock": isOutOfStock,
        "isPickUpEligibleSku": isPickUpEligibleSku,
        "isReplenishmentEligible": isReplenishmentEligible,
        "isReturnable": isReturnable,
        "isRopisEligibleSku": isRopisEligibleSku,
        "isSameDayEligibleSku": isSameDayEligibleSku,
        "isSephoraExclusive": isSephoraExclusive,
        "listPrice": listPrice,
        "maxPurchaseQuantity": maxPurchaseQuantity,
        "productId": productId,
        "productName": productName,
        "size": size,
        "skuId": skuId,
        "skuImages": skuImages?.toJson(),
        "smallImage": smallImage,
        "targetUrl": targetUrl,
        "trialEligible": trialEligible,
        "type": type,
        "variationType": variationType,
        "variationTypeDisplayName": variationTypeDisplayName,
      };
}

class ActionFlags {
  final String? backInStockPhoneReminderStatus;
  final String? backInStockReminderStatus;
  final bool? isAddToBasket;
  final bool? isAfterpayEligible;
  final bool? isFullSizeSkuOrderable;
  final bool? isKlarnaEligible;
  final bool? isShowAddToMyList;
  final bool? isShowAlreadyOnMyList;
  final bool? isShowEmailMeWhenBackInStore;
  final String? myListStatus;

  ActionFlags({
    this.backInStockPhoneReminderStatus,
    this.backInStockReminderStatus,
    this.isAddToBasket,
    this.isAfterpayEligible,
    this.isFullSizeSkuOrderable,
    this.isKlarnaEligible,
    this.isShowAddToMyList,
    this.isShowAlreadyOnMyList,
    this.isShowEmailMeWhenBackInStore,
    this.myListStatus,
  });

  factory ActionFlags.fromRawJson(String str) =>
      ActionFlags.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ActionFlags.fromJson(Map<String, dynamic> json) => ActionFlags(
        backInStockPhoneReminderStatus: json["backInStockPhoneReminderStatus"],
        backInStockReminderStatus: json["backInStockReminderStatus"],
        isAddToBasket: json["isAddToBasket"],
        isAfterpayEligible: json["isAfterpayEligible"],
        isFullSizeSkuOrderable: json["isFullSizeSkuOrderable"],
        isKlarnaEligible: json["isKlarnaEligible"],
        isShowAddToMyList: json["isShowAddToMyList"],
        isShowAlreadyOnMyList: json["isShowAlreadyOnMyList"],
        isShowEmailMeWhenBackInStore: json["isShowEmailMeWhenBackInStore"],
        myListStatus: json["myListStatus"],
      );

  Map<String, dynamic> toJson() => {
        "backInStockPhoneReminderStatus": backInStockPhoneReminderStatus,
        "backInStockReminderStatus": backInStockReminderStatus,
        "isAddToBasket": isAddToBasket,
        "isAfterpayEligible": isAfterpayEligible,
        "isFullSizeSkuOrderable": isFullSizeSkuOrderable,
        "isKlarnaEligible": isKlarnaEligible,
        "isShowAddToMyList": isShowAddToMyList,
        "isShowAlreadyOnMyList": isShowAlreadyOnMyList,
        "isShowEmailMeWhenBackInStore": isShowEmailMeWhenBackInStore,
        "myListStatus": myListStatus,
      };
}

class AlternateImage {
  final String? altText;
  final String? imageUrl;

  AlternateImage({
    this.altText,
    this.imageUrl,
  });

  factory AlternateImage.fromRawJson(String str) =>
      AlternateImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AlternateImage.fromJson(Map<String, dynamic> json) => AlternateImage(
        altText: json["altText"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "altText": altText,
        "imageUrl": imageUrl,
      };
}

class Highlight {
  final String? altText;
  final String? appsImageUrl;
  final String? id;
  final String? name;

  Highlight({
    this.altText,
    this.appsImageUrl,
    this.id,
    this.name,
  });

  factory Highlight.fromRawJson(String str) =>
      Highlight.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Highlight.fromJson(Map<String, dynamic> json) => Highlight(
        altText: json["altText"],
        appsImageUrl: json["appsImageUrl"],
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "altText": altText,
        "appsImageUrl": appsImageUrl,
        "id": id,
        "name": name,
      };
}

class SkuImages {
  final String? imageUrl;

  SkuImages({
    this.imageUrl,
  });

  factory SkuImages.fromRawJson(String str) =>
      SkuImages.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SkuImages.fromJson(Map<String, dynamic> json) => SkuImages(
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
      };
}

class ParentCategory {
  final String? categoryId;
  final String? displayName;
  final ParentCategory? parentCategory;
  final String? targetUrl;

  ParentCategory({
    this.categoryId,
    this.displayName,
    this.parentCategory,
    this.targetUrl,
  });

  factory ParentCategory.fromRawJson(String str) =>
      ParentCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ParentCategory.fromJson(Map<String, dynamic> json) => ParentCategory(
        categoryId: json["categoryId"],
        displayName: json["displayName"],
        parentCategory: json["parentCategory"] == null
            ? null
            : ParentCategory.fromJson(json["parentCategory"]),
        targetUrl: json["targetUrl"],
      );

  Map<String, dynamic> toJson() => {
        "categoryId": categoryId,
        "displayName": displayName,
        "parentCategory": parentCategory?.toJson(),
        "targetUrl": targetUrl,
      };
}

class ProductDetails {
  final Brand? brand;
  final String? displayName;
  final String? imageAltText;
  final String? longDescription;
  final int? lovesCount;
  final String? productId;
  final double? rating;
  final int? reviews;
  final String? shortDescription;
  final String? suggestedUsage;

  ProductDetails({
    this.brand,
    this.displayName,
    this.imageAltText,
    this.longDescription,
    this.lovesCount,
    this.productId,
    this.rating,
    this.reviews,
    this.shortDescription,
    this.suggestedUsage,
  });

  factory ProductDetails.fromRawJson(String str) =>
      ProductDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
        brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
        displayName: json["displayName"],
        imageAltText: json["imageAltText"],
        longDescription: json["longDescription"],
        lovesCount: json["lovesCount"],
        productId: json["productId"],
        rating: json["rating"]?.toDouble(),
        reviews: json["reviews"],
        shortDescription: json["shortDescription"],
        suggestedUsage: json["suggestedUsage"],
      );

  Map<String, dynamic> toJson() => {
        "brand": brand?.toJson(),
        "displayName": displayName,
        "imageAltText": imageAltText,
        "longDescription": longDescription,
        "lovesCount": lovesCount,
        "productId": productId,
        "rating": rating,
        "reviews": reviews,
        "shortDescription": shortDescription,
        "suggestedUsage": suggestedUsage,
      };
}

class Brand {
  final String? brandId;
  final String? description;
  final String? displayName;
  final String? longDescription;
  final String? ref;
  final String? targetUrl;

  Brand({
    this.brandId,
    this.description,
    this.displayName,
    this.longDescription,
    this.ref,
    this.targetUrl,
  });

  factory Brand.fromRawJson(String str) => Brand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        brandId: json["brandId"],
        description: json["description"],
        displayName: json["displayName"],
        longDescription: json["longDescription"],
        ref: json["ref"],
        targetUrl: json["targetUrl"],
      );

  Map<String, dynamic> toJson() => {
        "brandId": brandId,
        "description": description,
        "displayName": displayName,
        "longDescription": longDescription,
        "ref": ref,
        "targetUrl": targetUrl,
      };
}

class ProductVideo {
  final String? componentName;
  final int? componentType;
  final bool? enableTesting;
  final String? filePath;
  final String? height;
  final String? name;
  final bool? overlayFlag;
  final String? startImagePath;

  final String? thumbnailHeight;
  final String? thumbnailWidth;
  final String? videoTitle;
  final String? videoUrl;
  final String? width;

  ProductVideo({
    this.componentName,
    this.componentType,
    this.enableTesting,
    this.filePath,
    this.height,
    this.name,
    this.overlayFlag,
    this.startImagePath,
    this.thumbnailHeight,
    this.thumbnailWidth,
    this.videoTitle,
    this.videoUrl,
    this.width,
  });

  factory ProductVideo.fromRawJson(String str) =>
      ProductVideo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductVideo.fromJson(Map<String, dynamic> json) => ProductVideo(
        componentName: json["componentName"],
        componentType: json["componentType"],
        enableTesting: json["enableTesting"],
        filePath: json["filePath"],
        height: json["height"],
        name: json["name"],
        overlayFlag: json["overlayFlag"],
        startImagePath: json["startImagePath"],
        thumbnailHeight: json["thumbnailHeight"],
        thumbnailWidth: json["thumbnailWidth"],
        videoTitle: json["videoTitle"],
        videoUrl: json["videoUrl"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "componentName": componentName,
        "componentType": componentType,
        "enableTesting": enableTesting,
        "filePath": filePath,
        "height": height,
        "name": name,
        "overlayFlag": overlayFlag,
        "startImagePath": startImagePath,
        "thumbnailHeight": thumbnailHeight,
        "thumbnailWidth": thumbnailWidth,
        "videoTitle": videoTitle,
        "videoUrl": videoUrl,
        "width": width,
      };
}

class ReviewFilter {
  final bool? bvContextual;
  final String? bvName;
  final bool? contextual;
  final String? id;
  final String? label;
  final List<Option>? options;
  final String? type;
  final String? optionType;

  ReviewFilter({
    this.bvContextual,
    this.bvName,
    this.contextual,
    this.id,
    this.label,
    this.options,
    this.type,
    this.optionType,
  });

  factory ReviewFilter.fromRawJson(String str) =>
      ReviewFilter.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReviewFilter.fromJson(Map<String, dynamic> json) => ReviewFilter(
        bvContextual: json["bvContextual"],
        bvName: json["bvName"],
        contextual: json["contextual"],
        id: json["id"],
        label: json["label"],
        options: json["options"] == null
            ? []
            : List<Option>.from(
                json["options"]!.map((x) => Option.fromJson(x))),
        type: json["type"],
        optionType: json["optionType"],
      );

  Map<String, dynamic> toJson() => {
        "bvContextual": bvContextual,
        "bvName": bvName,
        "contextual": contextual,
        "id": id,
        "label": label,
        "options": options == null
            ? []
            : List<dynamic>.from(options!.map((x) => x.toJson())),
        "type": type,
        "optionType": optionType,
      };
}

class Option {
  final String? bvName;
  final String? bvValue;
  final String? value;

  Option({
    this.bvName,
    this.bvValue,
    this.value,
  });

  factory Option.fromRawJson(String str) => Option.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        bvName: json["bvName"],
        bvValue: json["bvValue"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "bvName": bvName,
        "bvValue": bvValue,
        "value": value,
      };
}

class ReviewImage {
  final bool? isIncentivizedReview;
  final String? photoId;
  final String? reviewId;
  final String? thumbnailImageUrl;

  ReviewImage({
    this.isIncentivizedReview,
    this.photoId,
    this.reviewId,
    this.thumbnailImageUrl,
  });

  factory ReviewImage.fromRawJson(String str) =>
      ReviewImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReviewImage.fromJson(Map<String, dynamic> json) => ReviewImage(
        isIncentivizedReview: json["isIncentivizedReview"],
        photoId: json["photoId"],
        reviewId: json["reviewId"],
        thumbnailImageUrl: json["thumbnailImageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "isIncentivizedReview": isIncentivizedReview,
        "photoId": photoId,
        "reviewId": reviewId,
        "thumbnailImageUrl": thumbnailImageUrl,
      };
}
