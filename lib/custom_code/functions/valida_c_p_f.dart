import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';

bool validaCPF(String cpf) {
// Mantém apenas os dígitos — funciona com ou sem pontuação (000.000.000-00)
  final digits = cpf.replaceAll(RegExp(r'[^\d]'), '');

  if (digits.length != 11) return false;

// Rejeita sequências com todos os dígitos iguais (00000000000, 11111111111...)
  if (RegExp(r'^(\d)\1{10}$').hasMatch(digits)) return false;

  final numbers = digits.split('').map(int.parse).toList();

  int calcCheckDigit(List<int> nums, int startWeight) {
    var sum = 0;
    var weight = startWeight;
    for (final n in nums) {
      sum += n * weight--;
    }
    final remainder = sum % 11;
    return remainder < 2 ? 0 : 11 - remainder;
  }

  final firstDigit = calcCheckDigit(numbers.sublist(0, 9), 10);
  final secondDigit = calcCheckDigit(numbers.sublist(0, 10), 11);

  return numbers[9] == firstDigit && numbers[10] == secondDigit;
}
