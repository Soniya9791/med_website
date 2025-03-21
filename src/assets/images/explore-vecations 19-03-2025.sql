PGDMP  *    '                }            explore-vacations    17.2    17.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    25181    explore-vacations    DATABASE     �   CREATE DATABASE "explore-vacations" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
 #   DROP DATABASE "explore-vacations";
                     postgres    false            �            1259    25389    customizeTourBooking    TABLE     u  CREATE TABLE public."customizeTourBooking" (
    "customizeTourBookingId" integer NOT NULL,
    "refUserName" text,
    "refUserMail" text,
    "refUserMobile" text,
    "refPackageId" text,
    "refArrivalDate" text,
    "refSingleRoom" text,
    "refTwinRoom" text,
    "refTripleRoom" text,
    "refAdultCount" text,
    "refChildrenCount" text,
    "refVaccinationType" text,
    "refVaccinationCertificate" text,
    "refOtherRequirements" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 *   DROP TABLE public."customizeTourBooking";
       public         heap r       postgres    false            �            1259    25388 /   customizeTourBooking_customizeTourBookingId_seq    SEQUENCE     �   CREATE SEQUENCE public."customizeTourBooking_customizeTourBookingId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public."customizeTourBooking_customizeTourBookingId_seq";
       public               postgres    false    252            �           0    0 /   customizeTourBooking_customizeTourBookingId_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."customizeTourBooking_customizeTourBookingId_seq" OWNED BY public."customizeTourBooking"."customizeTourBookingId";
          public               postgres    false    251            �            1259    25201    refActivities    TABLE     4  CREATE TABLE public."refActivities" (
    "refActivitiesId" integer NOT NULL,
    "refActivitiesName" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 #   DROP TABLE public."refActivities";
       public         heap r       postgres    false            �            1259    25200 !   refActivities_refActivitiesId_seq    SEQUENCE     �   CREATE SEQUENCE public."refActivities_refActivitiesId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."refActivities_refActivitiesId_seq";
       public               postgres    false    220            �           0    0 !   refActivities_refActivitiesId_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."refActivities_refActivitiesId_seq" OWNED BY public."refActivities"."refActivitiesId";
          public               postgres    false    219            �            1259    25273    refBenifits    TABLE     .  CREATE TABLE public."refBenifits" (
    "refBenifitsId" integer NOT NULL,
    "refBenifitsName" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 !   DROP TABLE public."refBenifits";
       public         heap r       postgres    false            �            1259    25272    refBenifits_refBenifitsId_seq    SEQUENCE     �   CREATE SEQUENCE public."refBenifits_refBenifitsId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."refBenifits_refBenifitsId_seq";
       public               postgres    false    234            �           0    0    refBenifits_refBenifitsId_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."refBenifits_refBenifitsId_seq" OWNED BY public."refBenifits"."refBenifitsId";
          public               postgres    false    233            �            1259    25374    refCarsTable    TABLE     �  CREATE TABLE public."refCarsTable" (
    "refCarsId" integer NOT NULL,
    "refVehicleTypeId" integer,
    "refPersonCount" text,
    "refBagCount" text,
    "refFuelType" text,
    "refcarManufactureYear" text,
    "refMileage" text,
    "refTrasmissionType" text,
    "refFuleLimit" text,
    "refBenifits" text,
    "refInclude" text,
    "refExclude" text,
    "refDriverDetailsId" integer,
    "refTermsAndConditionsId" integer,
    "refFormDetails" text,
    "refOtherRequirements" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refCarPath" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 "   DROP TABLE public."refCarsTable";
       public         heap r       postgres    false            �            1259    25373    refCarsTable_refCarsId_seq    SEQUENCE     �   CREATE SEQUENCE public."refCarsTable_refCarsId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."refCarsTable_refCarsId_seq";
       public               postgres    false    250            �           0    0    refCarsTable_refCarsId_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."refCarsTable_refCarsId_seq" OWNED BY public."refCarsTable"."refCarsId";
          public               postgres    false    249            �            1259    25210    refCategory    TABLE     .  CREATE TABLE public."refCategory" (
    "refCategoryId" integer NOT NULL,
    "refCategoryName" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 !   DROP TABLE public."refCategory";
       public         heap r       postgres    false            �            1259    25209    refCategory_refCategoryId_seq    SEQUENCE     �   CREATE SEQUENCE public."refCategory_refCategoryId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."refCategory_refCategoryId_seq";
       public               postgres    false    222            �           0    0    refCategory_refCategoryId_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."refCategory_refCategoryId_seq" OWNED BY public."refCategory"."refCategoryId";
          public               postgres    false    221            �            1259    25183    refDestination    TABLE     7  CREATE TABLE public."refDestination" (
    "refDestinationId" integer NOT NULL,
    "refDestinationName" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 $   DROP TABLE public."refDestination";
       public         heap r       postgres    false            �            1259    25182 #   refDestination_refDestinationId_seq    SEQUENCE     �   CREATE SEQUENCE public."refDestination_refDestinationId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."refDestination_refDestinationId_seq";
       public               postgres    false    218            �           0    0 #   refDestination_refDestinationId_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."refDestination_refDestinationId_seq" OWNED BY public."refDestination"."refDestinationId";
          public               postgres    false    217            �            1259    25301    refDriverDetails    TABLE     �  CREATE TABLE public."refDriverDetails" (
    "refDriverDetailsId" integer NOT NULL,
    "refDriverName" text,
    "refDriverAge" text,
    "refDriverMail" text,
    "refDriverMobile" text,
    "refDriverLocation" text,
    "isVerified" boolean,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 &   DROP TABLE public."refDriverDetails";
       public         heap r       postgres    false            �            1259    25300 '   refDriverDetails_refDriverDetailsId_seq    SEQUENCE     �   CREATE SEQUENCE public."refDriverDetails_refDriverDetailsId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."refDriverDetails_refDriverDetailsId_seq";
       public               postgres    false    240            �           0    0 '   refDriverDetails_refDriverDetailsId_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."refDriverDetails_refDriverDetailsId_seq" OWNED BY public."refDriverDetails"."refDriverDetailsId";
          public               postgres    false    239            �            1259    25291 
   refExclude    TABLE     +  CREATE TABLE public."refExclude" (
    "refExcludeId" integer NOT NULL,
    "refExcludeName" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
     DROP TABLE public."refExclude";
       public         heap r       postgres    false            �            1259    25290    refExclude_refExcludeId_seq    SEQUENCE     �   CREATE SEQUENCE public."refExclude_refExcludeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."refExclude_refExcludeId_seq";
       public               postgres    false    238            �           0    0    refExclude_refExcludeId_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."refExclude_refExcludeId_seq" OWNED BY public."refExclude"."refExcludeId";
          public               postgres    false    237            �            1259    25365    refFormDetails    TABLE     3  CREATE TABLE public."refFormDetails" (
    "refFormDetailsId" integer NOT NULL,
    "refFormDetails" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 $   DROP TABLE public."refFormDetails";
       public         heap r       postgres    false            �            1259    25364 #   refFormDetails_refFormDetailsId_seq    SEQUENCE     �   CREATE SEQUENCE public."refFormDetails_refFormDetailsId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."refFormDetails_refFormDetailsId_seq";
       public               postgres    false    248            �           0    0 #   refFormDetails_refFormDetailsId_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."refFormDetails_refFormDetailsId_seq" OWNED BY public."refFormDetails"."refFormDetailsId";
          public               postgres    false    247            �            1259    25254 
   refGallery    TABLE     C  CREATE TABLE public."refGallery" (
    "refGalleryId" integer NOT NULL,
    "refPackageId" integer,
    "refGallery" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
     DROP TABLE public."refGallery";
       public         heap r       postgres    false            �            1259    25253    refGallery_refGalleryId_seq    SEQUENCE     �   CREATE SEQUENCE public."refGallery_refGalleryId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."refGallery_refGalleryId_seq";
       public               postgres    false    230            �           0    0    refGallery_refGalleryId_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."refGallery_refGalleryId_seq" OWNED BY public."refGallery"."refGalleryId";
          public               postgres    false    229            �            1259    25282 
   refInclude    TABLE     +  CREATE TABLE public."refInclude" (
    "refIncludeId" integer NOT NULL,
    "refIncludeName" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
     DROP TABLE public."refInclude";
       public         heap r       postgres    false            �            1259    25281    refInclude_refIncludeId_seq    SEQUENCE     �   CREATE SEQUENCE public."refInclude_refIncludeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."refInclude_refIncludeId_seq";
       public               postgres    false    236            �           0    0    refInclude_refIncludeId_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."refInclude_refIncludeId_seq" OWNED BY public."refInclude"."refIncludeId";
          public               postgres    false    235            �            1259    25219    refLocation    TABLE     N  CREATE TABLE public."refLocation" (
    "refLocationId" integer NOT NULL,
    "refLocationName" text,
    "refDestinationId" integer,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 !   DROP TABLE public."refLocation";
       public         heap r       postgres    false            �            1259    25218    refLocation_refLocationId_seq    SEQUENCE     �   CREATE SEQUENCE public."refLocation_refLocationId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."refLocation_refLocationId_seq";
       public               postgres    false    224            �           0    0    refLocation_refLocationId_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."refLocation_refLocationId_seq" OWNED BY public."refLocation"."refLocationId";
          public               postgres    false    223            �            1259    25236 
   refPackage    TABLE     9  CREATE TABLE public."refPackage" (
    "refPackageId" integer NOT NULL,
    "refPackageName" text,
    "refDesignationId" integer,
    "refDurationIday" text,
    "refDurationINight" text,
    "refLocation" text,
    "refCategoryId" integer,
    "refActivity" text,
    "refGroupSize" text,
    "refTourCode" text,
    "refTourPrice" text,
    "refSeasonalPrice" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
     DROP TABLE public."refPackage";
       public         heap r       postgres    false            �            1259    25235    refPackage_refPackageId_seq    SEQUENCE     �   CREATE SEQUENCE public."refPackage_refPackageId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."refPackage_refPackageId_seq";
       public               postgres    false    226            �           0    0    refPackage_refPackageId_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."refPackage_refPackageId_seq" OWNED BY public."refPackage"."refPackageId";
          public               postgres    false    225            �            1259    25310    refTermsAndConditions    TABLE     T  CREATE TABLE public."refTermsAndConditions" (
    "refTermsAndConditionsId" integer NOT NULL,
    "refQuestion" text,
    "refAnswer" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 +   DROP TABLE public."refTermsAndConditions";
       public         heap r       postgres    false            �            1259    25309 1   refTermsAndConditions_refTermsAndConditionsId_seq    SEQUENCE     �   CREATE SEQUENCE public."refTermsAndConditions_refTermsAndConditionsId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."refTermsAndConditions_refTermsAndConditionsId_seq";
       public               postgres    false    242            �           0    0 1   refTermsAndConditions_refTermsAndConditionsId_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."refTermsAndConditions_refTermsAndConditionsId_seq" OWNED BY public."refTermsAndConditions"."refTermsAndConditionsId";
          public               postgres    false    241            �            1259    25336    refTransactionTable    TABLE     �   CREATE TABLE public."refTransactionTable" (
    "refTransactionHistoryId" integer NOT NULL,
    "refTransactionHistory" text
);
 )   DROP TABLE public."refTransactionTable";
       public         heap r       postgres    false            �            1259    25335 1   refTransactionHistory_refTransactionHistoryId_seq    SEQUENCE     �   CREATE SEQUENCE public."refTransactionHistory_refTransactionHistoryId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."refTransactionHistory_refTransactionHistoryId_seq";
       public               postgres    false    244            �           0    0 1   refTransactionHistory_refTransactionHistoryId_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."refTransactionHistory_refTransactionHistoryId_seq" OWNED BY public."refTransactionTable"."refTransactionHistoryId";
          public               postgres    false    243            �            1259    25355    refTxnHistory    TABLE     N  CREATE TABLE public."refTxnHistory" (
    "transId" integer NOT NULL,
    "refTransactionHistoryId" integer,
    "refUserId" integer,
    "transData" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text
);
 #   DROP TABLE public."refTxnHistory";
       public         heap r       postgres    false            �            1259    25354    refTxnHistory_transId_seq    SEQUENCE     �   CREATE SEQUENCE public."refTxnHistory_transId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."refTxnHistory_transId_seq";
       public               postgres    false    246            �           0    0    refTxnHistory_transId_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."refTxnHistory_transId_seq" OWNED BY public."refTxnHistory"."transId";
          public               postgres    false    245            �            1259    25245    refUserDomain    TABLE     �  CREATE TABLE public."refUserDomain" (
    "refUserDomId" integer NOT NULL,
    "refUserId" integer,
    "refUserEmail" text,
    "refUserPassword" text,
    "refUserHashedPassword" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refUsername" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 #   DROP TABLE public."refUserDomain";
       public         heap r       postgres    false            �            1259    25244    refUserDomain_refUserDomId_seq    SEQUENCE     �   CREATE SEQUENCE public."refUserDomain_refUserDomId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."refUserDomain_refUserDomId_seq";
       public               postgres    false    228            �           0    0    refUserDomain_refUserDomId_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."refUserDomain_refUserDomId_seq" OWNED BY public."refUserDomain"."refUserDomId";
          public               postgres    false    227            �            1259    25264    refVehicleType    TABLE     7  CREATE TABLE public."refVehicleType" (
    "refVehicleTypeId" integer NOT NULL,
    "refVehicleTypeName" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy1" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 $   DROP TABLE public."refVehicleType";
       public         heap r       postgres    false            �            1259    25263 #   refVehicleType_refVehicleTypeId_seq    SEQUENCE     �   CREATE SEQUENCE public."refVehicleType_refVehicleTypeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."refVehicleType_refVehicleTypeId_seq";
       public               postgres    false    232            �           0    0 #   refVehicleType_refVehicleTypeId_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."refVehicleType_refVehicleTypeId_seq" OWNED BY public."refVehicleType"."refVehicleTypeId";
          public               postgres    false    231            �            1259    25398    userCarBooking    TABLE     h  CREATE TABLE public."userCarBooking" (
    "userCarBookingId" integer NOT NULL,
    "refUserName" text,
    "refUserMail" text,
    "refUserMobile" text,
    "refPickupAddress" text,
    "refSubmissionAddress" text,
    "refPickupDate" text,
    "refVehicleTypeId" integer,
    "refTripleRoom" text,
    "refAdultCount" text,
    "refChildrenCount" text,
    "refInfants" text,
    "refFormDetails" text,
    "refOtherRequirements" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 $   DROP TABLE public."userCarBooking";
       public         heap r       postgres    false            �            1259    25397 #   userCarBooking_userCarBookingId_seq    SEQUENCE     �   CREATE SEQUENCE public."userCarBooking_userCarBookingId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."userCarBooking_userCarBookingId_seq";
       public               postgres    false    254            �           0    0 #   userCarBooking_userCarBookingId_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."userCarBooking_userCarBookingId_seq" OWNED BY public."userCarBooking"."userCarBookingId";
          public               postgres    false    253                        1259    25407    userTourBooking    TABLE     �  CREATE TABLE public."userTourBooking" (
    "userTourBookingId" integer NOT NULL,
    "refPackageId" integer,
    "refUserName" text,
    "refUserMail" text,
    "refUserMobile" text,
    "refPickupDate" text,
    "refAdultCount" text,
    "refChildrenCount" text,
    "refInfants" text,
    "refOtherRequirements" text,
    "createdAt" text,
    "createdBy" text,
    "updatedAt" text,
    "updatedBy" text,
    "refDummy2" text,
    "refDummy3" text,
    "refDummy4" text,
    "refDummy5" text
);
 %   DROP TABLE public."userTourBooking";
       public         heap r       postgres    false            �            1259    25406 %   userTourBooking_userTourBookingId_seq    SEQUENCE     �   CREATE SEQUENCE public."userTourBooking_userTourBookingId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."userTourBooking_userTourBookingId_seq";
       public               postgres    false    256            �           0    0 %   userTourBooking_userTourBookingId_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."userTourBooking_userTourBookingId_seq" OWNED BY public."userTourBooking"."userTourBookingId";
          public               postgres    false    255            �           2604    25392 +   customizeTourBooking customizeTourBookingId    DEFAULT     �   ALTER TABLE ONLY public."customizeTourBooking" ALTER COLUMN "customizeTourBookingId" SET DEFAULT nextval('public."customizeTourBooking_customizeTourBookingId_seq"'::regclass);
 ^   ALTER TABLE public."customizeTourBooking" ALTER COLUMN "customizeTourBookingId" DROP DEFAULT;
       public               postgres    false    251    252    252            �           2604    25204    refActivities refActivitiesId    DEFAULT     �   ALTER TABLE ONLY public."refActivities" ALTER COLUMN "refActivitiesId" SET DEFAULT nextval('public."refActivities_refActivitiesId_seq"'::regclass);
 P   ALTER TABLE public."refActivities" ALTER COLUMN "refActivitiesId" DROP DEFAULT;
       public               postgres    false    220    219    220            �           2604    25276    refBenifits refBenifitsId    DEFAULT     �   ALTER TABLE ONLY public."refBenifits" ALTER COLUMN "refBenifitsId" SET DEFAULT nextval('public."refBenifits_refBenifitsId_seq"'::regclass);
 L   ALTER TABLE public."refBenifits" ALTER COLUMN "refBenifitsId" DROP DEFAULT;
       public               postgres    false    233    234    234            �           2604    25377    refCarsTable refCarsId    DEFAULT     �   ALTER TABLE ONLY public."refCarsTable" ALTER COLUMN "refCarsId" SET DEFAULT nextval('public."refCarsTable_refCarsId_seq"'::regclass);
 I   ALTER TABLE public."refCarsTable" ALTER COLUMN "refCarsId" DROP DEFAULT;
       public               postgres    false    250    249    250            �           2604    25213    refCategory refCategoryId    DEFAULT     �   ALTER TABLE ONLY public."refCategory" ALTER COLUMN "refCategoryId" SET DEFAULT nextval('public."refCategory_refCategoryId_seq"'::regclass);
 L   ALTER TABLE public."refCategory" ALTER COLUMN "refCategoryId" DROP DEFAULT;
       public               postgres    false    222    221    222            �           2604    25186    refDestination refDestinationId    DEFAULT     �   ALTER TABLE ONLY public."refDestination" ALTER COLUMN "refDestinationId" SET DEFAULT nextval('public."refDestination_refDestinationId_seq"'::regclass);
 R   ALTER TABLE public."refDestination" ALTER COLUMN "refDestinationId" DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    25304 #   refDriverDetails refDriverDetailsId    DEFAULT     �   ALTER TABLE ONLY public."refDriverDetails" ALTER COLUMN "refDriverDetailsId" SET DEFAULT nextval('public."refDriverDetails_refDriverDetailsId_seq"'::regclass);
 V   ALTER TABLE public."refDriverDetails" ALTER COLUMN "refDriverDetailsId" DROP DEFAULT;
       public               postgres    false    239    240    240            �           2604    25294    refExclude refExcludeId    DEFAULT     �   ALTER TABLE ONLY public."refExclude" ALTER COLUMN "refExcludeId" SET DEFAULT nextval('public."refExclude_refExcludeId_seq"'::regclass);
 J   ALTER TABLE public."refExclude" ALTER COLUMN "refExcludeId" DROP DEFAULT;
       public               postgres    false    237    238    238            �           2604    25368    refFormDetails refFormDetailsId    DEFAULT     �   ALTER TABLE ONLY public."refFormDetails" ALTER COLUMN "refFormDetailsId" SET DEFAULT nextval('public."refFormDetails_refFormDetailsId_seq"'::regclass);
 R   ALTER TABLE public."refFormDetails" ALTER COLUMN "refFormDetailsId" DROP DEFAULT;
       public               postgres    false    247    248    248            �           2604    25257    refGallery refGalleryId    DEFAULT     �   ALTER TABLE ONLY public."refGallery" ALTER COLUMN "refGalleryId" SET DEFAULT nextval('public."refGallery_refGalleryId_seq"'::regclass);
 J   ALTER TABLE public."refGallery" ALTER COLUMN "refGalleryId" DROP DEFAULT;
       public               postgres    false    229    230    230            �           2604    25285    refInclude refIncludeId    DEFAULT     �   ALTER TABLE ONLY public."refInclude" ALTER COLUMN "refIncludeId" SET DEFAULT nextval('public."refInclude_refIncludeId_seq"'::regclass);
 J   ALTER TABLE public."refInclude" ALTER COLUMN "refIncludeId" DROP DEFAULT;
       public               postgres    false    235    236    236            �           2604    25222    refLocation refLocationId    DEFAULT     �   ALTER TABLE ONLY public."refLocation" ALTER COLUMN "refLocationId" SET DEFAULT nextval('public."refLocation_refLocationId_seq"'::regclass);
 L   ALTER TABLE public."refLocation" ALTER COLUMN "refLocationId" DROP DEFAULT;
       public               postgres    false    223    224    224            �           2604    25239    refPackage refPackageId    DEFAULT     �   ALTER TABLE ONLY public."refPackage" ALTER COLUMN "refPackageId" SET DEFAULT nextval('public."refPackage_refPackageId_seq"'::regclass);
 J   ALTER TABLE public."refPackage" ALTER COLUMN "refPackageId" DROP DEFAULT;
       public               postgres    false    225    226    226            �           2604    25313 -   refTermsAndConditions refTermsAndConditionsId    DEFAULT     �   ALTER TABLE ONLY public."refTermsAndConditions" ALTER COLUMN "refTermsAndConditionsId" SET DEFAULT nextval('public."refTermsAndConditions_refTermsAndConditionsId_seq"'::regclass);
 `   ALTER TABLE public."refTermsAndConditions" ALTER COLUMN "refTermsAndConditionsId" DROP DEFAULT;
       public               postgres    false    241    242    242            �           2604    25339 +   refTransactionTable refTransactionHistoryId    DEFAULT     �   ALTER TABLE ONLY public."refTransactionTable" ALTER COLUMN "refTransactionHistoryId" SET DEFAULT nextval('public."refTransactionHistory_refTransactionHistoryId_seq"'::regclass);
 ^   ALTER TABLE public."refTransactionTable" ALTER COLUMN "refTransactionHistoryId" DROP DEFAULT;
       public               postgres    false    244    243    244            �           2604    25358    refTxnHistory transId    DEFAULT     �   ALTER TABLE ONLY public."refTxnHistory" ALTER COLUMN "transId" SET DEFAULT nextval('public."refTxnHistory_transId_seq"'::regclass);
 H   ALTER TABLE public."refTxnHistory" ALTER COLUMN "transId" DROP DEFAULT;
       public               postgres    false    245    246    246            �           2604    25248    refUserDomain refUserDomId    DEFAULT     �   ALTER TABLE ONLY public."refUserDomain" ALTER COLUMN "refUserDomId" SET DEFAULT nextval('public."refUserDomain_refUserDomId_seq"'::regclass);
 M   ALTER TABLE public."refUserDomain" ALTER COLUMN "refUserDomId" DROP DEFAULT;
       public               postgres    false    227    228    228            �           2604    25267    refVehicleType refVehicleTypeId    DEFAULT     �   ALTER TABLE ONLY public."refVehicleType" ALTER COLUMN "refVehicleTypeId" SET DEFAULT nextval('public."refVehicleType_refVehicleTypeId_seq"'::regclass);
 R   ALTER TABLE public."refVehicleType" ALTER COLUMN "refVehicleTypeId" DROP DEFAULT;
       public               postgres    false    231    232    232            �           2604    25401    userCarBooking userCarBookingId    DEFAULT     �   ALTER TABLE ONLY public."userCarBooking" ALTER COLUMN "userCarBookingId" SET DEFAULT nextval('public."userCarBooking_userCarBookingId_seq"'::regclass);
 R   ALTER TABLE public."userCarBooking" ALTER COLUMN "userCarBookingId" DROP DEFAULT;
       public               postgres    false    254    253    254            �           2604    25410 !   userTourBooking userTourBookingId    DEFAULT     �   ALTER TABLE ONLY public."userTourBooking" ALTER COLUMN "userTourBookingId" SET DEFAULT nextval('public."userTourBooking_userTourBookingId_seq"'::regclass);
 T   ALTER TABLE public."userTourBooking" ALTER COLUMN "userTourBookingId" DROP DEFAULT;
       public               postgres    false    255    256    256            �          0    25389    customizeTourBooking 
   TABLE DATA           �  COPY public."customizeTourBooking" ("customizeTourBookingId", "refUserName", "refUserMail", "refUserMobile", "refPackageId", "refArrivalDate", "refSingleRoom", "refTwinRoom", "refTripleRoom", "refAdultCount", "refChildrenCount", "refVaccinationType", "refVaccinationCertificate", "refOtherRequirements", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    252   ��       �          0    25201    refActivities 
   TABLE DATA           �   COPY public."refActivities" ("refActivitiesId", "refActivitiesName", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    220   ��       �          0    25273    refBenifits 
   TABLE DATA           �   COPY public."refBenifits" ("refBenifitsId", "refBenifitsName", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    234   ��       �          0    25374    refCarsTable 
   TABLE DATA           �  COPY public."refCarsTable" ("refCarsId", "refVehicleTypeId", "refPersonCount", "refBagCount", "refFuelType", "refcarManufactureYear", "refMileage", "refTrasmissionType", "refFuleLimit", "refBenifits", "refInclude", "refExclude", "refDriverDetailsId", "refTermsAndConditionsId", "refFormDetails", "refOtherRequirements", "createdAt", "createdBy", "updatedAt", "updatedBy", "refCarPath", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    250   "�       �          0    25210    refCategory 
   TABLE DATA           �   COPY public."refCategory" ("refCategoryId", "refCategoryName", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    222   ��       �          0    25183    refDestination 
   TABLE DATA           �   COPY public."refDestination" ("refDestinationId", "refDestinationName", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    218   �       �          0    25301    refDriverDetails 
   TABLE DATA             COPY public."refDriverDetails" ("refDriverDetailsId", "refDriverName", "refDriverAge", "refDriverMail", "refDriverMobile", "refDriverLocation", "isVerified", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    240   ��       �          0    25291 
   refExclude 
   TABLE DATA           �   COPY public."refExclude" ("refExcludeId", "refExcludeName", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    238   ��       �          0    25365    refFormDetails 
   TABLE DATA           �   COPY public."refFormDetails" ("refFormDetailsId", "refFormDetails", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    248   Q�       �          0    25254 
   refGallery 
   TABLE DATA           �   COPY public."refGallery" ("refGalleryId", "refPackageId", "refGallery", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    230   P�       �          0    25282 
   refInclude 
   TABLE DATA           �   COPY public."refInclude" ("refIncludeId", "refIncludeName", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    236   m�       �          0    25219    refLocation 
   TABLE DATA           �   COPY public."refLocation" ("refLocationId", "refLocationName", "refDestinationId", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    224   ��       �          0    25236 
   refPackage 
   TABLE DATA           k  COPY public."refPackage" ("refPackageId", "refPackageName", "refDesignationId", "refDurationIday", "refDurationINight", "refLocation", "refCategoryId", "refActivity", "refGroupSize", "refTourCode", "refTourPrice", "refSeasonalPrice", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    226   t�       �          0    25310    refTermsAndConditions 
   TABLE DATA           �   COPY public."refTermsAndConditions" ("refTermsAndConditionsId", "refQuestion", "refAnswer", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    242   ��       �          0    25336    refTransactionTable 
   TABLE DATA           c   COPY public."refTransactionTable" ("refTransactionHistoryId", "refTransactionHistory") FROM stdin;
    public               postgres    false    244   ��       �          0    25355    refTxnHistory 
   TABLE DATA           �   COPY public."refTxnHistory" ("transId", "refTransactionHistoryId", "refUserId", "transData", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4") FROM stdin;
    public               postgres    false    246   ��       �          0    25245    refUserDomain 
   TABLE DATA           �   COPY public."refUserDomain" ("refUserDomId", "refUserId", "refUserEmail", "refUserPassword", "refUserHashedPassword", "createdAt", "createdBy", "updatedAt", "updatedBy", "refUsername", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    228   v�       �          0    25264    refVehicleType 
   TABLE DATA           �   COPY public."refVehicleType" ("refVehicleTypeId", "refVehicleTypeName", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy1", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    232   ��       �          0    25398    userCarBooking 
   TABLE DATA           �  COPY public."userCarBooking" ("userCarBookingId", "refUserName", "refUserMail", "refUserMobile", "refPickupAddress", "refSubmissionAddress", "refPickupDate", "refVehicleTypeId", "refTripleRoom", "refAdultCount", "refChildrenCount", "refInfants", "refFormDetails", "refOtherRequirements", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    254   �       �          0    25407    userTourBooking 
   TABLE DATA           C  COPY public."userTourBooking" ("userTourBookingId", "refPackageId", "refUserName", "refUserMail", "refUserMobile", "refPickupDate", "refAdultCount", "refChildrenCount", "refInfants", "refOtherRequirements", "createdAt", "createdBy", "updatedAt", "updatedBy", "refDummy2", "refDummy3", "refDummy4", "refDummy5") FROM stdin;
    public               postgres    false    256   ��       �           0    0 /   customizeTourBooking_customizeTourBookingId_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."customizeTourBooking_customizeTourBookingId_seq"', 1, false);
          public               postgres    false    251            �           0    0 !   refActivities_refActivitiesId_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."refActivities_refActivitiesId_seq"', 16, true);
          public               postgres    false    219            �           0    0    refBenifits_refBenifitsId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."refBenifits_refBenifitsId_seq"', 3, true);
          public               postgres    false    233            �           0    0    refCarsTable_refCarsId_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."refCarsTable_refCarsId_seq"', 1, true);
          public               postgres    false    249            �           0    0    refCategory_refCategoryId_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."refCategory_refCategoryId_seq"', 12, true);
          public               postgres    false    221            �           0    0 #   refDestination_refDestinationId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."refDestination_refDestinationId_seq"', 54, true);
          public               postgres    false    217            �           0    0 '   refDriverDetails_refDriverDetailsId_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."refDriverDetails_refDriverDetailsId_seq"', 7, true);
          public               postgres    false    239            �           0    0    refExclude_refExcludeId_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."refExclude_refExcludeId_seq"', 3, true);
          public               postgres    false    237            �           0    0 #   refFormDetails_refFormDetailsId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."refFormDetails_refFormDetailsId_seq"', 14, true);
          public               postgres    false    247            �           0    0    refGallery_refGalleryId_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."refGallery_refGalleryId_seq"', 1, false);
          public               postgres    false    229            �           0    0    refInclude_refIncludeId_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."refInclude_refIncludeId_seq"', 3, true);
          public               postgres    false    235            �           0    0    refLocation_refLocationId_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."refLocation_refLocationId_seq"', 33, true);
          public               postgres    false    223                        0    0    refPackage_refPackageId_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."refPackage_refPackageId_seq"', 1, true);
          public               postgres    false    225                       0    0 1   refTermsAndConditions_refTermsAndConditionsId_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public."refTermsAndConditions_refTermsAndConditionsId_seq"', 4, true);
          public               postgres    false    241                       0    0 1   refTransactionHistory_refTransactionHistoryId_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."refTransactionHistory_refTransactionHistoryId_seq"', 28, true);
          public               postgres    false    243                       0    0    refTxnHistory_transId_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."refTxnHistory_transId_seq"', 29, true);
          public               postgres    false    245                       0    0    refUserDomain_refUserDomId_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."refUserDomain_refUserDomId_seq"', 1, false);
          public               postgres    false    227                       0    0 #   refVehicleType_refVehicleTypeId_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."refVehicleType_refVehicleTypeId_seq"', 9, true);
          public               postgres    false    231                       0    0 #   userCarBooking_userCarBookingId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."userCarBooking_userCarBookingId_seq"', 1, false);
          public               postgres    false    253                       0    0 %   userTourBooking_userTourBookingId_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."userTourBooking_userTourBookingId_seq"', 1, false);
          public               postgres    false    255                       2606    25396 .   customizeTourBooking customizeTourBooking_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."customizeTourBooking"
    ADD CONSTRAINT "customizeTourBooking_pkey" PRIMARY KEY ("customizeTourBookingId");
 \   ALTER TABLE ONLY public."customizeTourBooking" DROP CONSTRAINT "customizeTourBooking_pkey";
       public                 postgres    false    252            �           2606    25208     refActivities refActivities_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."refActivities"
    ADD CONSTRAINT "refActivities_pkey" PRIMARY KEY ("refActivitiesId");
 N   ALTER TABLE ONLY public."refActivities" DROP CONSTRAINT "refActivities_pkey";
       public                 postgres    false    220            
           2606    25280    refBenifits refBenifits_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."refBenifits"
    ADD CONSTRAINT "refBenifits_pkey" PRIMARY KEY ("refBenifitsId");
 J   ALTER TABLE ONLY public."refBenifits" DROP CONSTRAINT "refBenifits_pkey";
       public                 postgres    false    234                       2606    25381    refCarsTable refCarsTable_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."refCarsTable"
    ADD CONSTRAINT "refCarsTable_pkey" PRIMARY KEY ("refCarsId");
 L   ALTER TABLE ONLY public."refCarsTable" DROP CONSTRAINT "refCarsTable_pkey";
       public                 postgres    false    250            �           2606    25217    refCategory refCategory_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."refCategory"
    ADD CONSTRAINT "refCategory_pkey" PRIMARY KEY ("refCategoryId");
 J   ALTER TABLE ONLY public."refCategory" DROP CONSTRAINT "refCategory_pkey";
       public                 postgres    false    222            �           2606    25190 "   refDestination refDestination_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."refDestination"
    ADD CONSTRAINT "refDestination_pkey" PRIMARY KEY ("refDestinationId");
 P   ALTER TABLE ONLY public."refDestination" DROP CONSTRAINT "refDestination_pkey";
       public                 postgres    false    218                       2606    25308 &   refDriverDetails refDriverDetails_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."refDriverDetails"
    ADD CONSTRAINT "refDriverDetails_pkey" PRIMARY KEY ("refDriverDetailsId");
 T   ALTER TABLE ONLY public."refDriverDetails" DROP CONSTRAINT "refDriverDetails_pkey";
       public                 postgres    false    240                       2606    25298    refExclude refExclude_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."refExclude"
    ADD CONSTRAINT "refExclude_pkey" PRIMARY KEY ("refExcludeId");
 H   ALTER TABLE ONLY public."refExclude" DROP CONSTRAINT "refExclude_pkey";
       public                 postgres    false    238                       2606    25372 "   refFormDetails refFormDetails_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."refFormDetails"
    ADD CONSTRAINT "refFormDetails_pkey" PRIMARY KEY ("refFormDetailsId");
 P   ALTER TABLE ONLY public."refFormDetails" DROP CONSTRAINT "refFormDetails_pkey";
       public                 postgres    false    248                       2606    25261    refGallery refGallery_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."refGallery"
    ADD CONSTRAINT "refGallery_pkey" PRIMARY KEY ("refGalleryId");
 H   ALTER TABLE ONLY public."refGallery" DROP CONSTRAINT "refGallery_pkey";
       public                 postgres    false    230                       2606    25289    refInclude refInclude_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."refInclude"
    ADD CONSTRAINT "refInclude_pkey" PRIMARY KEY ("refIncludeId");
 H   ALTER TABLE ONLY public."refInclude" DROP CONSTRAINT "refInclude_pkey";
       public                 postgres    false    236                        2606    25226    refLocation refLocation_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."refLocation"
    ADD CONSTRAINT "refLocation_pkey" PRIMARY KEY ("refLocationId");
 J   ALTER TABLE ONLY public."refLocation" DROP CONSTRAINT "refLocation_pkey";
       public                 postgres    false    224                       2606    25243    refPackage refPackage_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."refPackage"
    ADD CONSTRAINT "refPackage_pkey" PRIMARY KEY ("refPackageId");
 H   ALTER TABLE ONLY public."refPackage" DROP CONSTRAINT "refPackage_pkey";
       public                 postgres    false    226                       2606    25317 0   refTermsAndConditions refTermsAndConditions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."refTermsAndConditions"
    ADD CONSTRAINT "refTermsAndConditions_pkey" PRIMARY KEY ("refTermsAndConditionsId");
 ^   ALTER TABLE ONLY public."refTermsAndConditions" DROP CONSTRAINT "refTermsAndConditions_pkey";
       public                 postgres    false    242                       2606    25343 .   refTransactionTable refTransactionHistory_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."refTransactionTable"
    ADD CONSTRAINT "refTransactionHistory_pkey" PRIMARY KEY ("refTransactionHistoryId");
 \   ALTER TABLE ONLY public."refTransactionTable" DROP CONSTRAINT "refTransactionHistory_pkey";
       public                 postgres    false    244                       2606    25362     refTxnHistory refTxnHistory_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."refTxnHistory"
    ADD CONSTRAINT "refTxnHistory_pkey" PRIMARY KEY ("transId");
 N   ALTER TABLE ONLY public."refTxnHistory" DROP CONSTRAINT "refTxnHistory_pkey";
       public                 postgres    false    246                       2606    25252     refUserDomain refUserDomain_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."refUserDomain"
    ADD CONSTRAINT "refUserDomain_pkey" PRIMARY KEY ("refUserDomId");
 N   ALTER TABLE ONLY public."refUserDomain" DROP CONSTRAINT "refUserDomain_pkey";
       public                 postgres    false    228                       2606    25271 "   refVehicleType refVehicleType_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."refVehicleType"
    ADD CONSTRAINT "refVehicleType_pkey" PRIMARY KEY ("refVehicleTypeId");
 P   ALTER TABLE ONLY public."refVehicleType" DROP CONSTRAINT "refVehicleType_pkey";
       public                 postgres    false    232                       2606    25405 "   userCarBooking userCarBooking_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."userCarBooking"
    ADD CONSTRAINT "userCarBooking_pkey" PRIMARY KEY ("userCarBookingId");
 P   ALTER TABLE ONLY public."userCarBooking" DROP CONSTRAINT "userCarBooking_pkey";
       public                 postgres    false    254                        2606    25414 $   userTourBooking userTourBooking_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."userTourBooking"
    ADD CONSTRAINT "userTourBooking_pkey" PRIMARY KEY ("userTourBookingId");
 R   ALTER TABLE ONLY public."userTourBooking" DROP CONSTRAINT "userTourBooking_pkey";
       public                 postgres    false    256            �      x������ � �      �   �   x����
�0�s�}�߫�<x�xH��(��)��7��B���K�?\���o.+�&���(g�"��|�+H��"��寚�򐻦��c
Mܾ��w*�:��Q0�[_�Oa)3�-�Ih%��];:���]���+w>�G�wh�����M[� �Q��@]�}ԅ�E)L�V��L���\�T�T��cB����      �   s   x�3�J-�,J�M�+Q�I��4202�50�5�P04�2��20�tL������D\Ɯ��)
!���
�ii�j7�-HI,IMQpJ�KM�,Q�K�M�c
��������V�b���� �7      �   q   x�e�;
�0D��)<�Jvu��^[񃁨 ����X��y�9��ӂ5k����v�>:3a���C1{<g�ہ\<���9��}It�P�ʋJ���C��R����       �   �   x���=�0���\�*��[��֍)�E���0p��H��,��������Զ	g\�LĐD�Ph䆜m[�I�o/>� OC�$���CW�@���\���+e�>�1��v݆���fY�_g�+@�g�����D�����@�C`��A�78�ft{Sȏv�|�8��/w��KGa����8y=g�_@)�S.N��7�n�       �   N   x�35�-HI,IMQpI-.��K,���S�K�M�4202�50�5�P04�25�21�tL���C�1�24����!#�=... i 	      �   �   x��ѱN�0 ����i#�.�cO�@Y�*u�i�5H�ߓ� ҂,T!�p���tgw�e7�)��yZ��o�y>��\	�L*���e�GזuW��^� G��9���ºj���b�V(Kf�l�y$xv1ļ��LY!m�� �B["�Abs��m�q�`�f>�E�l�� N�6b�ظ�0J�h"D�cપ�Sqj	�B[�1K^n=�Y���Y��,�#�C��:���?2�c�٦I�| i���      �   \   x�3�t�H�)MIU0�4202�50�5�P04�21�24�tL������D\�p�Ƥj5�,-HI,IMU�ᗘ�����������!.�b���� ��3%      �   �   x���?O�0��󧸑A����"��DR�X�8�X8q�H|{�``h�H��{�{O'`�GM��#h�����:eq��a�F���"�u!�$���w՟�q����,a;w�2��#)����l�1����s>�N�T��<�H�~�)�24V��x&g��6"�L.$��أ�ϋU��e��m���K^�<��\��D�� ��AR�b"�$@��I�@?��"�7U�Eq� knc����      �      x������ � �      �   ^   x�3�tJ�KM�,Q0�4202�50�5�P04�22�26�tL������D\�p�Ƥj5�-HI,IMQ��K�)MIU�K�M�c
����v�b���� �V2�      �   �   x���1�0���+�*�%s[�Z��[��h����*J�����a�3O2Cp�Cc\c��"�'�Ms.0�Q�@w�R8��N�^�}�A_ݖ�L����B$����H�J�}��k�ϲ���2����j<(�ލ>QM      �   z   x�3�tL)K�+)-JU�/-R-HI,IM�4�4�4�6�1��4�6�1��44�t1202�pqqu�4�00�42 ac]CsCS+ 2������T00�21�21����!#�=... ^�!�      �   �   x�3�t+M�Q���L���Ã�L8�R�JsӋRSs�l9+A�BR�r�9#S���FF��ƺ�
�V�fVƖ��)��y�Fq�e��)��fAl�b����������	vsb���� ��=�      �     x�U�Ao!��̯�_���=jm�&^�S/�N���������7��pvp=ZLj��M�heDgaɦ�����-�(��T!�<Xe��K��Σ	��	U�6l�"[q�x�g
T�y�U���pNM*)m?�Րd�:)����	c �RbWQ�k�[5L:M�)�DJ��=��E�=�Ƨ+E�C �)����(���ch�ՍrVc>�Xf����oϊ���8�$�6����p���!��䛣s�=��=��݈?f��_O �Aߣ�      �   �  x����n�0E��W����c{������Mj5$(��wBR!�䁔�\�\_�0Nɜ�?�w�OVo��)OT,����\Y���mC�~"`�;�5>>�(Hi� ��|�үC�G��X�"<���H���Rm)E$�W��C��q�S+$«+���`L!%L��iā��a<�f���4�(,�������1+89��U��蕃�Ӑm��!�C�W������t�U�B�KC[�����hF�j�Z�MLe�E���v�%��,��67St���rN �@
�aB�8�Ht�;�d��	�SRVLI�i���J�V2�i�E��R�ۧ���o
�0�% c�"Pv./�Af$aeA
m�[_yV�0t%�B�D'.�šȥ�f�����71k�<��y2����CP���m�ZAQ��,��D��zߎ��7�4;�>�4WQ�q��T      �   h   x�3�4�LL����4426153��T1JT14R�r3K�M.����Hr�M3�s�N56-���)�
�p*t�)wɳ�-�Jr���M���"��pn�W� (��      �   �   x�3��4202�50�5�P04�22�2��tL������D\���)�%�)
a���9�
!��
~���hF�Z��A�B�11�2�n	�gZ~^J"B�������.Pm������̬L�i����� XT=�      �      x������ � �      �      x������ � �     