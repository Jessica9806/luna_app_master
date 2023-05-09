part of app_constants;

/// all endpoint api
class ApiPath {
  // URL :
  static const _BASE_URL = "http://localhost:8000";
  //User
  static const login = "$_BASE_URL/api/v1/login";
  static const register = "$_BASE_URL/api/v1/user/";

  //appointment
  static const getAppoinments = "$_BASE_URL/api/v1/appointment/";
  static const createAppointment = "$_BASE_URL/api/v1/appointment/";
  static const deleteAppointment = "$_BASE_URL/api/v1/appointment/";
  static const updateAppointment = "$_BASE_URL/api/v1/appointment/";

  //Breed
  static const getBreed = "$_BASE_URL/api/v1/breed/";
  static const createBreed = "$_BASE_URL/api/v1/breed/";
  static const deleteBreed = "$_BASE_URL/api/v1/breed/";
  static const updateBreed = "$_BASE_URL/api/v1/breed/";

  //Client
  static const getClients = "$_BASE_URL/api/v1/client/";
  static const createClient = "$_BASE_URL/api/v1/client/";
  //client_id
  static const getClient = "$_BASE_URL/api/v1/client/";
  //client_id
  static const deleteClient = "$_BASE_URL/api/v1/client/";
  //client_id
  static const updateClient = "$_BASE_URL/api/v1/client/";

  //Clinic
  static const getClinics = "$_BASE_URL/api/v1/clinic/";
  static const createClinic = "$_BASE_URL/api/v1/clinic/";
  //clinic_id
  static const getClinic = "$_BASE_URL/api/v1/clinic/";
  //clinic_id
  static const deleteClinic = "$_BASE_URL/api/v1/clinic/";
  //clinic_id
  static const updateClinic = "$_BASE_URL/api/v1/clinic/";

  //Consultation
  static const getConsultations = "$_BASE_URL/api/v1/consultation/";
  static const createConsultation ="$_BASE_URL/api/v1/consultation/";
  //consultation_id
  static const getConsultation = "$_BASE_URL/api/v1/consultation/";
  //consultation_id
  static const deleteConsultation = "$_BASE_URL/api/v1/consultation/";
  //consultation_id
  static const updateConsultation = "$_BASE_URL/api/v1/consultation";

  //DetailPurchase
  static const getDetailPurchases = "$_BASE_URL/api/v1/detail-purchase/";
  static const createDetailPurchase = "$_BASE_URL/api/v1/detail-purchase/";
  //detail_purchase_id
  static const getDetailPurchase = "$_BASE_URL/api/v1/detatil-purchase/";
  //detail_purchase_id
  static const deleteDetailPurchase = "$_BASE_URL/api/v1/detail-purchase/";
  //detail_purchase_id
  static const updateDetailPurchase = "$_BASE_URL/api/v1/detail-purchase";


  //DetailSale
  static const getDetailSales = "$_BASE_URL/api/v1/detail-sale/";
  static const createDetailSale = "$_BASE_URL/api/v1/detail-sale/";
  //detail_sale_id
  static const getDetailSale = "$_BASE_URL/api/v1/detail-sale/";
  //detail_sale_id
  static const deleteDetailSale = "$_BASE_URL/api/v1/detail-sale/";
  //detail_sale_id
  static const updateDetailSale = "$_BASE_URL/api/v1/detail-sale";


  //EstheticHasTypeService
  static const getEstheticHasTypeServices = "$_BASE_URL/api/v1/esthetic-has-type-service/";
  static const createEstheticHasTypeService = "$_BASE_URL/api/v1/esthetic-has-type-service/";
  //esthetic_has_type_service
  static const getEstheticHasTypeService = "$_BASE_URL/api/v1/esthetic-has-type-service/";
  //esthetic_has_type_service
  static const deleteEstheticHasTypeService = "$_BASE_URL/api/v1/esthetic-has-type-service/";
  //esthetic_has_type_service
  static const updateEstheticHasTypeService = "$_BASE_URL/api/v1/esthetic-has-type-service/";

  //Esthetic
  static const getAesthetic = "$_BASE_URL/api/v1/esthetic/";
  static const createEsthetic = "$_BASE_URL/api/v1/esthetic/";
  //esthetic_id
  static const getEsthetic = "$_BASE_URL/api/v1/esthetic/";
  //esthetic_id
  static const deleteEsthetic = "$_BASE_URL/api/v1/esthetic/";
  //esthetic_id
  static const updateEsthetic = "$_BASE_URL/api/v1/esthetic/";

  //Dewormer
  static const getDewormers = "$_BASE_URL/api/v1/dewormer/";
  static const createDewormer = "$_BASE_URL/api/v1/dewormer/";
  //dewormer_id
  static const getDewormer = "$_BASE_URL/api/v1/dewormer/";
  //dewormer_id
  static const deleteDewormer = "$_BASE_URL/api/v1/dewormer/";
  //dewormer_id
  static const updateDewormer = "$_BASE_URL/api/v1/dewormer/";

  //Hospitalization
  static const getHospitalizations = "$_BASE_URL/api/v1/hospitalization/";
  static const createHospitalization = "$_BASE_URL/api/v1/hospitalization/";
  //hospitalization_id
  static const getHospitalization = "$_BASE_URL/api/v1/hospitalization/";
  //hospitalization_id
  static const deleteHospitalization = "$_BASE_URL/api/v1/hospitalization/";
  //hospitalization_id
  static const updateHospitalization = "$_BASE_URL/api/v1/hospitalization/";

  //Laboratory
  static const getLaboratories = "$_BASE_URL/api/v1/laboratory/";
  static const createLaboratory = "$_BASE_URL/api/v1/laboratory/";
  //laboratory_id
  static const getLaboratory = "$_BASE_URL/api/v1/laboratory/";
  //laboratory_id
  static const deleteLaboratory = "$_BASE_URL/api/v1/laboratory/";
  //laboratory_id
  static const updateLaboratory = "$_BASE_URL/api/v1/laboratory/";

  //Patient
  static const getPatient = "$_BASE_URL/api/v1/patient/";
  static const createPatient = "$_BASE_URL/api/v1/patient/";
  //patient_id
  static const getPatients = "$_BASE_URL/api/v1/patient/";
  //patient_id
  static const deletePatient = "$_BASE_URL/api/v1/patient/";
  //patient_id
  static const updatePatient = "$_BASE_URL/api/v1/patient/";

  //PetDaycare
  static const getPetDaycares = "$_BASE_URL/api/v1/pet-daycare/";
  static const createPetDaycare = "$_BASE_URL/api/v1/pet-daycare/";
  //pet_daycare_id
  static const getPetDaycare = "$_BASE_URL/api/v1/pet-daycare/";
  //pet_daycare_id
  static const deletePetDaycare = "$_BASE_URL/api/v1/pet-daycare/";
  //pet_daycare_id
  static const updatePetDaycare = "$_BASE_URL/api/v1/pet-daycare/";

  //ProductCategory
  static const getProductCategories = "$_BASE_URL/api/v1/product-category/";
  static const createProductCategory = "$_BASE_URL/api/v1/product-category/";
  //product_category_id
  static const getProductCategory = "$_BASE_URL/api/v1/product-category/";
  //product_category_id
  static const deleteProductCategory = "$_BASE_URL/api/v1/product-category/";
  //product_category_id
  static const updateProductCategory = "$_BASE_URL/api/v1/product-category/";

  //Provider
  static const getProviders = "$_BASE_URL/api/v1/provider/";
  static const createProvider = "$_BASE_URL/api/v1/provider/";
  //provider_id
  static const getProvider = "$_BASE_URL/api/v1/provider/";
  //provider_id
  static const deleteProvider = "$_BASE_URL/api/v1/provider/";
  //provider_id
  static const updateProvider = "$_BASE_URL/api/v1/provider/";

  //Product
  static const getProducts = "$_BASE_URL/api/v1/product/";
  static const createProduct = "$_BASE_URL/api/v1/product/";
  //product_id
  static const getProduct = "$_BASE_URL/api/v1/product/";
  //product_id
  static const deleteProduct = "$_BASE_URL/api/v1/product/";
  //product_id
  static const updateProduct = "$_BASE_URL/api/v1/product/";

  //Purchase
  static const getPurchases = "$_BASE_URL/api/v1/purchase/";
  static const createPurchase = "$_BASE_URL/api/v1/purchase/";
  //purchase_id
  static const getPurchase = "$_BASE_URL/api/v1/purchase/";
  //purchase_id
  static const deletePurchase = "$_BASE_URL/api/v1/purchase/";
  //pruchase_id
  static const updatePurchase = "$_BASE_URL/api/v1/purchase/";

  //Sale
  static const getSales = "$_BASE_URL/api/v1/sale/";
  static const createSale = "$_BASE_URL/api/v1/sale/";
  //sale_id
  static const getSale = "$_BASE_URL/api/v1/sale/";
  //sale_id
  static const deleteSale = "$_BASE_URL/api/v1/sale/";
  //sale_id
  static const updateSale = "$_BASE_URL/api/v1/sale/";

  //Species
  static const getSpecies = "$_BASE_URL/api/v1/species/";
  static const createSpecies = "$_BASE_URL/api/v1/species/";
  //species_id
  static const getSpecie = "$_BASE_URL/api/v1/species/";
  //species_id
  static const deleteSpecie = "$_BASE_URL/api/v1/species/";
  //species_id
  static const updateSpecie = "$_BASE_URL/api/v1/species/";

  //TypeAppointment
  static const getTypeAppointments = "$_BASE_URL/api/v1/type_appointment/";
  static const createTypeAppointment = "$_BASE_URL/api/v1/type_appointment/";
  //type_appointment_id
  static const getTypeAppointment = "$_BASE_URL/api/v1/type_appointment/";
  //type_appointment_id
  static const deleteTypeAppointment = "$_BASE_URL/api/v1/type_appointment/";
  //type_appointment_id
  static const updateTypeAppointment = "$_BASE_URL/api/v1/type_appointment/";


  //TypeDewormer
  static const getTypeDewormers = "$_BASE_URL/api/v1/type_dewormer/";
  static const createTypeDewormer = "$_BASE_URL/api/v1/type_dewormer/";
  //type_dewormer_id
  static const getTypeDewormer = "$_BASE_URL/api/v1/type_dewormer/";
  //type_dewormer_id
  static const deleteTypeDewormer = "$_BASE_URL/api/v1/type_dewormer/";
  //type_dewormer_id
  static const updateTypeDewormer = "$_BASE_URL/api/v1/type_dewormer/";

  //TypeService
  static const getTypeServices = "$_BASE_URL/api/v1/type_service/";
  static const createTypeService = "$_BASE_URL/api/v1/type_service/";
  //type_service_id
  static const getTypeService = "$_BASE_URL/api/v1/type_service/";
  //type_service_id
  static const deleteTypeService = "$_BASE_URL/api/v1/type_service/";
  //type_service_id
  static const updateTypeService = "$_BASE_URL/api/v1/type_service/";

  //TypeVaccine
  static const getTypeVaccines = "$_BASE_URL/api/v1/type_vaccine/";
  static const createTypeVaccine = "$_BASE_URL/api/v1/type_vaccine/";
  //type_vaccine_id
  static const getTypeVaccine = "$_BASE_URL/api/v1/type_vaccine/";
  //type_vaccine_id
  static const deleteTypeVaccine = "$_BASE_URL/api/v1/type_vaccine/";
  //type_vaccine_id
  static const updateTypeVaccine = "$_BASE_URL/api/v1/type_vaccine/";

  //Vaccine
  static const getVaccines = "$_BASE_URL/api/v1/vaccine/";
  static const createVaccine = "$_BASE_URL/api/v1/vaccine/";
  //vaccine_id
  static const getVaccine = "$_BASE_URL/api/v1/vaccine/";
  //vaccine_id
  static const deleteVaccine = "$_BASE_URL/api/v1/vaccine/";
  //vaccine_id
  static const updateVaccine = "$_BASE_URL/api/v1/vaccine/";



}