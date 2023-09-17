import 'package:dio/dio.dart';
import 'package:hpos/services/client/src/api_urls.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

class DioService {
  static BaseOptions options = BaseOptions(
    contentType: 'application/json',
    baseUrl: ApiUrls.fakestoreapiUrl,
  );
  Dio get dio {
    return Dio(options);
  }
}

@RestApi(baseUrl: ApiUrls.fakestoreapiUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(ApiUrls.product)
  Future<List<ProductModel>> getProducts();
}

@JsonSerializable()
class ProductModel {
  String? id;
  String? title;
  String? price;
  String? category;
  String? description;
  String? image;

  ProductModel({
    this.id,
    this.title,
    this.category,
    this.price,
    this.description,
    this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
