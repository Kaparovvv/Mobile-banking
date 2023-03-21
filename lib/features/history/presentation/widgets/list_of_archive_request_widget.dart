import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/widgets/loading_overlay_widget.dart';

import '../blocs/request/request_bloc.dart';

class ListOfArchiveRequestWidget extends StatefulWidget {
  const ListOfArchiveRequestWidget({super.key});

  @override
  State<ListOfArchiveRequestWidget> createState() =>
      _ListOfArchiveRequestWidgetState();
}

class _ListOfArchiveRequestWidgetState
    extends State<ListOfArchiveRequestWidget> {
  late RequestBloc _requestBloc;

  @override
  void initState() {
    _requestBloc = RequestBloc();
    _requestBloc.add(GetArchiveRequestEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => _requestBloc.add(GetArchiveRequestEvent()),
      child: BlocConsumer<RequestBloc, RequestState>(
        bloc: _requestBloc,
        listener: (context, state) {},
        builder: (context, state) {
          if (state is LoadingRequestState) {
            return const LoadingOverlayWidget();
          }

          if (state is LoadedArchiveRequestState) {
            return state.archiveRequest.isNotEmpty
                ? ListView.separated(
                    itemCount: state.archiveRequest.length,
                    padding: const EdgeInsets.only(
                      top: 130,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    itemBuilder: (context, index) {
                      var request = state.archiveRequest[index];
                      return Container(
                        decoration: BoxDecoration(
                          color: ThemeHelper.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              request.title,
                              style: TextStyleHelper.f18w500,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  request.date,
                                  style: TextStyleHelper.f14w600,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  (request.isCompleted
                                          ? 'Завершено'
                                          : 'Отказано')
                                      .toLowerCase(),
                                  style: TextStyleHelper.f14w600.copyWith(
                                    color: request.isCompleted
                                        ? ThemeHelper.color08B89D
                                        : ThemeHelper.red,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                  )
                : const Center(
                    child: Text(
                      TextHelper.nothingHereYet,
                      style: TextStyleHelper.f16w500,
                    ),
                  );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
