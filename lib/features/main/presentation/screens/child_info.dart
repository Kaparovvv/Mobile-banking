import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/button_with_background_widget.dart';
import 'package:my_family_flutter/core/widgets/custom_textfield_widget.dart';
import 'package:my_family_flutter/core/widgets/dialog_application_widget.dart';
import 'package:my_family_flutter/features/main/domain/entity/city_entity.dart';
import 'package:my_family_flutter/features/main/domain/entity/office_entity.dart';
import 'package:my_family_flutter/features/main/presentation/blocs/cities_bloc/cities_bloc.dart';
import 'package:my_family_flutter/features/main/presentation/blocs/register_baby/register_baby_bloc.dart';
import 'package:my_family_flutter/features/main/presentation/widgets/custom_drop_down_widget.dart';

class ChildInfoScreen extends StatefulWidget {
  const ChildInfoScreen({super.key});

  @override
  State<ChildInfoScreen> createState() => _ChildInfoScreenState();
}

class _ChildInfoScreenState extends State<ChildInfoScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  dynamic selectedCity;

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => DialogApplicationWidget(
        params: DialogApplicationWidgetParams(
          statusIcon: IconHelper.error,
          content: TextHelper.errorRegisterBaby,
          buttonTitle: TextHelper.close,
        ),
        onPressed: () {
          context.read<RegisterBabyBloc>().add(const ResetFailed());
          context.router.pop();
        },
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => DialogApplicationWidget(
        params: DialogApplicationWidgetParams(
          statusIcon: IconHelper.done,
          content: TextHelper.successRegisterBaby,
          buttonTitle: TextHelper.returnToHistoryScreen,
        ),
        onPressed: () {
          context.router.pushAndPopUntil(
            const HistoryScreenRoute(),
            predicate: ((route) => route.isFirst),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const AppBarTitle(
            title: "Сведения о ребенке",
          ),
        ),
        body: BlocConsumer<RegisterBabyBloc, RegisterBabyState>(
          listener: (context, state) {
            if (state.isFailed) {
              _showErrorDialog(context);
            }
            if (state.registered) {
              _showSuccessDialog(context);
            }
          },
          builder: (context, state) {
            return state.loading
                ? const Center(child: CircularProgressIndicator())
                : whenLoaded(context, state);
          },
        ),
      ),
    );
  }

  RefreshIndicator whenLoaded(BuildContext context, RegisterBabyState state) {
    return RefreshIndicator(
      onRefresh: () async {
        _formKey.currentState!.reset();
        context.read<RegisterBabyBloc>().add(const ResetChildInfo());
      },
      child: SizedBox(
        height: context.height * 0.8,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Заполните поля:",
                  style: TextStyleHelper.f14w700,
                ),
                const SizedBox(height: 15),
                CustomTextFieldWidget(
                  label: TextHelper.firstName,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validate: (value) => ValidatesHelper.nameValidate(
                    value ?? "",
                    TextHelper.firstName,
                  ),
                  onChanged: (nextValue) =>
                      context.read<RegisterBabyBloc>().add(ParamsChanged(
                            state.params.copyWith(firstName: nextValue),
                          )),
                ),
                const SizedBox(height: 15),
                CustomTextFieldWidget(
                  label: TextHelper.lastName,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validate: (value) => ValidatesHelper.nameValidate(
                    value ?? "",
                    TextHelper.lastName,
                  ),
                  onChanged: (nextValue) =>
                      context.read<RegisterBabyBloc>().add(ParamsChanged(
                            state.params.copyWith(lastname: nextValue),
                          )),
                ),
                const SizedBox(height: 15),
                CustomTextFieldWidget(
                  label: TextHelper.middleName,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validate: (value) => ValidatesHelper.nameValidate(
                    value ?? "",
                    TextHelper.middleName,
                  ),
                  onChanged: (nextValue) =>
                      context.read<RegisterBabyBloc>().add(ParamsChanged(
                            state.params.copyWith(middleName: nextValue),
                          )),
                ),
                const SizedBox(height: 30),
                _selectCityAndOffice(state),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.maxFinite,
                  height: 45,
                  child: CustomElevatedButtonWidget(
                    onPressed: () {
                      context.read<RegisterBabyBloc>().add(const Register());
                    },
                    title: 'Подать заявку',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BlocBuilder<CitiesBloc, CitiesState> _selectCityAndOffice(
      RegisterBabyState state) {
    return BlocBuilder<CitiesBloc, CitiesState>(
      builder: (context, cityState) {
        return state.isFailed
            ? const Text("Failed")
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    TextHelper.chooseSity,
                    style: TextStyleHelper.f14w700,
                  ),
                  const SizedBox(height: 15),
                  CustomDropDownWidget(
                    listOfItem:
                        cityState.loaded ? cityState.cityList.cityList : [],
                    hintText: "Выберите регион",
                    validator: (dynamic value) =>
                        value == null ? TextHelper.chooseSity : null,
                    callback: ((item) {
                      setState(
                        () => selectedCity = item.officeList,
                      );
                      context.read<RegisterBabyBloc>().add(
                            ParamsChanged(
                              state.params.copyWith(
                                  middleName: (item as CityEntity).name),
                            ),
                          );
                    }),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Выбери отдел ЗАГСа для получение свидетельства о рождении ребенка:",
                    style: TextStyleHelper.f14w700,
                  ),
                  const SizedBox(height: 15),
                  CustomDropDownWidget(
                    listOfItem: selectedCity ?? [],
                    hintText: "Выберите отдел ЗАГСа",
                    validator: (dynamic value) =>
                        value == null ? TextHelper.chooseSity : null,
                    callback: ((item) {
                      context.read<RegisterBabyBloc>().add(
                            ParamsChanged(
                              state.params.copyWith(
                                  middleName: (item as OfficeEntity).name),
                            ),
                          );
                    }),
                  ),
                ],
              );
      },
    );
  }
}
