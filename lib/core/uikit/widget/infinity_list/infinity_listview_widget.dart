import 'package:flutter/material.dart';

class InfinityListView<T> extends StatelessWidget {
  const InfinityListView({super.key, this.loading = false, required this.items, required this.builder, this.onListIsDown, this.separatedBuilder});

  final bool loading;
  final List? items;
  final Widget? Function(BuildContext context, int index, T? item) builder;
  final Widget Function(BuildContext context, int index)? separatedBuilder;
  final VoidCallback? onListIsDown;

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent == scrollController.offset) {
        onListIsDown?.call();
      }
    });
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Expanded(
            child: separatedBuilder == null
                ? ListView.builder(
                    controller: scrollController,
                    itemCount: items?.length,
                    itemBuilder: (context, index) {
                      return builder(context, index, items?[index]);
                    },
                  )
                : ListView.separated(
                    controller: scrollController,
                    itemCount: items?.length ?? 0,
                    itemBuilder: (context, index) {
                      return builder(context, index, items?[index]);
                    },
                    separatorBuilder: (context, index) {
                      if (separatedBuilder != null) {
                        return separatedBuilder!(context, index);
                      }
                      return const SizedBox();
                    },
                  ),
          ),
          if (loading)
            const SizedBox(
              height: 60,
              child: Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
            )
        ],
      );
    });
  }
}
