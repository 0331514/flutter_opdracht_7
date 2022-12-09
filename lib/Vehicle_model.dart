///Documentation
///This file converts the json string to a list and
///sets al the properties of a vehicle.

import 'dart:convert';

List<Rdw> rdwFromJson(String str) => List<Rdw>.from(json.decode(str).map((x) => Rdw.fromJson(x)));

String postToJson(List<Rdw> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Rdw {
  String? kenteken;
  String? voertuigsoort;
  String? merk;
  String? handelsbenaming;
  String? vervaldatumApk;
  String? datumTenaamstelling;
  String? brutoBpm;
  String? inrichting;
  String? aantalZitplaatsen;
  String? eersteKleur;
  String? tweedeKleur;
  String? aantalCilinders;
  String? cilinderinhoud;
  String? massaLedigVoertuig;
  String? toegestaneMaximumMassaVoertuig;
  String? massaRijklaar;
  String? maximumMassaTrekkenOngeremd;
  String? maximumTrekkenMassaGeremd;
  String? datumEersteToelating;
  String? datumEersteTenaamstellingInNederland;
  String? wachtOpKeuren;
  String? catalogusprijs;
  String? wamVerzekerd;
  String? aantalDeuren;
  String? aantalWielen;
  String? afstandHartKoppelingTotAchterzijdeVoertuig;
  String? afstandVoorzijdeVoertuigTotHartKoppeling;
  String? lengte;
  String? breedte;
  String? europeseVoertuigcategorie;
  String? plaatsChassisnummer;
  String? technischeMaxMassaVoertuig;
  String? type;
  String? typegoedkeuringsnummer;
  String? variant;
  String? uitvoering;
  String? volgnummerWijzigingEuTypegoedkeuring;
  String? vermogenMassarijklaar;
  String? wielbasis;
  String? exportIndicator;
  String? openstaandeTerugroepactieIndicator;
  String? taxiIndicator;
  String? maximumMassaSamenstelling;
  String? aantalRolstoelplaatsen;
  String? maximumOndersteunendeSnelheid;
  String? jaarLaatsteRegistratieTellerstand;
  String? tellerstandoordeel;
  String? codeToelichtingTellerstandoordeel;
  String? tenaamstellenMogelijk;
  String? vervaldatumApkDt;
  String? datumTenaamstellingDt;
  String? datumEersteToelatingDt;
  String? datumEersteTenaamstellingInNederlandDt;
  String? zuinigheidsclassificatie;
  String? apiGekentekendeVoertuigenAssen;
  String? apiGekentekendeVoertuigenBrandstof;
  String? apiGekentekendeVoertuigenCarrosserie;
  String? apiGekentekendeVoertuigenCarrosserieSpecifiek;
  String? apiGekentekendeVoertuigenVoertuigklasse;

  Rdw(
      {this.kenteken,
        this.voertuigsoort,
        this.merk,
        this.handelsbenaming,
        this.vervaldatumApk,
        this.datumTenaamstelling,
        this.brutoBpm,
        this.inrichting,
        this.aantalZitplaatsen,
        this.eersteKleur,
        this.tweedeKleur,
        this.aantalCilinders,
        this.cilinderinhoud,
        this.massaLedigVoertuig,
        this.toegestaneMaximumMassaVoertuig,
        this.massaRijklaar,
        this.maximumMassaTrekkenOngeremd,
        this.maximumTrekkenMassaGeremd,
        this.datumEersteToelating,
        this.datumEersteTenaamstellingInNederland,
        this.wachtOpKeuren,
        this.catalogusprijs,
        this.wamVerzekerd,
        this.aantalDeuren,
        this.aantalWielen,
        this.afstandHartKoppelingTotAchterzijdeVoertuig,
        this.afstandVoorzijdeVoertuigTotHartKoppeling,
        this.lengte,
        this.breedte,
        this.europeseVoertuigcategorie,
        this.plaatsChassisnummer,
        this.technischeMaxMassaVoertuig,
        this.type,
        this.typegoedkeuringsnummer,
        this.variant,
        this.uitvoering,
        this.volgnummerWijzigingEuTypegoedkeuring,
        this.vermogenMassarijklaar,
        this.wielbasis,
        this.exportIndicator,
        this.openstaandeTerugroepactieIndicator,
        this.taxiIndicator,
        this.maximumMassaSamenstelling,
        this.aantalRolstoelplaatsen,
        this.maximumOndersteunendeSnelheid,
        this.jaarLaatsteRegistratieTellerstand,
        this.tellerstandoordeel,
        this.codeToelichtingTellerstandoordeel,
        this.tenaamstellenMogelijk,
        this.vervaldatumApkDt,
        this.datumTenaamstellingDt,
        this.datumEersteToelatingDt,
        this.datumEersteTenaamstellingInNederlandDt,
        this.zuinigheidsclassificatie,
        this.apiGekentekendeVoertuigenAssen,
        this.apiGekentekendeVoertuigenBrandstof,
        this.apiGekentekendeVoertuigenCarrosserie,
        this.apiGekentekendeVoertuigenCarrosserieSpecifiek,
        this.apiGekentekendeVoertuigenVoertuigklasse});

  Rdw.fromJson(Map<String, dynamic> json) {
    kenteken = json['kenteken'];
    voertuigsoort = json['voertuigsoort'];
    merk = json['merk'];
    handelsbenaming = json['handelsbenaming'];
    vervaldatumApk = json['vervaldatum_apk'];
    datumTenaamstelling = json['datum_tenaamstelling'];
    brutoBpm = json['bruto_bpm'];
    inrichting = json['inrichting'];
    aantalZitplaatsen = json['aantal_zitplaatsen'];
    eersteKleur = json['eerste_kleur'];
    tweedeKleur = json['tweede_kleur'];
    aantalCilinders = json['aantal_cilinders'];
    cilinderinhoud = json['cilinderinhoud'];
    massaLedigVoertuig = json['massa_ledig_voertuig'];
    toegestaneMaximumMassaVoertuig = json['toegestane_maximum_massa_voertuig'];
    massaRijklaar = json['massa_rijklaar'];
    maximumMassaTrekkenOngeremd = json['maximum_massa_trekken_ongeremd'];
    maximumTrekkenMassaGeremd = json['maximum_trekken_massa_geremd'];
    datumEersteToelating = json['datum_eerste_toelating'];
    datumEersteTenaamstellingInNederland =
    json['datum_eerste_tenaamstelling_in_nederland'];
    wachtOpKeuren = json['wacht_op_keuren'];
    catalogusprijs = json['catalogusprijs'];
    wamVerzekerd = json['wam_verzekerd'];
    aantalDeuren = json['aantal_deuren'];
    aantalWielen = json['aantal_wielen'];
    afstandHartKoppelingTotAchterzijdeVoertuig =
    json['afstand_hart_koppeling_tot_achterzijde_voertuig'];
    afstandVoorzijdeVoertuigTotHartKoppeling =
    json['afstand_voorzijde_voertuig_tot_hart_koppeling'];
    lengte = json['lengte'];
    breedte = json['breedte'];
    europeseVoertuigcategorie = json['europese_voertuigcategorie'];
    plaatsChassisnummer = json['plaats_chassisnummer'];
    technischeMaxMassaVoertuig = json['technische_max_massa_voertuig'];
    type = json['type'];
    typegoedkeuringsnummer = json['typegoedkeuringsnummer'];
    variant = json['variant'];
    uitvoering = json['uitvoering'];
    volgnummerWijzigingEuTypegoedkeuring =
    json['volgnummer_wijziging_eu_typegoedkeuring'];
    vermogenMassarijklaar = json['vermogen_massarijklaar'];
    wielbasis = json['wielbasis'];
    exportIndicator = json['export_indicator'];
    openstaandeTerugroepactieIndicator =
    json['openstaande_terugroepactie_indicator'];
    taxiIndicator = json['taxi_indicator'];
    maximumMassaSamenstelling = json['maximum_massa_samenstelling'];
    aantalRolstoelplaatsen = json['aantal_rolstoelplaatsen'];
    maximumOndersteunendeSnelheid = json['maximum_ondersteunende_snelheid'];
    jaarLaatsteRegistratieTellerstand =
    json['jaar_laatste_registratie_tellerstand'];
    tellerstandoordeel = json['tellerstandoordeel'];
    codeToelichtingTellerstandoordeel =
    json['code_toelichting_tellerstandoordeel'];
    tenaamstellenMogelijk = json['tenaamstellen_mogelijk'];
    vervaldatumApkDt = json['vervaldatum_apk_dt'];
    datumTenaamstellingDt = json['datum_tenaamstelling_dt'];
    datumEersteToelatingDt = json['datum_eerste_toelating_dt'];
    datumEersteTenaamstellingInNederlandDt =
    json['datum_eerste_tenaamstelling_in_nederland_dt'];
    zuinigheidsclassificatie = json['zuinigheidsclassificatie'];
    apiGekentekendeVoertuigenAssen = json['api_gekentekende_voertuigen_assen'];
    apiGekentekendeVoertuigenBrandstof =
    json['api_gekentekende_voertuigen_brandstof'];
    apiGekentekendeVoertuigenCarrosserie =
    json['api_gekentekende_voertuigen_carrosserie'];
    apiGekentekendeVoertuigenCarrosserieSpecifiek =
    json['api_gekentekende_voertuigen_carrosserie_specifiek'];
    apiGekentekendeVoertuigenVoertuigklasse =
    json['api_gekentekende_voertuigen_voertuigklasse'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kenteken'] = this.kenteken;
    data['voertuigsoort'] = this.voertuigsoort;
    data['merk'] = this.merk;
    data['handelsbenaming'] = this.handelsbenaming;
    data['vervaldatum_apk'] = this.vervaldatumApk;
    data['datum_tenaamstelling'] = this.datumTenaamstelling;
    data['bruto_bpm'] = this.brutoBpm;
    data['inrichting'] = this.inrichting;
    data['aantal_zitplaatsen'] = this.aantalZitplaatsen;
    data['eerste_kleur'] = this.eersteKleur;
    data['tweede_kleur'] = this.tweedeKleur;
    data['aantal_cilinders'] = this.aantalCilinders;
    data['cilinderinhoud'] = this.cilinderinhoud;
    data['massa_ledig_voertuig'] = this.massaLedigVoertuig;
    data['toegestane_maximum_massa_voertuig'] =
        this.toegestaneMaximumMassaVoertuig;
    data['massa_rijklaar'] = this.massaRijklaar;
    data['maximum_massa_trekken_ongeremd'] = this.maximumMassaTrekkenOngeremd;
    data['maximum_trekken_massa_geremd'] = this.maximumTrekkenMassaGeremd;
    data['datum_eerste_toelating'] = this.datumEersteToelating;
    data['datum_eerste_tenaamstelling_in_nederland'] =
        this.datumEersteTenaamstellingInNederland;
    data['wacht_op_keuren'] = this.wachtOpKeuren;
    data['catalogusprijs'] = this.catalogusprijs;
    data['wam_verzekerd'] = this.wamVerzekerd;
    data['aantal_deuren'] = this.aantalDeuren;
    data['aantal_wielen'] = this.aantalWielen;
    data['afstand_hart_koppeling_tot_achterzijde_voertuig'] =
        this.afstandHartKoppelingTotAchterzijdeVoertuig;
    data['afstand_voorzijde_voertuig_tot_hart_koppeling'] =
        this.afstandVoorzijdeVoertuigTotHartKoppeling;
    data['lengte'] = this.lengte;
    data['breedte'] = this.breedte;
    data['europese_voertuigcategorie'] = this.europeseVoertuigcategorie;
    data['plaats_chassisnummer'] = this.plaatsChassisnummer;
    data['technische_max_massa_voertuig'] = this.technischeMaxMassaVoertuig;
    data['type'] = this.type;
    data['typegoedkeuringsnummer'] = this.typegoedkeuringsnummer;
    data['variant'] = this.variant;
    data['uitvoering'] = this.uitvoering;
    data['volgnummer_wijziging_eu_typegoedkeuring'] =
        this.volgnummerWijzigingEuTypegoedkeuring;
    data['vermogen_massarijklaar'] = this.vermogenMassarijklaar;
    data['wielbasis'] = this.wielbasis;
    data['export_indicator'] = this.exportIndicator;
    data['openstaande_terugroepactie_indicator'] =
        this.openstaandeTerugroepactieIndicator;
    data['taxi_indicator'] = this.taxiIndicator;
    data['maximum_massa_samenstelling'] = this.maximumMassaSamenstelling;
    data['aantal_rolstoelplaatsen'] = this.aantalRolstoelplaatsen;
    data['maximum_ondersteunende_snelheid'] =
        this.maximumOndersteunendeSnelheid;
    data['jaar_laatste_registratie_tellerstand'] =
        this.jaarLaatsteRegistratieTellerstand;
    data['tellerstandoordeel'] = this.tellerstandoordeel;
    data['code_toelichting_tellerstandoordeel'] =
        this.codeToelichtingTellerstandoordeel;
    data['tenaamstellen_mogelijk'] = this.tenaamstellenMogelijk;
    data['vervaldatum_apk_dt'] = this.vervaldatumApkDt;
    data['datum_tenaamstelling_dt'] = this.datumTenaamstellingDt;
    data['datum_eerste_toelating_dt'] = this.datumEersteToelatingDt;
    data['datum_eerste_tenaamstelling_in_nederland_dt'] =
        this.datumEersteTenaamstellingInNederlandDt;
    data['zuinigheidsclassificatie'] = this.zuinigheidsclassificatie;
    data['api_gekentekende_voertuigen_assen'] =
        this.apiGekentekendeVoertuigenAssen;
    data['api_gekentekende_voertuigen_brandstof'] =
        this.apiGekentekendeVoertuigenBrandstof;
    data['api_gekentekende_voertuigen_carrosserie'] =
        this.apiGekentekendeVoertuigenCarrosserie;
    data['api_gekentekende_voertuigen_carrosserie_specifiek'] =
        this.apiGekentekendeVoertuigenCarrosserieSpecifiek;
    data['api_gekentekende_voertuigen_voertuigklasse'] =
        this.apiGekentekendeVoertuigenVoertuigklasse;
    return data;
  }
}