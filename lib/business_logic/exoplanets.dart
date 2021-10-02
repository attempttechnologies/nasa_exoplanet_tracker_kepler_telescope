import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:nasa_exoplanet_tracker/presentation/exoplanet.dart';

const String _baseURL =
    "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?";

const String _table = "table=cumulative";

const String _query =
    "&where=koi_disposition like 'CANDIDATE' and koi_period>300 and koi_prad<2";

const String _order = "&order=koi_period";

const String _returnQueryFormat = "&format=json";

abstract class AbstractExoplanets {
  Future<List<Widget>> all();
}

class Exoplanets implements AbstractExoplanets {
  @override
  Future<List<Widget>> all() async {
    var url = Uri.parse("$_baseURL$_table$_query$_order$_returnQueryFormat");
    var data = await http.get(url);
    var decodedData = jsonDecode(data.body);

    final List<Widget> exoplanets = [];
    for (var exoplanet in decodedData) {
      exoplanets.add(
        Exoplanet(exoplanet: exoplanet),
      );
    }
    return exoplanets;
  }
}
