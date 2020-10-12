import 'package:flutter/material.dart';

class Titan {
  final String _nome;
  final String _imagePath;
  final Map _arguments;

  String get imagePath => _imagePath;

  String get nome => _nome;

  Map get arguments => _arguments;

  const Titan({
    @required String nome,
    @required String imagePath,
    @required Map arguments,
  })  : _nome = nome,
        _imagePath = imagePath,
        _arguments = arguments;
}
