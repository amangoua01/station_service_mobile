import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class WrapperBody extends StatelessWidget {
  final bool loading;
  final List<Widget> children;
  final String emptyText;
  final Future<void> Function() onRefresh;
  final String error;
  final EdgeInsetsGeometry? listPadding;
  const WrapperBody(
      {required this.loading,
      required this.onRefresh,
      required this.children,
      this.listPadding,
      this.error = "",
      this.emptyText = "Aucune données à afficher",
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (error.isNotEmpty)
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    error,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 200,
                  child: TextButton(
                    onPressed: onRefresh,
                    child: const Text("Recharger"),
                  ),
                ),
              ],
            ),
          )
        : (loading)
            ? SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.white,
                      child: ListTile(
                        leading: const CircleAvatar(),
                        title: Container(
                          color: Colors.grey,
                          height: 10,
                          width: double.infinity,
                        ),
                        subtitle: Container(
                          color: Colors.grey,
                          height: 10,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : (children.isEmpty)
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            emptyText,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 200,
                          child: TextButton(
                            onPressed: onRefresh,
                            child: const Text("Recharger"),
                          ),
                        ),
                      ],
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: onRefresh,
                    child: ListView(
                      padding: listPadding,
                      children: children,
                    ),
                  );
  }
}
