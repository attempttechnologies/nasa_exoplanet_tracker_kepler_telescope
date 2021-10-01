import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nasa_exoplanet_tracker/presentation/ui/exoplanets_ui.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _baseURL =
      "https://exoplanetarchive.ipac.caltech.edu/cgi-bin/nstedAPI/nph-nstedAPI?";

  // This table returns kepler's objects of interest (KOI)
  final String _table = "table=cumulative";

  // Return all KOI's with an orbital period greater than 300 and a radius of less than 2
  final String _query =
      "&where=koi_disposition like 'CANDIDATE' and koi_period>300 and koi_prad<2";

  final String _order = "&order=koi_period";

  // Add the preferred output file format.
  // Comma-separated values (CSV) format is returned when no format is specified.
  // Here, the output will be JSON.
  final String _returnQueryFormat = "&format=json";

  TextStyle _textStyle() => const TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
      );

  Future<List<Widget>> get() async {
    var url = Uri.parse("$_baseURL$_table$_query$_order$_returnQueryFormat");
    var data = await http.get(url);
    var decodedData = jsonDecode(data.body);
    final List<Widget> exoplanets = [];
    for (var exoplanet in decodedData) {
      exoplanets.add(
        Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("KOI Name: ${exoplanet['kepoi_name']}", style: _textStyle()),
              Text("Planet ID: ${exoplanet['kepid']}", style: _textStyle()),
              Text("Planet Name: ${exoplanet['kepler_name']}",
                  style: _textStyle()),
              Text("Disposition: ${exoplanet['koi_disposition']}",
                  style: _textStyle()),
              Text("Disposition Score: ${exoplanet['koi_score']}",
                  style: _textStyle()),
              Text("koi_fpflag_nt: ${exoplanet['koi_fpflag_nt']}",
                  style: _textStyle()),
              Text("koi_fpflag_co: ${exoplanet['koi_fpflag_co']}",
                  style: _textStyle()),
              Text("koi_fpflag_ec: ${exoplanet['koi_fpflag_ec']}",
                  style: _textStyle()),
              Text("koi_period: ${exoplanet['koi_period']}",
                  style: _textStyle()),
              Text("koi_period_err1: ${exoplanet['koi_period_err1']}",
                  style: _textStyle()),
              Text("koi_period_err2: ${exoplanet['koi_period_err2']}",
                  style: _textStyle()),
              Text("koi_time0bk: ${exoplanet['koi_time0bk']}",
                  style: _textStyle()),
              Text("koi_time0bk_err1: ${exoplanet['koi_time0bk_err1']}",
                  style: _textStyle()),
              Text("koi_time0bk_err2: ${exoplanet['koi_time0bk_err2']}",
                  style: _textStyle()),
              Text("koi_impact_err1: ${exoplanet['koi_impact_err1']}",
                  style: _textStyle()),
              Text("koi_impact_err2: ${exoplanet['koi_impact_err2']}",
                  style: _textStyle()),
              Text("koi_duration: ${exoplanet['koi_duration']}",
                  style: _textStyle()),
              Text("koi_duration_err1: ${exoplanet['koi_duration_err1']}",
                  style: _textStyle()),
              Text("koi_duration_err2: ${exoplanet['koi_duration_err2']}",
                  style: _textStyle()),
              Text("koi_depth: ${exoplanet['koi_depth']}", style: _textStyle()),
              Text("koi_depth_err1: ${exoplanet['koi_depth_err1']}",
                  style: _textStyle()),
              Text("koi_depth_err2: ${exoplanet['koi_depth_err2']}",
                  style: _textStyle()),
              Text("koi_prad: ${exoplanet['koi_prad']}", style: _textStyle()),
              Text("koi_prad_err1: ${exoplanet['koi_prad_err1']}",
                  style: _textStyle()),
              Text("koi_prad_err2: ${exoplanet['koi_prad_err2']}",
                  style: _textStyle()),
              Text("koi_teq: ${exoplanet['koi_teq']}", style: _textStyle()),
              Text("koi_teq_err1: ${exoplanet['koi_teq_err1']}",
                  style: _textStyle()),
              Text("koi_teq_err2: ${exoplanet['koi_teq_err2']}",
                  style: _textStyle()),
              Text("koi_insol: ${exoplanet['koi_insol']}", style: _textStyle()),
              Text("koi_insol_err1: ${exoplanet['koi_insol_err1']}",
                  style: _textStyle()),
              Text("koi_insol_err2: ${exoplanet['koi_insol_err2']}",
                  style: _textStyle()),
              Text("koi_model_snr: ${exoplanet['koi_model_snr']}",
                  style: _textStyle()),
              Text("koi_tce_plnt_num: ${exoplanet['koi_tce_plnt_num']}",
                  style: _textStyle()),
              Text("koi_tce_delivname: ${exoplanet['koi_tce_delivname']}",
                  style: _textStyle()),
              Text("koi_steff: ${exoplanet['koi_steff']}", style: _textStyle()),
              Text("koi_steff_err1: ${exoplanet['koi_steff_err1']}",
                  style: _textStyle()),
              Text("koi_steff_err2: ${exoplanet['koi_steff_err2']}",
                  style: _textStyle()),
              Text("koi_slogg: ${exoplanet['koi_slogg']}", style: _textStyle()),
              Text("koi_slogg_err1: ${exoplanet['koi_slogg_err1']}",
                  style: _textStyle()),
              Text("koi_slogg_err2: ${exoplanet['koi_slogg_err2']}",
                  style: _textStyle()),
              Text("koi_srad: ${exoplanet['koi_srad']}", style: _textStyle()),
              Text("koi_srad_err1: ${exoplanet['koi_srad_err1']}",
                  style: _textStyle()),
              Text("koi_srad_err2: ${exoplanet['koi_srad_err2']}",
                  style: _textStyle()),
              Text("ra_str: ${exoplanet['ra_str']}", style: _textStyle()),
              Text("dec_str: ${exoplanet['dec_str']}", style: _textStyle()),
              Text("koi_kepmag: ${exoplanet['koi_kepmag']}",
                  style: _textStyle()),
              Text("koi_kepmag_err: ${exoplanet['koi_kepmag_err']}",
                  style: _textStyle()),
            ],
          ),
        ),
      );
      print(exoplanet);
    }
    return exoplanets;
  }

  @override
  Widget build(BuildContext context) {
    get();
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: FutureBuilder<List<Widget>>(
          future: get(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Image.network(
                    "images/nasa-logo-web-rgb.png",
                    width: 250.0,
                  ),
                  const Text("Kepler Satellite's Objects of Interest"),
                  const Text("Exoplanets Data"),
                  Expanded(
                    child: ListView(
                      children: snapshot.data,
                    ),
                  ),
                ],
              );
            }

            if (snapshot.hasError) {
              return Center(
                child: Text("${snapshot.error}"),
              );
            }

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network("images/nasa-logo-web-rgb.png"),
                  const Text(
                      "Loadig Kepler Telescope Data. This can take a moment"),
                  const SizedBox(
                    height: 50.0,
                  ),
                  const CircularProgressIndicator(
                    color: Color(0xff15418c),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
