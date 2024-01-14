import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Flutter Node Chat Application Group Code

class FlutterNodeChatApplicationGroup {
  static String baseUrl =
      'https://virtserver.swaggerhub.com/kalpesh.acespritech/chat-app/v1';
  static Map<String, String> headers = {};
  static CreateUserCall createUserCall = CreateUserCall();
  static SigninUserCall signinUserCall = SigninUserCall();
  static GetUserTokenBasedCall getUserTokenBasedCall = GetUserTokenBasedCall();
}

class CreateUserCall {
  Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "id": 10,
  "name": "John",
  "email": "john@email.com",
  "password": "12345",
  "phone_number": "12345"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUser',
      apiUrl: '${FlutterNodeChatApplicationGroup.baseUrl}/user/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SigninUserCall {
  Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "id": 10,
  "name": "John",
  "email": "john@email.com",
  "password": "12345",
  "phone_number": "12345"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signinUser',
      apiUrl: '${FlutterNodeChatApplicationGroup.baseUrl}/user/signin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserTokenBasedCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserTokenBased',
      apiUrl: '${FlutterNodeChatApplicationGroup.baseUrl}/user/detail',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Flutter Node Chat Application Group Code

class PostMessageCall {
  static Future<ApiCallResponse> call({
    String? room = 'room1',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "[username]",
  "message": "[message]"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postMessage',
      apiUrl: 'https://shabakah.malshabib.dev/chat/${room}/messages',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic username(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
