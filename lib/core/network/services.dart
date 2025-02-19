// import 'package:dio/dio.dart';
//
// class ApiServices {
//   late final Dio _dio;
//
//   ApiServices({String? baseUrl}) {
//     _dio = Dio(
//       BaseOptions(
//         baseUrl: baseUrl ?? 'https://api.example.com', // Default base URL
//         connectTimeout: const Duration(seconds: 10), // Connection timeout
//         receiveTimeout: const Duration(seconds: 10), // Response timeout
//         headers: {
//           'Accept': 'application/json',
//         },
//       ),
//     );
//
//     _initializeInterceptors();
//   }
//
//   void _initializeInterceptors() {
//     _dio.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) {
//           // Add logic before the request is sent
//           return handler.next(options);
//         },
//         onResponse: (response, handler) {
//           // Add logic when a response is received
//           return handler.next(response);
//         },
//         onError: (DioException error, handler) {
//           // Add error handling logic
//           return handler.next(error);
//         },
//       ),
//     );
//   }
//
//   Future<dynamic> get(String path,
//       {Map<String, dynamic>? queryParameters, Options? options}) async {
//     try {
//       final response = await _dio.get(path,
//           queryParameters: queryParameters, options: options);
//       return response.data;
//     } on DioException catch (e) {
//       _handleDioError(e);
//     }
//   }
//
//   Future<dynamic> post(String path,
//       {dynamic data,
//       Map<String, dynamic>? queryParameters,
//       Options? options}) async {
//     try {
//       final response = await _dio.post(path,
//           data: data, queryParameters: queryParameters, options: options);
//       return response.data;
//     } on DioException catch (e) {
//       _handleDioError(e);
//     }
//   }
//
//   Future<dynamic> put(String path,
//       {dynamic data,
//       Map<String, dynamic>? queryParameters,
//       Options? options}) async {
//     try {
//       final response = await _dio.put(path,
//           data: data, queryParameters: queryParameters, options: options);
//       return response.data;
//     } on DioException catch (e) {
//       _handleDioError(e);
//     }
//   }
//
//   Future<dynamic> delete(String path,
//       {dynamic data,
//       Map<String, dynamic>? queryParameters,
//       Options? options}) async {
//     try {
//       final response = await _dio.delete(path,
//           data: data, queryParameters: queryParameters, options: options);
//       return response.data;
//     } on DioException catch (e) {
//       _handleDioError(e);
//     }
//   }
//
//   void _handleDioError(DioException error) {
//     switch (error.type) {
//       case DioExceptionType.connectionTimeout:
//         throw Exception('Connection timeout, please try again.');
//       case DioExceptionType.receiveTimeout:
//         throw Exception('Response timeout, please try again.');
//       case DioExceptionType.sendTimeout:
//         throw Exception('Request timeout, please try again.');
//       case DioExceptionType.badResponse:
//         throw Exception(
//             'Error: ${error.response?.statusCode}, Message: ${error.response?.data}');
//       case DioExceptionType.cancel:
//         throw Exception('Request was cancelled.');
//       default:
//         throw Exception('Unexpected error occurred: ${error.message}');
//     }
//   }
// }
//
// // Usage Example
// // final apiServices = ApiServices(baseUrl: 'https://api.example.com');
// // final data = await apiServices.get('/endpoint');
import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio = Dio();

  Future<Response> post(
      {required body, required String url, required String token,String? contentType}) async {
    var response = await dio.post(url,
        data: body,
        options: Options(
            contentType: contentType,
            headers: {
              "Authorization": "Bearer $token",
            }));
    return response;
  }
}
