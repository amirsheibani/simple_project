import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/base/presentation/page/page_mixin.dart';
import '../../../../core/di/base/di_setup.dart';
import '../manager/bloc/my_ip_bloc.dart';
import '../manager/bloc/my_ip_bloc_event.dart';
import '../manager/bloc/my_ip_bloc_state.dart';



class MyIpPage extends StatelessWidget with PageMixin{
  const MyIpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context){
        final provider = getIt<MyIpBloc>();
        provider.add(const MyIpBlocEvent.call());
        return provider;
      },
      child: Builder(
          builder: (context) {
            return Center(
              child: BlocConsumer<MyIpBloc,MyIpBlocState>(
                listener: (context,state){
                  state.whenOrNull(
                      failed: (message){
                        showErrorSnackBar(buildContext: context,subtitle: message ?? '');
                      }
                  );
                },
                builder:  (context,state){
                  return state.whenOrNull(
                      loading: (){
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      success: (data){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(data?.ip ?? '',style: Theme.of(context).textTheme.titleLarge,),
                            Text(data?.country ?? '',style: Theme.of(context).textTheme.labelSmall,),
                            Text(data?.cc ?? '',style: Theme.of(context).textTheme.labelSmall,),
                          ],
                        );
                      }
                  ) ?? const SizedBox();
                },
              ),
            );
          }
      ),
    );
  }
}
