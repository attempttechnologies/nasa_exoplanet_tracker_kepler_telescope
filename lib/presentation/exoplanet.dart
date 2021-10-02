import 'package:flutter/material.dart';

class Exoplanet extends StatelessWidget {
  const Exoplanet({Key? key, required this.exoplanet}) : super(key: key);

  final Map<String, dynamic> exoplanet;

  TextStyle _textStyle() => const TextStyle(
        fontSize: 12.0,
      );
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff15418c),
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kepler Object of Interest Name: ${exoplanet['kepoi_name']}",
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Planet ID: ${exoplanet['kepid']}",
                style: _textStyle(),
              ),
              Text(
                "Planet Name: ${exoplanet['kepler_name']}",
                style: _textStyle(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Disposition: ${exoplanet['koi_disposition']}",
                  style: _textStyle()),
              Text("Disposition Score: ${exoplanet['koi_score']}",
                  style: _textStyle()),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text("koi_fpflag_nt: ${exoplanet['koi_fpflag_nt']}",
              style: _textStyle()),
          Text("koi_fpflag_co: ${exoplanet['koi_fpflag_co']}",
              style: _textStyle()),
          Text("koi_fpflag_ec: ${exoplanet['koi_fpflag_ec']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_period: ${exoplanet['koi_period']}", style: _textStyle()),
          Text("koi_period_err1: ${exoplanet['koi_period_err1']}",
              style: _textStyle()),
          Text("koi_period_err2: ${exoplanet['koi_period_err2']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_time0bk: ${exoplanet['koi_time0bk']}", style: _textStyle()),
          Text("koi_time0bk_err1: ${exoplanet['koi_time0bk_err1']}",
              style: _textStyle()),
          Text("koi_time0bk_err2: ${exoplanet['koi_time0bk_err2']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_impact_err1: ${exoplanet['koi_impact_err1']}",
              style: _textStyle()),
          Text("koi_impact_err2: ${exoplanet['koi_impact_err2']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_duration: ${exoplanet['koi_duration']}",
              style: _textStyle()),
          Text("koi_duration_err1: ${exoplanet['koi_duration_err1']}",
              style: _textStyle()),
          Text("koi_duration_err2: ${exoplanet['koi_duration_err2']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_depth: ${exoplanet['koi_depth']}", style: _textStyle()),
          Text("koi_depth_err1: ${exoplanet['koi_depth_err1']}",
              style: _textStyle()),
          Text("koi_depth_err2: ${exoplanet['koi_depth_err2']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_prad: ${exoplanet['koi_prad']}", style: _textStyle()),
          Text("koi_prad_err1: ${exoplanet['koi_prad_err1']}",
              style: _textStyle()),
          Text("koi_prad_err2: ${exoplanet['koi_prad_err2']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_teq: ${exoplanet['koi_teq']}", style: _textStyle()),
          Text("koi_teq_err1: ${exoplanet['koi_teq_err1']}",
              style: _textStyle()),
          Text("koi_teq_err2: ${exoplanet['koi_teq_err2']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_insol: ${exoplanet['koi_insol']}", style: _textStyle()),
          Text("koi_insol_err1: ${exoplanet['koi_insol_err1']}",
              style: _textStyle()),
          Text("koi_insol_err2: ${exoplanet['koi_insol_err2']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_model_snr: ${exoplanet['koi_model_snr']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_tce_plnt_num: ${exoplanet['koi_tce_plnt_num']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_tce_delivname: ${exoplanet['koi_tce_delivname']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_steff: ${exoplanet['koi_steff']}", style: _textStyle()),
          Text("koi_steff_err1: ${exoplanet['koi_steff_err1']}",
              style: _textStyle()),
          Text("koi_steff_err2: ${exoplanet['koi_steff_err2']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_slogg: ${exoplanet['koi_slogg']}", style: _textStyle()),
          Text("koi_slogg_err1: ${exoplanet['koi_slogg_err1']}",
              style: _textStyle()),
          Text("koi_slogg_err2: ${exoplanet['koi_slogg_err2']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_srad: ${exoplanet['koi_srad']}", style: _textStyle()),
          Text("koi_srad_err1: ${exoplanet['koi_srad_err1']}",
              style: _textStyle()),
          Text("koi_srad_err2: ${exoplanet['koi_srad_err2']}",
              style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("ra_str: ${exoplanet['ra_str']}", style: _textStyle()),
          Text("dec_str: ${exoplanet['dec_str']}", style: _textStyle()),
          const SizedBox(
            height: 10.0,
          ),
          Text("koi_kepmag: ${exoplanet['koi_kepmag']}", style: _textStyle()),
          Text("koi_kepmag_err: ${exoplanet['koi_kepmag_err']}",
              style: _textStyle()),
        ],
      ),
    );
  }
}
