import 'package:cross_file/src/types/interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:bejoy_construction/models/get_all2.dart';
import 'package:bejoy_construction/models/us2.dart';
import 'package:bejoy_construction/models/user.dart';
import 'package:bejoy_construction/models/user_info.dart';
import 'package:bejoy_construction/models/user_multi.dart';
import 'package:bejoy_construction/utils/logging.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      // baseUrl: 'https://go.khostess.co.ke/api',
      baseUrl: 'http://127.0.0.1:8001/api',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  )..interceptors.add(Logging());

  Future<User?> getUser({required String id}) async {
    User? user;

    try {
      Response userData = await _dio.get('/users/$id');

      if (kDebugMode) {
        print('User Info: ${userData.data}');
      }

      user = User.fromJson(userData.data);
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        if (kDebugMode) {
          print('Dio error!');
          print('STATUS: ${e.response?.statusCode}');
          print('DATA: ${e.response?.data}');
          print('HEADERS: ${e.response?.headers}');
        }
      } else {
        // Error due to setting up or sending the request
        if (kDebugMode) {
          print('Error sending request!');
          print(e.message);
        }
      }
    }

    return user;
  }

  Future<GetAll2?> getUsers() async {
    GetAll2? userMulti;

    try {
      Response userData = await _dio.get('/users');

      if (kDebugMode) {
        print('User Info: ${userData.data}');
      }

      userMulti = GetAll2.fromJson(userData.data);
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        if (kDebugMode) {
          print('Dio error!');
          print('STATUS: ${e.response?.statusCode}');
          print('DATA: ${e.response?.data}');
          print('HEADERS: ${e.response?.headers}');
        }
      } else {
        // Error due to setting up or sending the request
        if (kDebugMode) {
          print('Error sending request!');
          print(e.message);
        }
      }
    }

    return userMulti;
  }

  Future<Us2?> createUser({
    required Us2 us2,
    // required String name,
    // required String number,
    // required String email,
    // required String role,
    // required bool paid,
    // required bool active,
    // String? picture,
    // String? picture2,
    // String? picture3,
    // String? picture4,
  }) async {
    Us2? retrievedUser;
    // print(imageFile);
    if (kDebugMode) {
      print(us2.toJson());
      print("object is testing............");
    }
    try {
      var formData = FormData.fromMap({
        'name': us2.name,
        'number': us2.number,
        'email': us2.email,
        'role': us2.role,
        'age': us2.age,
        'about': us2.about,
        'location': us2.location,
        // 'password': us2.password,
        'paid': us2.paid,
        'active': us2.active,
        'file': await MultipartFile.fromFile('${us2.picture}',
            filename: 'upload.png'),
        'file2': await MultipartFile.fromFile('${us2.picture2}',
            filename: 'upload2.png'),
        'file3': await MultipartFile.fromFile('${us2.picture3}',
            filename: 'upload3.png'),
        'file4': await MultipartFile.fromFile('${us2.picture4}',
            filename: 'upload4.png'),
      });
      // print(formData);

      print("object is here");
      Response response = await _dio.post(
        '/userFile',
        data: formData,
      );

      if (kDebugMode) {
        print('User created: ${response.data['data']}');
        print("object is creating............");
      }

      retrievedUser = Us2.fromJson(response.data['data']);
    } catch (e) {
      if (kDebugMode) {
        print('Error creating user: $e');
      }
    }

    return retrievedUser;
  }

  Future<Us2?> updateUser({
    required Us2 userInfo,
    required int id,
  }) async {
    Us2? updatedUser;
    if (kDebugMode) {
      print(userInfo.toJson());
    }
    try {
      var formData = FormData.fromMap({
        'name': userInfo.name,
        'number': userInfo.number,
        'email': userInfo.email,
        'role': userInfo.role,
        'age': userInfo.age,
        'about': userInfo.about,
        'location': userInfo.location,
        // 'password': us2.password,
        'paid': userInfo.paid,
        'active': userInfo.active,
        // if ${userInfo.picture} != null {
        //   'file': await MultipartFile.fromFile('${userInfo.picture}',
        //       filename: 'upload.png'),
        // },

        'file': userInfo.picture != null
            ? await MultipartFile.fromFile('${userInfo.picture}',
                filename: 'upload.png')
            : null,
        'file2': userInfo.picture2 != null
            ? await MultipartFile.fromFile('${userInfo.picture2}',
                filename: 'upload2.png')
            : null,
        'file3': userInfo.picture3 != null
            ? await MultipartFile.fromFile('${userInfo.picture3}',
                filename: 'upload3.png')
            : null,
        'file4': userInfo.picture4 != null
            ? await MultipartFile.fromFile('${userInfo.picture4}',
                filename: 'upload4.png')
            : null,
      });
      // var formData = FormData();
      // formData.files.addAll([
      //   MapEntry(
      //     'file',
      //     MultipartFile.fromFileSync('${userInfo.picture}',
      //         filename: 'upload.txt'),
      //   ),
      //   // MapEntry(
      //   //   'file2',
      //   //   MultipartFile.fromFileSync('${userInfo.picture2}',
      //   //       filename: 'upload.txt'),
      //   // ),
      // ]);
      // print(formData.fields);
      if (kDebugMode) {
        print(userInfo.toJson());
        print("object is updating............");
      }
      // print(formData);
      // print(formData.toString());
      Response response = await _dio.patch(
        '/user/$id',
        data: formData,
      );

      print('User updated: ${response.data['data']}');

      updatedUser = Us2.fromJson(response.data['data']);
    } catch (e) {
      print('Error updating user: $e');
    }

    return updatedUser;
  }

  Future<void> deleteUser({required int id}) async {
    try {
      await _dio.delete('/user/$id');
      print('User deleted!');
    } catch (e) {
      print('Error deleting user: $e');
    }
  }
}
