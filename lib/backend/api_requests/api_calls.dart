import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendEmailCall {
  static Future<ApiCallResponse> call({
    bool? boolean = true,
    String? apiKey = '',
    String? email = '',
    String? admin = '',
    String? password = '',
    String? list = '',
    String? name = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'sendEmail',
      apiUrl: 'http://sendy.getgear.io/subscribe',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'api_key': apiKey,
        'name': name,
        'email': email,
        'list': list,
        'boolean': boolean,
        'Admin': admin,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SubscriptionStatusCall {
  static Future<ApiCallResponse> call({
    String? apiKey = '',
    String? email = '',
    String? listId = '',
    bool? boolean = false,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Subscription status',
      apiUrl: 'http://sendy.getgear.io/subscribers',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'api_key': apiKey,
        'email': email,
        'list': listId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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
