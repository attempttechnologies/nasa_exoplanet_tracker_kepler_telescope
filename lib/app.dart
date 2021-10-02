import 'package:flutter/material.dart';
import 'package:nasa_exoplanet_tracker/business_logic/exoplanets.dart';
import 'package:nasa_exoplanet_tracker/presentation/widgets/custom_appbar.dart';
import 'package:nasa_exoplanet_tracker/presentation/widgets/loading_data_state.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final AbstractExoplanets _exoplanets = Exoplanets();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Widget>>(
      future: _exoplanets.all(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              const CustomAppbar(),
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

        return const Center(child: LoadingDataState());
      },
    );
  }
}
