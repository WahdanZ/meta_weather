import 'package:flutter/material.dart';
import 'package:meta_weather/base/bloc/widgets/state_listener.dart';
import 'package:meta_weather/base/di/index.dart';
import 'package:meta_weather/feature/weather/domain/index.dart';
import 'package:meta_weather/feature/weather/presentation/bloc_cubit/search_cubit.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final searchController = TextEditingController();
  late SearchCubit searchCubit;

  @override
  void initState() {
    super.initState();
    searchCubit = inject();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.clear();
    searchCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search Page')),
      body: StateListener<LocationEntity, SearchCubit>(
        onError: (context, result) => ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(result.toString()))),
        onNoData: (
          context,
        ) =>
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('No Result'))),
        onData: (context, result) =>
            Navigator.of(context).pushNamed('/weather', arguments: result),
        cubit: searchCubit,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: ListView(
            shrinkWrap: true,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              TextField(
                controller: searchController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Search',
                ),
              )
            ],
          )),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('search_button'),
            onPressed: () => searchCubit.getLocation(searchController.text),
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
