import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/consultation_model.dart';
import 'package:luna_app/app/data/model/dewormer_model.dart';
import 'package:luna_app/app/data/model/patient_model.dart';
import 'package:luna_app/app/data/model/vaccine_model.dart';
import 'package:luna_app/app/data/repository/consultation_repository.dart';
import 'package:luna_app/app/data/repository/dewormer_repository.dart';
import 'package:luna_app/app/data/repository/patient_repository.dart';
import 'package:luna_app/app/data/repository/vaccine_repository.dart';

class ConsultationController extends GetxController {
 final ConsultationRepository _consultationRepository = ConsultationRepository();
 final VaccineRepository _vaccineRepository = VaccineRepository();
 final DewormerRepository _dewormerRepository = DewormerRepository();
 final PatientRepository _patientRepository = PatientRepository();

 final RxList<Consultation> _consultations = <Consultation>[].obs;
 final RxList<Vaccine> _vaccines = <Vaccine>[].obs;
 final RxList<Dewormer> _dewormers = <Dewormer>[].obs;
 final RxList<Patient> _patients = <Patient>[].obs;

 final Rx<Consultation> _consultation = Consultation().obs;

 final dateController = TextEditingController();
 final reasonVisitController = TextEditingController();
 final anommesisController = TextEditingController();
 final physicalExamController = TextEditingController();
 final diagnosisController = TextEditingController();
 final pathologyController = TextEditingController();
 final treatmentController = TextEditingController();
 final recipeController = TextEditingController();
 final priceController = TextEditingController();
 final sendWhatsappController = TextEditingController();
 final sendEmailController = TextEditingController();
 final sendSmsController = TextEditingController();
 final formPaymentController = TextEditingController();
 final isPaidController = TextEditingController();
 final vaccineController = TextEditingController();
 final dewormerController = TextEditingController();
 final patientController = TextEditingController();

  void onInit() {
    getConsultations();
    super.onInit();
  }

  void getConsultations() async {
    try {
      final consultationsResult = await _consultationRepository
          .getConsultations();
      _consultations.assignAll(consultationsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getVaccines() async {
    try {
      final vaccinesResult = await _vaccineRepository.getVaccines();
      _vaccines.assignAll(vaccinesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getDewormers() async {
    try {
      final dewormersResult = await _dewormerRepository.getDewormers();
      _dewormers.assignAll(dewormersResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getPatients() async {
    try {
      final patientsResult = await _patientRepository.getPatients();
      _patients.assignAll(patientsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createConsultation() async {
    final consultationCreate = ConsultationCreate(
      date: dateController.text,
      reasonVisit: reasonVisitController.text,
      anommesis: anommesisController.text,
      physicalExam: physicalExamController.text,
      diagnosis: diagnosisController.text,
      pathology: pathologyController.text,
      treatment: treatmentController.text,
      recipe: recipeController.text,
      price: double.parse(priceController.text),
      sendWhatsapp: sendWhatsappController.text == 'true',
      sendEmail: sendEmailController.text == 'true',
      sendSms: sendSmsController.text == 'true',
      formPayment: formPaymentController.text,
      isPaid: isPaidController.text == 'true',
      vaccine: int.parse(vaccineController.text),
      dewormer: int.parse(dewormerController.text),
      patient: int.parse(patientController.text)
    );

    try {
      final createConsultation = await _consultationRepository.createConsultation(consultationCreate);
      _consultations.add(createConsultation);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getConsultation(int consultationId) async {
    try {
      final consultationResult = await _consultationRepository.getConsultation(consultationId);
      _consultation.value = consultationResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateConsultation(Consultation consultation) async {
    try {
      final updateConsultationResult = await _consultationRepository.updateConsultation(consultation.id, consultation);
      final index = _consultations.indexWhere((consultation) => consultation.id == updateConsultationResult.id );
      _consultations[index] = updateConsultationResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteConsultation(int consultationId) async {
    try {
      await _consultationRepository.deleteConsultation(consultationId);
      _consultations.removeWhere((consultation) => consultation.id == consultationId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}

