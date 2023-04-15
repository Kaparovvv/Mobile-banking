import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/widgets/loading_overlay_widget.dart';

import '../blocs/request/request_bloc.dart';

class ListOfActiveRequestWidget extends StatefulWidget {
  const ListOfActiveRequestWidget({super.key});

  @override
  State<ListOfActiveRequestWidget> createState() =>
      _ListOfActiveRequestWidgetState();
}

class _ListOfActiveRequestWidgetState extends State<ListOfActiveRequestWidget> {
  late RequestBloc _requestBloc;

  @override
  void initState() {
    _requestBloc = RequestBloc();
    _requestBloc.add(GetActiveRequestEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: ThemeHelper.color08B89D,
      onRefresh: () async => _requestBloc.add(GetActiveRequestEvent()),
      child: BlocConsumer<RequestBloc, RequestState>(
        bloc: _requestBloc,
        listener: (context, state) {},
        builder: (context, state) {
          if (state is LoadingRequestState) {
            return const LoadingOverlayWidget();
          }

          if (state is LoadedActiveRequestState) {
            return state.activeRequest.isNotEmpty
                ? ListView.separated(
                    itemCount: state.activeRequest.length,
                    padding: const EdgeInsets.only(
                        top: 130, bottom: 20, left: 20, right: 20),
                    itemBuilder: (context, index) => Container(
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
                            state.activeRequest[index]['title'] ?? 'unknown',
                            style: TextStyleHelper.f18w500,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                state.activeRequest[index]['date'] ??
                                    '00.00.0000',
                                style: TextStyleHelper.f14w600,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '${state.activeRequest[index]['status']}...',
                                style: TextStyleHelper.f14w600
                                    .copyWith(color: ThemeHelper.color5061FF),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
