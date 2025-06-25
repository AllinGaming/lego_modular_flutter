import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:lego_list/src/di/di_initializer.dart';
import '../logic/lego_list_cubit.dart';
import '../logic/lego_list_navigation.dart';
import '../logic/lego_list_state.dart';
import '../logic/lego_list_service.dart';

class LegoListPage extends StatelessWidget {
  final LegoListNavigation navigation;

  const LegoListPage({super.key, required this.navigation});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LegoListCubit(getIt<LegoListService>())..loadItems(),
      child: BlocBuilder<LegoListCubit, LegoListState>(
        builder: (context, state) {
          return FlowBuilder<LegoListState>(
            state: state,
            onGeneratePages: (state, pages) {
              return state.map(
                initial: (_) => [
                  MaterialPage(
                    child: const Scaffold(
                      body: Center(child: Text('Loading...')),
                    ),
                  )
                ],
                loading: (_) => [
                  MaterialPage(
                    child: const Scaffold(
                      body: Center(child: CircularProgressIndicator()),
                    ),
                  )
                ],
                success: (s) => [
                  MaterialPage(
                    child: Scaffold(
                      appBar: AppBar(title: const Text('Lego List')),
                      body: ListView(
                        children: s.items
                            .map((e) => ListTile(
                                onTap: () => navigation.openSingle(context, e),
                                title: Text(e)))
                            .toList(),
                      ),
                    ),
                  )
                ],
                error: (e) => [
                  MaterialPage(
                    child: Scaffold(
                      body: Center(child: Text('Error: ${e.message}')),
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
