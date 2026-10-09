import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cep',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
}

class SendGridCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{"email": ${email == null ? 'null' : '"${escapeStringForJson(email)}"'}}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendGrid',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:AudoSZ5I/message/send_welcome_email',
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

class ClienteCall {
  static Future<ApiCallResponse> call({
    String? celular = '',
    String? cpf = '',
  }) async {
    final ffApiRequestBody = '''
{
"celular": ${celular == null ? 'null' : '"${escapeStringForJson(celular)}"'},
"cpf": ${cpf == null ? 'null' : '"${escapeStringForJson(cpf)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cliente',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:VM1MdIex/cliente',
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

class SignupCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
"name": ${name == null ? 'null' : '"${escapeStringForJson(name)}"'},
"email": ${email == null ? 'null' : '"${escapeStringForJson(email)}"'},
"password": ${password == null ? 'null' : '"${escapeStringForJson(password)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signup',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:AudoSZ5I/auth/signup',
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

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  static int? user(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
"email": ${email == null ? 'null' : '"${escapeStringForJson(email)}"'},
"password": ${password == null ? 'null' : '"${escapeStringForJson(password)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:AudoSZ5I/auth/login',
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

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  static int? user(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
}

class OtpCall {
  static Future<ApiCallResponse> call({
    String? codigoOpt = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "codigo": ${codigoOpt == null ? 'null' : '"${escapeStringForJson(codigoOpt)}"'},
  "email": ${email == null ? 'null' : '"${escapeStringForJson(email)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OTP',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:AudoSZ5I/auth/verify_otp',
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

class EnderecoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? logradouro = '',
    String? numero = '',
    String? complemento = '',
    String? referencia = '',
    String? cep = '',
  }) async {
    final ffApiRequestBody = '''
{
  "logradouro": ${logradouro == null ? 'null' : '"${escapeStringForJson(logradouro)}"'},
  "numero": ${numero == null ? 'null' : '"${escapeStringForJson(numero)}"'},
  "complemento": ${complemento == null ? 'null' : '"${escapeStringForJson(complemento)}"'},
  "referencia": ${referencia == null ? 'null' : '"${escapeStringForJson(referencia)}"'},
  "cep": ${cep == null ? 'null' : '"${escapeStringForJson(cep)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'endereco',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:VM1MdIex/endereco',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-type': 'application/json',
      },
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  final encoded = jsonEncode(input);
  return encoded.substring(1, encoded.length - 1);
}
