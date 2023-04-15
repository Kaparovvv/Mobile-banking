import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/commons/text_formatted.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/widgets/cached_network_image_widget.dart';
import 'package:my_family_flutter/core/widgets/loading_overlay_widget.dart';

import '../../../../core/widgets/сheck_dialog_widget.dart';
import '../blocs/payments/payments_bloc.dart';

class ListOfPaymentsWidget extends StatefulWidget {
  const ListOfPaymentsWidget({super.key});

  @override
  State<ListOfPaymentsWidget> createState() => _ListOfPaymentsWidgetState();
}

class _ListOfPaymentsWidgetState extends State<ListOfPaymentsWidget> {
  late PaymentsBloc _paymentsBloc;

  @override
  void initState() {
    _paymentsBloc = PaymentsBloc();
    _paymentsBloc.add(GetPaymentsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => _paymentsBloc.add(GetPaymentsEvent()),
      child: BlocConsumer<PaymentsBloc, PaymentsState>(
        bloc: _paymentsBloc,
        listener: (context, state) {},
        builder: (context, state) {
          if (state is LoadingPaymentsState) {
            return const LoadingOverlayWidget();
          }

          if (state is LoadedPaymentsState) {
            return state.listOfPayments.isNotEmpty
                ? ListView.separated(
                    itemCount: 10,
                    padding: const EdgeInsets.only(
                      top: 80,
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    itemBuilder: (context, index) {
                      var payment = state.listOfPayments[index];
                      return _paymentBox(context, payment);
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

  ElevatedButton _paymentBox(BuildContext context, Payment payment) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.all(15),
        backgroundColor: ThemeHelper.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CachedNetworkImageWidget(
                width: context.width * 0.1,
                height: context.height * 0.05,
                radius: BorderRadius.circular(10),
                imageUrl: payment.recepientLogo,
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: context.width * 0.65,
                child: Text(
                  payment.recepient,
                  style: TextStyleHelper.f16w700,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: context.width * 0.48,
                child: Text(
                  TextFormated.recepientAccount(payment.recepientAccount),
                  style: TextStyleHelper.f14w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${payment.sum} тенге',
                style: TextStyleHelper.f14w600
                    .copyWith(color: ThemeHelper.color5061FF),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
      onPressed: () => showDialog(
        context: context,
        builder: (context) =>
            TransactionCheckDialogWidget(paymentData: payment),
      ),
    );
  }
}
