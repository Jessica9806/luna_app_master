import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/modules/auth/views/auth/auth_layout.dart';
import 'package:luna_app/app/modules/auth/views/auth/login_view.dart';
import 'package:luna_app/app/modules/auth/views/auth/register_view.dart';
import 'package:luna_app/app/modules/laboratory/views/laboratory_view.dart';
import 'package:luna_app/app/modules/layout/views/dashboard_layout.dart';
import 'package:luna_app/app/modules/layout/views/dashboard_view.dart';
import '../modules/appointment/bindings/appointment_binding.dart';
import '../modules/appointment/views/appointment_view.dart';
import '../modules/breed/bindings/breed_binding.dart';
import '../modules/breed/views/breed_view.dart';
import '../modules/client/bindings/client_binding.dart';
import '../modules/client/views/client_view.dart';
import '../modules/clinic/bindings/clinic_binding.dart';
import '../modules/clinic/views/clinic_view.dart';
import '../modules/consultation/bindings/consultation_binding.dart';
import '../modules/consultation/views/consultation_view.dart';
import '../modules/detail_purchase/bindings/detail_purchase_binding.dart';
import '../modules/detail_purchase/views/detail_purchase_view.dart';
import '../modules/detail_sale/bindings/detail_sale_binding.dart';
import '../modules/detail_sale/views/detail_sale_view.dart';
import '../modules/dewormer/bindings/dewormer_binding.dart';
import '../modules/dewormer/views/dewormer_view.dart';
import '../modules/esthetic/bindings/esthetic_binding.dart';
import '../modules/esthetic/views/esthetic_view.dart';
import '../modules/esthetic_has_type_service/bindings/esthetic_has_type_service_binding.dart';
import '../modules/esthetic_has_type_service/views/esthetic_has_type_service_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/hospitalization/bindings/hospitalization_binding.dart';
import '../modules/hospitalization/views/hospitalization_view.dart';
import '../modules/laboratory/bindings/laboratory_binding.dart';
import '../modules/patient/bindings/patient_binding.dart';
import '../modules/patient/views/patient_view.dart';
import '../modules/pet_daycare/bindings/pet_daycare_binding.dart';
import '../modules/pet_daycare/views/pet_daycare_view.dart';
import '../modules/product/bindings/product_binding.dart';
import '../modules/product/views/product_view.dart';
import '../modules/product_category/bindings/product_category_binding.dart';
import '../modules/product_category/views/product_category_view.dart';
import '../modules/provider/bindings/provider_binding.dart';
import '../modules/provider/views/provider_view.dart';
import '../modules/purchase/bindings/purchase_binding.dart';
import '../modules/purchase/views/purchase_view.dart';
import '../modules/sale/bindings/sale_binding.dart';
import '../modules/sale/views/sale_view.dart';
import '../modules/species/bindings/species_binding.dart';
import '../modules/species/views/species_view.dart';
import '../modules/type_appointment/bindings/type_appointment_binding.dart';
import '../modules/type_appointment/views/type_appointment_view.dart';
import '../modules/type_dewormer/bindings/type_dewormer_binding.dart';
import '../modules/type_dewormer/views/type_dewormer_view.dart';
import '../modules/type_service/bindings/type_service_binding.dart';
import '../modules/type_service/views/type_service_view.dart';
import '../modules/type_vaccine/bindings/type_vaccine_binding.dart';
import '../modules/type_vaccine/views/type_vaccine_view.dart';
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/user_view.dart';
import '../modules/vaccine/bindings/vaccine_binding.dart';
import '../modules/vaccine/views/vaccine_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;
  Widget content = Container();
  static final routes = [
    GetPage(
        name: Routes.LOGIN,
        page: () => AuthLayout(
              child: LoginView(),
            )),
    GetPage(
        name: Routes.REGISTER,
        page: () => AuthLayout(
              child: RegisterView(),
            )),
    GetPage(
        name: Routes.DASHBOARD,
        page: () => DashboardLayout(
              child: DashboardView(),
            )),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CLIENT,
      page: () => const ClientView(),
      binding: ClientBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
      binding: UserBinding(),
    ),
    // GetPage(
    //     name: _Paths.REGISTER,
    //     page: () => RegisterView(),
    //     binding: RegisterBinding()),
    // GetPage(
    //     name: _Paths.LOGIN, page: () => LoginView(), binding: LoginBinding()),
    //GetPage(
    //  name: _Paths.DASHBOARD,
    //  binding: DashboardBinding(),
    //  page: () => DashboardScreen(content: content),
    //),
    GetPage(
      name: _Paths.APPOINTMENT,
      page: () => const AppointmentView(),
      binding: AppointmentBinding(),
    ),
    GetPage(
      name: _Paths.BREED,
      page: () => const BreedView(),
      binding: BreedBinding(),
    ),
    GetPage(
      name: _Paths.CLINIC,
      page: () => const ClinicView(),
      binding: ClinicBinding(),
    ),
    GetPage(
      name: _Paths.CONSULTATION,
      page: () => const ConsultationView(),
      binding: ConsultationBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PURCHASE,
      page: () => const DetailPurchaseView(),
      binding: DetailPurchaseBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_SALE,
      page: () => const DetailSaleView(),
      binding: DetailSaleBinding(),
    ),
    GetPage(
      name: _Paths.DEWORMER,
      page: () => const DewormerView(),
      binding: DewormerBinding(),
    ),
    GetPage(
      name: _Paths.ESTHETIC,
      page: () => const EstheticView(),
      binding: EstheticBinding(),
    ),
    GetPage(
      name: _Paths.ESTHETIC_HAS_TYPE_SERVICE,
      page: () => const EstheticHasTypeServiceView(),
      binding: EstheticHasTypeServiceBinding(),
    ),
    GetPage(
      name: _Paths.HOSPITALIZATION,
      page: () => const HospitalizationView(),
      binding: HospitalizationBinding(),
    ),
    // GetPage(
    //   name: _Paths.LABORATORY,
    //   page: () => const LaboratoryView(),
    //   binding: LaboratoryBinding(),
    // ),
    GetPage(
      name: _Paths.PATIENT,
      page: () => const PatientView(),
      binding: PatientBinding(),
    ),
    GetPage(
      name: _Paths.PET_DAYCARE,
      page: () => const PetDaycareView(),
      binding: PetDaycareBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => const ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_CATEGORY,
      page: () => const ProductCategoryView(),
      binding: ProductCategoryBinding(),
    ),
    GetPage(
      name: _Paths.PROVIDER,
      page: () => const ProviderView(),
      binding: ProviderBinding(),
    ),
    GetPage(
      name: _Paths.PURCHASE,
      page: () => const PurchaseView(),
      binding: PurchaseBinding(),
    ),
    GetPage(
      name: _Paths.SALE,
      page: () => const SaleView(),
      binding: SaleBinding(),
    ),
    GetPage(
      name: _Paths.SPECIES,
      page: () => const SpeciesView(),
      binding: SpeciesBinding(),
    ),
    GetPage(
      name: _Paths.TYPE_APPOINTMENT,
      page: () => const TypeAppointmentView(),
      binding: TypeAppointmentBinding(),
    ),
    GetPage(
      name: _Paths.TYPE_DEWORMER,
      page: () => const TypeDewormerView(),
      binding: TypeDewormerBinding(),
    ),
    GetPage(
      name: _Paths.TYPE_SERVICE,
      page: () => const TypeServiceView(),
      binding: TypeServiceBinding(),
    ),
    GetPage(
      name: _Paths.TYPE_VACCINE,
      page: () => const TypeVaccineView(),
      binding: TypeVaccineBinding(),
    ),
    GetPage(
      name: _Paths.VACCINE,
      page: () => const VaccineView(),
      binding: VaccineBinding(),
    ),
  ];
}
