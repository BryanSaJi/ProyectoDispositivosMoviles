import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start BF - emailConfirmacinTamalesDoaLeyla Group Code

class BFEmailConfirmacinTamalesDoaLeylaGroup {
  static String getBaseUrl() => 'https://api.backendflow.io/v1';
  static Map<String, String> headers = {};
  static EmailConfirmacinTamalesDoaLeylaCall
      emailConfirmacinTamalesDoaLeylaCall =
      EmailConfirmacinTamalesDoaLeylaCall();
}

class EmailConfirmacinTamalesDoaLeylaCall {
  Future<ApiCallResponse> call({
    String? to = '',
    String? subject = '',
    String? attachmentLink = '',
    String? attachmentName = '',
  }) async {
    final baseUrl = BFEmailConfirmacinTamalesDoaLeylaGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "sk-bf-8905113c-ea82-44f1-a8f6-4efc20ac0538": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'emailConfirmacinTamalesDoaLeyla',
      apiUrl:
          '${baseUrl}/email?templateId=x9VlwZ5WmXND8bagbSKs&to=${to}&subject=${subject}&attachmentLink=${attachmentLink}&attachmentName=${attachmentName}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End BF - emailConfirmacinTamalesDoaLeyla Group Code

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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
