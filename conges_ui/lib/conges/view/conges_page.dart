import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../conges_bloc.dart';
import 'conges_view.dart';

class CongesPage extends StatelessWidget {
  const CongesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CongesBloc(),
      child: const CongesView(),
    );
  }
}
