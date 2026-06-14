--
-- PostgreSQL database dump
--

\restrict 1Sp4iuvobC5kwiI0bHftcFg5Dq9cz73nExOqs50zAWWr6QnGYb3AEAUzeuAbHw6

-- Dumped from database version 16.6
-- Dumped by pg_dump version 17.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS '';


--
-- Name: ANF; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ANF" AS ENUM (
    'AVFLR',
    'NECKLINE',
    'FEMORAL'
);


--
-- Name: AcknowledgeStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."AcknowledgeStatus" AS ENUM (
    'TOCOLLECT',
    'COLLECTED',
    'ACKNOWLEDGED'
);


--
-- Name: AdmissionDepositTransactionType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."AdmissionDepositTransactionType" AS ENUM (
    'IN',
    'OUT'
);


--
-- Name: AdmissionStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."AdmissionStatus" AS ENUM (
    'ACTIVE',
    'DISCHARGED',
    'CANCELLED'
);


--
-- Name: AllergyStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."AllergyStatus" AS ENUM (
    'ALLERGIC',
    'NON_ALLERGIC'
);


--
-- Name: AnaesthesiaType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."AnaesthesiaType" AS ENUM (
    'LOCAL',
    'GENERAL',
    'SPINAL',
    'EPIDURAL',
    'INTRAVENOUS',
    'OTHER'
);


--
-- Name: AppointmentCategory; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."AppointmentCategory" AS ENUM (
    'CONSULTATION',
    'OTHERS'
);


--
-- Name: AppointmentStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."AppointmentStatus" AS ENUM (
    'BOOKED',
    'CONFIRMED',
    'COMPLETED',
    'CANCELLED'
);


--
-- Name: BCR; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."BCR" AS ENUM (
    'B',
    'C',
    'R'
);


--
-- Name: BPMeasuredTimeEnum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."BPMeasuredTimeEnum" AS ENUM (
    'BEFORE_BREAKFAST',
    'AFTER_BREAKFAST',
    'BEFORE_LUNCH',
    'AFTER_LUNCH',
    'BEFORE_DINNER',
    'AFTER_DINNER'
);


--
-- Name: BillPaymentStatusEnum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."BillPaymentStatusEnum" AS ENUM (
    'PAID',
    'UNPAID',
    'CANCELLED'
);


--
-- Name: BloodType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."BloodType" AS ENUM (
    'None',
    'A_POS',
    'A_NEG',
    'B_POS',
    'B_NEG',
    'AB_POS',
    'AB_NEG',
    'O_POS',
    'O_NEG'
);


--
-- Name: BodyMeasurementUnit; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."BodyMeasurementUnit" AS ENUM (
    'IMPERIAL',
    'METRIC'
);


--
-- Name: BodyTemperatureUnit; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."BodyTemperatureUnit" AS ENUM (
    'FAHRENHEIT',
    'CELSIUS'
);


--
-- Name: BookingStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."BookingStatus" AS ENUM (
    'BOOKED',
    'CONFIRMED',
    'CANCELLED'
);


--
-- Name: CathLabConsumerType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."CathLabConsumerType" AS ENUM (
    'CONSUMABLE_1',
    'CONSUMABLE_2',
    'MACHINE_USAGE',
    'CARDIOLOGIST_TEAM_FEES'
);


--
-- Name: CathLabRequestSourceDepartment; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."CathLabRequestSourceDepartment" AS ENUM (
    'OPD',
    'IPD',
    'ED'
);


--
-- Name: CathRequestStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."CathRequestStatus" AS ENUM (
    'REQUESTED',
    'APPROVED',
    'CANCELLED',
    'COMPLETED'
);


--
-- Name: ClearanceStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ClearanceStatus" AS ENUM (
    'LOCKED',
    'MAKE_CLEARANCE',
    'CLEARED'
);


--
-- Name: CollectStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."CollectStatus" AS ENUM (
    'TOCOLLECT',
    'COLLECTED',
    'CANCELLED'
);


--
-- Name: DailyBillStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."DailyBillStatus" AS ENUM (
    'OPEN',
    'CLOSED',
    'CANCELLED'
);


--
-- Name: DepartmentEnum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."DepartmentEnum" AS ENUM (
    'ED',
    'OPD',
    'IPD',
    'PHARMACY',
    'DAYCARE',
    'HD',
    'ENDO',
    'OT',
    'CATHLAB'
);


--
-- Name: DischargeReason; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."DischargeReason" AS ENUM (
    'NORMAL_DISCHARGE',
    'DISCHARGE_REQUEST',
    'EXPIRED'
);


--
-- Name: DischargeStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."DischargeStatus" AS ENUM (
    'PENDING',
    'COMPLETED'
);


--
-- Name: DischargeSummaryType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."DischargeSummaryType" AS ENUM (
    'MOTHER',
    'NEW_BORN',
    'STANDARD'
);


--
-- Name: DoctorType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."DoctorType" AS ENUM (
    'IN_SERVICE',
    'OUT_SERVICE'
);


--
-- Name: EndoReportStatusEnum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."EndoReportStatusEnum" AS ENUM (
    'PENDING',
    'DELIVERED',
    'ENTERED'
);


--
-- Name: EndoRequestModule; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."EndoRequestModule" AS ENUM (
    'OPD',
    'IPD',
    'ED'
);


--
-- Name: EndoRequestStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."EndoRequestStatus" AS ENUM (
    'REQUESTED',
    'APPROVED',
    'CANCELLED',
    'COMPLETED'
);


--
-- Name: GRNReturnStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."GRNReturnStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


--
-- Name: GRNStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."GRNStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


--
-- Name: Gender; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."Gender" AS ENUM (
    'MALE',
    'FEMALE',
    'OTHER'
);


--
-- Name: HDRequestSourceDepartment; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."HDRequestSourceDepartment" AS ENUM (
    'OPD',
    'IPD',
    'ED'
);


--
-- Name: HDRequestStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."HDRequestStatus" AS ENUM (
    'REQUESTED',
    'APPROVED',
    'CANCELLED',
    'COMPLETED'
);


--
-- Name: IPDEMRRequestType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."IPDEMRRequestType" AS ENUM (
    'ENDO',
    'OT',
    'HD',
    'CATH_LAB'
);


--
-- Name: IPDFinalBillPaymentStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."IPDFinalBillPaymentStatus" AS ENUM (
    'PAID',
    'UNPAID',
    'CANCELLED'
);


--
-- Name: IPDPharmacyReturnStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."IPDPharmacyReturnStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


--
-- Name: ImagingServiceStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ImagingServiceStatus" AS ENUM (
    'PENDING',
    'ACKNOWLEDGED',
    'DE_ACKNOWLEDGED',
    'CANCELLED'
);


--
-- Name: ImagingType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ImagingType" AS ENUM (
    'CT',
    'ULTRASOUND',
    'X_RAY',
    'ECG',
    'ECHO',
    'MRI',
    'ENDO'
);


--
-- Name: ItemStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ItemStatus" AS ENUM (
    'ACTIVE',
    'INACTIVE'
);


--
-- Name: ItemType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ItemType" AS ENUM (
    'TABLET',
    'INJECTION',
    'LPO',
    'DISPOSABLE',
    'SUTURE',
    'POWDER',
    'INHALER',
    'CREAM',
    'OINTMENT',
    'EXTERNAL_APPLICATION',
    'SUSPENSION',
    'LIQUID'
);


--
-- Name: LabReportStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."LabReportStatus" AS ENUM (
    'TOCOLLECT',
    'VERIFIED',
    'PRINTED',
    'DELIVERED'
);


--
-- Name: LabStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."LabStatus" AS ENUM (
    'TOCOLLECT',
    'COLLECTED',
    'ACKNOWLEDGED',
    'TESTING',
    'TESTDONE',
    'RESULTENTERED',
    'VERIFIED',
    'PRINTED',
    'CANCELLED',
    'ENTERED',
    'DELIVERED'
);


--
-- Name: MainProcedureStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."MainProcedureStatus" AS ENUM (
    'ACTIVE',
    'INACTIVE'
);


--
-- Name: MaritalStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."MaritalStatus" AS ENUM (
    'MARRIED',
    'SINGLE'
);


--
-- Name: MicrobiologySection; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."MicrobiologySection" AS ENUM (
    'GENERAL',
    'GENERAL_ALT',
    'MACROSCOPIC',
    'MICROSCOPIC'
);


--
-- Name: OPDBillingPaymentStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."OPDBillingPaymentStatus" AS ENUM (
    'UNPAID',
    'PAID',
    'CANCEL'
);


--
-- Name: OPDEMRPharmacyRequestStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."OPDEMRPharmacyRequestStatus" AS ENUM (
    'PENDING',
    'RECEIVED',
    'RECEIVED_PARTIALLY',
    'REJECTED',
    'CANCELLED'
);


--
-- Name: OPDEMRPharmacyTransferStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."OPDEMRPharmacyTransferStatus" AS ENUM (
    'PENDING',
    'TRANSFERRED',
    'REJECTED'
);


--
-- Name: OTStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."OTStatus" AS ENUM (
    'BOOKED',
    'CONFIRMED',
    'CANCELLED',
    'COMPLETED',
    'REQUESTED',
    'APPROVED'
);


--
-- Name: OpdBillPharmacySourceType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."OpdBillPharmacySourceType" AS ENUM (
    'PHARMACY',
    'IMAGING_ADDON'
);


--
-- Name: OpdBillServiceSource; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."OpdBillServiceSource" AS ENUM (
    'APPOINTMENT',
    'POST_PAID',
    'PRE_PAID',
    'OPD_EMR',
    'IMAGING_ADDON',
    'MANUAL_ENTRY'
);


--
-- Name: PatientClassification; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PatientClassification" AS ENUM (
    'NEW_PATIENT',
    'OLD_PATIENT'
);


--
-- Name: PatientGroup; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PatientGroup" AS ENUM (
    'LOCAL',
    'FOREIGNER',
    'INSURANCE',
    'GOVERNMENT'
);


--
-- Name: PatientIdentity; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PatientIdentity" AS ENUM (
    'NRC',
    'Passport'
);


--
-- Name: PatientType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PatientType" AS ENUM (
    'LOCAL',
    'FOREIGNER',
    'OPD',
    'IPD',
    'EMERGENCY'
);


--
-- Name: PaymentFrequency; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PaymentFrequency" AS ENUM (
    'WEEKLY',
    'MONTHLY',
    'QUATERLY',
    'YEARLY'
);


--
-- Name: PaymentStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PaymentStatus" AS ENUM (
    'PENDING',
    'PAID'
);


--
-- Name: PaymentTerm; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PaymentTerm" AS ENUM (
    'CONSIGNMENT',
    'CREDIT',
    'CASH_DOWN',
    'SAMPLE'
);


--
-- Name: PharmacyRequestStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PharmacyRequestStatus" AS ENUM (
    'PENDING',
    'RECEIVED',
    'REJECTED',
    'CANCELLED',
    'RECEIVED_PARTIALLY'
);


--
-- Name: PharmacySaleStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PharmacySaleStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


--
-- Name: PharmacyTransferStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PharmacyTransferStatus" AS ENUM (
    'PENDING',
    'TRANSFERRED',
    'REJECTED'
);


--
-- Name: PrescriptionRoute; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PrescriptionRoute" AS ENUM (
    'PO/P',
    'IV',
    'IM',
    'SUB_Q/SC',
    'SL',
    'PR/RC',
    'TD',
    'NGT',
    'NPO'
);


--
-- Name: PrescriptionStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PrescriptionStatus" AS ENUM (
    'NEW_PRESCRIPTION',
    'UPDATED_PRESCRIPTION'
);


--
-- Name: PrintOption; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PrintOption" AS ENUM (
    'LETTER_HEAD',
    'PLAIN_TEXT'
);


--
-- Name: PriorityStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PriorityStatus" AS ENUM (
    'LOW',
    'MEDIUM',
    'HIGH'
);


--
-- Name: ProcedureStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ProcedureStatus" AS ENUM (
    'ACTIVE',
    'INACTIVE'
);


--
-- Name: ProxyBillRequestType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ProxyBillRequestType" AS ENUM (
    'ENDO',
    'OT',
    'HD',
    'CATH_LAB'
);


--
-- Name: PurchaseOrderStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PurchaseOrderStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


--
-- Name: PurchaseOrderUrgent; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PurchaseOrderUrgent" AS ENUM (
    'REGULAR',
    'URGENT'
);


--
-- Name: PurchaseRequestStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."PurchaseRequestStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


--
-- Name: ReferralStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ReferralStatus" AS ENUM (
    'PENDING',
    'IN_PROGRESS',
    'COMPLETED',
    'CANCELLED'
);


--
-- Name: ReferralType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ReferralType" AS ENUM (
    'REFERRALIN',
    'REFERRALOUT'
);


--
-- Name: ResultEntryStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ResultEntryStatus" AS ENUM (
    'TOCOLLECT',
    'TESTDONE',
    'ENTERED'
);


--
-- Name: ResultVerificationStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ResultVerificationStatus" AS ENUM (
    'TOCOLLECT',
    'ENTERED',
    'VERIFIED'
);


--
-- Name: RoomCategory; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."RoomCategory" AS ENUM (
    'IPD',
    'OT'
);


--
-- Name: RoomChargeUsageLimit; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."RoomChargeUsageLimit" AS ENUM (
    'UNLIMITED',
    'DAYS'
);


--
-- Name: RoomStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."RoomStatus" AS ENUM (
    'AVAILABLE',
    'OCCUPIED',
    'INACTIVE',
    'REQUESTED',
    'HOUSEKEEPING',
    'PREREQUESTED'
);


--
-- Name: RuleGender; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."RuleGender" AS ENUM (
    'MALE',
    'FEMALE',
    'ALL'
);


--
-- Name: SaleReturnStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."SaleReturnStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


--
-- Name: ScreeningStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ScreeningStatus" AS ENUM (
    'POSITIVE',
    'NEGATIVE',
    'PENDING'
);


--
-- Name: ServiceCategoryModule; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ServiceCategoryModule" AS ENUM (
    'LAB',
    'CT',
    'ULTRASOUND',
    'ECHO',
    'ECG',
    'X_RAY',
    'MRI',
    'ENDO',
    'HD',
    'CATHLAB',
    'OT'
);


--
-- Name: ServiceStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."ServiceStatus" AS ENUM (
    'ACTIVE',
    'INACTIVE'
);


--
-- Name: Side; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."Side" AS ENUM (
    'LEFT',
    'RIGHT'
);


--
-- Name: StockAdjustmentStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."StockAdjustmentStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


--
-- Name: StockAdjustmentType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."StockAdjustmentType" AS ENUM (
    'INCREASE',
    'DECREASE'
);


--
-- Name: StockApprovalStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."StockApprovalStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


--
-- Name: StockDamageStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."StockDamageStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


--
-- Name: StockMovementQtyType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."StockMovementQtyType" AS ENUM (
    'QTYIN',
    'QTYOUT'
);


--
-- Name: StockRequestTransferStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."StockRequestTransferStatus" AS ENUM (
    'REQUESTED',
    'RECEIVED',
    'REJECTED',
    'PENDING'
);


--
-- Name: StockTransferStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."StockTransferStatus" AS ENUM (
    'REQUESTED',
    'TRANSFERRED',
    'REJECTED'
);


--
-- Name: StockType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."StockType" AS ENUM (
    'PURCHASED_STOCK',
    'OPENING_STOCK'
);


--
-- Name: SupplierStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."SupplierStatus" AS ENUM (
    'ACTIVE',
    'INACTIVE'
);


--
-- Name: SupplierType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."SupplierType" AS ENUM (
    'MANUFACTURER',
    'DISTRIBUTOR'
);


--
-- Name: TestDoneStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."TestDoneStatus" AS ENUM (
    'TOCOLLECT',
    'TESTING',
    'TESTDONE'
);


--
-- Name: TestingStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."TestingStatus" AS ENUM (
    'TOCOLLECT',
    'ACKNOWLEDGED',
    'TESTING'
);


--
-- Name: Urgency; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."Urgency" AS ENUM (
    'URGENT',
    'ELECTIVE'
);


--
-- Name: UrgentOrElective; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."UrgentOrElective" AS ENUM (
    'URGENT',
    'ELECTIVE'
);


--
-- Name: UsageLimit; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."UsageLimit" AS ENUM (
    'UNLIMITED',
    'FREQUENCY',
    'DAYS'
);


--
-- Name: UsedItemStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."UsedItemStatus" AS ENUM (
    'PENDING',
    'APPROVED',
    'REJECTED'
);


--
-- Name: UserStatus; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."UserStatus" AS ENUM (
    'ACTIVE',
    'INACTIVE'
);


--
-- Name: VisitType; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."VisitType" AS ENUM (
    'OPD',
    'IPD',
    'ED'
);


--
-- Name: WeekDay; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."WeekDay" AS ENUM (
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
);


--
-- Name: migrate_item_batches_per_stock(); Type: PROCEDURE; Schema: public; Owner: -
--

CREATE PROCEDURE public.migrate_item_batches_per_stock()
    LANGUAGE plpgsql
    AS $$
DECLARE
    batch RECORD;
    stock RECORD;
    new_batch_no TEXT;
    item_counter jsonb := '{}'::jsonb; 
    key_text TEXT;
    counter INT;
BEGIN
    FOR batch IN
        SELECT b.*, g.store_id AS grn_store_id
        FROM batches b
        LEFT JOIN public."GRN" g ON g.id = b.grn_id
        ORDER BY b.created_at ASC
    LOOP
        RAISE NOTICE '📦 Processing batch % (id=%)', batch.batch_no, batch.id;

        FOR stock IN
            SELECT *
            FROM stocks
            WHERE batch_id = batch.id
            ORDER BY id ASC
        LOOP
            key_text := stock.item_id || '-' || stock.store_id;

            IF NOT item_counter ? key_text THEN
                SELECT MAX(CAST(SUBSTRING(item_batch_no FROM '\d+') AS INT))
                INTO counter
                FROM stocks
                WHERE item_id = stock.item_id
                  AND store_id = stock.store_id
                  AND item_batch_no IS NOT NULL;

                counter := COALESCE(counter, 0) + 1;
                item_counter := item_counter || jsonb_build_object(key_text, counter);
            ELSE
                counter := (item_counter ->> key_text)::int;
            END IF;

            IF stock.store_id = batch.grn_store_id THEN
                new_batch_no := 'IB-' || lpad(counter::text, 6, '0');
                item_counter := item_counter || jsonb_build_object(key_text, counter + 1);
                UPDATE stocks SET item_batch_no = new_batch_no WHERE id = stock.id;
                RAISE NOTICE '🆕 Stock % assigned IB=% (store_id same as GRN)', stock.id, new_batch_no;
            ELSE
                SELECT item_batch_no INTO new_batch_no
                FROM stocks
                WHERE batch_id = batch.id
                  AND item_id = stock.item_id
                  AND store_id = batch.grn_store_id
                LIMIT 1;

                IF new_batch_no IS NOT NULL THEN
                    UPDATE stocks SET item_batch_no = new_batch_no WHERE id = stock.id;
                    RAISE NOTICE '♻️ Transferred Stock % copied IB=%', stock.id, new_batch_no;
                ELSE
                    new_batch_no := 'IB-' || lpad(nextval('ib_batch_seq')::text, 6, '0');
                    UPDATE stocks SET item_batch_no = new_batch_no WHERE id = stock.id;
                    RAISE NOTICE '🆕 Fallback Stock % assigned IB=%', stock.id, new_batch_no;
                END IF;
            END IF;
        END LOOP;
    END LOOP;

    RAISE NOTICE '🎉 Migration finished successfully.';
END;
$$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: BillType; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."BillType" (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL,
    remark text NOT NULL,
    "defaultModules" text[] DEFAULT ARRAY[]::text[],
    modules text[] DEFAULT ARRAY[]::text[]
);


--
-- Name: CathLabRequestAssistantDoctor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CathLabRequestAssistantDoctor" (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    cathlab_request_id uuid NOT NULL,
    assistant_doctor_id uuid NOT NULL
);


--
-- Name: CathLabRequestAssistantNurse; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CathLabRequestAssistantNurse" (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    cathlab_request_id uuid NOT NULL,
    assistant_nurse_id uuid NOT NULL
);


--
-- Name: CathLabRequestCardiologist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."CathLabRequestCardiologist" (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    cathlab_request_id uuid NOT NULL,
    cardiologist_id uuid NOT NULL
);


--
-- Name: DoctorService; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."DoctorService" (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    "serviceId" uuid NOT NULL,
    "doctorId" uuid NOT NULL,
    service_price jsonb DEFAULT '{}'::jsonb NOT NULL,
    first_round_price jsonb DEFAULT '{}'::jsonb NOT NULL,
    urgent_price jsonb DEFAULT '{}'::jsonb NOT NULL
);


--
-- Name: EndoRequestAnesthetist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."EndoRequestAnesthetist" (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    endo_request_id uuid NOT NULL,
    anesthetist_id uuid NOT NULL
);


--
-- Name: EndoRequestAssistantDoctor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."EndoRequestAssistantDoctor" (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    endo_request_id uuid NOT NULL,
    assistant_doctor_id uuid NOT NULL
);


--
-- Name: EndoRequestAssistantNurse; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."EndoRequestAssistantNurse" (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    endo_request_id uuid NOT NULL,
    assistant_nurse_id uuid NOT NULL
);


--
-- Name: EndoRequestSurgeon; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."EndoRequestSurgeon" (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    endo_request_id uuid NOT NULL,
    surgeon_id uuid NOT NULL
);


--
-- Name: GRN; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."GRN" (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    grn_id text NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    supplier_id uuid NOT NULL,
    store_id uuid,
    approved_by_id uuid,
    status public."GRNStatus" DEFAULT 'PENDING'::public."GRNStatus" NOT NULL,
    remark text,
    approved_at timestamp(3) without time zone,
    rejected_at timestamp(3) without time zone,
    rejected_by_id uuid,
    purchase_order_id uuid
);


--
-- Name: OPDBillingPharmacySale; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."OPDBillingPharmacySale" (
    id uuid NOT NULL,
    pharmacy_sale_id uuid NOT NULL,
    opd_billing_id uuid NOT NULL,
    is_linked_with_proxy_bill boolean DEFAULT false NOT NULL
);


--
-- Name: OPDEMRImagingModuleJoint; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."OPDEMRImagingModuleJoint" (
    "opdEmrId" uuid NOT NULL,
    "imagingListId" uuid NOT NULL
);


--
-- Name: OPDEMRLabModuleJoint; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."OPDEMRLabModuleJoint" (
    "opdEmrId" uuid NOT NULL,
    "labPivotId" uuid NOT NULL
);


--
-- Name: SellingPriceGroup; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."SellingPriceGroup" (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    name text NOT NULL,
    group_id text NOT NULL,
    local_profit_percentage integer NOT NULL,
    foreigner_profit_percentage integer NOT NULL,
    remark text,
    government_profit_percentage integer,
    insurance_profit_percentage integer
);


--
-- Name: _logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._logs (
    id uuid NOT NULL,
    level text DEFAULT 'info'::text NOT NULL,
    message text DEFAULT ''::text NOT NULL,
    context text DEFAULT ''::text NOT NULL,
    meta jsonb DEFAULT '{}'::jsonb NOT NULL,
    "timestamp" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    error jsonb
);


--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


--
-- Name: activity_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.activity_logs (
    id uuid NOT NULL,
    entity_id uuid,
    action text,
    entity text,
    user_id uuid NOT NULL,
    "timestamp" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    description text NOT NULL,
    additional_data jsonb
);


--
-- Name: admission_deposit_audits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admission_deposit_audits (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    admission_deposit_id uuid NOT NULL,
    description text NOT NULL,
    changes jsonb
);


--
-- Name: admission_deposit_payments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admission_deposit_payments (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    admission_deposit_id uuid NOT NULL,
    payment_method_id uuid NOT NULL,
    amount integer NOT NULL
);


--
-- Name: admission_deposit_transcation_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admission_deposit_transcation_histories (
    id uuid NOT NULL,
    "admissionDepositId" uuid NOT NULL,
    "transactionType" public."AdmissionDepositTransactionType" NOT NULL,
    amount integer NOT NULL,
    "referenceModule" text,
    "referenceId" text,
    reason text,
    description text,
    "transactionDate" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "metaData" jsonb
);


--
-- Name: admission_deposits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admission_deposits (
    id uuid NOT NULL,
    admission_id uuid,
    deposit_type_id uuid NOT NULL,
    actual_deposit_amount integer NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    deposit_date timestamp(3) without time zone NOT NULL,
    deposit_invoice_no text NOT NULL,
    remaining_deposit_amount integer DEFAULT 0 NOT NULL,
    remark text DEFAULT ''::text NOT NULL,
    debt_amount integer DEFAULT 0 NOT NULL,
    is_deposit_closed boolean DEFAULT false NOT NULL,
    previous_carry_over_amount integer DEFAULT 0 NOT NULL,
    cancellation_remark text,
    cancelled_at timestamp(3) without time zone,
    cancelled_by text,
    is_cancelled boolean DEFAULT false NOT NULL,
    pre_deposit_amount integer DEFAULT 0 NOT NULL,
    pre_deposit_at timestamp(3) without time zone,
    pre_deposit_patient_id uuid
);


--
-- Name: admission_under_care_doctors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admission_under_care_doctors (
    id uuid NOT NULL,
    admission_id uuid NOT NULL,
    doctor_id uuid NOT NULL
);


--
-- Name: admissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admissions (
    id uuid NOT NULL,
    "patientId" uuid NOT NULL,
    father_name text,
    mother_name text,
    religion text,
    ethnic_group text,
    marital_status public."MaritalStatus",
    is_police_case boolean DEFAULT false NOT NULL,
    responsible_person_name text,
    relationship text,
    referral_by text,
    admission_reason text,
    certified_by text,
    apprvoed_by text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    admission_id text NOT NULL,
    current_medications_and_dosages text,
    family_medical_history text,
    past_medical_history text,
    "referralType" public."ReferralType",
    referral_clinic text,
    referral_doctor text,
    social_history text,
    status public."AdmissionStatus" DEFAULT 'ACTIVE'::public."AdmissionStatus" NOT NULL,
    has_new_born_baby boolean DEFAULT false,
    is_deposit_required boolean DEFAULT true NOT NULL
);


--
-- Name: anesthesia_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.anesthesia_types (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL,
    is_active boolean DEFAULT false NOT NULL
);


--
-- Name: appointment_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.appointment_services (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    appointment_id uuid NOT NULL,
    service_id uuid NOT NULL
);


--
-- Name: appointment_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.appointment_types (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL,
    modules text[] DEFAULT ARRAY[]::text[]
);


--
-- Name: appointments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.appointments (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    patient_id uuid NOT NULL,
    doctor_id uuid,
    appointment_date timestamp(3) without time zone,
    timeslot_id uuid,
    status public."AppointmentStatus" DEFAULT 'BOOKED'::public."AppointmentStatus" NOT NULL,
    appointment_type_id uuid NOT NULL,
    "end" timestamp(3) without time zone,
    start timestamp(3) without time zone,
    is_follow_up boolean DEFAULT false NOT NULL,
    appointment_category public."AppointmentCategory" DEFAULT 'CONSULTATION'::public."AppointmentCategory" NOT NULL,
    appointment_id text,
    "isConsignment" boolean DEFAULT false NOT NULL,
    cancelled_remark text,
    patient_classification public."PatientClassification" DEFAULT 'NEW_PATIENT'::public."PatientClassification" NOT NULL,
    CONSTRAINT consult_requires_doctor_and_time CHECK ((((appointment_category = 'CONSULTATION'::public."AppointmentCategory") AND (doctor_id IS NOT NULL) AND (appointment_date IS NOT NULL) AND (start IS NOT NULL) AND ("end" IS NOT NULL)) OR ((appointment_category = 'OTHERS'::public."AppointmentCategory") AND (doctor_id IS NULL) AND (appointment_date IS NULL) AND (start IS NULL) AND ("end" IS NULL))))
);


--
-- Name: banks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.banks (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    name text NOT NULL
);


--
-- Name: batches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.batches (
    id uuid NOT NULL,
    batch_no text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    grn_id uuid NOT NULL
);


--
-- Name: bill_payments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bill_payments (
    id uuid NOT NULL,
    bill_id uuid NOT NULL,
    payment_method_id uuid NOT NULL,
    received_amount integer NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


--
-- Name: bills; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bills (
    id uuid NOT NULL,
    patient_id uuid,
    invoice_no text NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    bill_type_id uuid NOT NULL,
    payment_status public."BillPaymentStatusEnum" NOT NULL,
    sub_total integer NOT NULL,
    tax_percentage integer,
    tax_amount integer,
    discount_percentage integer,
    discount_amount integer,
    total_amount integer NOT NULL,
    remark text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "deletedRemark" text,
    deleted_by_id uuid,
    "departmentType" public."DepartmentEnum" NOT NULL,
    store_id uuid,
    lab_ref_no text DEFAULT ''::text NOT NULL,
    "isConsignment" boolean DEFAULT false NOT NULL,
    appointment_id uuid,
    cancelled_at timestamp(3) without time zone,
    cancelled_by_id uuid,
    cancelled_remark text,
    "userId" uuid,
    opd_billing_id uuid
);


--
-- Name: booking_list; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.booking_list (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    patient_name text NOT NULL,
    room_type_id uuid NOT NULL,
    doctor__id uuid NOT NULL,
    phone_no text NOT NULL,
    booking_date timestamp(3) without time zone NOT NULL,
    "bookingStatus" public."BookingStatus" DEFAULT 'BOOKED'::public."BookingStatus" NOT NULL,
    building_id uuid NOT NULL
);


--
-- Name: buildings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.buildings (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    name text NOT NULL,
    is_active boolean DEFAULT false NOT NULL
);


--
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categories (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    parent_category_id uuid,
    created_by_id uuid NOT NULL,
    updated_by_id uuid
);


--
-- Name: cathlab_audits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cathlab_audits (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    "Lab_service_id" uuid NOT NULL,
    description text NOT NULL
);


--
-- Name: cathlab_company_direct_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cathlab_company_direct_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    "cathLabId" uuid NOT NULL,
    "consumerType" public."CathLabConsumerType" NOT NULL,
    "itemName" text NOT NULL,
    qty integer NOT NULL,
    price integer NOT NULL,
    amount integer NOT NULL,
    hospital_percentage integer NOT NULL,
    hospital_amount integer NOT NULL,
    foc integer,
    company_name text
);


--
-- Name: cathlab_pharmacy_sales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cathlab_pharmacy_sales (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    cathlab_id uuid NOT NULL,
    pharmacy_sale_id uuid NOT NULL,
    "consumerType" public."CathLabConsumerType" NOT NULL
);


--
-- Name: cathlab_procedure_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cathlab_procedure_items (
    id uuid NOT NULL,
    procedure_bill_id uuid NOT NULL,
    procedure_id uuid NOT NULL,
    "consumerType" public."CathLabConsumerType" NOT NULL,
    qty integer NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL,
    is_cancel boolean DEFAULT false NOT NULL,
    doctor_id uuid
);


--
-- Name: cathlab_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cathlab_requests (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    patient_id uuid NOT NULL,
    admission_id uuid,
    room_log_id uuid,
    "referralType" public."ReferralType" DEFAULT 'REFERRALIN'::public."ReferralType" NOT NULL,
    referral_doctor_id uuid,
    referral_clinic_id uuid,
    "cathLabRequestStatus" public."CathRequestStatus" DEFAULT 'REQUESTED'::public."CathRequestStatus" NOT NULL,
    "operationDate" timestamp(3) without time zone,
    "operationTime" timestamp(3) without time zone,
    "dischargeDate" timestamp(3) without time zone,
    "dischargeTime" timestamp(3) without time zone,
    diagnosis text,
    "operationType" text,
    "bloodUnitRequired" text,
    "bloodGroupRh" text,
    "infectionScreening" text,
    "contrastTest" text,
    "localTests" text,
    "lastMeal" text,
    "lastMealDate" timestamp(3) without time zone,
    "lastMealTime" timestamp(3) without time zone,
    "imagingRequest" text,
    "specialEquipment" text,
    "writtenBy" text,
    "approvedBy" text,
    remark text,
    cancel_remark text,
    cancelled_by_id uuid,
    body_measurement_unit public."BodyMeasurementUnit",
    body_temperature double precision,
    body_temperature_unit public."BodyTemperatureUnit",
    diastolic_blood_pressure integer,
    heart_rate integer,
    height double precision,
    "spO2" integer,
    systolic_blood_pressure integer,
    weight double precision,
    respiratory_rate integer,
    hb_ag text,
    hcv text,
    hiv text,
    other_screening text,
    vdrl text,
    request_id text,
    blood_pressure_date_time timestamp(3) without time zone,
    body_temperature_date_time timestamp(3) without time zone,
    sp_o2_date_time timestamp(3) without time zone,
    heart_rate_date_time timestamp(3) without time zone,
    respiratory_rate_date_time timestamp(3) without time zone,
    "sourceDepartment" public."CathLabRequestSourceDepartment" DEFAULT 'IPD'::public."CathLabRequestSourceDepartment" NOT NULL,
    anesthesia_type_id uuid
);


--
-- Name: cathlab_service_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cathlab_service_items (
    id uuid NOT NULL,
    service_bill_id uuid NOT NULL,
    service_id uuid NOT NULL,
    "consumerType" public."CathLabConsumerType" NOT NULL,
    price_type text NOT NULL,
    doctor_id uuid,
    qty integer NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL,
    is_cancel boolean DEFAULT false NOT NULL
);


--
-- Name: cathlabs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cathlabs (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    cathlab_request_id uuid NOT NULL,
    patient_id uuid,
    admission_id uuid,
    "ipdDailyBillId" uuid,
    store_id uuid,
    date timestamp(3) without time zone NOT NULL,
    remark text,
    "deleteRemark" text,
    "deletedById" uuid,
    is_deleted boolean DEFAULT false NOT NULL
);


--
-- Name: clinics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clinics (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    clinic_id text NOT NULL,
    name text NOT NULL,
    email text,
    phone_no text NOT NULL,
    address text NOT NULL,
    is_active boolean DEFAULT false NOT NULL
);


--
-- Name: custom_room_charges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.custom_room_charges (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    ward_id uuid NOT NULL,
    room_type_id uuid NOT NULL,
    standard_check_in_time timestamp(3) without time zone,
    standard_check_out_time timestamp(3) without time zone,
    half_day_rate_percentage integer,
    grace_period_minutes integer,
    early_check_in_full_day_cutoff_time timestamp(3) without time zone,
    is_active boolean DEFAULT false NOT NULL,
    default_room_charges_id uuid,
    late_check_out_full_day_cutoff_time timestamp(3) without time zone,
    foreigner_room_price integer NOT NULL,
    government_room_price integer NOT NULL,
    insurance_room_price integer NOT NULL,
    local_room_price integer NOT NULL,
    facilities_charges jsonb,
    half_day_rate_amounts jsonb,
    building_id uuid,
    floor_id uuid,
    service_ids jsonb DEFAULT '[]'::jsonb
);


--
-- Name: daily_stock_reports; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.daily_stock_reports (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    item_id uuid NOT NULL,
    store_id uuid NOT NULL,
    opening_stock integer NOT NULL,
    closing_stock integer
);


--
-- Name: damaged_stocks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.damaged_stocks (
    id uuid NOT NULL,
    damaged_id uuid NOT NULL,
    stock_id uuid NOT NULL,
    damaged_quantity integer NOT NULL,
    remark text
);


--
-- Name: default_room_charges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.default_room_charges (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    standard_check_in_time timestamp(3) without time zone NOT NULL,
    standard_check_out_time timestamp(3) without time zone NOT NULL,
    half_day_rate_percentage integer,
    grace_period_minutes integer NOT NULL,
    early_check_in_full_day_cutoff_time timestamp(3) without time zone NOT NULL,
    late_check_out_full_day_cutoff_time timestamp(3) without time zone NOT NULL
);


--
-- Name: default_setting; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.default_setting (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    rounding text NOT NULL,
    expired_alert_duration integer NOT NULL,
    payment_method_id uuid NOT NULL,
    store_id uuid NOT NULL,
    bill_type_id uuid,
    settings jsonb DEFAULT '{}'::jsonb NOT NULL,
    version text
);


--
-- Name: departments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.departments (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    description text,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    department_code text NOT NULL
);


--
-- Name: deposit_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.deposit_types (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    name text NOT NULL,
    minumum_price integer NOT NULL
);


--
-- Name: discharge_joints; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.discharge_joints (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    discharge_id uuid NOT NULL,
    discharge_summary_id uuid NOT NULL,
    admission_id uuid NOT NULL
);


--
-- Name: discharge_summaries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.discharge_summaries (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    patient_id uuid NOT NULL,
    admission_id uuid NOT NULL,
    type public."DischargeSummaryType" DEFAULT 'STANDARD'::public."DischargeSummaryType" NOT NULL,
    reason public."DischargeReason" DEFAULT 'NORMAL_DISCHARGE'::public."DischargeReason" NOT NULL,
    cause_of_death text,
    date_of_death timestamp(3) without time zone,
    time_of_death timestamp(3) without time zone,
    discharge_diagnosis text NOT NULL,
    co_morbidities text,
    body_weight text,
    g6pd_deficiency_under_any_allergy text,
    clinical_data text,
    patient_examination_data_on_admission text,
    discharge_condition_of_patient text,
    chife_complaint text,
    hopi text,
    neuro_case text,
    obstetric_history text,
    past_medical_history text,
    family_history text,
    drug_history text,
    advice_on_discharge text,
    follow_up text,
    written_by text NOT NULL,
    counter_checked_by text NOT NULL,
    approved_by text NOT NULL,
    presription_id uuid
);


--
-- Name: discharges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.discharges (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    admission_id uuid NOT NULL,
    status public."DischargeStatus" DEFAULT 'PENDING'::public."DischargeStatus" NOT NULL,
    reason public."DischargeReason" DEFAULT 'NORMAL_DISCHARGE'::public."DischargeReason" NOT NULL,
    written_by text NOT NULL,
    approved_by text NOT NULL,
    is_final_bill_paid boolean DEFAULT false NOT NULL,
    cashier_clearance_status public."ClearanceStatus" DEFAULT 'LOCKED'::public."ClearanceStatus" NOT NULL,
    cashier_cleared_at timestamp(3) without time zone,
    discharged_at timestamp(3) without time zone,
    pharmacy_clearance_status public."ClearanceStatus" DEFAULT 'LOCKED'::public."ClearanceStatus" NOT NULL,
    pharmacy_cleared_at timestamp(3) without time zone,
    ward_clearance_status public."ClearanceStatus" DEFAULT 'LOCKED'::public."ClearanceStatus" NOT NULL,
    ward_cleared_at timestamp(3) without time zone,
    discharge_duration_minutes integer,
    details text
);


--
-- Name: doctor_notes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.doctor_notes (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    room_log_id uuid NOT NULL,
    admission_id uuid NOT NULL,
    doctor_id uuid,
    note text,
    patient_id uuid,
    ipd_emr_id uuid
);


--
-- Name: doctor_schedules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.doctor_schedules (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    doctor_id uuid NOT NULL,
    day_of_week public."WeekDay" NOT NULL,
    start_time timestamp(3) without time zone NOT NULL,
    end_time timestamp(3) without time zone NOT NULL
);


--
-- Name: doctor_timeslots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.doctor_timeslots (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    doctor_id uuid NOT NULL,
    schedule_id uuid NOT NULL,
    start timestamp(3) without time zone NOT NULL,
    "end" timestamp(3) without time zone NOT NULL
);


--
-- Name: doctors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.doctors (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    specialization text DEFAULT ''::text NOT NULL,
    consultation_interval integer,
    "medicalLicenseNumber" text,
    user_id uuid NOT NULL,
    doctor_type public."DoctorType" DEFAULT 'IN_SERVICE'::public."DoctorType" NOT NULL,
    title text DEFAULT 'Dr.'::text NOT NULL,
    doctor_id text NOT NULL,
    gender public."Gender" DEFAULT 'OTHER'::public."Gender",
    specialization_id uuid,
    qualifications text DEFAULT ''::text
);


--
-- Name: ed_emr_proxy_bill_joints; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ed_emr_proxy_bill_joints (
    opd_emr_id uuid NOT NULL,
    proxy_bill_id uuid NOT NULL
);


--
-- Name: endo_reports; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.endo_reports (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    result text,
    attachments text[],
    template_id uuid,
    proxy_bill_request_link_id uuid,
    is_deleted boolean DEFAULT false NOT NULL,
    deleted_remark text,
    deleted_by_id uuid,
    status public."EndoReportStatusEnum" DEFAULT 'PENDING'::public."EndoReportStatusEnum" NOT NULL
);


--
-- Name: endo_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.endo_requests (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    patient_id uuid NOT NULL,
    admission_id uuid,
    appointment_type_id uuid,
    "referralType" public."ReferralType" DEFAULT 'REFERRALIN'::public."ReferralType" NOT NULL,
    referral_doctor_id uuid,
    operation_details text NOT NULL,
    operation_date timestamp(3) without time zone NOT NULL,
    operation_time timestamp(3) without time zone NOT NULL,
    operation_type_id uuid NOT NULL,
    anaesthesia_type public."AnaesthesiaType" DEFAULT 'GENERAL'::public."AnaesthesiaType" NOT NULL,
    urgency public."Urgency" DEFAULT 'ELECTIVE'::public."Urgency" NOT NULL,
    is_blood_required boolean DEFAULT false NOT NULL,
    last_meal text,
    systolic_blood_pressure integer,
    diastolic_blood_pressure integer,
    body_measurement_unit public."BodyMeasurementUnit",
    weight double precision,
    height double precision,
    body_temperature_unit public."BodyTemperatureUnit",
    body_temperature double precision,
    "spO2" integer,
    heart_rate integer,
    hb_ag text,
    hcv text,
    hiv text,
    bleeding_time_sec integer,
    bleeding_time_min integer,
    clotting_time_sec integer,
    clotting_time_min integer,
    remark text,
    status public."EndoRequestStatus" DEFAULT 'REQUESTED'::public."EndoRequestStatus" NOT NULL,
    appointment_id uuid,
    module public."EndoRequestModule" DEFAULT 'OPD'::public."EndoRequestModule" NOT NULL,
    anesthesia_type_id uuid,
    blood_type public."BloodType",
    referral_clinic_id uuid,
    cancel_remark text,
    cancelled_by_id uuid,
    has_services_added boolean DEFAULT false NOT NULL,
    respiratory_rate integer,
    blood_required_remark text,
    drug_allergy text,
    other_screening text,
    vdrl text,
    request_id text,
    blood_pressure_date_time timestamp(3) without time zone,
    body_temperature_date_time timestamp(3) without time zone,
    sp_o2_date_time timestamp(3) without time zone,
    heart_rate_date_time timestamp(3) without time zone,
    respiratory_rate_date_time timestamp(3) without time zone
);


--
-- Name: expiry_updated_stock_activity_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.expiry_updated_stock_activity_logs (
    id uuid NOT NULL,
    action text,
    "timestamp" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    new_expiry_date timestamp(3) without time zone,
    old_expiry_date timestamp(3) without time zone,
    description text NOT NULL,
    remark text,
    user_id uuid NOT NULL,
    expiry_updated_stock_id uuid NOT NULL,
    remaining_stock_qty integer
);


--
-- Name: expiry_updated_stocks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.expiry_updated_stocks (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    updated_expiry_date timestamp(3) without time zone NOT NULL,
    item_id uuid NOT NULL,
    batch_id uuid NOT NULL
);


--
-- Name: floors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.floors (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    name text NOT NULL,
    building_id uuid
);


--
-- Name: foc_item_activity_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.foc_item_activity_logs (
    id uuid NOT NULL,
    action text,
    "timestamp" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    purchased_price_per_unit numeric(10,2),
    update_purchased_price_per_unit numeric(10,2),
    description text,
    user_id uuid NOT NULL,
    stock_id uuid NOT NULL
);


--
-- Name: grn_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.grn_items (
    id uuid NOT NULL,
    grn_id uuid NOT NULL,
    item_id uuid NOT NULL,
    qty integer NOT NULL,
    expiry timestamp(3) without time zone,
    company_batch_no text DEFAULT ''::text NOT NULL,
    purchased_price_per_unit numeric(65,30) NOT NULL
);


--
-- Name: grn_return_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.grn_return_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    returned_qty integer NOT NULL,
    grn_item_id uuid NOT NULL,
    grn_return_id uuid NOT NULL
);


--
-- Name: grn_return_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.grn_return_types (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid
);


--
-- Name: grn_returns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.grn_returns (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    grn_return_id text NOT NULL,
    grn_id uuid NOT NULL,
    remark text NOT NULL,
    status public."GRNReturnStatus" DEFAULT 'PENDING'::public."GRNReturnStatus" NOT NULL,
    approved_at timestamp(3) without time zone,
    approved_by_id uuid,
    rejected_at timestamp(3) without time zone,
    rejected_by_id uuid,
    return_type_id uuid
);


--
-- Name: hd_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hd_requests (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    "sourceDepartment" public."HDRequestSourceDepartment" DEFAULT 'OPD'::public."HDRequestSourceDepartment" NOT NULL,
    patient_id uuid NOT NULL,
    admission_id uuid,
    "referralType" public."ReferralType" DEFAULT 'REFERRALIN'::public."ReferralType" NOT NULL,
    referral_doctor_id uuid,
    operation_date timestamp(3) without time zone NOT NULL,
    operation_time timestamp(3) without time zone NOT NULL,
    bcr public."BCR" DEFAULT 'B'::public."BCR" NOT NULL,
    anf public."ANF" DEFAULT 'AVFLR'::public."ANF" NOT NULL,
    remark text,
    written_by text,
    approved_by text,
    last_meal text,
    urgency public."Urgency" DEFAULT 'ELECTIVE'::public."Urgency" NOT NULL,
    status public."HDRequestStatus" DEFAULT 'REQUESTED'::public."HDRequestStatus" NOT NULL,
    room_log_id uuid,
    referral_clinic_id uuid,
    cancel_remark text,
    cancelled_by_id uuid,
    avf_side public."Side",
    diagnosis text,
    femoral_side public."Side",
    "hbAg" public."ScreeningStatus",
    hcv public."ScreeningStatus",
    hiv public."ScreeningStatus",
    neck_line_side public."Side",
    "otherScreening" text,
    vdrl public."ScreeningStatus",
    appointment_type_id uuid,
    appointment_id uuid,
    has_services_added boolean DEFAULT false NOT NULL,
    request_id text
);


--
-- Name: hospital_info; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hospital_info (
    id uuid NOT NULL,
    name text NOT NULL,
    address text NOT NULL,
    email text NOT NULL,
    footer text,
    logo_url text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


--
-- Name: hospital_phone_number; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hospital_phone_number (
    id uuid NOT NULL,
    type text NOT NULL,
    number text NOT NULL,
    hospital_id uuid NOT NULL
);


--
-- Name: ib_batch_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ib_batch_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: imaging_add_on_pharmacy_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imaging_add_on_pharmacy_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    imaging_service_add_on_id uuid NOT NULL,
    stock_id uuid NOT NULL,
    qty integer NOT NULL,
    foc_qty integer,
    maximum_retail_price integer NOT NULL,
    amount integer NOT NULL
);


--
-- Name: imaging_add_on_procedure_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imaging_add_on_procedure_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    imaging_service_add_on_id uuid NOT NULL,
    procedure_id uuid NOT NULL,
    qty integer NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL
);


--
-- Name: imaging_add_on_service_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imaging_add_on_service_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    imaging_service_add_on_id uuid NOT NULL,
    service_id uuid NOT NULL,
    price_type text NOT NULL,
    doctor_id uuid,
    qty integer NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL,
    ipd_daily_service_id uuid
);


--
-- Name: imaging_list_new_borns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imaging_list_new_borns (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    imaging_list_id uuid NOT NULL,
    new_born_baby_id uuid NOT NULL
);


--
-- Name: imaging_lists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imaging_lists (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    opd_billing_id uuid,
    type public."ImagingType" NOT NULL,
    ipd_daily_bill_id uuid,
    referral_clinic_id uuid,
    referral_doctor_id uuid,
    opd_package_bill_id uuid
);


--
-- Name: imaging_service_add_ons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imaging_service_add_ons (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    imaging_service_id uuid NOT NULL,
    remark text,
    is_charged boolean DEFAULT false NOT NULL,
    is_reversed boolean DEFAULT false NOT NULL,
    total_amount double precision DEFAULT 0 NOT NULL,
    charged_ipd_daily_bill_id uuid,
    pharmacy_sale_id uuid,
    ipd_ward_service_id uuid
);


--
-- Name: imaging_service_reading_doctors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imaging_service_reading_doctors (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    doctor_id uuid NOT NULL,
    imaging_service_result_id uuid NOT NULL
);


--
-- Name: imaging_service_results; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imaging_service_results (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    imaging_service_id uuid NOT NULL,
    result text NOT NULL,
    print_option public."PrintOption" DEFAULT 'LETTER_HEAD'::public."PrintOption" NOT NULL,
    attachments text[]
);


--
-- Name: imaging_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imaging_services (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    opd_billing_service_id uuid,
    imaging_list_id uuid NOT NULL,
    type public."ImagingType" NOT NULL,
    status public."ImagingServiceStatus" DEFAULT 'PENDING'::public."ImagingServiceStatus" NOT NULL,
    ipd_daily_bill_service_id uuid
);


--
-- Name: imaging_templates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imaging_templates (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL,
    template text NOT NULL,
    type public."ImagingType" NOT NULL
);


--
-- Name: ipd_daily_bill_pharmacy_returns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_daily_bill_pharmacy_returns (
    id uuid NOT NULL,
    "ipdDailyBillId" uuid NOT NULL,
    "ipdPharmacyReturnId" uuid NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "createdById" uuid NOT NULL
);


--
-- Name: ipd_daily_bill_pharmacy_sales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_daily_bill_pharmacy_sales (
    id uuid NOT NULL,
    "ipdDailyBillId" uuid NOT NULL,
    "pharmacySaleId" uuid NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "createdById" uuid NOT NULL
);


--
-- Name: ipd_daily_bill_room_charges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_daily_bill_room_charges (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    daily_bill_id uuid NOT NULL,
    custom_room_charges_id uuid,
    actual_check_in_time timestamp(3) without time zone,
    actual_check_out_time timestamp(3) without time zone,
    standard_check_in_time timestamp(3) without time zone,
    standard_check_out_time timestamp(3) without time zone,
    room_price integer NOT NULL,
    early_check_in_charge integer,
    late_check_out_charge integer,
    total_room_charge integer NOT NULL,
    early_check_in_type text,
    late_check_out_type text,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    room_log_id uuid,
    discount_percentage integer,
    discounted_room_price integer,
    is_operate boolean DEFAULT false NOT NULL,
    is_transfer_checkout boolean DEFAULT false NOT NULL
);


--
-- Name: ipd_daily_bill_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_daily_bill_services (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    "dailyBillId" uuid NOT NULL,
    "serviceId" uuid NOT NULL,
    "priceType" text NOT NULL,
    doctor_id uuid,
    qty integer NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL,
    is_cancel boolean DEFAULT false NOT NULL,
    is_operate boolean DEFAULT false NOT NULL,
    has_discount boolean DEFAULT false NOT NULL
);


--
-- Name: ipd_daily_bills; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_daily_bills (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    "admissionId" uuid NOT NULL,
    "roomLogId" uuid,
    date timestamp(3) without time zone NOT NULL,
    subtotal integer NOT NULL,
    total_amount integer NOT NULL,
    invoice_no text NOT NULL,
    lab_ref_no text DEFAULT ''::text NOT NULL,
    "isConsignment" boolean DEFAULT false NOT NULL,
    tax_percentage integer,
    tax_amount integer,
    discount_percentage integer,
    discount_amount integer,
    invoice_rounding text,
    remark text,
    store_id uuid,
    "patientGroup" public."PatientGroup" DEFAULT 'LOCAL'::public."PatientGroup" NOT NULL,
    "isFinalized" boolean DEFAULT false NOT NULL,
    "dailyBillStatus" public."DailyBillStatus" DEFAULT 'OPEN'::public."DailyBillStatus" NOT NULL,
    "billOpenAt" timestamp(3) without time zone,
    "billCloseAt" timestamp(3) without time zone
);


--
-- Name: ipd_emr_clinical_document_files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_emr_clinical_document_files (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    clinical_document_header_id uuid NOT NULL,
    file_name text NOT NULL,
    file_url text NOT NULL,
    content_type text,
    file_extension text NOT NULL,
    file_size integer NOT NULL
);


--
-- Name: ipd_emr_clinical_document_headers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_emr_clinical_document_headers (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    ipd_emr_id uuid NOT NULL,
    document_name text NOT NULL
);


--
-- Name: ipd_emr_proxy_bill_joints; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_emr_proxy_bill_joints (
    ipd_emr_id uuid NOT NULL,
    proxy_bill_id uuid NOT NULL
);


--
-- Name: ipd_emr_request_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_emr_request_links (
    id uuid NOT NULL,
    ipd_emr_id uuid NOT NULL,
    request_type public."IPDEMRRequestType" NOT NULL,
    endo_request_id uuid,
    ot_request_id uuid,
    hd_request_id uuid,
    cath_lab_request_id uuid,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: ipd_emrs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_emrs (
    id uuid NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "createdById" uuid NOT NULL,
    "updatedById" uuid NOT NULL,
    "patientId" uuid NOT NULL,
    "admissionId" uuid NOT NULL,
    "moduleType" text NOT NULL,
    remark text,
    doctor_id uuid
);


--
-- Name: ipd_final_bill; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_final_bill (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    invoice_no text NOT NULL,
    discharge_admission_id uuid NOT NULL,
    bill_type_id uuid NOT NULL,
    store_id uuid,
    tax_percentage integer,
    tax_amount integer,
    discount_percentage integer,
    discount_amount integer,
    remark text,
    "isConsignment" boolean DEFAULT false NOT NULL,
    pharmacy_sale_amount integer DEFAULT 0 NOT NULL,
    room_charges integer DEFAULT 0 NOT NULL,
    service_amount integer DEFAULT 0 NOT NULL,
    service_package_amount integer DEFAULT 0 NOT NULL,
    procedure_amount integer DEFAULT 0 NOT NULL,
    sub_total integer NOT NULL,
    total_amount integer NOT NULL,
    deposit_amount integer NOT NULL,
    current_remaining_deposit integer DEFAULT 0 NOT NULL,
    remaining_payable_deposit integer DEFAULT 0 NOT NULL,
    "paymentStatus" public."IPDFinalBillPaymentStatus" DEFAULT 'UNPAID'::public."IPDFinalBillPaymentStatus" NOT NULL,
    cancelled_by_id uuid,
    cancelled_at timestamp(3) without time zone,
    cancelled_remark text,
    is_deleted boolean DEFAULT false NOT NULL,
    deleted_by_id uuid,
    deleted_remark text,
    member_card_id text,
    pharmacy_returned_amount integer DEFAULT 0 NOT NULL,
    service_module_amounts jsonb DEFAULT '{}'::jsonb NOT NULL
);


--
-- Name: ipd_final_bill_payment_methods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_final_bill_payment_methods (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    opd_billing_id uuid NOT NULL,
    payment_method_id uuid NOT NULL,
    received_amount integer NOT NULL
);


--
-- Name: ipd_final_bill_with_daily_bill; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_final_bill_with_daily_bill (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    ipd_final_bill_id uuid NOT NULL,
    daily_bill_id uuid NOT NULL
);


--
-- Name: ipd_pharmacy_return_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_pharmacy_return_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    pharmacy_sale_item_id uuid NOT NULL,
    ipd_pharmacy_return_id uuid NOT NULL,
    return_qty integer NOT NULL,
    return_amount integer NOT NULL,
    remark text
);


--
-- Name: ipd_pharmacy_returns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_pharmacy_returns (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    approved_at timestamp(3) without time zone,
    rejected_at timestamp(3) without time zone,
    approved_by_id uuid,
    rejected_by_id uuid,
    admission_id uuid NOT NULL,
    room_log_id uuid NOT NULL,
    remark text NOT NULL,
    return_subtotal integer NOT NULL,
    return_total_amount integer NOT NULL,
    invoice_no text NOT NULL,
    status public."IPDPharmacyReturnStatus" DEFAULT 'PENDING'::public."IPDPharmacyReturnStatus" NOT NULL,
    patient_id uuid
);


--
-- Name: ipd_ward_pharmacy_sales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_ward_pharmacy_sales (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    ipd_ward_service_id uuid NOT NULL,
    pharmacy_sale_id uuid NOT NULL
);


--
-- Name: ipd_ward_service_procedures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_ward_service_procedures (
    id uuid NOT NULL,
    ipd_ward_id uuid NOT NULL,
    service_package_id uuid NOT NULL,
    price integer NOT NULL,
    qty integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    amount integer NOT NULL,
    doctor_id uuid,
    is_price_from_mapping boolean DEFAULT false NOT NULL
);


--
-- Name: ipd_ward_service_service_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_ward_service_service_items (
    id uuid NOT NULL,
    ipd_ward_id uuid NOT NULL,
    service_id uuid NOT NULL,
    "priceType" text NOT NULL,
    doctor_id uuid,
    qty integer NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL,
    is_cancel boolean DEFAULT false NOT NULL,
    is_price_from_mapping boolean DEFAULT false NOT NULL
);


--
-- Name: ipd_ward_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipd_ward_services (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    "ipdDailyBillId" uuid NOT NULL,
    admission_id uuid NOT NULL,
    room_log_id uuid NOT NULL,
    "requestedDate" timestamp(3) without time zone NOT NULL,
    remark text,
    patient_id uuid
);


--
-- Name: ipdot_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ipdot_requests (
    id uuid NOT NULL,
    admission_id uuid NOT NULL
);


--
-- Name: item_manual_prices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.item_manual_prices (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    item_id uuid NOT NULL,
    local_price integer NOT NULL,
    foreigner_price integer NOT NULL,
    insurance_price integer,
    government_price integer,
    changed_by_id uuid NOT NULL
);


--
-- Name: items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.items (
    id uuid NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    generic text NOT NULL,
    unit_id uuid NOT NULL,
    category_id uuid NOT NULL,
    sub_category_id uuid,
    manufacture_name text,
    tax_value numeric(65,30) NOT NULL,
    status public."ItemStatus" DEFAULT 'ACTIVE'::public."ItemStatus" NOT NULL,
    min_qty integer NOT NULL,
    max_qty integer NOT NULL,
    reorder_qty integer,
    supplier_id uuid,
    storage_location text NOT NULL,
    storage_method text NOT NULL,
    warranty_period text,
    last_maintain_date timestamp(3) without time zone,
    next_maintenance_date timestamp(3) without time zone,
    item_used_by_department_id uuid,
    serial_number text,
    brand_name text,
    item_id text NOT NULL,
    selling_price_group_id uuid,
    item_type public."ItemType",
    allergy public."AllergyStatus" DEFAULT 'NON_ALLERGIC'::public."AllergyStatus" NOT NULL
);


--
-- Name: lab_collection_methods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_collection_methods (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL
);


--
-- Name: lab_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_groups (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    "labTestId" uuid NOT NULL,
    "specialLabTestId" uuid NOT NULL
);


--
-- Name: lab_pivot_new_borns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_pivot_new_borns (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    lab_pivot_id uuid NOT NULL,
    new_born_baby_id uuid NOT NULL
);


--
-- Name: lab_pivots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_pivots (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    opd_billing_id uuid,
    "patientType" public."PatientType" DEFAULT 'OPD'::public."PatientType" NOT NULL,
    ipd_daily_bill_id uuid,
    opd_package_bill_id uuid,
    lab_ref_no text DEFAULT ''::text NOT NULL
);


--
-- Name: lab_result_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_result_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    result text NOT NULL,
    lab_service_id uuid NOT NULL,
    lab_result_id uuid NOT NULL,
    lab_test_id uuid,
    test_script_id uuid,
    lab_microbiology_section public."MicrobiologySection",
    lab_service_item_id uuid,
    reading_doctor_id uuid
);


--
-- Name: lab_results; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_results (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    category_comment text DEFAULT ''::text
);


--
-- Name: lab_samples; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_samples (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL
);


--
-- Name: lab_service_audits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_service_audits (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    "Lab_service_id" uuid NOT NULL,
    lab_status public."LabStatus" DEFAULT 'TOCOLLECT'::public."LabStatus" NOT NULL,
    description text NOT NULL
);


--
-- Name: lab_service_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_service_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    "labServiceId" uuid NOT NULL,
    "specialLabTestId" uuid NOT NULL,
    "collectStatus" public."CollectStatus" DEFAULT 'TOCOLLECT'::public."CollectStatus" NOT NULL,
    "acknowledgeStatus" public."AcknowledgeStatus" DEFAULT 'TOCOLLECT'::public."AcknowledgeStatus" NOT NULL,
    "testingStatus" public."TestingStatus" DEFAULT 'TOCOLLECT'::public."TestingStatus" NOT NULL,
    "testDoneStatus" public."TestDoneStatus" DEFAULT 'TOCOLLECT'::public."TestDoneStatus" NOT NULL,
    "resultEntryStatus" public."ResultEntryStatus" DEFAULT 'TOCOLLECT'::public."ResultEntryStatus" NOT NULL,
    "verificationStatus" public."ResultVerificationStatus" DEFAULT 'TOCOLLECT'::public."ResultVerificationStatus" NOT NULL,
    "labReeportStatus" public."LabReportStatus" DEFAULT 'TOCOLLECT'::public."LabReportStatus" NOT NULL,
    "collectStatusUpdatedAt" timestamp(3) without time zone,
    "collectStatusUpdatedById" uuid,
    "acknowledgeStatusUpdatedAt" timestamp(3) without time zone,
    "acknowledgeStatusUpdatedById" uuid,
    "testingStatusUpdatedAt" timestamp(3) without time zone,
    "testingStatusUpdatedById" uuid,
    "testDoneStatusUpdatedAt" timestamp(3) without time zone,
    "testDoneStatusUpdatedById" uuid,
    "resultEntryStatusUpdatedAt" timestamp(3) without time zone,
    "resultEntryStatusUpdatedById" uuid,
    "resultVerificationStatusUpdatedAt" timestamp(3) without time zone,
    "resultVerificationStatusUpdatedById" uuid,
    "labReportStatusUpdatedAt" timestamp(3) without time zone,
    "labReportStatusUpdatedById" uuid,
    "cancelRemark" text
);


--
-- Name: lab_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_services (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    lab_pivot_id uuid NOT NULL,
    service_id uuid NOT NULL,
    collect_status public."CollectStatus" DEFAULT 'TOCOLLECT'::public."CollectStatus" NOT NULL,
    acknowledge_status public."AcknowledgeStatus" DEFAULT 'TOCOLLECT'::public."AcknowledgeStatus" NOT NULL,
    testing_status public."TestingStatus" DEFAULT 'TOCOLLECT'::public."TestingStatus" NOT NULL,
    price_type text DEFAULT 'servicePrice'::text NOT NULL,
    collect_status_updated_at timestamp(3) without time zone,
    collect_status_updated_by_id uuid,
    acknowledge_status_updated_at timestamp(3) without time zone,
    acknowledge_status_updated_by_id uuid,
    testing_status_updated_at timestamp(3) without time zone,
    testing_status_updated_by_id uuid,
    test_done_status public."TestDoneStatus" DEFAULT 'TOCOLLECT'::public."TestDoneStatus" NOT NULL,
    test_done_status_updated_at timestamp(3) without time zone,
    test_done_status_updated_by_id uuid,
    result_entry_status public."ResultEntryStatus" DEFAULT 'TOCOLLECT'::public."ResultEntryStatus" NOT NULL,
    result_entry_status_updated_at timestamp(3) without time zone,
    result_entry_status_updated_by_id uuid,
    result_verification_status public."ResultVerificationStatus" DEFAULT 'TOCOLLECT'::public."ResultVerificationStatus" NOT NULL,
    result_verification_status_updated_at timestamp(3) without time zone,
    result_verification_status_updated_by_id uuid,
    lab_report_status public."LabReportStatus" DEFAULT 'TOCOLLECT'::public."LabReportStatus" NOT NULL,
    lab_report_status_updated_at timestamp(3) without time zone,
    lab_report_status_updated_by_id uuid,
    ipd_daily_service_id uuid,
    "cancelRemark" text
);


--
-- Name: lab_statuses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_statuses (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL
);


--
-- Name: lab_template; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_template (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    template_name text DEFAULT ''::text NOT NULL,
    template_type text NOT NULL,
    doctors text[] DEFAULT ARRAY[]::text[],
    "approvedBy" text DEFAULT ''::text,
    "performedBy" text DEFAULT ''::text,
    template_footer text DEFAULT ''::text,
    microbiology_template_comment text DEFAULT ''::text
);


--
-- Name: lab_template_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_template_categories (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    lab_template_config_id uuid NOT NULL,
    service_category_id uuid NOT NULL,
    category_comment text DEFAULT ''::text,
    category_footer text DEFAULT ''::text
);


--
-- Name: lab_template_categories_audit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_template_categories_audit (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    lab_template_id uuid NOT NULL,
    service_category_id uuid,
    description text
);


--
-- Name: lab_template_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_template_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    lab_template_category_id uuid NOT NULL,
    lab_test_id uuid,
    lab_status_id uuid,
    result text DEFAULT ''::text,
    reference text DEFAULT ''::text,
    "ageRange" text DEFAULT ''::text,
    gender public."RuleGender" DEFAULT 'ALL'::public."RuleGender" NOT NULL
);


--
-- Name: lab_template_microbiology_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_template_microbiology_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    lab_template_id uuid NOT NULL,
    special_lab_test uuid,
    lab_status_id uuid,
    microbiology_section public."MicrobiologySection" NOT NULL,
    result text DEFAULT ''::text,
    reference text DEFAULT ''::text,
    "ageRange" text DEFAULT ''::text,
    gender public."RuleGender" DEFAULT 'ALL'::public."RuleGender" NOT NULL
);


--
-- Name: lab_tests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_tests (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    service_id uuid NOT NULL,
    lab_unit_id uuid NOT NULL,
    lab_sample_id uuid NOT NULL,
    is_active boolean DEFAULT false NOT NULL,
    lab_collection_method_id uuid
);


--
-- Name: lab_units; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lab_units (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL
);


--
-- Name: main_procedures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_procedures (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    name text NOT NULL,
    status public."MainProcedureStatus" DEFAULT 'ACTIVE'::public."MainProcedureStatus" NOT NULL
);


--
-- Name: member_card; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.member_card (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    member_card_type_id uuid NOT NULL,
    member_card_id text NOT NULL,
    valid_from timestamp(3) without time zone,
    valid_to timestamp(3) without time zone,
    member_count integer DEFAULT 0 NOT NULL,
    is_active boolean DEFAULT false NOT NULL,
    limit_reached_at timestamp(3) without time zone
);


--
-- Name: member_card_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.member_card_type (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL,
    card_color1 text NOT NULL,
    card_color2 text NOT NULL,
    price integer NOT NULL,
    validity_years integer NOT NULL,
    max_members integer NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    room_charge_days integer,
    room_charge_discount integer,
    room_charge_usage_limit public."RoomChargeUsageLimit" DEFAULT 'UNLIMITED'::public."RoomChargeUsageLimit" NOT NULL
);


--
-- Name: member_card_type_service_packages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.member_card_type_service_packages (
    id uuid NOT NULL,
    member_card_type_id uuid NOT NULL,
    service_package_id uuid NOT NULL,
    original_service_price integer,
    discount_percentage integer,
    discount_amount integer,
    discount_service_price integer,
    usage_limit public."UsageLimit" NOT NULL,
    frequency_days integer
);


--
-- Name: member_card_type_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.member_card_type_services (
    id uuid NOT NULL,
    member_card_type_id uuid NOT NULL,
    service_id uuid NOT NULL,
    original_service_price integer,
    discount_percentage integer,
    discount_amount integer,
    discount_service_price integer,
    usage_limit public."UsageLimit" NOT NULL,
    frequency_days integer
);


--
-- Name: member_list; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.member_list (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    patient_id uuid NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    opd_billing_id uuid,
    member_card_id uuid NOT NULL
);


--
-- Name: new_born_babies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.new_born_babies (
    id uuid NOT NULL,
    patient_id uuid NOT NULL,
    mother_id uuid NOT NULL,
    admission_id uuid,
    is_active_in_admission boolean DEFAULT true NOT NULL,
    father_name text,
    mother_name text,
    birth_order integer DEFAULT 1 NOT NULL
);


--
-- Name: new_born_baby_under_care_doctors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.new_born_baby_under_care_doctors (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    new_born_baby_id uuid NOT NULL,
    doctor_id uuid NOT NULL
);


--
-- Name: nurse_notes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nurse_notes (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    room_log_id uuid NOT NULL,
    admission_id uuid NOT NULL,
    nurse_id uuid NOT NULL,
    note text,
    patient_id uuid,
    ipd_emr_id uuid
);


--
-- Name: opd_billing_activity_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_billing_activity_logs (
    id uuid NOT NULL,
    action text,
    "timestamp" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    description text NOT NULL,
    remark text,
    user_id uuid NOT NULL,
    opd_billing_id uuid NOT NULL
);


--
-- Name: opd_billing_imaging_add_on_pharmacy_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_billing_imaging_add_on_pharmacy_items (
    id uuid NOT NULL,
    opd_billing_id uuid NOT NULL,
    add_on_item_id uuid NOT NULL,
    stock_id uuid NOT NULL,
    qty integer NOT NULL,
    foc integer,
    mrp integer NOT NULL,
    amount integer NOT NULL,
    is_excluded boolean DEFAULT false NOT NULL
);


--
-- Name: opd_billing_payment_methods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_billing_payment_methods (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    opd_billing_id uuid NOT NULL,
    payment_method_id uuid NOT NULL,
    received_amount integer NOT NULL
);


--
-- Name: opd_billing_pharmacy_sale_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_billing_pharmacy_sale_items (
    id uuid NOT NULL,
    opd_billing_pharmacy_sale_id uuid NOT NULL,
    pharmacy_sale_item_id uuid NOT NULL,
    item_id uuid NOT NULL,
    stock_id uuid NOT NULL,
    qty integer NOT NULL,
    foc integer,
    mrp integer NOT NULL,
    amount integer NOT NULL,
    is_excluded boolean DEFAULT false NOT NULL,
    remaining_qty integer,
    returned_qty integer
);


--
-- Name: opd_billing_procedures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_billing_procedures (
    id uuid NOT NULL,
    opd_billing_id uuid NOT NULL,
    procedure_id uuid NOT NULL,
    qty integer NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL,
    is_cancel boolean DEFAULT false NOT NULL,
    cancel_remark text,
    cancelled_by_id uuid,
    cancelled_at timestamp(3) without time zone,
    doctor_id uuid
);


--
-- Name: opd_billing_service_packages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_billing_service_packages (
    id uuid NOT NULL,
    opd_billing_id uuid NOT NULL,
    service_package_id uuid NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    amount integer NOT NULL
);


--
-- Name: opd_billing_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_billing_services (
    id uuid NOT NULL,
    opd_billing_id uuid NOT NULL,
    service_id uuid NOT NULL,
    "priceType" text NOT NULL,
    doctor_id uuid,
    qty integer NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL,
    is_cancel boolean DEFAULT false NOT NULL,
    cancel_remark text,
    cancelled_at timestamp(3) without time zone,
    cancelled_by_id uuid,
    is_team_fee boolean DEFAULT false NOT NULL,
    appointment_id uuid,
    external_source_id uuid,
    source public."OpdBillServiceSource" DEFAULT 'PRE_PAID'::public."OpdBillServiceSource" NOT NULL
);


--
-- Name: opd_billings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_billings (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    pharmacy_sale_id uuid,
    patient_id uuid,
    payment_method_id uuid NOT NULL,
    received_amount integer NOT NULL,
    change integer NOT NULL,
    invoice_no text NOT NULL,
    bill_type_id uuid NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    discount_amount integer,
    discount_percentage integer,
    remark text,
    subtotal integer NOT NULL,
    tax_amount integer,
    tax_percentage integer,
    total_amount integer NOT NULL,
    "patientGroup" public."PatientGroup" DEFAULT 'LOCAL'::public."PatientGroup" NOT NULL,
    doctor_id uuid,
    "isWalkIn" boolean DEFAULT false NOT NULL,
    opd_billing_payment_status public."OPDBillingPaymentStatus" DEFAULT 'UNPAID'::public."OPDBillingPaymentStatus" NOT NULL,
    store_id uuid,
    invoice_rounding text,
    lab_ref_no text DEFAULT ''::text NOT NULL,
    "isConsignment" boolean DEFAULT false NOT NULL,
    appointment_id uuid,
    cancelled_at timestamp(3) without time zone,
    cancelled_by_id uuid,
    cancelled_remark text,
    "userId" uuid,
    "isBuyMemberCard" boolean DEFAULT false NOT NULL,
    member_card_id uuid,
    display_foc_field boolean DEFAULT false NOT NULL
);


--
-- Name: opd_emr_clinical_document_files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_clinical_document_files (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    clinical_document_header_id uuid NOT NULL,
    file_name text NOT NULL,
    file_url text NOT NULL,
    content_type text,
    file_extension text NOT NULL,
    file_size integer NOT NULL
);


--
-- Name: opd_emr_clinical_document_headers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_clinical_document_headers (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    opd_emr_id uuid NOT NULL,
    document_name text NOT NULL
);


--
-- Name: opd_emr_doctor_notes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_doctor_notes (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    opd_emr_id uuid NOT NULL,
    doctor_id uuid,
    note text,
    patient_id uuid
);


--
-- Name: opd_emr_nurse_notes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_nurse_notes (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    nurse_id uuid,
    note text,
    opd_emr_id uuid NOT NULL,
    patient_id uuid
);


--
-- Name: opd_emr_pharmacy_request_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_pharmacy_request_items (
    id uuid NOT NULL,
    opd_emr_pharmacy_request_id uuid NOT NULL,
    item_id uuid NOT NULL,
    requested_qty integer NOT NULL,
    current_stock_qty integer,
    target_store_stock_qty integer
);


--
-- Name: opd_emr_pharmacy_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_pharmacy_requests (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    cancelled_at timestamp(3) without time zone,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    opd_emr_pharmacy_request_id text NOT NULL,
    requested_from_store_id uuid,
    requested_to_store_id uuid NOT NULL,
    status public."OPDEMRPharmacyRequestStatus" DEFAULT 'PENDING'::public."OPDEMRPharmacyRequestStatus" NOT NULL,
    doctor_id uuid,
    remark text,
    cancelled_by_id uuid,
    patient_id uuid,
    prescription_id uuid,
    opd_emr_id uuid NOT NULL
);


--
-- Name: opd_emr_pharmacy_transfer_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_pharmacy_transfer_items (
    id uuid NOT NULL,
    opd_emr_pharmacy_transfer_id uuid NOT NULL,
    item_id uuid NOT NULL,
    stock_id uuid NOT NULL,
    snapshot_stock_qty integer,
    transferred_qty integer NOT NULL,
    requested_qty integer NOT NULL
);


--
-- Name: opd_emr_pharmacy_transfers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_pharmacy_transfers (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    opd_emr_pharmacy_request_id uuid NOT NULL,
    status public."OPDEMRPharmacyTransferStatus" DEFAULT 'PENDING'::public."OPDEMRPharmacyTransferStatus" NOT NULL,
    transferred_at timestamp(3) without time zone,
    rejected_at timestamp(3) without time zone,
    transferred_by_id uuid,
    rejected_by_id uuid,
    pharmacy_sale_id uuid
);


--
-- Name: opd_emr_service_request_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_service_request_items (
    id uuid NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "createdById" uuid NOT NULL,
    "updatedById" uuid NOT NULL,
    "opdEmrServiceRequestId" uuid NOT NULL,
    "serviceId" uuid NOT NULL,
    "priceType" text,
    "doctorId" uuid,
    qty integer NOT NULL,
    remark text,
    price integer DEFAULT 0,
    cancel_remark text,
    cancelled_by_id uuid
);


--
-- Name: opd_emr_service_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_service_requests (
    id uuid NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "createdById" uuid NOT NULL,
    "updatedById" uuid NOT NULL,
    "opdEmrId" uuid NOT NULL,
    "referralDoctorId" uuid,
    module text NOT NULL,
    remark text,
    "requestDate" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "referralType" public."ReferralType" DEFAULT 'REFERRALIN'::public."ReferralType" NOT NULL,
    referral_clinic_id uuid,
    patient_id uuid,
    lab_pivot_id uuid
);


--
-- Name: opd_emr_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_services (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "createdById" uuid NOT NULL,
    "updatedById" uuid NOT NULL,
    "opdEmrId" uuid NOT NULL,
    "serviceId" uuid NOT NULL,
    qty integer NOT NULL,
    price integer NOT NULL,
    "priceType" text,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL,
    is_cancel boolean DEFAULT false NOT NULL,
    is_operate boolean DEFAULT false NOT NULL,
    has_discount boolean DEFAULT false NOT NULL,
    "doctorId" uuid,
    imaging_service_id uuid,
    lab_service_id uuid
);


--
-- Name: opd_emr_vital_signs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emr_vital_signs (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    doctor_id uuid,
    remark text,
    systolic_blood_pressure numeric(10,1),
    diastolic_blood_pressure numeric(10,1),
    bp_measured_time public."BPMeasuredTimeEnum",
    weight numeric(10,1),
    height numeric(10,1),
    body_measurement_unit public."BodyMeasurementUnit",
    body_temperature numeric(10,1),
    body_temperature_unit public."BodyTemperatureUnit",
    "spO2" numeric(10,1),
    heart_rate numeric(10,1),
    respiratory_rate numeric(10,1),
    opd_emr_id uuid NOT NULL,
    patient_id uuid,
    blood_pressure_date_time timestamp(3) without time zone,
    body_temperature_date_time timestamp(3) without time zone,
    sp_o2_date_time timestamp(3) without time zone,
    heart_rate_date_time timestamp(3) without time zone,
    respiratory_rate_date_time timestamp(3) without time zone
);


--
-- Name: opd_emrs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_emrs (
    id uuid NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "createdById" uuid NOT NULL,
    "updatedById" uuid NOT NULL,
    "patientId" uuid NOT NULL,
    "appointmentId" uuid NOT NULL,
    "doctorId" uuid,
    "moduleType" text NOT NULL,
    remark text
);


--
-- Name: opd_package_bill_activity_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_package_bill_activity_logs (
    id uuid NOT NULL,
    action text,
    "timestamp" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    description text NOT NULL,
    remark text,
    user_id uuid NOT NULL,
    opd_package_bill_id uuid NOT NULL,
    bill_details json
);


--
-- Name: opd_package_bill_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_package_bill_items (
    id uuid NOT NULL,
    opd_package_bill_id uuid NOT NULL,
    service_package_id uuid NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    amount integer NOT NULL
);


--
-- Name: opd_package_bill_payment_methods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_package_bill_payment_methods (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    opd_package_bill_id uuid NOT NULL,
    payment_method_id uuid NOT NULL,
    received_amount integer NOT NULL
);


--
-- Name: opd_package_bills; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_package_bills (
    id uuid NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    patient_id uuid NOT NULL,
    member_card_id uuid,
    bill_type_id uuid NOT NULL,
    store_id uuid NOT NULL,
    sub_total integer NOT NULL,
    total_amount integer NOT NULL,
    remark text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    "createdById" uuid NOT NULL,
    "updatedById" uuid,
    invoice_no text NOT NULL,
    lab_ref_no text,
    patient_group public."PatientGroup" DEFAULT 'LOCAL'::public."PatientGroup" NOT NULL,
    patient_type public."PatientType" NOT NULL,
    change integer NOT NULL,
    received_amount integer NOT NULL,
    invoice_rounding text,
    discount_amount integer,
    discount_percentage integer,
    tax_amount integer,
    tax_percentage integer
);


--
-- Name: opd_refund_bill_pharmacy_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_refund_bill_pharmacy_items (
    id uuid NOT NULL,
    qty integer NOT NULL,
    foc integer,
    mrp integer NOT NULL,
    amount integer NOT NULL,
    item_id uuid NOT NULL,
    stock_id uuid NOT NULL,
    opd_refund_bill_id uuid NOT NULL,
    sale_return_id uuid,
    "discountAmount" integer,
    "discountPercentage" integer,
    opd_billing_pharmacy_sale_id uuid
);


--
-- Name: opd_refund_bill_procedure_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_refund_bill_procedure_items (
    id uuid NOT NULL,
    procedure_id uuid NOT NULL,
    qty integer NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL,
    opd_refund_bill_id uuid NOT NULL
);


--
-- Name: opd_refund_bill_service_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_refund_bill_service_items (
    id uuid NOT NULL,
    qty integer NOT NULL,
    price integer NOT NULL,
    foc integer,
    "discountAmount" integer,
    "discountPercentage" integer,
    amount integer NOT NULL,
    price_type text,
    "doctorId" uuid,
    "serviceId" uuid NOT NULL,
    opd_refund_bill_id uuid NOT NULL
);


--
-- Name: opd_refund_bills; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_refund_bills (
    id uuid NOT NULL,
    date_time timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    refund_bill_invoice_no text NOT NULL,
    sub_total integer NOT NULL,
    discount integer,
    total_refund_amount integer NOT NULL,
    refund_remark text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    refunded_by_id uuid NOT NULL,
    opd_billing_id uuid NOT NULL,
    "taxAmount" integer
);


--
-- Name: opd_service_referrals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opd_service_referrals (
    id uuid NOT NULL,
    opd_billing_service_id uuid NOT NULL,
    doctor_id uuid,
    clinic_id uuid,
    "referralType" public."ReferralType" NOT NULL
);


--
-- Name: opdot_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.opdot_requests (
    id uuid NOT NULL,
    appointment_type_id uuid NOT NULL,
    appointment_id uuid
);


--
-- Name: operation_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.operation_types (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL,
    is_active boolean DEFAULT false NOT NULL
);


--
-- Name: ot_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ot_requests (
    id uuid NOT NULL,
    opd_ot_request_id uuid,
    ipd_ot_request_id uuid,
    diagnosis text NOT NULL,
    operation_date timestamp(3) without time zone NOT NULL,
    operation_time timestamp(3) without time zone NOT NULL,
    operation_type_id uuid NOT NULL,
    anesthesia_type_id uuid NOT NULL,
    "urgentOrElective" public."UrgentOrElective" NOT NULL,
    is_blood_required boolean DEFAULT false NOT NULL,
    last_meal text,
    building_id uuid NOT NULL,
    room_id uuid NOT NULL,
    surgeon_id text[] DEFAULT ARRAY[]::text[],
    anesthetist_id text[] DEFAULT ARRAY[]::text[],
    systolic_blood_pressure integer,
    diastolic_blood_pressure integer,
    body_measurement_unit public."BodyMeasurementUnit",
    weight double precision,
    height double precision,
    body_temperature double precision,
    body_temperature_unit public."BodyTemperatureUnit",
    "spO2" integer,
    heart_rate integer,
    hb_ag text,
    hcv text,
    hiv text,
    blood_group public."BloodType",
    clotting_minute integer,
    status public."OTStatus" DEFAULT 'BOOKED'::public."OTStatus" NOT NULL,
    remark text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    bleeding_minute integer,
    bleeding_second integer,
    clotting_second integer,
    assistant_doctor_id text[] DEFAULT ARRAY[]::text[],
    assistant_nurse_id text[] DEFAULT ARRAY[]::text[],
    "patientId" uuid NOT NULL,
    "patientType" public."PatientType" NOT NULL,
    "referralType" public."ReferralType" DEFAULT 'REFERRALIN'::public."ReferralType" NOT NULL,
    cancel_remark text,
    cancelled_by_id uuid,
    respiratory_rate integer,
    has_services_added boolean DEFAULT false NOT NULL,
    blood_required_remark text,
    drug_allergy text,
    other_screening text,
    vdrl text,
    referral_clinic_id uuid,
    referral_doctor_id uuid,
    request_id text,
    operation_type_ids text[] DEFAULT ARRAY[]::text[] NOT NULL
);


--
-- Name: patient_member_card_service_package_usages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.patient_member_card_service_package_usages (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    patient_id uuid NOT NULL,
    member_card_type_service_package_id uuid NOT NULL,
    usage_count integer DEFAULT 0 NOT NULL
);


--
-- Name: patient_member_card_service_usages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.patient_member_card_service_usages (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid,
    updated_by_id uuid,
    patient_id uuid NOT NULL,
    member_card_type_service_id uuid NOT NULL,
    usage_count integer DEFAULT 0 NOT NULL,
    last_used_at timestamp(3) without time zone,
    previous_used_at timestamp(3) without time zone
);


--
-- Name: patient_member_card_type_room_charge_usages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.patient_member_card_type_room_charge_usages (
    id uuid NOT NULL,
    patient_id uuid NOT NULL,
    member_card_type_id uuid NOT NULL,
    usage_count integer DEFAULT 0 NOT NULL,
    last_used_at timestamp(3) without time zone,
    previous_used_at timestamp(3) without time zone,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: patient_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.patient_services (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    patient_id uuid NOT NULL,
    service_id uuid NOT NULL
);


--
-- Name: patients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.patients (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL,
    phone_no text NOT NULL,
    "patientType" public."PatientType" NOT NULL,
    patient_id text NOT NULL,
    additional_information text,
    address text,
    blood_type public."BloodType",
    date_of_birth timestamp(3) without time zone,
    drug_allergy text,
    email text,
    emergency_phone_no text,
    gender public."Gender" DEFAULT 'OTHER'::public."Gender" NOT NULL,
    guardian_name text DEFAULT ''::text NOT NULL,
    next_to_kin text,
    nrc_no text,
    nrc_state text,
    nrc_township text,
    nrc_type text,
    occupation text,
    passport text,
    patient_group public."PatientGroup" DEFAULT 'LOCAL'::public."PatientGroup" NOT NULL,
    referral_doctor text,
    region text,
    relationship text,
    state_code text,
    township text,
    "patientIdentity" public."PatientIdentity",
    "referralType" public."ReferralType",
    is_old_patient boolean DEFAULT false NOT NULL,
    appointment_type_id uuid
);


--
-- Name: payment_methods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_methods (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    name text NOT NULL,
    bank_id uuid
);


--
-- Name: permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.permissions (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    action text NOT NULL,
    subject text NOT NULL,
    role_id uuid NOT NULL
);


--
-- Name: pharmacy_request_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pharmacy_request_items (
    id uuid NOT NULL,
    pharmacy_request_id uuid NOT NULL,
    item_id uuid NOT NULL,
    requested_qty integer NOT NULL,
    current_stock_qty integer,
    target_store_stock_qty integer
);


--
-- Name: pharmacy_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pharmacy_requests (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    cancelled_at timestamp(3) without time zone,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    pharmacy_request_id text NOT NULL,
    requested_from_store_id uuid,
    requested_to_store_id uuid NOT NULL,
    status public."PharmacyRequestStatus" DEFAULT 'PENDING'::public."PharmacyRequestStatus" NOT NULL,
    doctor_id uuid,
    remark text,
    cancelled_by_id uuid,
    room_log_id uuid NOT NULL,
    admission_id uuid NOT NULL,
    patient_id uuid,
    prescription_id uuid,
    ipd_emr_id uuid
);


--
-- Name: pharmacy_sale_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pharmacy_sale_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    pharmacy_sale_id uuid NOT NULL,
    stock_id uuid NOT NULL,
    qty integer NOT NULL,
    foc_qty integer,
    maximum_retail_price integer NOT NULL,
    amount integer NOT NULL,
    snapshot_stock_qty integer
);


--
-- Name: pharmacy_sales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pharmacy_sales (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    invoice_no text NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    subtotal integer NOT NULL,
    tax_percentage integer,
    tax_amount integer,
    discount_percentage integer,
    discount_amount integer,
    total_amount integer NOT NULL,
    patient_id uuid,
    bill_type_id uuid NOT NULL,
    "isWalkIn" boolean NOT NULL,
    "paymentStatus" public."PaymentStatus" DEFAULT 'PENDING'::public."PaymentStatus" NOT NULL,
    remark text,
    status public."PharmacySaleStatus" DEFAULT 'PENDING'::public."PharmacySaleStatus" NOT NULL,
    patient_group public."PatientGroup" DEFAULT 'LOCAL'::public."PatientGroup" NOT NULL,
    store_id uuid,
    deleted_by_id uuid,
    deleted_remark text,
    is_deleted boolean DEFAULT false NOT NULL,
    doctor_id uuid,
    bill_id uuid,
    proxy_bill_id uuid,
    department_type public."DepartmentEnum" DEFAULT 'PHARMACY'::public."DepartmentEnum" NOT NULL,
    invoice_rounding text,
    "isConsignment" boolean DEFAULT false NOT NULL,
    patient_type public."PatientType" DEFAULT 'OPD'::public."PatientType" NOT NULL
);


--
-- Name: pharmacy_transfer_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pharmacy_transfer_items (
    id uuid NOT NULL,
    pharmacy_transfer_id uuid NOT NULL,
    item_id uuid NOT NULL,
    stock_id uuid NOT NULL,
    snapshot_stock_qty integer,
    transferred_qty integer NOT NULL,
    requested_qty integer NOT NULL
);


--
-- Name: pharmacy_transfers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pharmacy_transfers (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    pharmacy_request_id uuid NOT NULL,
    status public."PharmacyTransferStatus" DEFAULT 'PENDING'::public."PharmacyTransferStatus" NOT NULL,
    transferred_at timestamp(3) without time zone,
    rejected_at timestamp(3) without time zone,
    transferred_by_id uuid,
    rejected_by_id uuid,
    pharmacy_sale_id uuid
);


--
-- Name: prescription_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.prescription_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    prescription_id uuid NOT NULL,
    item_id uuid NOT NULL,
    dosage_form public."ItemType",
    morning_dosage numeric(65,30),
    noon_dosage numeric(65,30),
    evening_dosage numeric(65,30),
    night_dosage numeric(65,30),
    duration integer NOT NULL,
    route public."PrescriptionRoute",
    remark text,
    is_active boolean DEFAULT true NOT NULL
);


--
-- Name: prescriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.prescriptions (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    prescription_id text NOT NULL,
    doctor_id uuid,
    patient_id uuid NOT NULL,
    admission_id uuid,
    room_log_id uuid,
    visit_type public."VisitType" NOT NULL,
    remark text,
    status public."PrescriptionStatus" DEFAULT 'NEW_PRESCRIPTION'::public."PrescriptionStatus" NOT NULL,
    opd_emr_id uuid,
    ipd_emr_id uuid
);


--
-- Name: procedure_bill_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.procedure_bill_items (
    id uuid NOT NULL,
    procedure_bill_id uuid NOT NULL,
    procedure_id uuid NOT NULL,
    qty integer NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL,
    is_cancel boolean DEFAULT false NOT NULL,
    cancel_remark text,
    cancelled_by_id uuid,
    doctor_id uuid
);


--
-- Name: procedure_bills; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.procedure_bills (
    id uuid NOT NULL,
    bill_id uuid,
    patient_id uuid NOT NULL,
    proxy_bill_id uuid,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


--
-- Name: procedures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.procedures (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL,
    procedure_id text NOT NULL,
    local_price integer NOT NULL,
    foreigner_price integer NOT NULL,
    insurance_price integer NOT NULL,
    government_price integer NOT NULL,
    status public."ProcedureStatus" DEFAULT 'ACTIVE'::public."ProcedureStatus" NOT NULL,
    department_id uuid NOT NULL
);


--
-- Name: proxy_bill_request_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proxy_bill_request_links (
    id uuid NOT NULL,
    proxy_bill_id uuid NOT NULL,
    request_type public."ProxyBillRequestType" NOT NULL,
    endo_request_id uuid,
    ot_request_id uuid,
    hd_request_id uuid,
    cath_lab_request_id uuid,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    is_deleted boolean DEFAULT false NOT NULL,
    deleted_remark text,
    deleted_by_id uuid
);


--
-- Name: proxy_bills; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proxy_bills (
    id uuid NOT NULL,
    bill_id uuid,
    date timestamp(3) without time zone NOT NULL,
    "paymentStatus" public."BillPaymentStatusEnum" NOT NULL,
    bill_type_id uuid NOT NULL,
    remark text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    "isDeleted" boolean DEFAULT false NOT NULL,
    "deletedRemark" text,
    deleted_by_id uuid,
    "departmentType" public."DepartmentEnum" NOT NULL,
    store_id uuid,
    patient_id uuid,
    "isConsignment" boolean DEFAULT false NOT NULL,
    appointment_id uuid,
    patient_type public."PatientType" DEFAULT 'OPD'::public."PatientType" NOT NULL,
    ipd_daily_bill_id uuid,
    display_foc_field boolean DEFAULT false NOT NULL
);


--
-- Name: proxy_main_procedures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proxy_main_procedures (
    id uuid NOT NULL,
    proxy_id uuid NOT NULL,
    main_procedure_id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


--
-- Name: proxy_pharmacy_cancel_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.proxy_pharmacy_cancel_items (
    id uuid NOT NULL,
    pharmacy_sale_item_id uuid NOT NULL,
    is_cancel boolean NOT NULL,
    cancel_remark text NOT NULL,
    cancelled_by_id uuid NOT NULL
);


--
-- Name: purchase_order_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.purchase_order_items (
    id uuid NOT NULL,
    item_id uuid NOT NULL,
    qty integer NOT NULL,
    original_price_per_unit numeric(65,30) NOT NULL,
    price_per_unit numeric(65,30),
    expiry_date timestamp(3) without time zone,
    company_batch_no text,
    tax_percentage integer,
    tax_amount integer,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    gross_amount integer NOT NULL,
    net_amount integer NOT NULL,
    purchase_order_id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    is_purchase_request_item boolean DEFAULT false NOT NULL
);


--
-- Name: purchase_orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.purchase_orders (
    id uuid NOT NULL,
    purchase_order_id text NOT NULL,
    purchased_date timestamp(3) without time zone,
    invoice_no text,
    supplier_id uuid,
    payment_term public."PaymentTerm",
    due_date timestamp(3) without time zone,
    status public."PurchaseOrderStatus" DEFAULT 'PENDING'::public."PurchaseOrderStatus" NOT NULL,
    urgent public."PurchaseOrderUrgent" DEFAULT 'REGULAR'::public."PurchaseOrderUrgent" NOT NULL,
    total_item_qty integer NOT NULL,
    sub_total integer NOT NULL,
    total_amount integer NOT NULL,
    remark text,
    tax_percentage integer,
    tax_amount integer,
    discount_percentage integer,
    discount_amount integer,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    purchase_request_id uuid,
    approved_at timestamp(3) without time zone,
    approved_by_id uuid,
    rejected_at timestamp(3) without time zone,
    rejected_by_id uuid,
    stock_type public."StockType" DEFAULT 'PURCHASED_STOCK'::public."StockType" NOT NULL,
    external_purchasing_id text
);


--
-- Name: purchase_request_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.purchase_request_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    purchase_request_id uuid NOT NULL,
    item_id uuid NOT NULL,
    requested_stock_quantity integer NOT NULL,
    total_cost integer NOT NULL,
    latest_purchased_price numeric(65,30) DEFAULT 0 NOT NULL,
    stock_in_hand integer DEFAULT 0 NOT NULL,
    over_purchased_qty integer DEFAULT 0 NOT NULL,
    remaining_requested_qty integer DEFAULT 0 NOT NULL,
    latest_purchased_date timestamp(3) without time zone
);


--
-- Name: purchase_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.purchase_requests (
    id uuid NOT NULL,
    purchase_request_id text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    status public."PurchaseRequestStatus" DEFAULT 'PENDING'::public."PurchaseRequestStatus" NOT NULL,
    requested_date timestamp(3) without time zone NOT NULL,
    priority_status public."PriorityStatus" NOT NULL,
    approved_at timestamp(3) without time zone,
    approved_by_id uuid,
    rejected_at timestamp(3) without time zone,
    rejected_by_id uuid,
    total_requested_amt integer DEFAULT 0 NOT NULL
);


--
-- Name: purchased_price_updated_stock_activity_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.purchased_price_updated_stock_activity_logs (
    id uuid NOT NULL,
    action text,
    "timestamp" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    description text NOT NULL,
    remark text,
    user_id uuid NOT NULL,
    purchased_price_updated_stock_id uuid NOT NULL,
    old_purchased_price_per_unit numeric(65,30),
    new_purchased_price_per_unit numeric(65,30)
);


--
-- Name: purchased_price_updated_stocks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.purchased_price_updated_stocks (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    item_id uuid NOT NULL,
    batch_id uuid NOT NULL,
    old_purchased_price_per_unit numeric(65,30) NOT NULL,
    updated_purchased_price_per_unit numeric(65,30) NOT NULL,
    is_deleted boolean DEFAULT false NOT NULL
);


--
-- Name: referrals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.referrals (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    patient_id uuid NOT NULL,
    doctor_id uuid,
    clinic_id uuid,
    appointment_id uuid,
    status public."ReferralStatus" NOT NULL
);


--
-- Name: roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.roles (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid,
    updated_by_id uuid,
    name text NOT NULL,
    description text,
    is_superadmin boolean DEFAULT false NOT NULL,
    role_id text NOT NULL
);


--
-- Name: room_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.room_logs (
    id uuid NOT NULL,
    occupied_at timestamp(3) without time zone,
    available_at timestamp(3) without time zone,
    inactive_at timestamp(3) without time zone,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    admission_patient_id uuid NOT NULL,
    admission__id uuid,
    room_id uuid NOT NULL,
    is_active text DEFAULT 'ACTIVE'::text NOT NULL,
    "roomStatus" public."RoomStatus" DEFAULT 'AVAILABLE'::public."RoomStatus" NOT NULL,
    remark text,
    requested_at timestamp(3) without time zone,
    is_stay_previous_room boolean DEFAULT false NOT NULL,
    transfer_to_room_id uuid,
    transfered_at timestamp(3) without time zone,
    transfered_by_id uuid,
    transfer_from_room_log_id uuid,
    transfer_from_room_id uuid,
    checked_out_at timestamp(3) without time zone,
    is_checked_out boolean DEFAULT false NOT NULL
);


--
-- Name: room_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.room_types (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    name text NOT NULL,
    is_active boolean DEFAULT false NOT NULL
);


--
-- Name: rooms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rooms (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    name text NOT NULL,
    floor_id uuid NOT NULL,
    ward_id uuid NOT NULL,
    "wardRoomType_id" uuid NOT NULL,
    "roomStatus" public."RoomStatus" DEFAULT 'AVAILABLE'::public."RoomStatus" NOT NULL,
    building_id uuid NOT NULL,
    "roomCategory" public."RoomCategory" DEFAULT 'IPD'::public."RoomCategory" NOT NULL
);


--
-- Name: sale_return_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sale_return_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    pharmacy_sale_item_id uuid NOT NULL,
    return_qty integer NOT NULL,
    return_amount integer NOT NULL,
    sale_return_id uuid NOT NULL,
    remark text,
    discount_amount integer,
    tax_amount integer
);


--
-- Name: sale_returns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sale_returns (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    pharmacy_sale_id uuid NOT NULL,
    remark text NOT NULL,
    return_subtotal integer NOT NULL,
    return_total_amount integer NOT NULL,
    invoice_no text NOT NULL,
    status public."SaleReturnStatus" DEFAULT 'PENDING'::public."SaleReturnStatus" NOT NULL,
    approved_at timestamp(3) without time zone,
    approved_by_id uuid,
    rejected_at timestamp(3) without time zone,
    rejected_by_id uuid,
    is_multiple boolean DEFAULT false NOT NULL,
    multi_sale_return_id text,
    discount_amount integer,
    tax_amount integer
);


--
-- Name: selling_price_change_histories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.selling_price_change_histories (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    item_id uuid NOT NULL,
    old_local_price integer NOT NULL,
    old_foreigner_price integer NOT NULL,
    old_insurance_price integer,
    old_government_price integer,
    new_local_price integer NOT NULL,
    new_foreigner_price integer NOT NULL,
    new_insurance_price integer,
    new_government_price integer,
    changed_by_id uuid NOT NULL
);


--
-- Name: service_bill_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_bill_items (
    id uuid NOT NULL,
    service_bill_id uuid NOT NULL,
    service_id uuid NOT NULL,
    price_type text NOT NULL,
    doctor_id uuid,
    qty integer NOT NULL,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL,
    is_cancel boolean DEFAULT false NOT NULL,
    is_team_fee boolean DEFAULT false NOT NULL,
    is_price_from_mapping boolean DEFAULT false NOT NULL,
    cancel_remark text,
    cancelled_by_id uuid
);


--
-- Name: service_bills; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_bills (
    id uuid NOT NULL,
    bill_id uuid,
    patient_id uuid NOT NULL,
    proxy_bill_id uuid,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


--
-- Name: service_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_categories (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL
);


--
-- Name: service_category_module_mapping; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_category_module_mapping (
    id uuid NOT NULL,
    service_category_id uuid NOT NULL,
    module public."ServiceCategoryModule" NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL
);


--
-- Name: service_package_bill_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_package_bill_items (
    id uuid NOT NULL,
    service_package_bill_id uuid NOT NULL,
    service_pacakge_id uuid NOT NULL,
    qty integer,
    price integer NOT NULL,
    discount_percentage integer,
    discount_amount integer,
    foc integer,
    amount integer NOT NULL
);


--
-- Name: service_package_bills; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_package_bills (
    id uuid NOT NULL,
    bill_id uuid,
    patient_id uuid NOT NULL,
    proxy_bill_id uuid,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


--
-- Name: service_package_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_package_items (
    id uuid NOT NULL,
    service_package_id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    service_id uuid NOT NULL
);


--
-- Name: service_package_procedures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_package_procedures (
    id uuid NOT NULL,
    service_package_id uuid NOT NULL,
    procedure_id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


--
-- Name: service_package_room_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_package_room_types (
    id uuid NOT NULL,
    service_package_id uuid NOT NULL,
    room_type_id uuid NOT NULL,
    days integer NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL
);


--
-- Name: service_packages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_packages (
    id uuid NOT NULL,
    name text NOT NULL,
    is_active boolean DEFAULT false NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    service_package_id text NOT NULL,
    price jsonb DEFAULT '{}'::jsonb NOT NULL
);


--
-- Name: service_request_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_request_items (
    id uuid NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "createdById" uuid NOT NULL,
    "updatedById" uuid NOT NULL,
    "serviceRequestId" uuid NOT NULL,
    "serviceId" uuid NOT NULL,
    "priceType" text,
    "doctorId" uuid,
    qty integer NOT NULL,
    remark text,
    "iPDDailyServiceId" uuid,
    price integer DEFAULT 0,
    cancel_remark text,
    cancelled_by_id uuid
);


--
-- Name: service_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_requests (
    id uuid NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "createdById" uuid NOT NULL,
    "updatedById" uuid NOT NULL,
    "admissionId" uuid NOT NULL,
    "roomLogId" uuid,
    "referralDoctorId" uuid,
    module text NOT NULL,
    remark text,
    "requestDate" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "referralType" public."ReferralType" DEFAULT 'REFERRALIN'::public."ReferralType" NOT NULL,
    referral_clinic_id uuid,
    patient_id uuid,
    "ipdEmrId" uuid
);


--
-- Name: service_sub_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.service_sub_categories (
    id uuid NOT NULL,
    service_category_id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL
);


--
-- Name: services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.services (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    name text NOT NULL,
    status public."ServiceStatus" DEFAULT 'ACTIVE'::public."ServiceStatus" NOT NULL,
    include_in_registration boolean DEFAULT false NOT NULL,
    service_id text NOT NULL,
    category_id uuid NOT NULL,
    department_id uuid NOT NULL,
    is_consultation_service boolean DEFAULT false NOT NULL,
    is_map_service boolean DEFAULT false NOT NULL,
    sub_category_id uuid,
    service_price jsonb DEFAULT '{}'::jsonb NOT NULL,
    referred_price jsonb DEFAULT '{}'::jsonb NOT NULL,
    reporting_price jsonb DEFAULT '{}'::jsonb NOT NULL,
    urgent_price jsonb DEFAULT '{}'::jsonb NOT NULL,
    urgent_reporting_price jsonb DEFAULT '{}'::jsonb NOT NULL,
    add_others_for_ct boolean DEFAULT false NOT NULL,
    service_type_meta jsonb DEFAULT '{}'::jsonb NOT NULL
);


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    expires_at timestamp(3) without time zone NOT NULL,
    user_id uuid NOT NULL,
    session_id text NOT NULL,
    store_id uuid,
    last_seen_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: specializations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.specializations (
    id uuid NOT NULL,
    name text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL
);


--
-- Name: speical_lab_tests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.speical_lab_tests (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    special_lab_test_name text NOT NULL,
    lab_unit_id uuid NOT NULL,
    is_map_in_lab_group boolean DEFAULT false NOT NULL
);


--
-- Name: stock_adjustments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_adjustments (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    stock_id uuid NOT NULL,
    qty_before integer NOT NULL,
    qty_after integer NOT NULL,
    adjusted_amount integer NOT NULL,
    remark text NOT NULL,
    status public."StockAdjustmentStatus" DEFAULT 'PENDING'::public."StockAdjustmentStatus" NOT NULL,
    adjustment_type public."StockAdjustmentType" DEFAULT 'INCREASE'::public."StockAdjustmentType" NOT NULL,
    difference_qty integer DEFAULT 0 NOT NULL
);


--
-- Name: stock_damages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_damages (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    damaged_date timestamp(3) without time zone NOT NULL,
    total_damaged_stocks_qty integer NOT NULL,
    total_cost integer NOT NULL,
    status public."StockDamageStatus" DEFAULT 'PENDING'::public."StockDamageStatus" NOT NULL
);


--
-- Name: stock_movements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_movements (
    id uuid NOT NULL,
    date timestamp(3) without time zone NOT NULL,
    stock_id uuid NOT NULL,
    grn_id uuid,
    transfer_id uuid,
    qty integer NOT NULL,
    grn_return_id uuid,
    pharmacy_sale_id uuid,
    sale_return_id uuid,
    stock_adjustment_id uuid,
    stock_damage_id uuid,
    used_item_id uuid,
    qty_type public."StockMovementQtyType",
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_by_id uuid,
    ipd_sale_return_id uuid
);


--
-- Name: stock_request_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_request_items (
    id uuid NOT NULL,
    stock_request_id uuid NOT NULL,
    item_id uuid NOT NULL,
    requested_qty integer NOT NULL,
    current_stock_qty integer,
    target_store_stock_qty integer
);


--
-- Name: stock_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_requests (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    stock_request_id text NOT NULL,
    requested_from_store_id uuid NOT NULL,
    requested_to_store_id uuid NOT NULL,
    transfer_status public."StockRequestTransferStatus",
    approval_status public."StockApprovalStatus" DEFAULT 'PENDING'::public."StockApprovalStatus" NOT NULL,
    approved_by_id uuid,
    rejected_by_id uuid,
    approved_at timestamp(3) without time zone,
    rejected_at timestamp(3) without time zone,
    received_at timestamp(3) without time zone,
    received_by_id uuid
);


--
-- Name: stock_transfer_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_transfer_items (
    id uuid NOT NULL,
    stock_transfer_id uuid NOT NULL,
    item_id uuid NOT NULL,
    stock_id uuid NOT NULL,
    transferred_qty integer NOT NULL,
    requested_qty integer NOT NULL,
    snapshot_stock_qty integer
);


--
-- Name: stock_transfers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_transfers (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    transfer_status public."StockTransferStatus" NOT NULL,
    stock_request_id uuid NOT NULL,
    transferred_at timestamp(3) without time zone,
    rejected_at timestamp(3) without time zone,
    transferred_by_id uuid,
    rejected_by_id uuid
);


--
-- Name: stocks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stocks (
    id uuid NOT NULL,
    qty integer NOT NULL,
    batch_id uuid NOT NULL,
    expired_at timestamp(3) without time zone,
    item_id uuid NOT NULL,
    purchased_price_per_unit numeric(65,30) NOT NULL,
    selling_price integer DEFAULT 0 NOT NULL,
    store_id uuid NOT NULL,
    purchased_date timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    company_batch_no text DEFAULT ''::text NOT NULL,
    "expiryUpdatedStockId" uuid,
    is_foc_item boolean DEFAULT false NOT NULL,
    foc_item_created_by_id uuid,
    foc_item_updated_by_id uuid,
    is_foc_item_delete boolean DEFAULT false NOT NULL,
    foc_item_created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    foc_item_updated_at timestamp(3) without time zone,
    purchased_qty integer,
    item_batch_no text DEFAULT ''::text NOT NULL,
    purchased_price_updated_stock_id uuid,
    old_batch text
);


--
-- Name: store_mappings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.store_mappings (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    user_id uuid NOT NULL,
    store_id uuid NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid
);


--
-- Name: stores; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stores (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    description text,
    created_by_id uuid NOT NULL,
    updated_by_id uuid
);


--
-- Name: supplier_contact_persons; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.supplier_contact_persons (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    "position" text,
    phone_no text NOT NULL,
    email text,
    supplier_id uuid NOT NULL
);


--
-- Name: supplier_payment_infos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.supplier_payment_infos (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    supplier_id uuid NOT NULL,
    account_number text,
    bank_id uuid,
    "paymentMethodId" uuid,
    payment_frequency public."PaymentFrequency"
);


--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.suppliers (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    company_name text NOT NULL,
    phone_no text NOT NULL,
    email text,
    address text,
    status public."SupplierStatus" DEFAULT 'ACTIVE'::public."SupplierStatus" NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    supplier_id text NOT NULL,
    supplier_type public."SupplierType" NOT NULL
);


--
-- Name: test_scripts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.test_scripts (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    test_script_name text NOT NULL
);


--
-- Name: units; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.units (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    name text NOT NULL,
    abbreviation text NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid
);


--
-- Name: used_item_stock; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.used_item_stock (
    id uuid NOT NULL,
    used_item_id uuid NOT NULL,
    stock_id uuid NOT NULL,
    used_item_qty integer NOT NULL,
    remark text
);


--
-- Name: used_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.used_items (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    used_item_date timestamp(3) without time zone NOT NULL,
    total_used_item_qty integer NOT NULL,
    total_cost integer NOT NULL,
    status public."UsedItemStatus" DEFAULT 'PENDING'::public."UsedItemStatus" NOT NULL,
    used_by_id uuid NOT NULL,
    remark text
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid,
    updated_by_id uuid,
    user_id text NOT NULL,
    full_name text NOT NULL,
    employee_id text,
    phone_no text NOT NULL,
    email text,
    job_position text NOT NULL,
    specialization text,
    joining_date timestamp(3) without time zone,
    username text NOT NULL,
    password character varying(255) NOT NULL,
    status public."UserStatus" DEFAULT 'ACTIVE'::public."UserStatus" NOT NULL,
    is_superadmin boolean DEFAULT false NOT NULL,
    role_id uuid NOT NULL,
    department_id uuid
);


--
-- Name: vital_signs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.vital_signs (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid NOT NULL,
    doctor_id uuid,
    remark text,
    systolic_blood_pressure numeric(10,1),
    diastolic_blood_pressure numeric(10,1),
    bp_measured_time public."BPMeasuredTimeEnum",
    weight numeric(10,1),
    height numeric(10,1),
    body_measurement_unit public."BodyMeasurementUnit",
    body_temperature numeric(10,1),
    body_temperature_unit public."BodyTemperatureUnit",
    "spO2" numeric(10,1),
    heart_rate numeric(10,1),
    admission_id uuid NOT NULL,
    room_log_id uuid NOT NULL,
    respiratory_rate numeric(10,1),
    patient_id uuid,
    ipd_emr_id uuid,
    blood_pressure_date_time timestamp(3) without time zone,
    body_temperature_date_time timestamp(3) without time zone,
    sp_o2_date_time timestamp(3) without time zone,
    heart_rate_date_time timestamp(3) without time zone,
    respiratory_rate_date_time timestamp(3) without time zone
);


--
-- Name: ward_room_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ward_room_types (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    ward_id uuid NOT NULL,
    "roomType_id" uuid NOT NULL,
    price integer
);


--
-- Name: wards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wards (
    id uuid NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone NOT NULL,
    created_by_id uuid NOT NULL,
    updated_by_id uuid,
    name text NOT NULL,
    floor_id uuid NOT NULL,
    building_id uuid,
    is_active boolean DEFAULT false NOT NULL
);


--
-- Name: BillType BillType_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."BillType"
    ADD CONSTRAINT "BillType_pkey" PRIMARY KEY (id);


--
-- Name: CathLabRequestAssistantDoctor CathLabRequestAssistantDoctor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CathLabRequestAssistantDoctor"
    ADD CONSTRAINT "CathLabRequestAssistantDoctor_pkey" PRIMARY KEY (id);


--
-- Name: CathLabRequestAssistantNurse CathLabRequestAssistantNurse_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CathLabRequestAssistantNurse"
    ADD CONSTRAINT "CathLabRequestAssistantNurse_pkey" PRIMARY KEY (id);


--
-- Name: CathLabRequestCardiologist CathLabRequestCardiologist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CathLabRequestCardiologist"
    ADD CONSTRAINT "CathLabRequestCardiologist_pkey" PRIMARY KEY (id);


--
-- Name: DoctorService DoctorService_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DoctorService"
    ADD CONSTRAINT "DoctorService_pkey" PRIMARY KEY (id);


--
-- Name: EndoRequestAnesthetist EndoRequestAnesthetist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestAnesthetist"
    ADD CONSTRAINT "EndoRequestAnesthetist_pkey" PRIMARY KEY (id);


--
-- Name: EndoRequestAssistantDoctor EndoRequestAssistantDoctor_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestAssistantDoctor"
    ADD CONSTRAINT "EndoRequestAssistantDoctor_pkey" PRIMARY KEY (id);


--
-- Name: EndoRequestAssistantNurse EndoRequestAssistantNurse_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestAssistantNurse"
    ADD CONSTRAINT "EndoRequestAssistantNurse_pkey" PRIMARY KEY (id);


--
-- Name: EndoRequestSurgeon EndoRequestSurgeon_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestSurgeon"
    ADD CONSTRAINT "EndoRequestSurgeon_pkey" PRIMARY KEY (id);


--
-- Name: GRN GRN_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GRN"
    ADD CONSTRAINT "GRN_pkey" PRIMARY KEY (id);


--
-- Name: OPDBillingPharmacySale OPDBillingPharmacySale_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OPDBillingPharmacySale"
    ADD CONSTRAINT "OPDBillingPharmacySale_pkey" PRIMARY KEY (id);


--
-- Name: OPDEMRImagingModuleJoint OPDEMRImagingModuleJoint_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OPDEMRImagingModuleJoint"
    ADD CONSTRAINT "OPDEMRImagingModuleJoint_pkey" PRIMARY KEY ("opdEmrId", "imagingListId");


--
-- Name: OPDEMRLabModuleJoint OPDEMRLabModuleJoint_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OPDEMRLabModuleJoint"
    ADD CONSTRAINT "OPDEMRLabModuleJoint_pkey" PRIMARY KEY ("opdEmrId", "labPivotId");


--
-- Name: SellingPriceGroup SellingPriceGroup_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SellingPriceGroup"
    ADD CONSTRAINT "SellingPriceGroup_pkey" PRIMARY KEY (id);


--
-- Name: _logs _logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._logs
    ADD CONSTRAINT _logs_pkey PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: activity_logs activity_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.activity_logs
    ADD CONSTRAINT activity_logs_pkey PRIMARY KEY (id);


--
-- Name: admission_deposit_audits admission_deposit_audits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposit_audits
    ADD CONSTRAINT admission_deposit_audits_pkey PRIMARY KEY (id);


--
-- Name: admission_deposit_payments admission_deposit_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposit_payments
    ADD CONSTRAINT admission_deposit_payments_pkey PRIMARY KEY (id);


--
-- Name: admission_deposit_transcation_histories admission_deposit_transcation_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposit_transcation_histories
    ADD CONSTRAINT admission_deposit_transcation_histories_pkey PRIMARY KEY (id);


--
-- Name: admission_deposits admission_deposits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposits
    ADD CONSTRAINT admission_deposits_pkey PRIMARY KEY (id);


--
-- Name: admission_under_care_doctors admission_under_care_doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_under_care_doctors
    ADD CONSTRAINT admission_under_care_doctors_pkey PRIMARY KEY (id);


--
-- Name: admissions admissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admissions
    ADD CONSTRAINT admissions_pkey PRIMARY KEY (id);


--
-- Name: anesthesia_types anesthesia_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.anesthesia_types
    ADD CONSTRAINT anesthesia_types_pkey PRIMARY KEY (id);


--
-- Name: appointment_services appointment_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointment_services
    ADD CONSTRAINT appointment_services_pkey PRIMARY KEY (id);


--
-- Name: appointment_types appointment_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointment_types
    ADD CONSTRAINT appointment_types_pkey PRIMARY KEY (id);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);


--
-- Name: banks banks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_pkey PRIMARY KEY (id);


--
-- Name: batches batches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.batches
    ADD CONSTRAINT batches_pkey PRIMARY KEY (id);


--
-- Name: bill_payments bill_payments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bill_payments
    ADD CONSTRAINT bill_payments_pkey PRIMARY KEY (id);


--
-- Name: bills bills_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_pkey PRIMARY KEY (id);


--
-- Name: booking_list booking_list_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.booking_list
    ADD CONSTRAINT booking_list_pkey PRIMARY KEY (id);


--
-- Name: buildings buildings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT buildings_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: cathlab_audits cathlab_audits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_audits
    ADD CONSTRAINT cathlab_audits_pkey PRIMARY KEY (id);


--
-- Name: cathlab_company_direct_items cathlab_company_direct_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_company_direct_items
    ADD CONSTRAINT cathlab_company_direct_items_pkey PRIMARY KEY (id);


--
-- Name: cathlab_pharmacy_sales cathlab_pharmacy_sales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_pharmacy_sales
    ADD CONSTRAINT cathlab_pharmacy_sales_pkey PRIMARY KEY (id);


--
-- Name: cathlab_procedure_items cathlab_procedure_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_procedure_items
    ADD CONSTRAINT cathlab_procedure_items_pkey PRIMARY KEY (id);


--
-- Name: cathlab_requests cathlab_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_requests
    ADD CONSTRAINT cathlab_requests_pkey PRIMARY KEY (id);


--
-- Name: cathlab_service_items cathlab_service_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_service_items
    ADD CONSTRAINT cathlab_service_items_pkey PRIMARY KEY (id);


--
-- Name: cathlabs cathlabs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlabs
    ADD CONSTRAINT cathlabs_pkey PRIMARY KEY (id);


--
-- Name: clinics clinics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics
    ADD CONSTRAINT clinics_pkey PRIMARY KEY (id);


--
-- Name: custom_room_charges custom_room_charges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.custom_room_charges
    ADD CONSTRAINT custom_room_charges_pkey PRIMARY KEY (id);


--
-- Name: daily_stock_reports daily_stock_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.daily_stock_reports
    ADD CONSTRAINT daily_stock_reports_pkey PRIMARY KEY (id);


--
-- Name: damaged_stocks damaged_stocks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.damaged_stocks
    ADD CONSTRAINT damaged_stocks_pkey PRIMARY KEY (id);


--
-- Name: default_room_charges default_room_charges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.default_room_charges
    ADD CONSTRAINT default_room_charges_pkey PRIMARY KEY (id);


--
-- Name: default_setting default_setting_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.default_setting
    ADD CONSTRAINT default_setting_pkey PRIMARY KEY (id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: deposit_types deposit_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deposit_types
    ADD CONSTRAINT deposit_types_pkey PRIMARY KEY (id);


--
-- Name: discharge_joints discharge_joints_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharge_joints
    ADD CONSTRAINT discharge_joints_pkey PRIMARY KEY (id);


--
-- Name: discharge_summaries discharge_summaries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharge_summaries
    ADD CONSTRAINT discharge_summaries_pkey PRIMARY KEY (id);


--
-- Name: discharges discharges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharges
    ADD CONSTRAINT discharges_pkey PRIMARY KEY (id);


--
-- Name: doctor_notes doctor_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_notes
    ADD CONSTRAINT doctor_notes_pkey PRIMARY KEY (id);


--
-- Name: doctor_schedules doctor_schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_schedules
    ADD CONSTRAINT doctor_schedules_pkey PRIMARY KEY (id);


--
-- Name: doctor_timeslots doctor_timeslots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_timeslots
    ADD CONSTRAINT doctor_timeslots_pkey PRIMARY KEY (id);


--
-- Name: doctors doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (id);


--
-- Name: ed_emr_proxy_bill_joints ed_emr_proxy_bill_joints_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ed_emr_proxy_bill_joints
    ADD CONSTRAINT ed_emr_proxy_bill_joints_pkey PRIMARY KEY (opd_emr_id, proxy_bill_id);


--
-- Name: endo_reports endo_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_reports
    ADD CONSTRAINT endo_reports_pkey PRIMARY KEY (id);


--
-- Name: endo_requests endo_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_pkey PRIMARY KEY (id);


--
-- Name: expiry_updated_stock_activity_logs expiry_updated_stock_activity_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.expiry_updated_stock_activity_logs
    ADD CONSTRAINT expiry_updated_stock_activity_logs_pkey PRIMARY KEY (id);


--
-- Name: expiry_updated_stocks expiry_updated_stocks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.expiry_updated_stocks
    ADD CONSTRAINT expiry_updated_stocks_pkey PRIMARY KEY (id);


--
-- Name: floors floors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.floors
    ADD CONSTRAINT floors_pkey PRIMARY KEY (id);


--
-- Name: foc_item_activity_logs foc_item_activity_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.foc_item_activity_logs
    ADD CONSTRAINT foc_item_activity_logs_pkey PRIMARY KEY (id);


--
-- Name: grn_items grn_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_items
    ADD CONSTRAINT grn_items_pkey PRIMARY KEY (id);


--
-- Name: grn_return_items grn_return_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_return_items
    ADD CONSTRAINT grn_return_items_pkey PRIMARY KEY (id);


--
-- Name: grn_return_types grn_return_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_return_types
    ADD CONSTRAINT grn_return_types_pkey PRIMARY KEY (id);


--
-- Name: grn_returns grn_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_returns
    ADD CONSTRAINT grn_returns_pkey PRIMARY KEY (id);


--
-- Name: hd_requests hd_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hd_requests
    ADD CONSTRAINT hd_requests_pkey PRIMARY KEY (id);


--
-- Name: hospital_info hospital_info_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hospital_info
    ADD CONSTRAINT hospital_info_pkey PRIMARY KEY (id);


--
-- Name: hospital_phone_number hospital_phone_number_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hospital_phone_number
    ADD CONSTRAINT hospital_phone_number_pkey PRIMARY KEY (id);


--
-- Name: imaging_add_on_pharmacy_items imaging_add_on_pharmacy_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_add_on_pharmacy_items
    ADD CONSTRAINT imaging_add_on_pharmacy_items_pkey PRIMARY KEY (id);


--
-- Name: imaging_add_on_procedure_items imaging_add_on_procedure_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_add_on_procedure_items
    ADD CONSTRAINT imaging_add_on_procedure_items_pkey PRIMARY KEY (id);


--
-- Name: imaging_add_on_service_items imaging_add_on_service_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_add_on_service_items
    ADD CONSTRAINT imaging_add_on_service_items_pkey PRIMARY KEY (id);


--
-- Name: imaging_list_new_borns imaging_list_new_borns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_list_new_borns
    ADD CONSTRAINT imaging_list_new_borns_pkey PRIMARY KEY (id);


--
-- Name: imaging_lists imaging_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_lists
    ADD CONSTRAINT imaging_lists_pkey PRIMARY KEY (id);


--
-- Name: imaging_service_add_ons imaging_service_add_ons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_add_ons
    ADD CONSTRAINT imaging_service_add_ons_pkey PRIMARY KEY (id);


--
-- Name: imaging_service_reading_doctors imaging_service_reading_doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_reading_doctors
    ADD CONSTRAINT imaging_service_reading_doctors_pkey PRIMARY KEY (id);


--
-- Name: imaging_service_results imaging_service_results_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_results
    ADD CONSTRAINT imaging_service_results_pkey PRIMARY KEY (id);


--
-- Name: imaging_services imaging_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_services
    ADD CONSTRAINT imaging_services_pkey PRIMARY KEY (id);


--
-- Name: imaging_templates imaging_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_templates
    ADD CONSTRAINT imaging_templates_pkey PRIMARY KEY (id);


--
-- Name: ipd_daily_bill_pharmacy_returns ipd_daily_bill_pharmacy_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_pharmacy_returns
    ADD CONSTRAINT ipd_daily_bill_pharmacy_returns_pkey PRIMARY KEY (id);


--
-- Name: ipd_daily_bill_pharmacy_sales ipd_daily_bill_pharmacy_sales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_pharmacy_sales
    ADD CONSTRAINT ipd_daily_bill_pharmacy_sales_pkey PRIMARY KEY (id);


--
-- Name: ipd_daily_bill_room_charges ipd_daily_bill_room_charges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_room_charges
    ADD CONSTRAINT ipd_daily_bill_room_charges_pkey PRIMARY KEY (id);


--
-- Name: ipd_daily_bill_services ipd_daily_bill_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_services
    ADD CONSTRAINT ipd_daily_bill_services_pkey PRIMARY KEY (id);


--
-- Name: ipd_daily_bills ipd_daily_bills_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bills
    ADD CONSTRAINT ipd_daily_bills_pkey PRIMARY KEY (id);


--
-- Name: ipd_emr_clinical_document_files ipd_emr_clinical_document_files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_clinical_document_files
    ADD CONSTRAINT ipd_emr_clinical_document_files_pkey PRIMARY KEY (id);


--
-- Name: ipd_emr_clinical_document_headers ipd_emr_clinical_document_headers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_clinical_document_headers
    ADD CONSTRAINT ipd_emr_clinical_document_headers_pkey PRIMARY KEY (id);


--
-- Name: ipd_emr_proxy_bill_joints ipd_emr_proxy_bill_joints_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_proxy_bill_joints
    ADD CONSTRAINT ipd_emr_proxy_bill_joints_pkey PRIMARY KEY (ipd_emr_id, proxy_bill_id);


--
-- Name: ipd_emr_request_links ipd_emr_request_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_request_links
    ADD CONSTRAINT ipd_emr_request_links_pkey PRIMARY KEY (id);


--
-- Name: ipd_emrs ipd_emrs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emrs
    ADD CONSTRAINT ipd_emrs_pkey PRIMARY KEY (id);


--
-- Name: ipd_final_bill_payment_methods ipd_final_bill_payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill_payment_methods
    ADD CONSTRAINT ipd_final_bill_payment_methods_pkey PRIMARY KEY (id);


--
-- Name: ipd_final_bill ipd_final_bill_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill
    ADD CONSTRAINT ipd_final_bill_pkey PRIMARY KEY (id);


--
-- Name: ipd_final_bill_with_daily_bill ipd_final_bill_with_daily_bill_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill_with_daily_bill
    ADD CONSTRAINT ipd_final_bill_with_daily_bill_pkey PRIMARY KEY (id);


--
-- Name: ipd_pharmacy_return_items ipd_pharmacy_return_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_pharmacy_return_items
    ADD CONSTRAINT ipd_pharmacy_return_items_pkey PRIMARY KEY (id);


--
-- Name: ipd_pharmacy_returns ipd_pharmacy_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_pharmacy_returns
    ADD CONSTRAINT ipd_pharmacy_returns_pkey PRIMARY KEY (id);


--
-- Name: ipd_ward_pharmacy_sales ipd_ward_pharmacy_sales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_pharmacy_sales
    ADD CONSTRAINT ipd_ward_pharmacy_sales_pkey PRIMARY KEY (id);


--
-- Name: ipd_ward_service_procedures ipd_ward_service_procedures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_service_procedures
    ADD CONSTRAINT ipd_ward_service_procedures_pkey PRIMARY KEY (id);


--
-- Name: ipd_ward_service_service_items ipd_ward_service_service_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_service_service_items
    ADD CONSTRAINT ipd_ward_service_service_items_pkey PRIMARY KEY (id);


--
-- Name: ipd_ward_services ipd_ward_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_services
    ADD CONSTRAINT ipd_ward_services_pkey PRIMARY KEY (id);


--
-- Name: ipdot_requests ipdot_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipdot_requests
    ADD CONSTRAINT ipdot_requests_pkey PRIMARY KEY (id);


--
-- Name: item_manual_prices item_manual_prices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.item_manual_prices
    ADD CONSTRAINT item_manual_prices_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: lab_collection_methods lab_collection_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_collection_methods
    ADD CONSTRAINT lab_collection_methods_pkey PRIMARY KEY (id);


--
-- Name: lab_groups lab_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_groups
    ADD CONSTRAINT lab_groups_pkey PRIMARY KEY (id);


--
-- Name: lab_pivot_new_borns lab_pivot_new_borns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_pivot_new_borns
    ADD CONSTRAINT lab_pivot_new_borns_pkey PRIMARY KEY (id);


--
-- Name: lab_pivots lab_pivots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_pivots
    ADD CONSTRAINT lab_pivots_pkey PRIMARY KEY (id);


--
-- Name: lab_result_items lab_result_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_result_items
    ADD CONSTRAINT lab_result_items_pkey PRIMARY KEY (id);


--
-- Name: lab_results lab_results_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_results
    ADD CONSTRAINT lab_results_pkey PRIMARY KEY (id);


--
-- Name: lab_samples lab_samples_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_samples
    ADD CONSTRAINT lab_samples_pkey PRIMARY KEY (id);


--
-- Name: lab_service_audits lab_service_audits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_audits
    ADD CONSTRAINT lab_service_audits_pkey PRIMARY KEY (id);


--
-- Name: lab_service_items lab_service_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT lab_service_items_pkey PRIMARY KEY (id);


--
-- Name: lab_services lab_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_pkey PRIMARY KEY (id);


--
-- Name: lab_statuses lab_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_statuses
    ADD CONSTRAINT lab_statuses_pkey PRIMARY KEY (id);


--
-- Name: lab_template_categories_audit lab_template_categories_audit_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_categories_audit
    ADD CONSTRAINT lab_template_categories_audit_pkey PRIMARY KEY (id);


--
-- Name: lab_template_categories lab_template_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_categories
    ADD CONSTRAINT lab_template_categories_pkey PRIMARY KEY (id);


--
-- Name: lab_template_items lab_template_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_items
    ADD CONSTRAINT lab_template_items_pkey PRIMARY KEY (id);


--
-- Name: lab_template_microbiology_items lab_template_microbiology_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_microbiology_items
    ADD CONSTRAINT lab_template_microbiology_items_pkey PRIMARY KEY (id);


--
-- Name: lab_template lab_template_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template
    ADD CONSTRAINT lab_template_pkey PRIMARY KEY (id);


--
-- Name: lab_tests lab_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_tests
    ADD CONSTRAINT lab_tests_pkey PRIMARY KEY (id);


--
-- Name: lab_units lab_units_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_units
    ADD CONSTRAINT lab_units_pkey PRIMARY KEY (id);


--
-- Name: main_procedures main_procedures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_procedures
    ADD CONSTRAINT main_procedures_pkey PRIMARY KEY (id);


--
-- Name: member_card member_card_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card
    ADD CONSTRAINT member_card_pkey PRIMARY KEY (id);


--
-- Name: member_card_type member_card_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card_type
    ADD CONSTRAINT member_card_type_pkey PRIMARY KEY (id);


--
-- Name: member_card_type_service_packages member_card_type_service_packages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card_type_service_packages
    ADD CONSTRAINT member_card_type_service_packages_pkey PRIMARY KEY (id);


--
-- Name: member_card_type_services member_card_type_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card_type_services
    ADD CONSTRAINT member_card_type_services_pkey PRIMARY KEY (id);


--
-- Name: member_list member_list_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_list
    ADD CONSTRAINT member_list_pkey PRIMARY KEY (id);


--
-- Name: new_born_babies new_born_babies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.new_born_babies
    ADD CONSTRAINT new_born_babies_pkey PRIMARY KEY (id);


--
-- Name: new_born_baby_under_care_doctors new_born_baby_under_care_doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.new_born_baby_under_care_doctors
    ADD CONSTRAINT new_born_baby_under_care_doctors_pkey PRIMARY KEY (id);


--
-- Name: nurse_notes nurse_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nurse_notes
    ADD CONSTRAINT nurse_notes_pkey PRIMARY KEY (id);


--
-- Name: opd_billing_activity_logs opd_billing_activity_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_activity_logs
    ADD CONSTRAINT opd_billing_activity_logs_pkey PRIMARY KEY (id);


--
-- Name: opd_billing_imaging_add_on_pharmacy_items opd_billing_imaging_add_on_pharmacy_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_imaging_add_on_pharmacy_items
    ADD CONSTRAINT opd_billing_imaging_add_on_pharmacy_items_pkey PRIMARY KEY (id);


--
-- Name: opd_billing_payment_methods opd_billing_payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_payment_methods
    ADD CONSTRAINT opd_billing_payment_methods_pkey PRIMARY KEY (id);


--
-- Name: opd_billing_pharmacy_sale_items opd_billing_pharmacy_sale_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_pharmacy_sale_items
    ADD CONSTRAINT opd_billing_pharmacy_sale_items_pkey PRIMARY KEY (id);


--
-- Name: opd_billing_procedures opd_billing_procedures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_procedures
    ADD CONSTRAINT opd_billing_procedures_pkey PRIMARY KEY (id);


--
-- Name: opd_billing_service_packages opd_billing_service_packages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_service_packages
    ADD CONSTRAINT opd_billing_service_packages_pkey PRIMARY KEY (id);


--
-- Name: opd_billing_services opd_billing_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_services
    ADD CONSTRAINT opd_billing_services_pkey PRIMARY KEY (id);


--
-- Name: opd_billings opd_billings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_clinical_document_files opd_emr_clinical_document_files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_clinical_document_files
    ADD CONSTRAINT opd_emr_clinical_document_files_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_clinical_document_headers opd_emr_clinical_document_headers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_clinical_document_headers
    ADD CONSTRAINT opd_emr_clinical_document_headers_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_doctor_notes opd_emr_doctor_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_doctor_notes
    ADD CONSTRAINT opd_emr_doctor_notes_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_nurse_notes opd_emr_nurse_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_nurse_notes
    ADD CONSTRAINT opd_emr_nurse_notes_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_pharmacy_request_items opd_emr_pharmacy_request_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_request_items
    ADD CONSTRAINT opd_emr_pharmacy_request_items_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_pharmacy_requests opd_emr_pharmacy_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_requests
    ADD CONSTRAINT opd_emr_pharmacy_requests_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_pharmacy_transfer_items opd_emr_pharmacy_transfer_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_transfer_items
    ADD CONSTRAINT opd_emr_pharmacy_transfer_items_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_pharmacy_transfers opd_emr_pharmacy_transfers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_transfers
    ADD CONSTRAINT opd_emr_pharmacy_transfers_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_service_request_items opd_emr_service_request_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_request_items
    ADD CONSTRAINT opd_emr_service_request_items_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_service_requests opd_emr_service_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_requests
    ADD CONSTRAINT opd_emr_service_requests_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_services opd_emr_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_services
    ADD CONSTRAINT opd_emr_services_pkey PRIMARY KEY (id);


--
-- Name: opd_emr_vital_signs opd_emr_vital_signs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_vital_signs
    ADD CONSTRAINT opd_emr_vital_signs_pkey PRIMARY KEY (id);


--
-- Name: opd_emrs opd_emrs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emrs
    ADD CONSTRAINT opd_emrs_pkey PRIMARY KEY (id);


--
-- Name: opd_package_bill_activity_logs opd_package_bill_activity_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bill_activity_logs
    ADD CONSTRAINT opd_package_bill_activity_logs_pkey PRIMARY KEY (id);


--
-- Name: opd_package_bill_items opd_package_bill_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bill_items
    ADD CONSTRAINT opd_package_bill_items_pkey PRIMARY KEY (id);


--
-- Name: opd_package_bill_payment_methods opd_package_bill_payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bill_payment_methods
    ADD CONSTRAINT opd_package_bill_payment_methods_pkey PRIMARY KEY (id);


--
-- Name: opd_package_bills opd_package_bills_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bills
    ADD CONSTRAINT opd_package_bills_pkey PRIMARY KEY (id);


--
-- Name: opd_refund_bill_pharmacy_items opd_refund_bill_pharmacy_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_pharmacy_items
    ADD CONSTRAINT opd_refund_bill_pharmacy_items_pkey PRIMARY KEY (id);


--
-- Name: opd_refund_bill_procedure_items opd_refund_bill_procedure_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_procedure_items
    ADD CONSTRAINT opd_refund_bill_procedure_items_pkey PRIMARY KEY (id);


--
-- Name: opd_refund_bill_service_items opd_refund_bill_service_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_service_items
    ADD CONSTRAINT opd_refund_bill_service_items_pkey PRIMARY KEY (id);


--
-- Name: opd_refund_bills opd_refund_bills_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bills
    ADD CONSTRAINT opd_refund_bills_pkey PRIMARY KEY (id);


--
-- Name: opd_service_referrals opd_service_referrals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_service_referrals
    ADD CONSTRAINT opd_service_referrals_pkey PRIMARY KEY (id);


--
-- Name: opdot_requests opdot_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opdot_requests
    ADD CONSTRAINT opdot_requests_pkey PRIMARY KEY (id);


--
-- Name: operation_types operation_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation_types
    ADD CONSTRAINT operation_types_pkey PRIMARY KEY (id);


--
-- Name: ot_requests ot_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_pkey PRIMARY KEY (id);


--
-- Name: patient_member_card_service_package_usages patient_member_card_service_package_usages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_service_package_usages
    ADD CONSTRAINT patient_member_card_service_package_usages_pkey PRIMARY KEY (id);


--
-- Name: patient_member_card_service_usages patient_member_card_service_usages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_service_usages
    ADD CONSTRAINT patient_member_card_service_usages_pkey PRIMARY KEY (id);


--
-- Name: patient_member_card_type_room_charge_usages patient_member_card_type_room_charge_usages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_type_room_charge_usages
    ADD CONSTRAINT patient_member_card_type_room_charge_usages_pkey PRIMARY KEY (id);


--
-- Name: patient_services patient_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_services
    ADD CONSTRAINT patient_services_pkey PRIMARY KEY (id);


--
-- Name: patients patients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (id);


--
-- Name: payment_methods payment_methods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: pharmacy_request_items pharmacy_request_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_request_items
    ADD CONSTRAINT pharmacy_request_items_pkey PRIMARY KEY (id);


--
-- Name: pharmacy_requests pharmacy_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_pkey PRIMARY KEY (id);


--
-- Name: pharmacy_sale_items pharmacy_sale_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sale_items
    ADD CONSTRAINT pharmacy_sale_items_pkey PRIMARY KEY (id);


--
-- Name: pharmacy_sales pharmacy_sales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sales
    ADD CONSTRAINT pharmacy_sales_pkey PRIMARY KEY (id);


--
-- Name: pharmacy_transfer_items pharmacy_transfer_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_transfer_items
    ADD CONSTRAINT pharmacy_transfer_items_pkey PRIMARY KEY (id);


--
-- Name: pharmacy_transfers pharmacy_transfers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_transfers
    ADD CONSTRAINT pharmacy_transfers_pkey PRIMARY KEY (id);


--
-- Name: prescription_items prescription_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescription_items
    ADD CONSTRAINT prescription_items_pkey PRIMARY KEY (id);


--
-- Name: prescriptions prescriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_pkey PRIMARY KEY (id);


--
-- Name: procedure_bill_items procedure_bill_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedure_bill_items
    ADD CONSTRAINT procedure_bill_items_pkey PRIMARY KEY (id);


--
-- Name: procedure_bills procedure_bills_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedure_bills
    ADD CONSTRAINT procedure_bills_pkey PRIMARY KEY (id);


--
-- Name: procedures procedures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedures
    ADD CONSTRAINT procedures_pkey PRIMARY KEY (id);


--
-- Name: proxy_bill_request_links proxy_bill_request_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bill_request_links
    ADD CONSTRAINT proxy_bill_request_links_pkey PRIMARY KEY (id);


--
-- Name: proxy_bills proxy_bills_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bills
    ADD CONSTRAINT proxy_bills_pkey PRIMARY KEY (id);


--
-- Name: proxy_main_procedures proxy_main_procedures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_main_procedures
    ADD CONSTRAINT proxy_main_procedures_pkey PRIMARY KEY (id);


--
-- Name: proxy_pharmacy_cancel_items proxy_pharmacy_cancel_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_pharmacy_cancel_items
    ADD CONSTRAINT proxy_pharmacy_cancel_items_pkey PRIMARY KEY (id);


--
-- Name: purchase_order_items purchase_order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_order_items
    ADD CONSTRAINT purchase_order_items_pkey PRIMARY KEY (id);


--
-- Name: purchase_orders purchase_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_pkey PRIMARY KEY (id);


--
-- Name: purchase_request_items purchase_request_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_request_items
    ADD CONSTRAINT purchase_request_items_pkey PRIMARY KEY (id);


--
-- Name: purchase_requests purchase_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_requests
    ADD CONSTRAINT purchase_requests_pkey PRIMARY KEY (id);


--
-- Name: purchased_price_updated_stock_activity_logs purchased_price_updated_stock_activity_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchased_price_updated_stock_activity_logs
    ADD CONSTRAINT purchased_price_updated_stock_activity_logs_pkey PRIMARY KEY (id);


--
-- Name: purchased_price_updated_stocks purchased_price_updated_stocks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchased_price_updated_stocks
    ADD CONSTRAINT purchased_price_updated_stocks_pkey PRIMARY KEY (id);


--
-- Name: referrals referrals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: room_logs room_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_logs
    ADD CONSTRAINT room_logs_pkey PRIMARY KEY (id);


--
-- Name: room_types room_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_types
    ADD CONSTRAINT room_types_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: sale_return_items sale_return_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sale_return_items
    ADD CONSTRAINT sale_return_items_pkey PRIMARY KEY (id);


--
-- Name: sale_returns sale_returns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sale_returns
    ADD CONSTRAINT sale_returns_pkey PRIMARY KEY (id);


--
-- Name: selling_price_change_histories selling_price_change_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.selling_price_change_histories
    ADD CONSTRAINT selling_price_change_histories_pkey PRIMARY KEY (id);


--
-- Name: service_bill_items service_bill_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_bill_items
    ADD CONSTRAINT service_bill_items_pkey PRIMARY KEY (id);


--
-- Name: service_bills service_bills_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_bills
    ADD CONSTRAINT service_bills_pkey PRIMARY KEY (id);


--
-- Name: service_categories service_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_categories
    ADD CONSTRAINT service_categories_pkey PRIMARY KEY (id);


--
-- Name: service_category_module_mapping service_category_module_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_category_module_mapping
    ADD CONSTRAINT service_category_module_mapping_pkey PRIMARY KEY (id);


--
-- Name: service_package_bill_items service_package_bill_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_bill_items
    ADD CONSTRAINT service_package_bill_items_pkey PRIMARY KEY (id);


--
-- Name: service_package_bills service_package_bills_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_bills
    ADD CONSTRAINT service_package_bills_pkey PRIMARY KEY (id);


--
-- Name: service_package_items service_package_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_items
    ADD CONSTRAINT service_package_items_pkey PRIMARY KEY (id);


--
-- Name: service_package_procedures service_package_procedures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_procedures
    ADD CONSTRAINT service_package_procedures_pkey PRIMARY KEY (id);


--
-- Name: service_package_room_types service_package_room_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_room_types
    ADD CONSTRAINT service_package_room_types_pkey PRIMARY KEY (id);


--
-- Name: service_packages service_packages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_packages
    ADD CONSTRAINT service_packages_pkey PRIMARY KEY (id);


--
-- Name: service_request_items service_request_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_request_items
    ADD CONSTRAINT service_request_items_pkey PRIMARY KEY (id);


--
-- Name: service_requests service_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_requests
    ADD CONSTRAINT service_requests_pkey PRIMARY KEY (id);


--
-- Name: service_sub_categories service_sub_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_sub_categories
    ADD CONSTRAINT service_sub_categories_pkey PRIMARY KEY (id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: specializations specializations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.specializations
    ADD CONSTRAINT specializations_pkey PRIMARY KEY (id);


--
-- Name: speical_lab_tests speical_lab_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.speical_lab_tests
    ADD CONSTRAINT speical_lab_tests_pkey PRIMARY KEY (id);


--
-- Name: stock_adjustments stock_adjustments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_adjustments
    ADD CONSTRAINT stock_adjustments_pkey PRIMARY KEY (id);


--
-- Name: stock_damages stock_damages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_damages
    ADD CONSTRAINT stock_damages_pkey PRIMARY KEY (id);


--
-- Name: stock_movements stock_movements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_pkey PRIMARY KEY (id);


--
-- Name: stock_request_items stock_request_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_request_items
    ADD CONSTRAINT stock_request_items_pkey PRIMARY KEY (id);


--
-- Name: stock_requests stock_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_requests
    ADD CONSTRAINT stock_requests_pkey PRIMARY KEY (id);


--
-- Name: stock_transfer_items stock_transfer_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_transfer_items
    ADD CONSTRAINT stock_transfer_items_pkey PRIMARY KEY (id);


--
-- Name: stock_transfers stock_transfers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_transfers
    ADD CONSTRAINT stock_transfers_pkey PRIMARY KEY (id);


--
-- Name: stocks stocks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_pkey PRIMARY KEY (id);


--
-- Name: store_mappings store_mappings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.store_mappings
    ADD CONSTRAINT store_mappings_pkey PRIMARY KEY (id);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- Name: supplier_contact_persons supplier_contact_persons_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supplier_contact_persons
    ADD CONSTRAINT supplier_contact_persons_pkey PRIMARY KEY (id);


--
-- Name: supplier_payment_infos supplier_payment_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supplier_payment_infos
    ADD CONSTRAINT supplier_payment_infos_pkey PRIMARY KEY (id);


--
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- Name: test_scripts test_scripts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_scripts
    ADD CONSTRAINT test_scripts_pkey PRIMARY KEY (id);


--
-- Name: units units_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);


--
-- Name: used_item_stock used_item_stock_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.used_item_stock
    ADD CONSTRAINT used_item_stock_pkey PRIMARY KEY (id);


--
-- Name: used_items used_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.used_items
    ADD CONSTRAINT used_items_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: vital_signs vital_signs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vital_signs
    ADD CONSTRAINT vital_signs_pkey PRIMARY KEY (id);


--
-- Name: ward_room_types ward_room_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ward_room_types
    ADD CONSTRAINT ward_room_types_pkey PRIMARY KEY (id);


--
-- Name: wards wards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wards
    ADD CONSTRAINT wards_pkey PRIMARY KEY (id);


--
-- Name: GRN_grn_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "GRN_grn_id_key" ON public."GRN" USING btree (grn_id);


--
-- Name: GRN_purchase_order_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "GRN_purchase_order_id_key" ON public."GRN" USING btree (purchase_order_id);


--
-- Name: OPDBillingPharmacySale_pharmacy_sale_id_opd_billing_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "OPDBillingPharmacySale_pharmacy_sale_id_opd_billing_id_key" ON public."OPDBillingPharmacySale" USING btree (pharmacy_sale_id, opd_billing_id);


--
-- Name: SellingPriceGroup_group_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "SellingPriceGroup_group_id_key" ON public."SellingPriceGroup" USING btree (group_id);


--
-- Name: SellingPriceGroup_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "SellingPriceGroup_name_key" ON public."SellingPriceGroup" USING btree (name);


--
-- Name: activity_logs_action_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX activity_logs_action_idx ON public.activity_logs USING btree (action);


--
-- Name: activity_logs_entity_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX activity_logs_entity_idx ON public.activity_logs USING btree (entity);


--
-- Name: activity_logs_user_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX activity_logs_user_id_idx ON public.activity_logs USING btree (user_id);


--
-- Name: admission_deposits_deposit_invoice_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX admission_deposits_deposit_invoice_no_key ON public.admission_deposits USING btree (deposit_invoice_no);


--
-- Name: admission_under_care_doctors_admission_id_doctor_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX admission_under_care_doctors_admission_id_doctor_id_key ON public.admission_under_care_doctors USING btree (admission_id, doctor_id);


--
-- Name: admissions_admission_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX admissions_admission_id_key ON public.admissions USING btree (admission_id);


--
-- Name: anesthesia_types_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX anesthesia_types_name_key ON public.anesthesia_types USING btree (name);


--
-- Name: banks_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX banks_name_key ON public.banks USING btree (name);


--
-- Name: batches_batch_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX batches_batch_no_key ON public.batches USING btree (batch_no);


--
-- Name: batches_grn_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX batches_grn_id_key ON public.batches USING btree (grn_id);


--
-- Name: bills_invoice_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX bills_invoice_no_key ON public.bills USING btree (invoice_no);


--
-- Name: buildings_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX buildings_name_key ON public.buildings USING btree (name);


--
-- Name: cathlab_requests_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cathlab_requests_request_id_key ON public.cathlab_requests USING btree (request_id);


--
-- Name: clinics_clinic_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX clinics_clinic_id_key ON public.clinics USING btree (clinic_id);


--
-- Name: clinics_email_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX clinics_email_key ON public.clinics USING btree (email);


--
-- Name: clinics_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX clinics_name_key ON public.clinics USING btree (name);


--
-- Name: daily_stock_reports_date_item_id_store_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX daily_stock_reports_date_item_id_store_id_key ON public.daily_stock_reports USING btree (date, item_id, store_id);


--
-- Name: default_setting_store_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX default_setting_store_id_key ON public.default_setting USING btree (store_id);


--
-- Name: departments_department_code_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX departments_department_code_key ON public.departments USING btree (department_code);


--
-- Name: departments_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX departments_name_key ON public.departments USING btree (name);


--
-- Name: deposit_types_name_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX deposit_types_name_idx ON public.deposit_types USING btree (name);


--
-- Name: deposit_types_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX deposit_types_name_key ON public.deposit_types USING btree (name);


--
-- Name: discharge_summaries_presription_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX discharge_summaries_presription_id_key ON public.discharge_summaries USING btree (presription_id);


--
-- Name: discharges_admission_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX discharges_admission_id_key ON public.discharges USING btree (admission_id);


--
-- Name: doctors_doctor_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX doctors_doctor_id_key ON public.doctors USING btree (doctor_id);


--
-- Name: doctors_medicalLicenseNumber_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "doctors_medicalLicenseNumber_key" ON public.doctors USING btree ("medicalLicenseNumber");


--
-- Name: doctors_user_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX doctors_user_id_key ON public.doctors USING btree (user_id);


--
-- Name: endo_reports_proxy_bill_request_link_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX endo_reports_proxy_bill_request_link_id_key ON public.endo_reports USING btree (proxy_bill_request_link_id);


--
-- Name: endo_requests_appointment_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX endo_requests_appointment_id_key ON public.endo_requests USING btree (appointment_id);


--
-- Name: endo_requests_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX endo_requests_request_id_key ON public.endo_requests USING btree (request_id);


--
-- Name: expiry_updated_stock_activity_logs_expiry_updated_stock_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX expiry_updated_stock_activity_logs_expiry_updated_stock_id_idx ON public.expiry_updated_stock_activity_logs USING btree (expiry_updated_stock_id);


--
-- Name: expiry_updated_stock_activity_logs_user_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX expiry_updated_stock_activity_logs_user_id_idx ON public.expiry_updated_stock_activity_logs USING btree (user_id);


--
-- Name: floors_name_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX floors_name_idx ON public.floors USING btree (name);


--
-- Name: foc_item_activity_logs_stock_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX foc_item_activity_logs_stock_id_idx ON public.foc_item_activity_logs USING btree (stock_id);


--
-- Name: foc_item_activity_logs_user_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX foc_item_activity_logs_user_id_idx ON public.foc_item_activity_logs USING btree (user_id);


--
-- Name: grn_return_types_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX grn_return_types_name_key ON public.grn_return_types USING btree (name);


--
-- Name: grn_returns_grn_return_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX grn_returns_grn_return_id_key ON public.grn_returns USING btree (grn_return_id);


--
-- Name: hd_requests_appointment_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX hd_requests_appointment_id_key ON public.hd_requests USING btree (appointment_id);


--
-- Name: hd_requests_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX hd_requests_request_id_key ON public.hd_requests USING btree (request_id);


--
-- Name: hospital_info_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX hospital_info_name_key ON public.hospital_info USING btree (name);


--
-- Name: imaging_add_on_service_items_ipd_daily_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX imaging_add_on_service_items_ipd_daily_service_id_key ON public.imaging_add_on_service_items USING btree (ipd_daily_service_id);


--
-- Name: imaging_list_new_borns_imaging_list_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX imaging_list_new_borns_imaging_list_id_key ON public.imaging_list_new_borns USING btree (imaging_list_id);


--
-- Name: imaging_list_new_borns_new_born_baby_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX imaging_list_new_borns_new_born_baby_id_idx ON public.imaging_list_new_borns USING btree (new_born_baby_id);


--
-- Name: imaging_lists_opd_billing_id_type_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX imaging_lists_opd_billing_id_type_key ON public.imaging_lists USING btree (opd_billing_id, type);


--
-- Name: imaging_service_add_ons_imaging_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX imaging_service_add_ons_imaging_service_id_key ON public.imaging_service_add_ons USING btree (imaging_service_id);


--
-- Name: imaging_service_add_ons_ipd_ward_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX imaging_service_add_ons_ipd_ward_service_id_key ON public.imaging_service_add_ons USING btree (ipd_ward_service_id);


--
-- Name: imaging_service_add_ons_pharmacy_sale_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX imaging_service_add_ons_pharmacy_sale_id_key ON public.imaging_service_add_ons USING btree (pharmacy_sale_id);


--
-- Name: imaging_service_reading_doctors_doctor_id_imaging_service_r_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX imaging_service_reading_doctors_doctor_id_imaging_service_r_key ON public.imaging_service_reading_doctors USING btree (doctor_id, imaging_service_result_id);


--
-- Name: imaging_service_results_imaging_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX imaging_service_results_imaging_service_id_key ON public.imaging_service_results USING btree (imaging_service_id);


--
-- Name: imaging_services_ipd_daily_bill_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX imaging_services_ipd_daily_bill_service_id_key ON public.imaging_services USING btree (ipd_daily_bill_service_id);


--
-- Name: imaging_services_opd_billing_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX imaging_services_opd_billing_service_id_key ON public.imaging_services USING btree (opd_billing_service_id);


--
-- Name: ipd_daily_bill_pharmacy_returns_ipdDailyBillId_ipdPharmacyR_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "ipd_daily_bill_pharmacy_returns_ipdDailyBillId_ipdPharmacyR_key" ON public.ipd_daily_bill_pharmacy_returns USING btree ("ipdDailyBillId", "ipdPharmacyReturnId");


--
-- Name: ipd_daily_bill_pharmacy_sales_ipdDailyBillId_pharmacySaleId_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "ipd_daily_bill_pharmacy_sales_ipdDailyBillId_pharmacySaleId_key" ON public.ipd_daily_bill_pharmacy_sales USING btree ("ipdDailyBillId", "pharmacySaleId");


--
-- Name: ipd_daily_bills_invoice_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ipd_daily_bills_invoice_no_key ON public.ipd_daily_bills USING btree (invoice_no);


--
-- Name: ipd_emr_clinical_document_files_clinical_document_header_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ipd_emr_clinical_document_files_clinical_document_header_id_idx ON public.ipd_emr_clinical_document_files USING btree (clinical_document_header_id);


--
-- Name: ipd_emr_clinical_document_headers_ipd_emr_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ipd_emr_clinical_document_headers_ipd_emr_id_idx ON public.ipd_emr_clinical_document_headers USING btree (ipd_emr_id);


--
-- Name: ipd_emr_request_links_cath_lab_request_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ipd_emr_request_links_cath_lab_request_id_idx ON public.ipd_emr_request_links USING btree (cath_lab_request_id);


--
-- Name: ipd_emr_request_links_endo_request_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ipd_emr_request_links_endo_request_id_idx ON public.ipd_emr_request_links USING btree (endo_request_id);


--
-- Name: ipd_emr_request_links_hd_request_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ipd_emr_request_links_hd_request_id_idx ON public.ipd_emr_request_links USING btree (hd_request_id);


--
-- Name: ipd_emr_request_links_ipd_emr_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ipd_emr_request_links_ipd_emr_id_key ON public.ipd_emr_request_links USING btree (ipd_emr_id);


--
-- Name: ipd_emr_request_links_ot_request_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ipd_emr_request_links_ot_request_id_idx ON public.ipd_emr_request_links USING btree (ot_request_id);


--
-- Name: ipd_final_bill_invoice_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ipd_final_bill_invoice_no_key ON public.ipd_final_bill USING btree (invoice_no);


--
-- Name: ipd_final_bill_payment_methods_opd_billing_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ipd_final_bill_payment_methods_opd_billing_id_idx ON public.ipd_final_bill_payment_methods USING btree (opd_billing_id);


--
-- Name: ipd_final_bill_payment_methods_opd_billing_id_payment_metho_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ipd_final_bill_payment_methods_opd_billing_id_payment_metho_key ON public.ipd_final_bill_payment_methods USING btree (opd_billing_id, payment_method_id);


--
-- Name: ipd_final_bill_with_daily_bill_ipd_final_bill_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ipd_final_bill_with_daily_bill_ipd_final_bill_id_idx ON public.ipd_final_bill_with_daily_bill USING btree (ipd_final_bill_id);


--
-- Name: ipd_pharmacy_returns_invoice_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ipd_pharmacy_returns_invoice_no_key ON public.ipd_pharmacy_returns USING btree (invoice_no);


--
-- Name: ipd_ward_pharmacy_sales_ipd_ward_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ipd_ward_pharmacy_sales_ipd_ward_service_id_key ON public.ipd_ward_pharmacy_sales USING btree (ipd_ward_service_id);


--
-- Name: ipd_ward_pharmacy_sales_pharmacy_sale_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ipd_ward_pharmacy_sales_pharmacy_sale_id_key ON public.ipd_ward_pharmacy_sales USING btree (pharmacy_sale_id);


--
-- Name: item_manual_prices_item_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX item_manual_prices_item_id_key ON public.item_manual_prices USING btree (item_id);


--
-- Name: items_item_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX items_item_id_key ON public.items USING btree (item_id);


--
-- Name: items_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX items_name_key ON public.items USING btree (name);


--
-- Name: lab_collection_methods_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX lab_collection_methods_name_key ON public.lab_collection_methods USING btree (name);


--
-- Name: lab_pivot_new_borns_lab_pivot_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX lab_pivot_new_borns_lab_pivot_id_key ON public.lab_pivot_new_borns USING btree (lab_pivot_id);


--
-- Name: lab_pivot_new_borns_new_born_baby_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX lab_pivot_new_borns_new_born_baby_id_idx ON public.lab_pivot_new_borns USING btree (new_born_baby_id);


--
-- Name: lab_samples_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX lab_samples_name_key ON public.lab_samples USING btree (name);


--
-- Name: lab_service_items_labServiceId_specialLabTestId_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "lab_service_items_labServiceId_specialLabTestId_key" ON public.lab_service_items USING btree ("labServiceId", "specialLabTestId");


--
-- Name: lab_services_ipd_daily_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX lab_services_ipd_daily_service_id_key ON public.lab_services USING btree (ipd_daily_service_id);


--
-- Name: lab_statuses_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX lab_statuses_name_key ON public.lab_statuses USING btree (name);


--
-- Name: lab_tests_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX lab_tests_service_id_key ON public.lab_tests USING btree (service_id);


--
-- Name: lab_units_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX lab_units_name_key ON public.lab_units USING btree (name);


--
-- Name: member_card_member_card_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX member_card_member_card_id_key ON public.member_card USING btree (member_card_id);


--
-- Name: member_list_member_card_id_patient_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX member_list_member_card_id_patient_id_key ON public.member_list USING btree (member_card_id, patient_id);


--
-- Name: new_born_babies_mother_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX new_born_babies_mother_id_idx ON public.new_born_babies USING btree (mother_id);


--
-- Name: new_born_babies_patient_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX new_born_babies_patient_id_key ON public.new_born_babies USING btree (patient_id);


--
-- Name: new_born_baby_under_care_doctors_new_born_baby_id_doctor_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX new_born_baby_under_care_doctors_new_born_baby_id_doctor_id_key ON public.new_born_baby_under_care_doctors USING btree (new_born_baby_id, doctor_id);


--
-- Name: opd_billing_activity_logs_action_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_billing_activity_logs_action_idx ON public.opd_billing_activity_logs USING btree (action);


--
-- Name: opd_billing_activity_logs_opd_billing_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_billing_activity_logs_opd_billing_id_idx ON public.opd_billing_activity_logs USING btree (opd_billing_id);


--
-- Name: opd_billing_activity_logs_user_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_billing_activity_logs_user_id_idx ON public.opd_billing_activity_logs USING btree (user_id);


--
-- Name: opd_billing_imaging_add_on_pharmacy_items_add_on_item_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_billing_imaging_add_on_pharmacy_items_add_on_item_id_key ON public.opd_billing_imaging_add_on_pharmacy_items USING btree (add_on_item_id);


--
-- Name: opd_billing_payment_methods_opd_billing_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_billing_payment_methods_opd_billing_id_idx ON public.opd_billing_payment_methods USING btree (opd_billing_id);


--
-- Name: opd_billing_payment_methods_opd_billing_id_payment_method_i_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_billing_payment_methods_opd_billing_id_payment_method_i_key ON public.opd_billing_payment_methods USING btree (opd_billing_id, payment_method_id);


--
-- Name: opd_billing_pharmacy_sale_items_opd_billing_pharmacy_sale_i_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_billing_pharmacy_sale_items_opd_billing_pharmacy_sale_i_idx ON public.opd_billing_pharmacy_sale_items USING btree (opd_billing_pharmacy_sale_id);


--
-- Name: opd_billing_pharmacy_sale_items_opd_billing_pharmacy_sale_i_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_billing_pharmacy_sale_items_opd_billing_pharmacy_sale_i_key ON public.opd_billing_pharmacy_sale_items USING btree (opd_billing_pharmacy_sale_id, pharmacy_sale_item_id);


--
-- Name: opd_billing_pharmacy_sale_items_pharmacy_sale_item_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_billing_pharmacy_sale_items_pharmacy_sale_item_id_idx ON public.opd_billing_pharmacy_sale_items USING btree (pharmacy_sale_item_id);


--
-- Name: opd_billings_invoice_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_billings_invoice_no_key ON public.opd_billings USING btree (invoice_no);


--
-- Name: opd_billings_pharmacy_sale_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_billings_pharmacy_sale_id_key ON public.opd_billings USING btree (pharmacy_sale_id);


--
-- Name: opd_emr_clinical_document_files_clinical_document_header_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_emr_clinical_document_files_clinical_document_header_id_idx ON public.opd_emr_clinical_document_files USING btree (clinical_document_header_id);


--
-- Name: opd_emr_clinical_document_headers_opd_emr_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_emr_clinical_document_headers_opd_emr_id_idx ON public.opd_emr_clinical_document_headers USING btree (opd_emr_id);


--
-- Name: opd_emr_pharmacy_requests_opd_emr_pharmacy_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_emr_pharmacy_requests_opd_emr_pharmacy_request_id_key ON public.opd_emr_pharmacy_requests USING btree (opd_emr_pharmacy_request_id);


--
-- Name: opd_emr_pharmacy_transfers_opd_emr_pharmacy_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_emr_pharmacy_transfers_opd_emr_pharmacy_request_id_key ON public.opd_emr_pharmacy_transfers USING btree (opd_emr_pharmacy_request_id);


--
-- Name: opd_emr_pharmacy_transfers_pharmacy_sale_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_emr_pharmacy_transfers_pharmacy_sale_id_key ON public.opd_emr_pharmacy_transfers USING btree (pharmacy_sale_id);


--
-- Name: opd_emr_service_requests_lab_pivot_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_emr_service_requests_lab_pivot_id_key ON public.opd_emr_service_requests USING btree (lab_pivot_id);


--
-- Name: opd_emr_services_imaging_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_emr_services_imaging_service_id_key ON public.opd_emr_services USING btree (imaging_service_id);


--
-- Name: opd_emr_services_lab_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_emr_services_lab_service_id_key ON public.opd_emr_services USING btree (lab_service_id);


--
-- Name: opd_package_bill_activity_logs_action_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_package_bill_activity_logs_action_idx ON public.opd_package_bill_activity_logs USING btree (action);


--
-- Name: opd_package_bill_activity_logs_opd_package_bill_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_package_bill_activity_logs_opd_package_bill_id_idx ON public.opd_package_bill_activity_logs USING btree (opd_package_bill_id);


--
-- Name: opd_package_bill_activity_logs_user_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_package_bill_activity_logs_user_id_idx ON public.opd_package_bill_activity_logs USING btree (user_id);


--
-- Name: opd_package_bill_payment_methods_opd_package_bill_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_package_bill_payment_methods_opd_package_bill_id_idx ON public.opd_package_bill_payment_methods USING btree (opd_package_bill_id);


--
-- Name: opd_package_bill_payment_methods_opd_package_bill_id_paymen_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_package_bill_payment_methods_opd_package_bill_id_paymen_key ON public.opd_package_bill_payment_methods USING btree (opd_package_bill_id, payment_method_id);


--
-- Name: opd_package_bills_invoice_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_package_bills_invoice_no_key ON public.opd_package_bills USING btree (invoice_no);


--
-- Name: opd_refund_bill_pharmacy_items_item_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_refund_bill_pharmacy_items_item_id_idx ON public.opd_refund_bill_pharmacy_items USING btree (item_id);


--
-- Name: opd_refund_bill_pharmacy_items_opd_refund_bill_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_refund_bill_pharmacy_items_opd_refund_bill_id_idx ON public.opd_refund_bill_pharmacy_items USING btree (opd_refund_bill_id);


--
-- Name: opd_refund_bill_pharmacy_items_stock_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_refund_bill_pharmacy_items_stock_id_idx ON public.opd_refund_bill_pharmacy_items USING btree (stock_id);


--
-- Name: opd_refund_bill_procedure_items_opd_refund_bill_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_refund_bill_procedure_items_opd_refund_bill_id_idx ON public.opd_refund_bill_procedure_items USING btree (opd_refund_bill_id);


--
-- Name: opd_refund_bill_procedure_items_procedure_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_refund_bill_procedure_items_procedure_id_idx ON public.opd_refund_bill_procedure_items USING btree (procedure_id);


--
-- Name: opd_refund_bill_service_items_opd_refund_bill_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_refund_bill_service_items_opd_refund_bill_id_idx ON public.opd_refund_bill_service_items USING btree (opd_refund_bill_id);


--
-- Name: opd_refund_bill_service_items_serviceId_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "opd_refund_bill_service_items_serviceId_idx" ON public.opd_refund_bill_service_items USING btree ("serviceId");


--
-- Name: opd_refund_bills_opd_billing_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_refund_bills_opd_billing_id_idx ON public.opd_refund_bills USING btree (opd_billing_id);


--
-- Name: opd_refund_bills_refund_bill_invoice_no_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX opd_refund_bills_refund_bill_invoice_no_idx ON public.opd_refund_bills USING btree (refund_bill_invoice_no);


--
-- Name: opd_refund_bills_refund_bill_invoice_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_refund_bills_refund_bill_invoice_no_key ON public.opd_refund_bills USING btree (refund_bill_invoice_no);


--
-- Name: opd_service_referrals_opd_billing_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opd_service_referrals_opd_billing_service_id_key ON public.opd_service_referrals USING btree (opd_billing_service_id);


--
-- Name: opdot_requests_appointment_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX opdot_requests_appointment_id_key ON public.opdot_requests USING btree (appointment_id);


--
-- Name: operation_types_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX operation_types_name_key ON public.operation_types USING btree (name);


--
-- Name: ot_requests_ipd_ot_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ot_requests_ipd_ot_request_id_key ON public.ot_requests USING btree (ipd_ot_request_id);


--
-- Name: ot_requests_opd_ot_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ot_requests_opd_ot_request_id_key ON public.ot_requests USING btree (opd_ot_request_id);


--
-- Name: ot_requests_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX ot_requests_request_id_key ON public.ot_requests USING btree (request_id);


--
-- Name: patient_member_card_service_usages_patient_id_member_card_t_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX patient_member_card_service_usages_patient_id_member_card_t_key ON public.patient_member_card_service_usages USING btree (patient_id, member_card_type_service_id);


--
-- Name: patient_member_card_type_room_charge_usages_patient_id_memb_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX patient_member_card_type_room_charge_usages_patient_id_memb_key ON public.patient_member_card_type_room_charge_usages USING btree (patient_id, member_card_type_id);


--
-- Name: patients_email_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX patients_email_key ON public.patients USING btree (email);


--
-- Name: patients_patient_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX patients_patient_id_key ON public.patients USING btree (patient_id);


--
-- Name: payment_methods_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX payment_methods_name_key ON public.payment_methods USING btree (name);


--
-- Name: pharmacy_requests_pharmacy_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pharmacy_requests_pharmacy_request_id_key ON public.pharmacy_requests USING btree (pharmacy_request_id);


--
-- Name: pharmacy_sales_invoice_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pharmacy_sales_invoice_no_key ON public.pharmacy_sales USING btree (invoice_no);


--
-- Name: pharmacy_sales_proxy_bill_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pharmacy_sales_proxy_bill_id_key ON public.pharmacy_sales USING btree (proxy_bill_id);


--
-- Name: pharmacy_transfers_pharmacy_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pharmacy_transfers_pharmacy_request_id_key ON public.pharmacy_transfers USING btree (pharmacy_request_id);


--
-- Name: pharmacy_transfers_pharmacy_sale_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX pharmacy_transfers_pharmacy_sale_id_key ON public.pharmacy_transfers USING btree (pharmacy_sale_id);


--
-- Name: procedure_bills_proxy_bill_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX procedure_bills_proxy_bill_id_key ON public.procedure_bills USING btree (proxy_bill_id);


--
-- Name: procedures_name_department_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX procedures_name_department_id_key ON public.procedures USING btree (name, department_id);


--
-- Name: procedures_procedure_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX procedures_procedure_id_key ON public.procedures USING btree (procedure_id);


--
-- Name: proxy_bill_request_links_cath_lab_request_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proxy_bill_request_links_cath_lab_request_id_idx ON public.proxy_bill_request_links USING btree (cath_lab_request_id);


--
-- Name: proxy_bill_request_links_endo_request_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proxy_bill_request_links_endo_request_id_idx ON public.proxy_bill_request_links USING btree (endo_request_id);


--
-- Name: proxy_bill_request_links_hd_request_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proxy_bill_request_links_hd_request_id_idx ON public.proxy_bill_request_links USING btree (hd_request_id);


--
-- Name: proxy_bill_request_links_ot_request_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proxy_bill_request_links_ot_request_id_idx ON public.proxy_bill_request_links USING btree (ot_request_id);


--
-- Name: proxy_bill_request_links_proxy_bill_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX proxy_bill_request_links_proxy_bill_id_key ON public.proxy_bill_request_links USING btree (proxy_bill_id);


--
-- Name: proxy_main_procedures_proxy_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proxy_main_procedures_proxy_id_idx ON public.proxy_main_procedures USING btree (proxy_id);


--
-- Name: proxy_main_procedures_proxy_id_main_procedure_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX proxy_main_procedures_proxy_id_main_procedure_id_key ON public.proxy_main_procedures USING btree (proxy_id, main_procedure_id);


--
-- Name: proxy_pharmacy_cancel_items_pharmacy_sale_item_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX proxy_pharmacy_cancel_items_pharmacy_sale_item_id_idx ON public.proxy_pharmacy_cancel_items USING btree (pharmacy_sale_item_id);


--
-- Name: proxy_pharmacy_cancel_items_pharmacy_sale_item_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX proxy_pharmacy_cancel_items_pharmacy_sale_item_id_key ON public.proxy_pharmacy_cancel_items USING btree (pharmacy_sale_item_id);


--
-- Name: purchase_orders_purchase_order_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX purchase_orders_purchase_order_id_key ON public.purchase_orders USING btree (purchase_order_id);


--
-- Name: purchase_orders_stock_type_external_purchasing_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX purchase_orders_stock_type_external_purchasing_id_key ON public.purchase_orders USING btree (stock_type, external_purchasing_id);


--
-- Name: purchase_requests_purchase_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX purchase_requests_purchase_request_id_key ON public.purchase_requests USING btree (purchase_request_id);


--
-- Name: purchased_price_updated_stock_activity_logs_purchased_price_upd; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX purchased_price_updated_stock_activity_logs_purchased_price_upd ON public.purchased_price_updated_stock_activity_logs USING btree (purchased_price_updated_stock_id);


--
-- Name: purchased_price_updated_stock_activity_logs_user_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX purchased_price_updated_stock_activity_logs_user_id_idx ON public.purchased_price_updated_stock_activity_logs USING btree (user_id);


--
-- Name: referrals_patient_id_appointment_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX referrals_patient_id_appointment_id_key ON public.referrals USING btree (patient_id, appointment_id);


--
-- Name: roles_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX roles_name_key ON public.roles USING btree (name);


--
-- Name: roles_role_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX roles_role_id_key ON public.roles USING btree (role_id);


--
-- Name: room_types_name_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX room_types_name_idx ON public.room_types USING btree (name);


--
-- Name: room_types_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX room_types_name_key ON public.room_types USING btree (name);


--
-- Name: rooms_wardRoomType_id_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "rooms_wardRoomType_id_name_key" ON public.rooms USING btree ("wardRoomType_id", name);


--
-- Name: sale_returns_invoice_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX sale_returns_invoice_no_key ON public.sale_returns USING btree (invoice_no);


--
-- Name: service_bills_proxy_bill_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX service_bills_proxy_bill_id_key ON public.service_bills USING btree (proxy_bill_id);


--
-- Name: service_categories_name_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX service_categories_name_idx ON public.service_categories USING btree (name);


--
-- Name: service_categories_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX service_categories_name_key ON public.service_categories USING btree (name);


--
-- Name: service_package_bills_proxy_bill_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX service_package_bills_proxy_bill_id_key ON public.service_package_bills USING btree (proxy_bill_id);


--
-- Name: service_package_room_types_service_package_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX service_package_room_types_service_package_id_key ON public.service_package_room_types USING btree (service_package_id);


--
-- Name: service_packages_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX service_packages_name_key ON public.service_packages USING btree (name);


--
-- Name: service_packages_service_package_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX service_packages_service_package_id_key ON public.service_packages USING btree (service_package_id);


--
-- Name: service_sub_categories_name_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX service_sub_categories_name_idx ON public.service_sub_categories USING btree (name);


--
-- Name: service_sub_categories_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX service_sub_categories_name_key ON public.service_sub_categories USING btree (name);


--
-- Name: services_name_department_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX services_name_department_id_key ON public.services USING btree (name, department_id);


--
-- Name: services_service_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX services_service_id_key ON public.services USING btree (service_id);


--
-- Name: sessions_session_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX sessions_session_id_key ON public.sessions USING btree (session_id);


--
-- Name: specializations_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX specializations_name_key ON public.specializations USING btree (name);


--
-- Name: stock_requests_stock_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX stock_requests_stock_request_id_key ON public.stock_requests USING btree (stock_request_id);


--
-- Name: stock_transfers_stock_request_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX stock_transfers_stock_request_id_key ON public.stock_transfers USING btree (stock_request_id);


--
-- Name: stocks_item_id_old_batch_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX stocks_item_id_old_batch_idx ON public.stocks USING btree (item_id, old_batch);


--
-- Name: stores_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX stores_name_key ON public.stores USING btree (name);


--
-- Name: suppliers_company_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX suppliers_company_name_key ON public.suppliers USING btree (company_name);


--
-- Name: suppliers_email_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX suppliers_email_key ON public.suppliers USING btree (email);


--
-- Name: suppliers_phone_no_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX suppliers_phone_no_key ON public.suppliers USING btree (phone_no);


--
-- Name: suppliers_supplier_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX suppliers_supplier_id_key ON public.suppliers USING btree (supplier_id);


--
-- Name: units_abbreviation_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX units_abbreviation_key ON public.units USING btree (abbreviation);


--
-- Name: units_name_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX units_name_key ON public.units USING btree (name);


--
-- Name: users_email_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_email_key ON public.users USING btree (email);


--
-- Name: users_employee_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_employee_id_key ON public.users USING btree (employee_id);


--
-- Name: users_user_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_user_id_key ON public.users USING btree (user_id);


--
-- Name: users_username_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_username_key ON public.users USING btree (username);


--
-- Name: ward_room_types_ward_id_roomType_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "ward_room_types_ward_id_roomType_id_key" ON public.ward_room_types USING btree (ward_id, "roomType_id");


--
-- Name: wards_name_floor_id_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX wards_name_floor_id_key ON public.wards USING btree (name, floor_id);


--
-- Name: BillType BillType_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."BillType"
    ADD CONSTRAINT "BillType_created_by_id_fkey" FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: BillType BillType_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."BillType"
    ADD CONSTRAINT "BillType_updated_by_id_fkey" FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: CathLabRequestAssistantDoctor CathLabRequestAssistantDoctor_assistant_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CathLabRequestAssistantDoctor"
    ADD CONSTRAINT "CathLabRequestAssistantDoctor_assistant_doctor_id_fkey" FOREIGN KEY (assistant_doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: CathLabRequestAssistantDoctor CathLabRequestAssistantDoctor_cathlab_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CathLabRequestAssistantDoctor"
    ADD CONSTRAINT "CathLabRequestAssistantDoctor_cathlab_request_id_fkey" FOREIGN KEY (cathlab_request_id) REFERENCES public.cathlab_requests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: CathLabRequestAssistantNurse CathLabRequestAssistantNurse_assistant_nurse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CathLabRequestAssistantNurse"
    ADD CONSTRAINT "CathLabRequestAssistantNurse_assistant_nurse_id_fkey" FOREIGN KEY (assistant_nurse_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: CathLabRequestAssistantNurse CathLabRequestAssistantNurse_cathlab_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CathLabRequestAssistantNurse"
    ADD CONSTRAINT "CathLabRequestAssistantNurse_cathlab_request_id_fkey" FOREIGN KEY (cathlab_request_id) REFERENCES public.cathlab_requests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: CathLabRequestCardiologist CathLabRequestCardiologist_cardiologist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CathLabRequestCardiologist"
    ADD CONSTRAINT "CathLabRequestCardiologist_cardiologist_id_fkey" FOREIGN KEY (cardiologist_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: CathLabRequestCardiologist CathLabRequestCardiologist_cathlab_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."CathLabRequestCardiologist"
    ADD CONSTRAINT "CathLabRequestCardiologist_cathlab_request_id_fkey" FOREIGN KEY (cathlab_request_id) REFERENCES public.cathlab_requests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: DoctorService DoctorService_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DoctorService"
    ADD CONSTRAINT "DoctorService_created_by_id_fkey" FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: DoctorService DoctorService_doctorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DoctorService"
    ADD CONSTRAINT "DoctorService_doctorId_fkey" FOREIGN KEY ("doctorId") REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: DoctorService DoctorService_serviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DoctorService"
    ADD CONSTRAINT "DoctorService_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: DoctorService DoctorService_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."DoctorService"
    ADD CONSTRAINT "DoctorService_updated_by_id_fkey" FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: EndoRequestAnesthetist EndoRequestAnesthetist_anesthetist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestAnesthetist"
    ADD CONSTRAINT "EndoRequestAnesthetist_anesthetist_id_fkey" FOREIGN KEY (anesthetist_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: EndoRequestAnesthetist EndoRequestAnesthetist_endo_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestAnesthetist"
    ADD CONSTRAINT "EndoRequestAnesthetist_endo_request_id_fkey" FOREIGN KEY (endo_request_id) REFERENCES public.endo_requests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: EndoRequestAssistantDoctor EndoRequestAssistantDoctor_assistant_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestAssistantDoctor"
    ADD CONSTRAINT "EndoRequestAssistantDoctor_assistant_doctor_id_fkey" FOREIGN KEY (assistant_doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: EndoRequestAssistantDoctor EndoRequestAssistantDoctor_endo_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestAssistantDoctor"
    ADD CONSTRAINT "EndoRequestAssistantDoctor_endo_request_id_fkey" FOREIGN KEY (endo_request_id) REFERENCES public.endo_requests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: EndoRequestAssistantNurse EndoRequestAssistantNurse_assistant_nurse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestAssistantNurse"
    ADD CONSTRAINT "EndoRequestAssistantNurse_assistant_nurse_id_fkey" FOREIGN KEY (assistant_nurse_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: EndoRequestAssistantNurse EndoRequestAssistantNurse_endo_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestAssistantNurse"
    ADD CONSTRAINT "EndoRequestAssistantNurse_endo_request_id_fkey" FOREIGN KEY (endo_request_id) REFERENCES public.endo_requests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: EndoRequestSurgeon EndoRequestSurgeon_endo_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestSurgeon"
    ADD CONSTRAINT "EndoRequestSurgeon_endo_request_id_fkey" FOREIGN KEY (endo_request_id) REFERENCES public.endo_requests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: EndoRequestSurgeon EndoRequestSurgeon_surgeon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."EndoRequestSurgeon"
    ADD CONSTRAINT "EndoRequestSurgeon_surgeon_id_fkey" FOREIGN KEY (surgeon_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: GRN GRN_approved_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GRN"
    ADD CONSTRAINT "GRN_approved_by_id_fkey" FOREIGN KEY (approved_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: GRN GRN_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GRN"
    ADD CONSTRAINT "GRN_created_by_id_fkey" FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: GRN GRN_purchase_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GRN"
    ADD CONSTRAINT "GRN_purchase_order_id_fkey" FOREIGN KEY (purchase_order_id) REFERENCES public.purchase_orders(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: GRN GRN_rejected_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GRN"
    ADD CONSTRAINT "GRN_rejected_by_id_fkey" FOREIGN KEY (rejected_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: GRN GRN_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GRN"
    ADD CONSTRAINT "GRN_store_id_fkey" FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: GRN GRN_supplier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GRN"
    ADD CONSTRAINT "GRN_supplier_id_fkey" FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: GRN GRN_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."GRN"
    ADD CONSTRAINT "GRN_updated_by_id_fkey" FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: OPDBillingPharmacySale OPDBillingPharmacySale_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OPDBillingPharmacySale"
    ADD CONSTRAINT "OPDBillingPharmacySale_opd_billing_id_fkey" FOREIGN KEY (opd_billing_id) REFERENCES public.opd_billings(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OPDBillingPharmacySale OPDBillingPharmacySale_pharmacy_sale_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OPDBillingPharmacySale"
    ADD CONSTRAINT "OPDBillingPharmacySale_pharmacy_sale_id_fkey" FOREIGN KEY (pharmacy_sale_id) REFERENCES public.pharmacy_sales(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OPDEMRImagingModuleJoint OPDEMRImagingModuleJoint_imagingListId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OPDEMRImagingModuleJoint"
    ADD CONSTRAINT "OPDEMRImagingModuleJoint_imagingListId_fkey" FOREIGN KEY ("imagingListId") REFERENCES public.imaging_lists(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: OPDEMRImagingModuleJoint OPDEMRImagingModuleJoint_opdEmrId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OPDEMRImagingModuleJoint"
    ADD CONSTRAINT "OPDEMRImagingModuleJoint_opdEmrId_fkey" FOREIGN KEY ("opdEmrId") REFERENCES public.opd_emrs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: OPDEMRLabModuleJoint OPDEMRLabModuleJoint_labPivotId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OPDEMRLabModuleJoint"
    ADD CONSTRAINT "OPDEMRLabModuleJoint_labPivotId_fkey" FOREIGN KEY ("labPivotId") REFERENCES public.lab_pivots(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: OPDEMRLabModuleJoint OPDEMRLabModuleJoint_opdEmrId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."OPDEMRLabModuleJoint"
    ADD CONSTRAINT "OPDEMRLabModuleJoint_opdEmrId_fkey" FOREIGN KEY ("opdEmrId") REFERENCES public.opd_emrs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: SellingPriceGroup SellingPriceGroup_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SellingPriceGroup"
    ADD CONSTRAINT "SellingPriceGroup_created_by_id_fkey" FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: SellingPriceGroup SellingPriceGroup_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SellingPriceGroup"
    ADD CONSTRAINT "SellingPriceGroup_updated_by_id_fkey" FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: activity_logs activity_logs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.activity_logs
    ADD CONSTRAINT activity_logs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: admission_deposit_audits admission_deposit_audits_admission_deposit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposit_audits
    ADD CONSTRAINT admission_deposit_audits_admission_deposit_id_fkey FOREIGN KEY (admission_deposit_id) REFERENCES public.admission_deposits(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: admission_deposit_audits admission_deposit_audits_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposit_audits
    ADD CONSTRAINT admission_deposit_audits_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: admission_deposit_audits admission_deposit_audits_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposit_audits
    ADD CONSTRAINT admission_deposit_audits_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: admission_deposit_payments admission_deposit_payments_admission_deposit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposit_payments
    ADD CONSTRAINT admission_deposit_payments_admission_deposit_id_fkey FOREIGN KEY (admission_deposit_id) REFERENCES public.admission_deposits(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: admission_deposit_payments admission_deposit_payments_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposit_payments
    ADD CONSTRAINT admission_deposit_payments_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: admission_deposit_payments admission_deposit_payments_payment_method_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposit_payments
    ADD CONSTRAINT admission_deposit_payments_payment_method_id_fkey FOREIGN KEY (payment_method_id) REFERENCES public.payment_methods(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: admission_deposit_payments admission_deposit_payments_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposit_payments
    ADD CONSTRAINT admission_deposit_payments_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: admission_deposit_transcation_histories admission_deposit_transcation_histories_admissionDepositId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposit_transcation_histories
    ADD CONSTRAINT "admission_deposit_transcation_histories_admissionDepositId_fkey" FOREIGN KEY ("admissionDepositId") REFERENCES public.admission_deposits(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: admission_deposits admission_deposits_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposits
    ADD CONSTRAINT admission_deposits_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: admission_deposits admission_deposits_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposits
    ADD CONSTRAINT admission_deposits_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: admission_deposits admission_deposits_deposit_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposits
    ADD CONSTRAINT admission_deposits_deposit_type_id_fkey FOREIGN KEY (deposit_type_id) REFERENCES public.deposit_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: admission_deposits admission_deposits_pre_deposit_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposits
    ADD CONSTRAINT admission_deposits_pre_deposit_patient_id_fkey FOREIGN KEY (pre_deposit_patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: admission_deposits admission_deposits_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_deposits
    ADD CONSTRAINT admission_deposits_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: admission_under_care_doctors admission_under_care_doctors_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_under_care_doctors
    ADD CONSTRAINT admission_under_care_doctors_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: admission_under_care_doctors admission_under_care_doctors_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admission_under_care_doctors
    ADD CONSTRAINT admission_under_care_doctors_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: admissions admissions_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admissions
    ADD CONSTRAINT admissions_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: admissions admissions_patientId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admissions
    ADD CONSTRAINT "admissions_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: admissions admissions_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admissions
    ADD CONSTRAINT admissions_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: anesthesia_types anesthesia_types_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.anesthesia_types
    ADD CONSTRAINT anesthesia_types_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: anesthesia_types anesthesia_types_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.anesthesia_types
    ADD CONSTRAINT anesthesia_types_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: appointment_services appointment_services_appointment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointment_services
    ADD CONSTRAINT appointment_services_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointments(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: appointment_services appointment_services_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointment_services
    ADD CONSTRAINT appointment_services_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: appointment_types appointment_types_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointment_types
    ADD CONSTRAINT appointment_types_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: appointment_types appointment_types_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointment_types
    ADD CONSTRAINT appointment_types_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: appointments appointments_appointment_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_appointment_type_id_fkey FOREIGN KEY (appointment_type_id) REFERENCES public.appointment_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: appointments appointments_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: appointments appointments_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: appointments appointments_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: appointments appointments_timeslot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_timeslot_id_fkey FOREIGN KEY (timeslot_id) REFERENCES public.doctor_timeslots(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: appointments appointments_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: banks banks_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: banks banks_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: batches batches_grn_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.batches
    ADD CONSTRAINT batches_grn_id_fkey FOREIGN KEY (grn_id) REFERENCES public."GRN"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: bill_payments bill_payments_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bill_payments
    ADD CONSTRAINT bill_payments_bill_id_fkey FOREIGN KEY (bill_id) REFERENCES public.bills(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: bill_payments bill_payments_payment_method_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bill_payments
    ADD CONSTRAINT bill_payments_payment_method_id_fkey FOREIGN KEY (payment_method_id) REFERENCES public.payment_methods(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: bills bills_appointment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: bills bills_bill_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_bill_type_id_fkey FOREIGN KEY (bill_type_id) REFERENCES public."BillType"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: bills bills_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: bills bills_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: bills bills_deleted_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_deleted_by_id_fkey FOREIGN KEY (deleted_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: bills bills_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.opd_billings(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: bills bills_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: bills bills_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: bills bills_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bills
    ADD CONSTRAINT bills_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: booking_list booking_list_building_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.booking_list
    ADD CONSTRAINT booking_list_building_id_fkey FOREIGN KEY (building_id) REFERENCES public.buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: booking_list booking_list_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.booking_list
    ADD CONSTRAINT booking_list_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: booking_list booking_list_doctor__id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.booking_list
    ADD CONSTRAINT booking_list_doctor__id_fkey FOREIGN KEY (doctor__id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: booking_list booking_list_room_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.booking_list
    ADD CONSTRAINT booking_list_room_type_id_fkey FOREIGN KEY (room_type_id) REFERENCES public.room_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: booking_list booking_list_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.booking_list
    ADD CONSTRAINT booking_list_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: buildings buildings_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT buildings_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: buildings buildings_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT buildings_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: categories categories_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: categories categories_parent_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_parent_category_id_fkey FOREIGN KEY (parent_category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: categories categories_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cathlab_audits cathlab_audits_Lab_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_audits
    ADD CONSTRAINT "cathlab_audits_Lab_service_id_fkey" FOREIGN KEY ("Lab_service_id") REFERENCES public.cathlabs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cathlab_audits cathlab_audits_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_audits
    ADD CONSTRAINT cathlab_audits_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cathlab_audits cathlab_audits_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_audits
    ADD CONSTRAINT cathlab_audits_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cathlab_company_direct_items cathlab_company_direct_items_cathLabId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_company_direct_items
    ADD CONSTRAINT "cathlab_company_direct_items_cathLabId_fkey" FOREIGN KEY ("cathLabId") REFERENCES public.cathlabs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cathlab_pharmacy_sales cathlab_pharmacy_sales_cathlab_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_pharmacy_sales
    ADD CONSTRAINT cathlab_pharmacy_sales_cathlab_id_fkey FOREIGN KEY (cathlab_id) REFERENCES public.cathlabs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cathlab_pharmacy_sales cathlab_pharmacy_sales_pharmacy_sale_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_pharmacy_sales
    ADD CONSTRAINT cathlab_pharmacy_sales_pharmacy_sale_id_fkey FOREIGN KEY (pharmacy_sale_id) REFERENCES public.pharmacy_sales(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cathlab_procedure_items cathlab_procedure_items_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_procedure_items
    ADD CONSTRAINT cathlab_procedure_items_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cathlab_procedure_items cathlab_procedure_items_procedure_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_procedure_items
    ADD CONSTRAINT cathlab_procedure_items_procedure_bill_id_fkey FOREIGN KEY (procedure_bill_id) REFERENCES public.cathlabs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cathlab_procedure_items cathlab_procedure_items_procedure_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_procedure_items
    ADD CONSTRAINT cathlab_procedure_items_procedure_id_fkey FOREIGN KEY (procedure_id) REFERENCES public.procedures(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cathlab_requests cathlab_requests_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_requests
    ADD CONSTRAINT cathlab_requests_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cathlab_requests cathlab_requests_anesthesia_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_requests
    ADD CONSTRAINT cathlab_requests_anesthesia_type_id_fkey FOREIGN KEY (anesthesia_type_id) REFERENCES public.anesthesia_types(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cathlab_requests cathlab_requests_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_requests
    ADD CONSTRAINT cathlab_requests_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cathlab_requests cathlab_requests_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_requests
    ADD CONSTRAINT cathlab_requests_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cathlab_requests cathlab_requests_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_requests
    ADD CONSTRAINT cathlab_requests_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cathlab_requests cathlab_requests_referral_clinic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_requests
    ADD CONSTRAINT cathlab_requests_referral_clinic_id_fkey FOREIGN KEY (referral_clinic_id) REFERENCES public.clinics(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cathlab_requests cathlab_requests_referral_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_requests
    ADD CONSTRAINT cathlab_requests_referral_doctor_id_fkey FOREIGN KEY (referral_doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cathlab_requests cathlab_requests_room_log_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_requests
    ADD CONSTRAINT cathlab_requests_room_log_id_fkey FOREIGN KEY (room_log_id) REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cathlab_requests cathlab_requests_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_requests
    ADD CONSTRAINT cathlab_requests_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cathlab_service_items cathlab_service_items_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_service_items
    ADD CONSTRAINT cathlab_service_items_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cathlab_service_items cathlab_service_items_service_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_service_items
    ADD CONSTRAINT cathlab_service_items_service_bill_id_fkey FOREIGN KEY (service_bill_id) REFERENCES public.cathlabs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cathlab_service_items cathlab_service_items_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlab_service_items
    ADD CONSTRAINT cathlab_service_items_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cathlabs cathlabs_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlabs
    ADD CONSTRAINT cathlabs_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cathlabs cathlabs_cathlab_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlabs
    ADD CONSTRAINT cathlabs_cathlab_request_id_fkey FOREIGN KEY (cathlab_request_id) REFERENCES public.cathlab_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cathlabs cathlabs_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlabs
    ADD CONSTRAINT cathlabs_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: cathlabs cathlabs_deletedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlabs
    ADD CONSTRAINT "cathlabs_deletedById_fkey" FOREIGN KEY ("deletedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cathlabs cathlabs_ipdDailyBillId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlabs
    ADD CONSTRAINT "cathlabs_ipdDailyBillId_fkey" FOREIGN KEY ("ipdDailyBillId") REFERENCES public.ipd_daily_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cathlabs cathlabs_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlabs
    ADD CONSTRAINT cathlabs_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cathlabs cathlabs_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlabs
    ADD CONSTRAINT cathlabs_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: cathlabs cathlabs_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cathlabs
    ADD CONSTRAINT cathlabs_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: clinics clinics_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics
    ADD CONSTRAINT clinics_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: clinics clinics_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clinics
    ADD CONSTRAINT clinics_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: custom_room_charges custom_room_charges_building_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.custom_room_charges
    ADD CONSTRAINT custom_room_charges_building_id_fkey FOREIGN KEY (building_id) REFERENCES public.buildings(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: custom_room_charges custom_room_charges_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.custom_room_charges
    ADD CONSTRAINT custom_room_charges_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: custom_room_charges custom_room_charges_default_room_charges_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.custom_room_charges
    ADD CONSTRAINT custom_room_charges_default_room_charges_id_fkey FOREIGN KEY (default_room_charges_id) REFERENCES public.default_room_charges(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: custom_room_charges custom_room_charges_floor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.custom_room_charges
    ADD CONSTRAINT custom_room_charges_floor_id_fkey FOREIGN KEY (floor_id) REFERENCES public.floors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: custom_room_charges custom_room_charges_room_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.custom_room_charges
    ADD CONSTRAINT custom_room_charges_room_type_id_fkey FOREIGN KEY (room_type_id) REFERENCES public.room_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: custom_room_charges custom_room_charges_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.custom_room_charges
    ADD CONSTRAINT custom_room_charges_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: custom_room_charges custom_room_charges_ward_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.custom_room_charges
    ADD CONSTRAINT custom_room_charges_ward_id_fkey FOREIGN KEY (ward_id) REFERENCES public.wards(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: daily_stock_reports daily_stock_reports_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.daily_stock_reports
    ADD CONSTRAINT daily_stock_reports_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: daily_stock_reports daily_stock_reports_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.daily_stock_reports
    ADD CONSTRAINT daily_stock_reports_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: damaged_stocks damaged_stocks_damaged_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.damaged_stocks
    ADD CONSTRAINT damaged_stocks_damaged_id_fkey FOREIGN KEY (damaged_id) REFERENCES public.stock_damages(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: damaged_stocks damaged_stocks_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.damaged_stocks
    ADD CONSTRAINT damaged_stocks_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: default_setting default_setting_bill_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.default_setting
    ADD CONSTRAINT default_setting_bill_type_id_fkey FOREIGN KEY (bill_type_id) REFERENCES public."BillType"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: default_setting default_setting_payment_method_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.default_setting
    ADD CONSTRAINT default_setting_payment_method_id_fkey FOREIGN KEY (payment_method_id) REFERENCES public.payment_methods(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: default_setting default_setting_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.default_setting
    ADD CONSTRAINT default_setting_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: departments departments_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: departments departments_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: deposit_types deposit_types_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deposit_types
    ADD CONSTRAINT deposit_types_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: deposit_types deposit_types_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deposit_types
    ADD CONSTRAINT deposit_types_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: discharge_joints discharge_joints_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharge_joints
    ADD CONSTRAINT discharge_joints_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discharge_joints discharge_joints_discharge_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharge_joints
    ADD CONSTRAINT discharge_joints_discharge_id_fkey FOREIGN KEY (discharge_id) REFERENCES public.discharges(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discharge_joints discharge_joints_discharge_summary_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharge_joints
    ADD CONSTRAINT discharge_joints_discharge_summary_id_fkey FOREIGN KEY (discharge_summary_id) REFERENCES public.discharge_summaries(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discharge_summaries discharge_summaries_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharge_summaries
    ADD CONSTRAINT discharge_summaries_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discharge_summaries discharge_summaries_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharge_summaries
    ADD CONSTRAINT discharge_summaries_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discharge_summaries discharge_summaries_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharge_summaries
    ADD CONSTRAINT discharge_summaries_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discharge_summaries discharge_summaries_presription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharge_summaries
    ADD CONSTRAINT discharge_summaries_presription_id_fkey FOREIGN KEY (presription_id) REFERENCES public.prescriptions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: discharge_summaries discharge_summaries_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharge_summaries
    ADD CONSTRAINT discharge_summaries_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discharges discharges_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharges
    ADD CONSTRAINT discharges_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discharges discharges_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharges
    ADD CONSTRAINT discharges_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: discharges discharges_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.discharges
    ADD CONSTRAINT discharges_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: doctor_notes doctor_notes_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_notes
    ADD CONSTRAINT doctor_notes_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: doctor_notes doctor_notes_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_notes
    ADD CONSTRAINT doctor_notes_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: doctor_notes doctor_notes_ipd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_notes
    ADD CONSTRAINT doctor_notes_ipd_emr_id_fkey FOREIGN KEY (ipd_emr_id) REFERENCES public.ipd_emrs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: doctor_notes doctor_notes_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_notes
    ADD CONSTRAINT doctor_notes_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: doctor_notes doctor_notes_room_log_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_notes
    ADD CONSTRAINT doctor_notes_room_log_id_fkey FOREIGN KEY (room_log_id) REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: doctor_notes doctor_notes_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_notes
    ADD CONSTRAINT doctor_notes_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: doctor_schedules doctor_schedules_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_schedules
    ADD CONSTRAINT doctor_schedules_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: doctor_schedules doctor_schedules_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_schedules
    ADD CONSTRAINT doctor_schedules_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: doctor_schedules doctor_schedules_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_schedules
    ADD CONSTRAINT doctor_schedules_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: doctor_timeslots doctor_timeslots_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_timeslots
    ADD CONSTRAINT doctor_timeslots_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: doctor_timeslots doctor_timeslots_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_timeslots
    ADD CONSTRAINT doctor_timeslots_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: doctor_timeslots doctor_timeslots_schedule_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_timeslots
    ADD CONSTRAINT doctor_timeslots_schedule_id_fkey FOREIGN KEY (schedule_id) REFERENCES public.doctor_schedules(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: doctor_timeslots doctor_timeslots_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctor_timeslots
    ADD CONSTRAINT doctor_timeslots_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: doctors doctors_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: doctors doctors_specialization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_specialization_id_fkey FOREIGN KEY (specialization_id) REFERENCES public.specializations(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: doctors doctors_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: doctors doctors_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ed_emr_proxy_bill_joints ed_emr_proxy_bill_joints_opd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ed_emr_proxy_bill_joints
    ADD CONSTRAINT ed_emr_proxy_bill_joints_opd_emr_id_fkey FOREIGN KEY (opd_emr_id) REFERENCES public.opd_emrs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ed_emr_proxy_bill_joints ed_emr_proxy_bill_joints_proxy_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ed_emr_proxy_bill_joints
    ADD CONSTRAINT ed_emr_proxy_bill_joints_proxy_bill_id_fkey FOREIGN KEY (proxy_bill_id) REFERENCES public.proxy_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: endo_reports endo_reports_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_reports
    ADD CONSTRAINT endo_reports_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: endo_reports endo_reports_deleted_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_reports
    ADD CONSTRAINT endo_reports_deleted_by_id_fkey FOREIGN KEY (deleted_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: endo_reports endo_reports_proxy_bill_request_link_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_reports
    ADD CONSTRAINT endo_reports_proxy_bill_request_link_id_fkey FOREIGN KEY (proxy_bill_request_link_id) REFERENCES public.proxy_bill_request_links(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: endo_reports endo_reports_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_reports
    ADD CONSTRAINT endo_reports_template_id_fkey FOREIGN KEY (template_id) REFERENCES public.imaging_templates(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: endo_reports endo_reports_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_reports
    ADD CONSTRAINT endo_reports_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: endo_requests endo_requests_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: endo_requests endo_requests_anesthesia_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_anesthesia_type_id_fkey FOREIGN KEY (anesthesia_type_id) REFERENCES public.anesthesia_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: endo_requests endo_requests_appointment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: endo_requests endo_requests_appointment_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_appointment_type_id_fkey FOREIGN KEY (appointment_type_id) REFERENCES public.appointment_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: endo_requests endo_requests_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: endo_requests endo_requests_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: endo_requests endo_requests_operation_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_operation_type_id_fkey FOREIGN KEY (operation_type_id) REFERENCES public.operation_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: endo_requests endo_requests_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: endo_requests endo_requests_referral_clinic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_referral_clinic_id_fkey FOREIGN KEY (referral_clinic_id) REFERENCES public.clinics(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: endo_requests endo_requests_referral_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_referral_doctor_id_fkey FOREIGN KEY (referral_doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: endo_requests endo_requests_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endo_requests
    ADD CONSTRAINT endo_requests_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: expiry_updated_stock_activity_logs expiry_updated_stock_activity_logs_expiry_updated_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.expiry_updated_stock_activity_logs
    ADD CONSTRAINT expiry_updated_stock_activity_logs_expiry_updated_stock_id_fkey FOREIGN KEY (expiry_updated_stock_id) REFERENCES public.expiry_updated_stocks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: expiry_updated_stock_activity_logs expiry_updated_stock_activity_logs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.expiry_updated_stock_activity_logs
    ADD CONSTRAINT expiry_updated_stock_activity_logs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: expiry_updated_stocks expiry_updated_stocks_batch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.expiry_updated_stocks
    ADD CONSTRAINT expiry_updated_stocks_batch_id_fkey FOREIGN KEY (batch_id) REFERENCES public.batches(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: expiry_updated_stocks expiry_updated_stocks_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.expiry_updated_stocks
    ADD CONSTRAINT expiry_updated_stocks_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: expiry_updated_stocks expiry_updated_stocks_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.expiry_updated_stocks
    ADD CONSTRAINT expiry_updated_stocks_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: expiry_updated_stocks expiry_updated_stocks_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.expiry_updated_stocks
    ADD CONSTRAINT expiry_updated_stocks_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_clinical_document_files fk_opd_emr_doc_file_header; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_clinical_document_files
    ADD CONSTRAINT fk_opd_emr_doc_file_header FOREIGN KEY (clinical_document_header_id) REFERENCES public.opd_emr_clinical_document_headers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: floors floors_building_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.floors
    ADD CONSTRAINT floors_building_id_fkey FOREIGN KEY (building_id) REFERENCES public.buildings(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: floors floors_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.floors
    ADD CONSTRAINT floors_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: floors floors_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.floors
    ADD CONSTRAINT floors_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: foc_item_activity_logs foc_item_activity_logs_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.foc_item_activity_logs
    ADD CONSTRAINT foc_item_activity_logs_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: foc_item_activity_logs foc_item_activity_logs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.foc_item_activity_logs
    ADD CONSTRAINT foc_item_activity_logs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: grn_items grn_items_grn_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_items
    ADD CONSTRAINT grn_items_grn_id_fkey FOREIGN KEY (grn_id) REFERENCES public."GRN"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: grn_items grn_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_items
    ADD CONSTRAINT grn_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: grn_return_items grn_return_items_grn_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_return_items
    ADD CONSTRAINT grn_return_items_grn_item_id_fkey FOREIGN KEY (grn_item_id) REFERENCES public.grn_items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: grn_return_items grn_return_items_grn_return_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_return_items
    ADD CONSTRAINT grn_return_items_grn_return_id_fkey FOREIGN KEY (grn_return_id) REFERENCES public.grn_returns(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: grn_return_types grn_return_types_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_return_types
    ADD CONSTRAINT grn_return_types_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: grn_return_types grn_return_types_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_return_types
    ADD CONSTRAINT grn_return_types_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: grn_returns grn_returns_approved_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_returns
    ADD CONSTRAINT grn_returns_approved_by_id_fkey FOREIGN KEY (approved_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: grn_returns grn_returns_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_returns
    ADD CONSTRAINT grn_returns_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: grn_returns grn_returns_grn_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_returns
    ADD CONSTRAINT grn_returns_grn_id_fkey FOREIGN KEY (grn_id) REFERENCES public."GRN"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: grn_returns grn_returns_rejected_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_returns
    ADD CONSTRAINT grn_returns_rejected_by_id_fkey FOREIGN KEY (rejected_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: grn_returns grn_returns_return_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_returns
    ADD CONSTRAINT grn_returns_return_type_id_fkey FOREIGN KEY (return_type_id) REFERENCES public.grn_return_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: grn_returns grn_returns_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grn_returns
    ADD CONSTRAINT grn_returns_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: hd_requests hd_requests_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hd_requests
    ADD CONSTRAINT hd_requests_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: hd_requests hd_requests_appointment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hd_requests
    ADD CONSTRAINT hd_requests_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: hd_requests hd_requests_appointment_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hd_requests
    ADD CONSTRAINT hd_requests_appointment_type_id_fkey FOREIGN KEY (appointment_type_id) REFERENCES public.appointment_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: hd_requests hd_requests_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hd_requests
    ADD CONSTRAINT hd_requests_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: hd_requests hd_requests_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hd_requests
    ADD CONSTRAINT hd_requests_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: hd_requests hd_requests_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hd_requests
    ADD CONSTRAINT hd_requests_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: hd_requests hd_requests_referral_clinic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hd_requests
    ADD CONSTRAINT hd_requests_referral_clinic_id_fkey FOREIGN KEY (referral_clinic_id) REFERENCES public.clinics(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: hd_requests hd_requests_referral_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hd_requests
    ADD CONSTRAINT hd_requests_referral_doctor_id_fkey FOREIGN KEY (referral_doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: hd_requests hd_requests_room_log_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hd_requests
    ADD CONSTRAINT hd_requests_room_log_id_fkey FOREIGN KEY (room_log_id) REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: hd_requests hd_requests_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hd_requests
    ADD CONSTRAINT hd_requests_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: hospital_phone_number hospital_phone_number_hospital_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hospital_phone_number
    ADD CONSTRAINT hospital_phone_number_hospital_id_fkey FOREIGN KEY (hospital_id) REFERENCES public.hospital_info(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_add_on_pharmacy_items imaging_add_on_pharmacy_items_imaging_service_add_on_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_add_on_pharmacy_items
    ADD CONSTRAINT imaging_add_on_pharmacy_items_imaging_service_add_on_id_fkey FOREIGN KEY (imaging_service_add_on_id) REFERENCES public.imaging_service_add_ons(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: imaging_add_on_pharmacy_items imaging_add_on_pharmacy_items_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_add_on_pharmacy_items
    ADD CONSTRAINT imaging_add_on_pharmacy_items_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_add_on_procedure_items imaging_add_on_procedure_items_imaging_service_add_on_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_add_on_procedure_items
    ADD CONSTRAINT imaging_add_on_procedure_items_imaging_service_add_on_id_fkey FOREIGN KEY (imaging_service_add_on_id) REFERENCES public.imaging_service_add_ons(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: imaging_add_on_procedure_items imaging_add_on_procedure_items_procedure_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_add_on_procedure_items
    ADD CONSTRAINT imaging_add_on_procedure_items_procedure_id_fkey FOREIGN KEY (procedure_id) REFERENCES public.procedures(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_add_on_service_items imaging_add_on_service_items_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_add_on_service_items
    ADD CONSTRAINT imaging_add_on_service_items_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: imaging_add_on_service_items imaging_add_on_service_items_imaging_service_add_on_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_add_on_service_items
    ADD CONSTRAINT imaging_add_on_service_items_imaging_service_add_on_id_fkey FOREIGN KEY (imaging_service_add_on_id) REFERENCES public.imaging_service_add_ons(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: imaging_add_on_service_items imaging_add_on_service_items_ipd_daily_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_add_on_service_items
    ADD CONSTRAINT imaging_add_on_service_items_ipd_daily_service_id_fkey FOREIGN KEY (ipd_daily_service_id) REFERENCES public.ipd_daily_bill_services(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: imaging_add_on_service_items imaging_add_on_service_items_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_add_on_service_items
    ADD CONSTRAINT imaging_add_on_service_items_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_list_new_borns imaging_list_new_borns_imaging_list_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_list_new_borns
    ADD CONSTRAINT imaging_list_new_borns_imaging_list_id_fkey FOREIGN KEY (imaging_list_id) REFERENCES public.imaging_lists(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: imaging_list_new_borns imaging_list_new_borns_new_born_baby_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_list_new_borns
    ADD CONSTRAINT imaging_list_new_borns_new_born_baby_id_fkey FOREIGN KEY (new_born_baby_id) REFERENCES public.new_born_babies(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: imaging_lists imaging_lists_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_lists
    ADD CONSTRAINT imaging_lists_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_lists imaging_lists_ipd_daily_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_lists
    ADD CONSTRAINT imaging_lists_ipd_daily_bill_id_fkey FOREIGN KEY (ipd_daily_bill_id) REFERENCES public.ipd_daily_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: imaging_lists imaging_lists_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_lists
    ADD CONSTRAINT imaging_lists_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.service_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: imaging_lists imaging_lists_opd_package_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_lists
    ADD CONSTRAINT imaging_lists_opd_package_bill_id_fkey FOREIGN KEY (opd_package_bill_id) REFERENCES public.opd_package_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: imaging_lists imaging_lists_referral_clinic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_lists
    ADD CONSTRAINT imaging_lists_referral_clinic_id_fkey FOREIGN KEY (referral_clinic_id) REFERENCES public.clinics(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: imaging_lists imaging_lists_referral_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_lists
    ADD CONSTRAINT imaging_lists_referral_doctor_id_fkey FOREIGN KEY (referral_doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: imaging_lists imaging_lists_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_lists
    ADD CONSTRAINT imaging_lists_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_service_add_ons imaging_service_add_ons_charged_ipd_daily_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_add_ons
    ADD CONSTRAINT imaging_service_add_ons_charged_ipd_daily_bill_id_fkey FOREIGN KEY (charged_ipd_daily_bill_id) REFERENCES public.ipd_daily_bills(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: imaging_service_add_ons imaging_service_add_ons_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_add_ons
    ADD CONSTRAINT imaging_service_add_ons_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_service_add_ons imaging_service_add_ons_imaging_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_add_ons
    ADD CONSTRAINT imaging_service_add_ons_imaging_service_id_fkey FOREIGN KEY (imaging_service_id) REFERENCES public.imaging_services(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: imaging_service_add_ons imaging_service_add_ons_ipd_ward_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_add_ons
    ADD CONSTRAINT imaging_service_add_ons_ipd_ward_service_id_fkey FOREIGN KEY (ipd_ward_service_id) REFERENCES public.ipd_ward_services(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: imaging_service_add_ons imaging_service_add_ons_pharmacy_sale_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_add_ons
    ADD CONSTRAINT imaging_service_add_ons_pharmacy_sale_id_fkey FOREIGN KEY (pharmacy_sale_id) REFERENCES public.pharmacy_sales(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: imaging_service_add_ons imaging_service_add_ons_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_add_ons
    ADD CONSTRAINT imaging_service_add_ons_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_service_reading_doctors imaging_service_reading_doctors_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_reading_doctors
    ADD CONSTRAINT imaging_service_reading_doctors_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_service_reading_doctors imaging_service_reading_doctors_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_reading_doctors
    ADD CONSTRAINT imaging_service_reading_doctors_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_service_reading_doctors imaging_service_reading_doctors_imaging_service_result_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_reading_doctors
    ADD CONSTRAINT imaging_service_reading_doctors_imaging_service_result_id_fkey FOREIGN KEY (imaging_service_result_id) REFERENCES public.imaging_service_results(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_service_reading_doctors imaging_service_reading_doctors_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_reading_doctors
    ADD CONSTRAINT imaging_service_reading_doctors_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_service_results imaging_service_results_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_results
    ADD CONSTRAINT imaging_service_results_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_service_results imaging_service_results_imaging_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_results
    ADD CONSTRAINT imaging_service_results_imaging_service_id_fkey FOREIGN KEY (imaging_service_id) REFERENCES public.imaging_services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_service_results imaging_service_results_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_service_results
    ADD CONSTRAINT imaging_service_results_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_services imaging_services_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_services
    ADD CONSTRAINT imaging_services_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_services imaging_services_imaging_list_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_services
    ADD CONSTRAINT imaging_services_imaging_list_id_fkey FOREIGN KEY (imaging_list_id) REFERENCES public.imaging_lists(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_services imaging_services_ipd_daily_bill_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_services
    ADD CONSTRAINT imaging_services_ipd_daily_bill_service_id_fkey FOREIGN KEY (ipd_daily_bill_service_id) REFERENCES public.ipd_daily_bill_services(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: imaging_services imaging_services_opd_billing_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_services
    ADD CONSTRAINT imaging_services_opd_billing_service_id_fkey FOREIGN KEY (opd_billing_service_id) REFERENCES public.service_bill_items(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: imaging_services imaging_services_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_services
    ADD CONSTRAINT imaging_services_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_templates imaging_templates_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_templates
    ADD CONSTRAINT imaging_templates_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: imaging_templates imaging_templates_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imaging_templates
    ADD CONSTRAINT imaging_templates_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_daily_bill_pharmacy_returns ipd_daily_bill_pharmacy_returns_ipdDailyBillId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_pharmacy_returns
    ADD CONSTRAINT "ipd_daily_bill_pharmacy_returns_ipdDailyBillId_fkey" FOREIGN KEY ("ipdDailyBillId") REFERENCES public.ipd_daily_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_daily_bill_pharmacy_returns ipd_daily_bill_pharmacy_returns_ipdPharmacyReturnId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_pharmacy_returns
    ADD CONSTRAINT "ipd_daily_bill_pharmacy_returns_ipdPharmacyReturnId_fkey" FOREIGN KEY ("ipdPharmacyReturnId") REFERENCES public.ipd_pharmacy_returns(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_daily_bill_pharmacy_sales ipd_daily_bill_pharmacy_sales_ipdDailyBillId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_pharmacy_sales
    ADD CONSTRAINT "ipd_daily_bill_pharmacy_sales_ipdDailyBillId_fkey" FOREIGN KEY ("ipdDailyBillId") REFERENCES public.ipd_daily_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_daily_bill_pharmacy_sales ipd_daily_bill_pharmacy_sales_pharmacySaleId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_pharmacy_sales
    ADD CONSTRAINT "ipd_daily_bill_pharmacy_sales_pharmacySaleId_fkey" FOREIGN KEY ("pharmacySaleId") REFERENCES public.pharmacy_sales(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_daily_bill_room_charges ipd_daily_bill_room_charges_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_room_charges
    ADD CONSTRAINT ipd_daily_bill_room_charges_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_daily_bill_room_charges ipd_daily_bill_room_charges_custom_room_charges_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_room_charges
    ADD CONSTRAINT ipd_daily_bill_room_charges_custom_room_charges_id_fkey FOREIGN KEY (custom_room_charges_id) REFERENCES public.custom_room_charges(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_daily_bill_room_charges ipd_daily_bill_room_charges_daily_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_room_charges
    ADD CONSTRAINT ipd_daily_bill_room_charges_daily_bill_id_fkey FOREIGN KEY (daily_bill_id) REFERENCES public.ipd_daily_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_daily_bill_room_charges ipd_daily_bill_room_charges_room_log_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_room_charges
    ADD CONSTRAINT ipd_daily_bill_room_charges_room_log_id_fkey FOREIGN KEY (room_log_id) REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_daily_bill_room_charges ipd_daily_bill_room_charges_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_room_charges
    ADD CONSTRAINT ipd_daily_bill_room_charges_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_daily_bill_services ipd_daily_bill_services_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_services
    ADD CONSTRAINT ipd_daily_bill_services_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_daily_bill_services ipd_daily_bill_services_dailyBillId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_services
    ADD CONSTRAINT "ipd_daily_bill_services_dailyBillId_fkey" FOREIGN KEY ("dailyBillId") REFERENCES public.ipd_daily_bills(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_daily_bill_services ipd_daily_bill_services_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_services
    ADD CONSTRAINT ipd_daily_bill_services_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_daily_bill_services ipd_daily_bill_services_serviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_services
    ADD CONSTRAINT "ipd_daily_bill_services_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_daily_bill_services ipd_daily_bill_services_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bill_services
    ADD CONSTRAINT ipd_daily_bill_services_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_daily_bills ipd_daily_bills_admissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bills
    ADD CONSTRAINT "ipd_daily_bills_admissionId_fkey" FOREIGN KEY ("admissionId") REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_daily_bills ipd_daily_bills_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bills
    ADD CONSTRAINT ipd_daily_bills_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_daily_bills ipd_daily_bills_roomLogId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bills
    ADD CONSTRAINT "ipd_daily_bills_roomLogId_fkey" FOREIGN KEY ("roomLogId") REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_daily_bills ipd_daily_bills_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bills
    ADD CONSTRAINT ipd_daily_bills_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_daily_bills ipd_daily_bills_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_daily_bills
    ADD CONSTRAINT ipd_daily_bills_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_emr_clinical_document_files ipd_emr_clinical_document_files_clinical_document_header_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_clinical_document_files
    ADD CONSTRAINT ipd_emr_clinical_document_files_clinical_document_header_i_fkey FOREIGN KEY (clinical_document_header_id) REFERENCES public.ipd_emr_clinical_document_headers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_emr_clinical_document_files ipd_emr_clinical_document_files_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_clinical_document_files
    ADD CONSTRAINT ipd_emr_clinical_document_files_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_emr_clinical_document_files ipd_emr_clinical_document_files_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_clinical_document_files
    ADD CONSTRAINT ipd_emr_clinical_document_files_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_emr_clinical_document_headers ipd_emr_clinical_document_headers_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_clinical_document_headers
    ADD CONSTRAINT ipd_emr_clinical_document_headers_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_emr_clinical_document_headers ipd_emr_clinical_document_headers_ipd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_clinical_document_headers
    ADD CONSTRAINT ipd_emr_clinical_document_headers_ipd_emr_id_fkey FOREIGN KEY (ipd_emr_id) REFERENCES public.ipd_emrs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_emr_clinical_document_headers ipd_emr_clinical_document_headers_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_clinical_document_headers
    ADD CONSTRAINT ipd_emr_clinical_document_headers_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_emr_proxy_bill_joints ipd_emr_proxy_bill_joints_ipd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_proxy_bill_joints
    ADD CONSTRAINT ipd_emr_proxy_bill_joints_ipd_emr_id_fkey FOREIGN KEY (ipd_emr_id) REFERENCES public.ipd_emrs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_emr_proxy_bill_joints ipd_emr_proxy_bill_joints_proxy_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_proxy_bill_joints
    ADD CONSTRAINT ipd_emr_proxy_bill_joints_proxy_bill_id_fkey FOREIGN KEY (proxy_bill_id) REFERENCES public.proxy_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_emr_request_links ipd_emr_request_links_cath_lab_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_request_links
    ADD CONSTRAINT ipd_emr_request_links_cath_lab_request_id_fkey FOREIGN KEY (cath_lab_request_id) REFERENCES public.cathlab_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_emr_request_links ipd_emr_request_links_endo_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_request_links
    ADD CONSTRAINT ipd_emr_request_links_endo_request_id_fkey FOREIGN KEY (endo_request_id) REFERENCES public.endo_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_emr_request_links ipd_emr_request_links_hd_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_request_links
    ADD CONSTRAINT ipd_emr_request_links_hd_request_id_fkey FOREIGN KEY (hd_request_id) REFERENCES public.hd_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_emr_request_links ipd_emr_request_links_ipd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_request_links
    ADD CONSTRAINT ipd_emr_request_links_ipd_emr_id_fkey FOREIGN KEY (ipd_emr_id) REFERENCES public.ipd_emrs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_emr_request_links ipd_emr_request_links_ot_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emr_request_links
    ADD CONSTRAINT ipd_emr_request_links_ot_request_id_fkey FOREIGN KEY (ot_request_id) REFERENCES public.ot_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_emrs ipd_emrs_admissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emrs
    ADD CONSTRAINT "ipd_emrs_admissionId_fkey" FOREIGN KEY ("admissionId") REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_emrs ipd_emrs_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emrs
    ADD CONSTRAINT "ipd_emrs_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_emrs ipd_emrs_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emrs
    ADD CONSTRAINT ipd_emrs_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_emrs ipd_emrs_patientId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emrs
    ADD CONSTRAINT "ipd_emrs_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_emrs ipd_emrs_updatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_emrs
    ADD CONSTRAINT "ipd_emrs_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_final_bill ipd_final_bill_bill_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill
    ADD CONSTRAINT ipd_final_bill_bill_type_id_fkey FOREIGN KEY (bill_type_id) REFERENCES public."BillType"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_final_bill ipd_final_bill_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill
    ADD CONSTRAINT ipd_final_bill_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_final_bill ipd_final_bill_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill
    ADD CONSTRAINT ipd_final_bill_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_final_bill ipd_final_bill_deleted_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill
    ADD CONSTRAINT ipd_final_bill_deleted_by_id_fkey FOREIGN KEY (deleted_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_final_bill ipd_final_bill_discharge_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill
    ADD CONSTRAINT ipd_final_bill_discharge_admission_id_fkey FOREIGN KEY (discharge_admission_id) REFERENCES public.discharges(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_final_bill_payment_methods ipd_final_bill_payment_methods_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill_payment_methods
    ADD CONSTRAINT ipd_final_bill_payment_methods_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.ipd_final_bill(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_final_bill_payment_methods ipd_final_bill_payment_methods_payment_method_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill_payment_methods
    ADD CONSTRAINT ipd_final_bill_payment_methods_payment_method_id_fkey FOREIGN KEY (payment_method_id) REFERENCES public.payment_methods(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_final_bill ipd_final_bill_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill
    ADD CONSTRAINT ipd_final_bill_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_final_bill ipd_final_bill_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill
    ADD CONSTRAINT ipd_final_bill_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_final_bill_with_daily_bill ipd_final_bill_with_daily_bill_daily_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill_with_daily_bill
    ADD CONSTRAINT ipd_final_bill_with_daily_bill_daily_bill_id_fkey FOREIGN KEY (daily_bill_id) REFERENCES public.ipd_daily_bills(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_final_bill_with_daily_bill ipd_final_bill_with_daily_bill_ipd_final_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_final_bill_with_daily_bill
    ADD CONSTRAINT ipd_final_bill_with_daily_bill_ipd_final_bill_id_fkey FOREIGN KEY (ipd_final_bill_id) REFERENCES public.ipd_final_bill(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_pharmacy_return_items ipd_pharmacy_return_items_ipd_pharmacy_return_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_pharmacy_return_items
    ADD CONSTRAINT ipd_pharmacy_return_items_ipd_pharmacy_return_id_fkey FOREIGN KEY (ipd_pharmacy_return_id) REFERENCES public.ipd_pharmacy_returns(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_pharmacy_return_items ipd_pharmacy_return_items_pharmacy_sale_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_pharmacy_return_items
    ADD CONSTRAINT ipd_pharmacy_return_items_pharmacy_sale_item_id_fkey FOREIGN KEY (pharmacy_sale_item_id) REFERENCES public.pharmacy_sale_items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_pharmacy_returns ipd_pharmacy_returns_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_pharmacy_returns
    ADD CONSTRAINT ipd_pharmacy_returns_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_pharmacy_returns ipd_pharmacy_returns_approved_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_pharmacy_returns
    ADD CONSTRAINT ipd_pharmacy_returns_approved_by_id_fkey FOREIGN KEY (approved_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_pharmacy_returns ipd_pharmacy_returns_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_pharmacy_returns
    ADD CONSTRAINT ipd_pharmacy_returns_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_pharmacy_returns ipd_pharmacy_returns_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_pharmacy_returns
    ADD CONSTRAINT ipd_pharmacy_returns_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_pharmacy_returns ipd_pharmacy_returns_rejected_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_pharmacy_returns
    ADD CONSTRAINT ipd_pharmacy_returns_rejected_by_id_fkey FOREIGN KEY (rejected_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_pharmacy_returns ipd_pharmacy_returns_room_log_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_pharmacy_returns
    ADD CONSTRAINT ipd_pharmacy_returns_room_log_id_fkey FOREIGN KEY (room_log_id) REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_pharmacy_returns ipd_pharmacy_returns_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_pharmacy_returns
    ADD CONSTRAINT ipd_pharmacy_returns_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_ward_pharmacy_sales ipd_ward_pharmacy_sales_ipd_ward_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_pharmacy_sales
    ADD CONSTRAINT ipd_ward_pharmacy_sales_ipd_ward_service_id_fkey FOREIGN KEY (ipd_ward_service_id) REFERENCES public.ipd_ward_services(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_ward_pharmacy_sales ipd_ward_pharmacy_sales_pharmacy_sale_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_pharmacy_sales
    ADD CONSTRAINT ipd_ward_pharmacy_sales_pharmacy_sale_id_fkey FOREIGN KEY (pharmacy_sale_id) REFERENCES public.pharmacy_sales(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_ward_service_procedures ipd_ward_service_procedures_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_service_procedures
    ADD CONSTRAINT ipd_ward_service_procedures_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_ward_service_procedures ipd_ward_service_procedures_ipd_ward_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_service_procedures
    ADD CONSTRAINT ipd_ward_service_procedures_ipd_ward_id_fkey FOREIGN KEY (ipd_ward_id) REFERENCES public.ipd_ward_services(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_ward_service_procedures ipd_ward_service_procedures_service_package_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_service_procedures
    ADD CONSTRAINT ipd_ward_service_procedures_service_package_id_fkey FOREIGN KEY (service_package_id) REFERENCES public.procedures(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_ward_service_service_items ipd_ward_service_service_items_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_service_service_items
    ADD CONSTRAINT ipd_ward_service_service_items_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_ward_service_service_items ipd_ward_service_service_items_ipd_ward_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_service_service_items
    ADD CONSTRAINT ipd_ward_service_service_items_ipd_ward_id_fkey FOREIGN KEY (ipd_ward_id) REFERENCES public.ipd_ward_services(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_ward_service_service_items ipd_ward_service_service_items_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_service_service_items
    ADD CONSTRAINT ipd_ward_service_service_items_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_ward_services ipd_ward_services_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_services
    ADD CONSTRAINT ipd_ward_services_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_ward_services ipd_ward_services_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_services
    ADD CONSTRAINT ipd_ward_services_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_ward_services ipd_ward_services_ipdDailyBillId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_services
    ADD CONSTRAINT "ipd_ward_services_ipdDailyBillId_fkey" FOREIGN KEY ("ipdDailyBillId") REFERENCES public.ipd_daily_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ipd_ward_services ipd_ward_services_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_services
    ADD CONSTRAINT ipd_ward_services_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ipd_ward_services ipd_ward_services_room_log_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_services
    ADD CONSTRAINT ipd_ward_services_room_log_id_fkey FOREIGN KEY (room_log_id) REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipd_ward_services ipd_ward_services_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipd_ward_services
    ADD CONSTRAINT ipd_ward_services_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ipdot_requests ipdot_requests_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ipdot_requests
    ADD CONSTRAINT ipdot_requests_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: item_manual_prices item_manual_prices_changed_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.item_manual_prices
    ADD CONSTRAINT item_manual_prices_changed_by_id_fkey FOREIGN KEY (changed_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: item_manual_prices item_manual_prices_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.item_manual_prices
    ADD CONSTRAINT item_manual_prices_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: items items_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: items items_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: items items_item_used_by_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_item_used_by_department_id_fkey FOREIGN KEY (item_used_by_department_id) REFERENCES public.departments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: items items_selling_price_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_selling_price_group_id_fkey FOREIGN KEY (selling_price_group_id) REFERENCES public."SellingPriceGroup"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: items items_sub_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_sub_category_id_fkey FOREIGN KEY (sub_category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: items items_supplier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: items items_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_unit_id_fkey FOREIGN KEY (unit_id) REFERENCES public.units(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: items items_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_collection_methods lab_collection_methods_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_collection_methods
    ADD CONSTRAINT lab_collection_methods_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_collection_methods lab_collection_methods_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_collection_methods
    ADD CONSTRAINT lab_collection_methods_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_groups lab_groups_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_groups
    ADD CONSTRAINT lab_groups_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_groups lab_groups_labTestId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_groups
    ADD CONSTRAINT "lab_groups_labTestId_fkey" FOREIGN KEY ("labTestId") REFERENCES public.lab_tests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_groups lab_groups_specialLabTestId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_groups
    ADD CONSTRAINT "lab_groups_specialLabTestId_fkey" FOREIGN KEY ("specialLabTestId") REFERENCES public.speical_lab_tests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_groups lab_groups_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_groups
    ADD CONSTRAINT lab_groups_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_pivot_new_borns lab_pivot_new_borns_lab_pivot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_pivot_new_borns
    ADD CONSTRAINT lab_pivot_new_borns_lab_pivot_id_fkey FOREIGN KEY (lab_pivot_id) REFERENCES public.lab_pivots(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_pivot_new_borns lab_pivot_new_borns_new_born_baby_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_pivot_new_borns
    ADD CONSTRAINT lab_pivot_new_borns_new_born_baby_id_fkey FOREIGN KEY (new_born_baby_id) REFERENCES public.new_born_babies(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_pivots lab_pivots_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_pivots
    ADD CONSTRAINT lab_pivots_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_pivots lab_pivots_ipd_daily_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_pivots
    ADD CONSTRAINT lab_pivots_ipd_daily_bill_id_fkey FOREIGN KEY (ipd_daily_bill_id) REFERENCES public.ipd_daily_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_pivots lab_pivots_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_pivots
    ADD CONSTRAINT lab_pivots_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.opd_billings(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_pivots lab_pivots_opd_package_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_pivots
    ADD CONSTRAINT lab_pivots_opd_package_bill_id_fkey FOREIGN KEY (opd_package_bill_id) REFERENCES public.opd_package_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_pivots lab_pivots_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_pivots
    ADD CONSTRAINT lab_pivots_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_result_items lab_result_items_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_result_items
    ADD CONSTRAINT lab_result_items_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_result_items lab_result_items_lab_result_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_result_items
    ADD CONSTRAINT lab_result_items_lab_result_id_fkey FOREIGN KEY (lab_result_id) REFERENCES public.lab_results(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_result_items lab_result_items_reading_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_result_items
    ADD CONSTRAINT lab_result_items_reading_doctor_id_fkey FOREIGN KEY (reading_doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_result_items lab_result_items_test_script_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_result_items
    ADD CONSTRAINT lab_result_items_test_script_id_fkey FOREIGN KEY (test_script_id) REFERENCES public.test_scripts(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_result_items lab_result_items_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_result_items
    ADD CONSTRAINT lab_result_items_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_results lab_results_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_results
    ADD CONSTRAINT lab_results_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_results lab_results_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_results
    ADD CONSTRAINT lab_results_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_samples lab_samples_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_samples
    ADD CONSTRAINT lab_samples_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_samples lab_samples_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_samples
    ADD CONSTRAINT lab_samples_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_service_audits lab_service_audits_Lab_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_audits
    ADD CONSTRAINT "lab_service_audits_Lab_service_id_fkey" FOREIGN KEY ("Lab_service_id") REFERENCES public.lab_services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_service_audits lab_service_audits_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_audits
    ADD CONSTRAINT lab_service_audits_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_service_audits lab_service_audits_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_audits
    ADD CONSTRAINT lab_service_audits_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_service_items lab_service_items_acknowledgeStatusUpdatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT "lab_service_items_acknowledgeStatusUpdatedById_fkey" FOREIGN KEY ("acknowledgeStatusUpdatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_service_items lab_service_items_collectStatusUpdatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT "lab_service_items_collectStatusUpdatedById_fkey" FOREIGN KEY ("collectStatusUpdatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_service_items lab_service_items_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT lab_service_items_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_service_items lab_service_items_labReportStatusUpdatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT "lab_service_items_labReportStatusUpdatedById_fkey" FOREIGN KEY ("labReportStatusUpdatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_service_items lab_service_items_labServiceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT "lab_service_items_labServiceId_fkey" FOREIGN KEY ("labServiceId") REFERENCES public.lab_services(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_service_items lab_service_items_resultEntryStatusUpdatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT "lab_service_items_resultEntryStatusUpdatedById_fkey" FOREIGN KEY ("resultEntryStatusUpdatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_service_items lab_service_items_resultVerificationStatusUpdatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT "lab_service_items_resultVerificationStatusUpdatedById_fkey" FOREIGN KEY ("resultVerificationStatusUpdatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_service_items lab_service_items_specialLabTestId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT "lab_service_items_specialLabTestId_fkey" FOREIGN KEY ("specialLabTestId") REFERENCES public.speical_lab_tests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_service_items lab_service_items_testDoneStatusUpdatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT "lab_service_items_testDoneStatusUpdatedById_fkey" FOREIGN KEY ("testDoneStatusUpdatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_service_items lab_service_items_testingStatusUpdatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT "lab_service_items_testingStatusUpdatedById_fkey" FOREIGN KEY ("testingStatusUpdatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_service_items lab_service_items_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_service_items
    ADD CONSTRAINT lab_service_items_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_services lab_services_acknowledge_status_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_acknowledge_status_updated_by_id_fkey FOREIGN KEY (acknowledge_status_updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_services lab_services_collect_status_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_collect_status_updated_by_id_fkey FOREIGN KEY (collect_status_updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_services lab_services_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_services lab_services_ipd_daily_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_ipd_daily_service_id_fkey FOREIGN KEY (ipd_daily_service_id) REFERENCES public.ipd_daily_bill_services(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_services lab_services_lab_pivot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_lab_pivot_id_fkey FOREIGN KEY (lab_pivot_id) REFERENCES public.lab_pivots(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_services lab_services_lab_report_status_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_lab_report_status_updated_by_id_fkey FOREIGN KEY (lab_report_status_updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_services lab_services_result_entry_status_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_result_entry_status_updated_by_id_fkey FOREIGN KEY (result_entry_status_updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_services lab_services_result_verification_status_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_result_verification_status_updated_by_id_fkey FOREIGN KEY (result_verification_status_updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_services lab_services_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_services lab_services_test_done_status_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_test_done_status_updated_by_id_fkey FOREIGN KEY (test_done_status_updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_services lab_services_testing_status_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_testing_status_updated_by_id_fkey FOREIGN KEY (testing_status_updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_services lab_services_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_services
    ADD CONSTRAINT lab_services_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_statuses lab_statuses_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_statuses
    ADD CONSTRAINT lab_statuses_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_statuses lab_statuses_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_statuses
    ADD CONSTRAINT lab_statuses_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_template_categories_audit lab_template_categories_audit_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_categories_audit
    ADD CONSTRAINT lab_template_categories_audit_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_template_categories_audit lab_template_categories_audit_lab_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_categories_audit
    ADD CONSTRAINT lab_template_categories_audit_lab_template_id_fkey FOREIGN KEY (lab_template_id) REFERENCES public.lab_template(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_template_categories_audit lab_template_categories_audit_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_categories_audit
    ADD CONSTRAINT lab_template_categories_audit_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_template_categories lab_template_categories_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_categories
    ADD CONSTRAINT lab_template_categories_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_template_categories lab_template_categories_lab_template_config_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_categories
    ADD CONSTRAINT lab_template_categories_lab_template_config_id_fkey FOREIGN KEY (lab_template_config_id) REFERENCES public.lab_template(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_template_categories lab_template_categories_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_categories
    ADD CONSTRAINT lab_template_categories_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_template lab_template_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template
    ADD CONSTRAINT lab_template_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_template_items lab_template_items_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_items
    ADD CONSTRAINT lab_template_items_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_template_items lab_template_items_lab_template_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_items
    ADD CONSTRAINT lab_template_items_lab_template_category_id_fkey FOREIGN KEY (lab_template_category_id) REFERENCES public.lab_template_categories(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_template_items lab_template_items_lab_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_items
    ADD CONSTRAINT lab_template_items_lab_test_id_fkey FOREIGN KEY (lab_test_id) REFERENCES public.lab_tests(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_template_items lab_template_items_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_items
    ADD CONSTRAINT lab_template_items_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_template_microbiology_items lab_template_microbiology_items_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_microbiology_items
    ADD CONSTRAINT lab_template_microbiology_items_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_template_microbiology_items lab_template_microbiology_items_lab_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_microbiology_items
    ADD CONSTRAINT lab_template_microbiology_items_lab_template_id_fkey FOREIGN KEY (lab_template_id) REFERENCES public.lab_template(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: lab_template_microbiology_items lab_template_microbiology_items_special_lab_test_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_microbiology_items
    ADD CONSTRAINT lab_template_microbiology_items_special_lab_test_fkey FOREIGN KEY (special_lab_test) REFERENCES public.speical_lab_tests(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_template_microbiology_items lab_template_microbiology_items_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template_microbiology_items
    ADD CONSTRAINT lab_template_microbiology_items_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_template lab_template_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_template
    ADD CONSTRAINT lab_template_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_tests lab_tests_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_tests
    ADD CONSTRAINT lab_tests_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_tests lab_tests_lab_collection_method_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_tests
    ADD CONSTRAINT lab_tests_lab_collection_method_id_fkey FOREIGN KEY (lab_collection_method_id) REFERENCES public.lab_collection_methods(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: lab_tests lab_tests_lab_sample_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_tests
    ADD CONSTRAINT lab_tests_lab_sample_id_fkey FOREIGN KEY (lab_sample_id) REFERENCES public.lab_samples(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_tests lab_tests_lab_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_tests
    ADD CONSTRAINT lab_tests_lab_unit_id_fkey FOREIGN KEY (lab_unit_id) REFERENCES public.lab_units(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_tests lab_tests_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_tests
    ADD CONSTRAINT lab_tests_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_tests lab_tests_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_tests
    ADD CONSTRAINT lab_tests_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_units lab_units_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_units
    ADD CONSTRAINT lab_units_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: lab_units lab_units_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lab_units
    ADD CONSTRAINT lab_units_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: main_procedures main_procedures_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_procedures
    ADD CONSTRAINT main_procedures_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: main_procedures main_procedures_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_procedures
    ADD CONSTRAINT main_procedures_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: member_card member_card_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card
    ADD CONSTRAINT member_card_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: member_card member_card_member_card_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card
    ADD CONSTRAINT member_card_member_card_type_id_fkey FOREIGN KEY (member_card_type_id) REFERENCES public.member_card_type(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: member_card_type member_card_type_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card_type
    ADD CONSTRAINT member_card_type_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: member_card_type_service_packages member_card_type_service_packages_member_card_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card_type_service_packages
    ADD CONSTRAINT member_card_type_service_packages_member_card_type_id_fkey FOREIGN KEY (member_card_type_id) REFERENCES public.member_card_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: member_card_type_service_packages member_card_type_service_packages_service_package_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card_type_service_packages
    ADD CONSTRAINT member_card_type_service_packages_service_package_id_fkey FOREIGN KEY (service_package_id) REFERENCES public.service_packages(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: member_card_type_services member_card_type_services_member_card_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card_type_services
    ADD CONSTRAINT member_card_type_services_member_card_type_id_fkey FOREIGN KEY (member_card_type_id) REFERENCES public.member_card_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: member_card_type_services member_card_type_services_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card_type_services
    ADD CONSTRAINT member_card_type_services_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: member_card_type member_card_type_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card_type
    ADD CONSTRAINT member_card_type_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: member_card member_card_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_card
    ADD CONSTRAINT member_card_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: member_list member_list_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_list
    ADD CONSTRAINT member_list_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: member_list member_list_member_card_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_list
    ADD CONSTRAINT member_list_member_card_id_fkey FOREIGN KEY (member_card_id) REFERENCES public.member_card(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: member_list member_list_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_list
    ADD CONSTRAINT member_list_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.opd_billings(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: member_list member_list_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_list
    ADD CONSTRAINT member_list_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: member_list member_list_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.member_list
    ADD CONSTRAINT member_list_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: new_born_babies new_born_babies_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.new_born_babies
    ADD CONSTRAINT new_born_babies_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: new_born_babies new_born_babies_mother_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.new_born_babies
    ADD CONSTRAINT new_born_babies_mother_id_fkey FOREIGN KEY (mother_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: new_born_babies new_born_babies_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.new_born_babies
    ADD CONSTRAINT new_born_babies_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: new_born_baby_under_care_doctors new_born_baby_under_care_doctors_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.new_born_baby_under_care_doctors
    ADD CONSTRAINT new_born_baby_under_care_doctors_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: new_born_baby_under_care_doctors new_born_baby_under_care_doctors_new_born_baby_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.new_born_baby_under_care_doctors
    ADD CONSTRAINT new_born_baby_under_care_doctors_new_born_baby_id_fkey FOREIGN KEY (new_born_baby_id) REFERENCES public.new_born_babies(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: nurse_notes nurse_notes_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nurse_notes
    ADD CONSTRAINT nurse_notes_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: nurse_notes nurse_notes_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nurse_notes
    ADD CONSTRAINT nurse_notes_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: nurse_notes nurse_notes_ipd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nurse_notes
    ADD CONSTRAINT nurse_notes_ipd_emr_id_fkey FOREIGN KEY (ipd_emr_id) REFERENCES public.ipd_emrs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: nurse_notes nurse_notes_nurse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nurse_notes
    ADD CONSTRAINT nurse_notes_nurse_id_fkey FOREIGN KEY (nurse_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: nurse_notes nurse_notes_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nurse_notes
    ADD CONSTRAINT nurse_notes_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: nurse_notes nurse_notes_room_log_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nurse_notes
    ADD CONSTRAINT nurse_notes_room_log_id_fkey FOREIGN KEY (room_log_id) REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: nurse_notes nurse_notes_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nurse_notes
    ADD CONSTRAINT nurse_notes_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billing_activity_logs opd_billing_activity_logs_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_activity_logs
    ADD CONSTRAINT opd_billing_activity_logs_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.opd_billings(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_billing_activity_logs opd_billing_activity_logs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_activity_logs
    ADD CONSTRAINT opd_billing_activity_logs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_billing_imaging_add_on_pharmacy_items opd_billing_imaging_add_on_pharmacy_items_add_on_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_imaging_add_on_pharmacy_items
    ADD CONSTRAINT opd_billing_imaging_add_on_pharmacy_items_add_on_item_id_fkey FOREIGN KEY (add_on_item_id) REFERENCES public.imaging_add_on_pharmacy_items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billing_imaging_add_on_pharmacy_items opd_billing_imaging_add_on_pharmacy_items_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_imaging_add_on_pharmacy_items
    ADD CONSTRAINT opd_billing_imaging_add_on_pharmacy_items_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.opd_billings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billing_imaging_add_on_pharmacy_items opd_billing_imaging_add_on_pharmacy_items_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_imaging_add_on_pharmacy_items
    ADD CONSTRAINT opd_billing_imaging_add_on_pharmacy_items_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billing_payment_methods opd_billing_payment_methods_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_payment_methods
    ADD CONSTRAINT opd_billing_payment_methods_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.opd_billings(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_billing_payment_methods opd_billing_payment_methods_payment_method_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_payment_methods
    ADD CONSTRAINT opd_billing_payment_methods_payment_method_id_fkey FOREIGN KEY (payment_method_id) REFERENCES public.payment_methods(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_billing_pharmacy_sale_items opd_billing_pharmacy_sale_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_pharmacy_sale_items
    ADD CONSTRAINT opd_billing_pharmacy_sale_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billing_pharmacy_sale_items opd_billing_pharmacy_sale_items_opd_billing_pharmacy_sale__fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_pharmacy_sale_items
    ADD CONSTRAINT opd_billing_pharmacy_sale_items_opd_billing_pharmacy_sale__fkey FOREIGN KEY (opd_billing_pharmacy_sale_id) REFERENCES public."OPDBillingPharmacySale"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billing_pharmacy_sale_items opd_billing_pharmacy_sale_items_pharmacy_sale_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_pharmacy_sale_items
    ADD CONSTRAINT opd_billing_pharmacy_sale_items_pharmacy_sale_item_id_fkey FOREIGN KEY (pharmacy_sale_item_id) REFERENCES public.pharmacy_sale_items(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_billing_pharmacy_sale_items opd_billing_pharmacy_sale_items_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_pharmacy_sale_items
    ADD CONSTRAINT opd_billing_pharmacy_sale_items_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billing_procedures opd_billing_procedures_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_procedures
    ADD CONSTRAINT opd_billing_procedures_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billing_procedures opd_billing_procedures_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_procedures
    ADD CONSTRAINT opd_billing_procedures_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billing_procedures opd_billing_procedures_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_procedures
    ADD CONSTRAINT opd_billing_procedures_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.opd_billings(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_billing_procedures opd_billing_procedures_procedure_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_procedures
    ADD CONSTRAINT opd_billing_procedures_procedure_id_fkey FOREIGN KEY (procedure_id) REFERENCES public.procedures(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billing_service_packages opd_billing_service_packages_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_service_packages
    ADD CONSTRAINT opd_billing_service_packages_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.opd_billings(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_billing_service_packages opd_billing_service_packages_service_package_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_service_packages
    ADD CONSTRAINT opd_billing_service_packages_service_package_id_fkey FOREIGN KEY (service_package_id) REFERENCES public.service_packages(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billing_services opd_billing_services_appointment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_services
    ADD CONSTRAINT opd_billing_services_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billing_services opd_billing_services_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_services
    ADD CONSTRAINT opd_billing_services_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billing_services opd_billing_services_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_services
    ADD CONSTRAINT opd_billing_services_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billing_services opd_billing_services_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_services
    ADD CONSTRAINT opd_billing_services_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.opd_billings(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_billing_services opd_billing_services_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billing_services
    ADD CONSTRAINT opd_billing_services_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billings opd_billings_appointment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billings opd_billings_bill_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_bill_type_id_fkey FOREIGN KEY (bill_type_id) REFERENCES public."BillType"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billings opd_billings_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billings opd_billings_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billings opd_billings_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billings opd_billings_member_card_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_member_card_id_fkey FOREIGN KEY (member_card_id) REFERENCES public.member_card(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billings opd_billings_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billings opd_billings_payment_method_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_payment_method_id_fkey FOREIGN KEY (payment_method_id) REFERENCES public.payment_methods(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_billings opd_billings_pharmacy_sale_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_pharmacy_sale_id_fkey FOREIGN KEY (pharmacy_sale_id) REFERENCES public.pharmacy_sales(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billings opd_billings_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_billings opd_billings_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_billings
    ADD CONSTRAINT opd_billings_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_clinical_document_files opd_emr_clinical_document_files_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_clinical_document_files
    ADD CONSTRAINT opd_emr_clinical_document_files_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_clinical_document_files opd_emr_clinical_document_files_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_clinical_document_files
    ADD CONSTRAINT opd_emr_clinical_document_files_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_clinical_document_headers opd_emr_clinical_document_headers_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_clinical_document_headers
    ADD CONSTRAINT opd_emr_clinical_document_headers_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_clinical_document_headers opd_emr_clinical_document_headers_opd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_clinical_document_headers
    ADD CONSTRAINT opd_emr_clinical_document_headers_opd_emr_id_fkey FOREIGN KEY (opd_emr_id) REFERENCES public.opd_emrs(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_emr_clinical_document_headers opd_emr_clinical_document_headers_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_clinical_document_headers
    ADD CONSTRAINT opd_emr_clinical_document_headers_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_doctor_notes opd_emr_doctor_notes_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_doctor_notes
    ADD CONSTRAINT opd_emr_doctor_notes_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_doctor_notes opd_emr_doctor_notes_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_doctor_notes
    ADD CONSTRAINT opd_emr_doctor_notes_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_doctor_notes opd_emr_doctor_notes_opd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_doctor_notes
    ADD CONSTRAINT opd_emr_doctor_notes_opd_emr_id_fkey FOREIGN KEY (opd_emr_id) REFERENCES public.opd_emrs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_doctor_notes opd_emr_doctor_notes_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_doctor_notes
    ADD CONSTRAINT opd_emr_doctor_notes_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_doctor_notes opd_emr_doctor_notes_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_doctor_notes
    ADD CONSTRAINT opd_emr_doctor_notes_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_nurse_notes opd_emr_nurse_notes_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_nurse_notes
    ADD CONSTRAINT opd_emr_nurse_notes_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_nurse_notes opd_emr_nurse_notes_nurse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_nurse_notes
    ADD CONSTRAINT opd_emr_nurse_notes_nurse_id_fkey FOREIGN KEY (nurse_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_nurse_notes opd_emr_nurse_notes_opd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_nurse_notes
    ADD CONSTRAINT opd_emr_nurse_notes_opd_emr_id_fkey FOREIGN KEY (opd_emr_id) REFERENCES public.opd_emrs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_nurse_notes opd_emr_nurse_notes_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_nurse_notes
    ADD CONSTRAINT opd_emr_nurse_notes_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_nurse_notes opd_emr_nurse_notes_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_nurse_notes
    ADD CONSTRAINT opd_emr_nurse_notes_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_pharmacy_request_items opd_emr_pharmacy_request_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_request_items
    ADD CONSTRAINT opd_emr_pharmacy_request_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_pharmacy_request_items opd_emr_pharmacy_request_items_opd_emr_pharmacy_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_request_items
    ADD CONSTRAINT opd_emr_pharmacy_request_items_opd_emr_pharmacy_request_id_fkey FOREIGN KEY (opd_emr_pharmacy_request_id) REFERENCES public.opd_emr_pharmacy_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_emr_pharmacy_requests opd_emr_pharmacy_requests_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_requests
    ADD CONSTRAINT opd_emr_pharmacy_requests_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_pharmacy_requests opd_emr_pharmacy_requests_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_requests
    ADD CONSTRAINT opd_emr_pharmacy_requests_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_pharmacy_requests opd_emr_pharmacy_requests_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_requests
    ADD CONSTRAINT opd_emr_pharmacy_requests_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_pharmacy_requests opd_emr_pharmacy_requests_opd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_requests
    ADD CONSTRAINT opd_emr_pharmacy_requests_opd_emr_id_fkey FOREIGN KEY (opd_emr_id) REFERENCES public.opd_emrs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_pharmacy_requests opd_emr_pharmacy_requests_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_requests
    ADD CONSTRAINT opd_emr_pharmacy_requests_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_pharmacy_requests opd_emr_pharmacy_requests_prescription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_requests
    ADD CONSTRAINT opd_emr_pharmacy_requests_prescription_id_fkey FOREIGN KEY (prescription_id) REFERENCES public.prescriptions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_pharmacy_requests opd_emr_pharmacy_requests_requested_from_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_requests
    ADD CONSTRAINT opd_emr_pharmacy_requests_requested_from_store_id_fkey FOREIGN KEY (requested_from_store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_pharmacy_requests opd_emr_pharmacy_requests_requested_to_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_requests
    ADD CONSTRAINT opd_emr_pharmacy_requests_requested_to_store_id_fkey FOREIGN KEY (requested_to_store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_pharmacy_requests opd_emr_pharmacy_requests_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_requests
    ADD CONSTRAINT opd_emr_pharmacy_requests_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_pharmacy_transfer_items opd_emr_pharmacy_transfer_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_transfer_items
    ADD CONSTRAINT opd_emr_pharmacy_transfer_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_pharmacy_transfer_items opd_emr_pharmacy_transfer_items_opd_emr_pharmacy_transfer__fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_transfer_items
    ADD CONSTRAINT opd_emr_pharmacy_transfer_items_opd_emr_pharmacy_transfer__fkey FOREIGN KEY (opd_emr_pharmacy_transfer_id) REFERENCES public.opd_emr_pharmacy_transfers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_emr_pharmacy_transfer_items opd_emr_pharmacy_transfer_items_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_transfer_items
    ADD CONSTRAINT opd_emr_pharmacy_transfer_items_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_pharmacy_transfers opd_emr_pharmacy_transfers_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_transfers
    ADD CONSTRAINT opd_emr_pharmacy_transfers_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_pharmacy_transfers opd_emr_pharmacy_transfers_opd_emr_pharmacy_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_transfers
    ADD CONSTRAINT opd_emr_pharmacy_transfers_opd_emr_pharmacy_request_id_fkey FOREIGN KEY (opd_emr_pharmacy_request_id) REFERENCES public.opd_emr_pharmacy_requests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_pharmacy_transfers opd_emr_pharmacy_transfers_pharmacy_sale_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_transfers
    ADD CONSTRAINT opd_emr_pharmacy_transfers_pharmacy_sale_id_fkey FOREIGN KEY (pharmacy_sale_id) REFERENCES public.pharmacy_sales(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_pharmacy_transfers opd_emr_pharmacy_transfers_rejected_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_transfers
    ADD CONSTRAINT opd_emr_pharmacy_transfers_rejected_by_id_fkey FOREIGN KEY (rejected_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_pharmacy_transfers opd_emr_pharmacy_transfers_transferred_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_transfers
    ADD CONSTRAINT opd_emr_pharmacy_transfers_transferred_by_id_fkey FOREIGN KEY (transferred_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_pharmacy_transfers opd_emr_pharmacy_transfers_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_pharmacy_transfers
    ADD CONSTRAINT opd_emr_pharmacy_transfers_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_service_request_items opd_emr_service_request_items_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_request_items
    ADD CONSTRAINT opd_emr_service_request_items_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_service_request_items opd_emr_service_request_items_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_request_items
    ADD CONSTRAINT "opd_emr_service_request_items_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_service_request_items opd_emr_service_request_items_doctorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_request_items
    ADD CONSTRAINT "opd_emr_service_request_items_doctorId_fkey" FOREIGN KEY ("doctorId") REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_service_request_items opd_emr_service_request_items_opdEmrServiceRequestId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_request_items
    ADD CONSTRAINT "opd_emr_service_request_items_opdEmrServiceRequestId_fkey" FOREIGN KEY ("opdEmrServiceRequestId") REFERENCES public.opd_emr_service_requests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_service_request_items opd_emr_service_request_items_serviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_request_items
    ADD CONSTRAINT "opd_emr_service_request_items_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_service_request_items opd_emr_service_request_items_updatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_request_items
    ADD CONSTRAINT "opd_emr_service_request_items_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_service_requests opd_emr_service_requests_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_requests
    ADD CONSTRAINT "opd_emr_service_requests_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_service_requests opd_emr_service_requests_lab_pivot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_requests
    ADD CONSTRAINT opd_emr_service_requests_lab_pivot_id_fkey FOREIGN KEY (lab_pivot_id) REFERENCES public.lab_pivots(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_service_requests opd_emr_service_requests_opdEmrId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_requests
    ADD CONSTRAINT "opd_emr_service_requests_opdEmrId_fkey" FOREIGN KEY ("opdEmrId") REFERENCES public.opd_emrs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_service_requests opd_emr_service_requests_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_requests
    ADD CONSTRAINT opd_emr_service_requests_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_service_requests opd_emr_service_requests_referralDoctorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_requests
    ADD CONSTRAINT "opd_emr_service_requests_referralDoctorId_fkey" FOREIGN KEY ("referralDoctorId") REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_service_requests opd_emr_service_requests_referral_clinic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_requests
    ADD CONSTRAINT opd_emr_service_requests_referral_clinic_id_fkey FOREIGN KEY (referral_clinic_id) REFERENCES public.clinics(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_service_requests opd_emr_service_requests_updatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_service_requests
    ADD CONSTRAINT "opd_emr_service_requests_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_services opd_emr_services_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_services
    ADD CONSTRAINT "opd_emr_services_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_services opd_emr_services_doctorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_services
    ADD CONSTRAINT "opd_emr_services_doctorId_fkey" FOREIGN KEY ("doctorId") REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_services opd_emr_services_imaging_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_services
    ADD CONSTRAINT opd_emr_services_imaging_service_id_fkey FOREIGN KEY (imaging_service_id) REFERENCES public.imaging_services(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_services opd_emr_services_lab_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_services
    ADD CONSTRAINT opd_emr_services_lab_service_id_fkey FOREIGN KEY (lab_service_id) REFERENCES public.lab_services(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_services opd_emr_services_opdEmrId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_services
    ADD CONSTRAINT "opd_emr_services_opdEmrId_fkey" FOREIGN KEY ("opdEmrId") REFERENCES public.opd_emrs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_services opd_emr_services_serviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_services
    ADD CONSTRAINT "opd_emr_services_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_services opd_emr_services_updatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_services
    ADD CONSTRAINT "opd_emr_services_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_vital_signs opd_emr_vital_signs_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_vital_signs
    ADD CONSTRAINT opd_emr_vital_signs_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_vital_signs opd_emr_vital_signs_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_vital_signs
    ADD CONSTRAINT opd_emr_vital_signs_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emr_vital_signs opd_emr_vital_signs_opd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_vital_signs
    ADD CONSTRAINT opd_emr_vital_signs_opd_emr_id_fkey FOREIGN KEY (opd_emr_id) REFERENCES public.opd_emrs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emr_vital_signs opd_emr_vital_signs_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emr_vital_signs
    ADD CONSTRAINT opd_emr_vital_signs_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emrs opd_emrs_appointmentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emrs
    ADD CONSTRAINT "opd_emrs_appointmentId_fkey" FOREIGN KEY ("appointmentId") REFERENCES public.appointments(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emrs opd_emrs_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emrs
    ADD CONSTRAINT "opd_emrs_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emrs opd_emrs_doctorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emrs
    ADD CONSTRAINT "opd_emrs_doctorId_fkey" FOREIGN KEY ("doctorId") REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_emrs opd_emrs_patientId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emrs
    ADD CONSTRAINT "opd_emrs_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_emrs opd_emrs_updatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_emrs
    ADD CONSTRAINT "opd_emrs_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_package_bill_activity_logs opd_package_bill_activity_logs_opd_package_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bill_activity_logs
    ADD CONSTRAINT opd_package_bill_activity_logs_opd_package_bill_id_fkey FOREIGN KEY (opd_package_bill_id) REFERENCES public.opd_package_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_package_bill_activity_logs opd_package_bill_activity_logs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bill_activity_logs
    ADD CONSTRAINT opd_package_bill_activity_logs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_package_bill_items opd_package_bill_items_opd_package_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bill_items
    ADD CONSTRAINT opd_package_bill_items_opd_package_bill_id_fkey FOREIGN KEY (opd_package_bill_id) REFERENCES public.opd_package_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_package_bill_items opd_package_bill_items_service_package_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bill_items
    ADD CONSTRAINT opd_package_bill_items_service_package_id_fkey FOREIGN KEY (service_package_id) REFERENCES public.service_packages(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_package_bill_payment_methods opd_package_bill_payment_methods_opd_package_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bill_payment_methods
    ADD CONSTRAINT opd_package_bill_payment_methods_opd_package_bill_id_fkey FOREIGN KEY (opd_package_bill_id) REFERENCES public.opd_package_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_package_bill_payment_methods opd_package_bill_payment_methods_payment_method_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bill_payment_methods
    ADD CONSTRAINT opd_package_bill_payment_methods_payment_method_id_fkey FOREIGN KEY (payment_method_id) REFERENCES public.payment_methods(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_package_bills opd_package_bills_bill_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bills
    ADD CONSTRAINT opd_package_bills_bill_type_id_fkey FOREIGN KEY (bill_type_id) REFERENCES public."BillType"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_package_bills opd_package_bills_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bills
    ADD CONSTRAINT "opd_package_bills_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_package_bills opd_package_bills_member_card_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bills
    ADD CONSTRAINT opd_package_bills_member_card_id_fkey FOREIGN KEY (member_card_id) REFERENCES public.member_card(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_package_bills opd_package_bills_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bills
    ADD CONSTRAINT opd_package_bills_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_package_bills opd_package_bills_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bills
    ADD CONSTRAINT opd_package_bills_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_package_bills opd_package_bills_updatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_package_bills
    ADD CONSTRAINT "opd_package_bills_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_refund_bill_pharmacy_items opd_refund_bill_pharmacy_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_pharmacy_items
    ADD CONSTRAINT opd_refund_bill_pharmacy_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_refund_bill_pharmacy_items opd_refund_bill_pharmacy_items_opd_billing_pharmacy_sale_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_pharmacy_items
    ADD CONSTRAINT opd_refund_bill_pharmacy_items_opd_billing_pharmacy_sale_i_fkey FOREIGN KEY (opd_billing_pharmacy_sale_id) REFERENCES public."OPDBillingPharmacySale"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_refund_bill_pharmacy_items opd_refund_bill_pharmacy_items_opd_refund_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_pharmacy_items
    ADD CONSTRAINT opd_refund_bill_pharmacy_items_opd_refund_bill_id_fkey FOREIGN KEY (opd_refund_bill_id) REFERENCES public.opd_refund_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_refund_bill_pharmacy_items opd_refund_bill_pharmacy_items_sale_return_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_pharmacy_items
    ADD CONSTRAINT opd_refund_bill_pharmacy_items_sale_return_id_fkey FOREIGN KEY (sale_return_id) REFERENCES public.sale_returns(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_refund_bill_pharmacy_items opd_refund_bill_pharmacy_items_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_pharmacy_items
    ADD CONSTRAINT opd_refund_bill_pharmacy_items_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_refund_bill_procedure_items opd_refund_bill_procedure_items_opd_refund_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_procedure_items
    ADD CONSTRAINT opd_refund_bill_procedure_items_opd_refund_bill_id_fkey FOREIGN KEY (opd_refund_bill_id) REFERENCES public.opd_refund_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_refund_bill_procedure_items opd_refund_bill_procedure_items_procedure_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_procedure_items
    ADD CONSTRAINT opd_refund_bill_procedure_items_procedure_id_fkey FOREIGN KEY (procedure_id) REFERENCES public.procedures(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_refund_bill_service_items opd_refund_bill_service_items_doctorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_service_items
    ADD CONSTRAINT "opd_refund_bill_service_items_doctorId_fkey" FOREIGN KEY ("doctorId") REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_refund_bill_service_items opd_refund_bill_service_items_opd_refund_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_service_items
    ADD CONSTRAINT opd_refund_bill_service_items_opd_refund_bill_id_fkey FOREIGN KEY (opd_refund_bill_id) REFERENCES public.opd_refund_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opd_refund_bill_service_items opd_refund_bill_service_items_serviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bill_service_items
    ADD CONSTRAINT "opd_refund_bill_service_items_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_refund_bills opd_refund_bills_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bills
    ADD CONSTRAINT opd_refund_bills_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_refund_bills opd_refund_bills_opd_billing_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bills
    ADD CONSTRAINT opd_refund_bills_opd_billing_id_fkey FOREIGN KEY (opd_billing_id) REFERENCES public.opd_billings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_refund_bills opd_refund_bills_refunded_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bills
    ADD CONSTRAINT opd_refund_bills_refunded_by_id_fkey FOREIGN KEY (refunded_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: opd_refund_bills opd_refund_bills_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_refund_bills
    ADD CONSTRAINT opd_refund_bills_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_service_referrals opd_service_referrals_clinic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_service_referrals
    ADD CONSTRAINT opd_service_referrals_clinic_id_fkey FOREIGN KEY (clinic_id) REFERENCES public.clinics(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_service_referrals opd_service_referrals_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_service_referrals
    ADD CONSTRAINT opd_service_referrals_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opd_service_referrals opd_service_referrals_opd_billing_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opd_service_referrals
    ADD CONSTRAINT opd_service_referrals_opd_billing_service_id_fkey FOREIGN KEY (opd_billing_service_id) REFERENCES public.opd_billing_services(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: opdot_requests opdot_requests_appointment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opdot_requests
    ADD CONSTRAINT opdot_requests_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: opdot_requests opdot_requests_appointment_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.opdot_requests
    ADD CONSTRAINT opdot_requests_appointment_type_id_fkey FOREIGN KEY (appointment_type_id) REFERENCES public.appointment_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: operation_types operation_types_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation_types
    ADD CONSTRAINT operation_types_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: operation_types operation_types_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation_types
    ADD CONSTRAINT operation_types_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ot_requests ot_requests_anesthesia_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_anesthesia_type_id_fkey FOREIGN KEY (anesthesia_type_id) REFERENCES public.anesthesia_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ot_requests ot_requests_building_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_building_id_fkey FOREIGN KEY (building_id) REFERENCES public.buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ot_requests ot_requests_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ot_requests ot_requests_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ot_requests ot_requests_ipd_ot_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_ipd_ot_request_id_fkey FOREIGN KEY (ipd_ot_request_id) REFERENCES public.ipdot_requests(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ot_requests ot_requests_opd_ot_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_opd_ot_request_id_fkey FOREIGN KEY (opd_ot_request_id) REFERENCES public.opdot_requests(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ot_requests ot_requests_operation_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_operation_type_id_fkey FOREIGN KEY (operation_type_id) REFERENCES public.operation_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ot_requests ot_requests_patientId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT "ot_requests_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ot_requests ot_requests_referral_clinic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_referral_clinic_id_fkey FOREIGN KEY (referral_clinic_id) REFERENCES public.clinics(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ot_requests ot_requests_referral_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_referral_doctor_id_fkey FOREIGN KEY (referral_doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ot_requests ot_requests_room_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_room_id_fkey FOREIGN KEY (room_id) REFERENCES public.rooms(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ot_requests ot_requests_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ot_requests
    ADD CONSTRAINT ot_requests_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: patient_member_card_service_package_usages patient_member_card_service_package_usages_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_service_package_usages
    ADD CONSTRAINT patient_member_card_service_package_usages_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: patient_member_card_service_package_usages patient_member_card_service_package_usages_member_card_typ_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_service_package_usages
    ADD CONSTRAINT patient_member_card_service_package_usages_member_card_typ_fkey FOREIGN KEY (member_card_type_service_package_id) REFERENCES public.member_card_type_service_packages(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: patient_member_card_service_package_usages patient_member_card_service_package_usages_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_service_package_usages
    ADD CONSTRAINT patient_member_card_service_package_usages_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: patient_member_card_service_package_usages patient_member_card_service_package_usages_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_service_package_usages
    ADD CONSTRAINT patient_member_card_service_package_usages_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: patient_member_card_service_usages patient_member_card_service_usages_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_service_usages
    ADD CONSTRAINT patient_member_card_service_usages_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: patient_member_card_service_usages patient_member_card_service_usages_member_card_type_servic_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_service_usages
    ADD CONSTRAINT patient_member_card_service_usages_member_card_type_servic_fkey FOREIGN KEY (member_card_type_service_id) REFERENCES public.member_card_type_services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: patient_member_card_service_usages patient_member_card_service_usages_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_service_usages
    ADD CONSTRAINT patient_member_card_service_usages_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: patient_member_card_service_usages patient_member_card_service_usages_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_service_usages
    ADD CONSTRAINT patient_member_card_service_usages_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: patient_member_card_type_room_charge_usages patient_member_card_type_room_charge_usages_member_card_ty_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_type_room_charge_usages
    ADD CONSTRAINT patient_member_card_type_room_charge_usages_member_card_ty_fkey FOREIGN KEY (member_card_type_id) REFERENCES public.member_card_type(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: patient_member_card_type_room_charge_usages patient_member_card_type_room_charge_usages_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_member_card_type_room_charge_usages
    ADD CONSTRAINT patient_member_card_type_room_charge_usages_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: patient_services patient_services_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_services
    ADD CONSTRAINT patient_services_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: patient_services patient_services_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patient_services
    ADD CONSTRAINT patient_services_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: patients patients_appointment_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_appointment_type_id_fkey FOREIGN KEY (appointment_type_id) REFERENCES public.appointment_types(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: patients patients_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: patients patients_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: payment_methods payment_methods_bank_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES public.banks(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: payment_methods payment_methods_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: payment_methods payment_methods_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_methods
    ADD CONSTRAINT payment_methods_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: permissions permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pharmacy_request_items pharmacy_request_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_request_items
    ADD CONSTRAINT pharmacy_request_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_request_items pharmacy_request_items_pharmacy_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_request_items
    ADD CONSTRAINT pharmacy_request_items_pharmacy_request_id_fkey FOREIGN KEY (pharmacy_request_id) REFERENCES public.pharmacy_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pharmacy_requests pharmacy_requests_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_requests pharmacy_requests_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_requests pharmacy_requests_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_requests pharmacy_requests_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_requests pharmacy_requests_ipd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_ipd_emr_id_fkey FOREIGN KEY (ipd_emr_id) REFERENCES public.ipd_emrs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_requests pharmacy_requests_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_requests pharmacy_requests_prescription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_prescription_id_fkey FOREIGN KEY (prescription_id) REFERENCES public.prescriptions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_requests pharmacy_requests_requested_from_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_requested_from_store_id_fkey FOREIGN KEY (requested_from_store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_requests pharmacy_requests_requested_to_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_requested_to_store_id_fkey FOREIGN KEY (requested_to_store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_requests pharmacy_requests_room_log_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_room_log_id_fkey FOREIGN KEY (room_log_id) REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_requests pharmacy_requests_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_requests
    ADD CONSTRAINT pharmacy_requests_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_sale_items pharmacy_sale_items_pharmacy_sale_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sale_items
    ADD CONSTRAINT pharmacy_sale_items_pharmacy_sale_id_fkey FOREIGN KEY (pharmacy_sale_id) REFERENCES public.pharmacy_sales(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pharmacy_sale_items pharmacy_sale_items_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sale_items
    ADD CONSTRAINT pharmacy_sale_items_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_sales pharmacy_sales_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sales
    ADD CONSTRAINT pharmacy_sales_bill_id_fkey FOREIGN KEY (bill_id) REFERENCES public.bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pharmacy_sales pharmacy_sales_bill_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sales
    ADD CONSTRAINT pharmacy_sales_bill_type_id_fkey FOREIGN KEY (bill_type_id) REFERENCES public."BillType"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pharmacy_sales pharmacy_sales_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sales
    ADD CONSTRAINT pharmacy_sales_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_sales pharmacy_sales_deleted_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sales
    ADD CONSTRAINT pharmacy_sales_deleted_by_id_fkey FOREIGN KEY (deleted_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_sales pharmacy_sales_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sales
    ADD CONSTRAINT pharmacy_sales_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_sales pharmacy_sales_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sales
    ADD CONSTRAINT pharmacy_sales_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_sales pharmacy_sales_proxy_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sales
    ADD CONSTRAINT pharmacy_sales_proxy_bill_id_fkey FOREIGN KEY (proxy_bill_id) REFERENCES public.proxy_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pharmacy_sales pharmacy_sales_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sales
    ADD CONSTRAINT pharmacy_sales_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_sales pharmacy_sales_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_sales
    ADD CONSTRAINT pharmacy_sales_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_transfer_items pharmacy_transfer_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_transfer_items
    ADD CONSTRAINT pharmacy_transfer_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_transfer_items pharmacy_transfer_items_pharmacy_transfer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_transfer_items
    ADD CONSTRAINT pharmacy_transfer_items_pharmacy_transfer_id_fkey FOREIGN KEY (pharmacy_transfer_id) REFERENCES public.pharmacy_transfers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pharmacy_transfer_items pharmacy_transfer_items_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_transfer_items
    ADD CONSTRAINT pharmacy_transfer_items_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_transfers pharmacy_transfers_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_transfers
    ADD CONSTRAINT pharmacy_transfers_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_transfers pharmacy_transfers_pharmacy_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_transfers
    ADD CONSTRAINT pharmacy_transfers_pharmacy_request_id_fkey FOREIGN KEY (pharmacy_request_id) REFERENCES public.pharmacy_requests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: pharmacy_transfers pharmacy_transfers_pharmacy_sale_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_transfers
    ADD CONSTRAINT pharmacy_transfers_pharmacy_sale_id_fkey FOREIGN KEY (pharmacy_sale_id) REFERENCES public.pharmacy_sales(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_transfers pharmacy_transfers_rejected_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_transfers
    ADD CONSTRAINT pharmacy_transfers_rejected_by_id_fkey FOREIGN KEY (rejected_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_transfers pharmacy_transfers_transferred_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_transfers
    ADD CONSTRAINT pharmacy_transfers_transferred_by_id_fkey FOREIGN KEY (transferred_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: pharmacy_transfers pharmacy_transfers_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pharmacy_transfers
    ADD CONSTRAINT pharmacy_transfers_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: prescription_items prescription_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescription_items
    ADD CONSTRAINT prescription_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: prescription_items prescription_items_prescription_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescription_items
    ADD CONSTRAINT prescription_items_prescription_id_fkey FOREIGN KEY (prescription_id) REFERENCES public.prescriptions(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: prescriptions prescriptions_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: prescriptions prescriptions_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: prescriptions prescriptions_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: prescriptions prescriptions_ipd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_ipd_emr_id_fkey FOREIGN KEY (ipd_emr_id) REFERENCES public.ipd_emrs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: prescriptions prescriptions_opd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_opd_emr_id_fkey FOREIGN KEY (opd_emr_id) REFERENCES public.opd_emrs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: prescriptions prescriptions_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: prescriptions prescriptions_room_log_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_room_log_id_fkey FOREIGN KEY (room_log_id) REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: prescriptions prescriptions_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: procedure_bill_items procedure_bill_items_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedure_bill_items
    ADD CONSTRAINT procedure_bill_items_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: procedure_bill_items procedure_bill_items_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedure_bill_items
    ADD CONSTRAINT procedure_bill_items_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: procedure_bill_items procedure_bill_items_procedure_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedure_bill_items
    ADD CONSTRAINT procedure_bill_items_procedure_bill_id_fkey FOREIGN KEY (procedure_bill_id) REFERENCES public.procedure_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: procedure_bill_items procedure_bill_items_procedure_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedure_bill_items
    ADD CONSTRAINT procedure_bill_items_procedure_id_fkey FOREIGN KEY (procedure_id) REFERENCES public.procedures(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: procedure_bills procedure_bills_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedure_bills
    ADD CONSTRAINT procedure_bills_bill_id_fkey FOREIGN KEY (bill_id) REFERENCES public.bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: procedure_bills procedure_bills_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedure_bills
    ADD CONSTRAINT procedure_bills_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: procedure_bills procedure_bills_proxy_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedure_bills
    ADD CONSTRAINT procedure_bills_proxy_bill_id_fkey FOREIGN KEY (proxy_bill_id) REFERENCES public.proxy_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: procedures procedures_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedures
    ADD CONSTRAINT procedures_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: procedures procedures_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedures
    ADD CONSTRAINT procedures_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: procedures procedures_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.procedures
    ADD CONSTRAINT procedures_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: proxy_bill_request_links proxy_bill_request_links_cath_lab_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bill_request_links
    ADD CONSTRAINT proxy_bill_request_links_cath_lab_request_id_fkey FOREIGN KEY (cath_lab_request_id) REFERENCES public.cathlab_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: proxy_bill_request_links proxy_bill_request_links_deleted_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bill_request_links
    ADD CONSTRAINT proxy_bill_request_links_deleted_by_id_fkey FOREIGN KEY (deleted_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: proxy_bill_request_links proxy_bill_request_links_endo_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bill_request_links
    ADD CONSTRAINT proxy_bill_request_links_endo_request_id_fkey FOREIGN KEY (endo_request_id) REFERENCES public.endo_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: proxy_bill_request_links proxy_bill_request_links_hd_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bill_request_links
    ADD CONSTRAINT proxy_bill_request_links_hd_request_id_fkey FOREIGN KEY (hd_request_id) REFERENCES public.hd_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: proxy_bill_request_links proxy_bill_request_links_ot_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bill_request_links
    ADD CONSTRAINT proxy_bill_request_links_ot_request_id_fkey FOREIGN KEY (ot_request_id) REFERENCES public.ot_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: proxy_bill_request_links proxy_bill_request_links_proxy_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bill_request_links
    ADD CONSTRAINT proxy_bill_request_links_proxy_bill_id_fkey FOREIGN KEY (proxy_bill_id) REFERENCES public.proxy_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: proxy_bills proxy_bills_appointment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bills
    ADD CONSTRAINT proxy_bills_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.appointments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: proxy_bills proxy_bills_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bills
    ADD CONSTRAINT proxy_bills_bill_id_fkey FOREIGN KEY (bill_id) REFERENCES public.bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: proxy_bills proxy_bills_bill_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bills
    ADD CONSTRAINT proxy_bills_bill_type_id_fkey FOREIGN KEY (bill_type_id) REFERENCES public."BillType"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: proxy_bills proxy_bills_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bills
    ADD CONSTRAINT proxy_bills_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: proxy_bills proxy_bills_deleted_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bills
    ADD CONSTRAINT proxy_bills_deleted_by_id_fkey FOREIGN KEY (deleted_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: proxy_bills proxy_bills_ipd_daily_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bills
    ADD CONSTRAINT proxy_bills_ipd_daily_bill_id_fkey FOREIGN KEY (ipd_daily_bill_id) REFERENCES public.ipd_daily_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: proxy_bills proxy_bills_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bills
    ADD CONSTRAINT proxy_bills_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: proxy_bills proxy_bills_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bills
    ADD CONSTRAINT proxy_bills_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: proxy_bills proxy_bills_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_bills
    ADD CONSTRAINT proxy_bills_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: proxy_main_procedures proxy_main_procedures_main_procedure_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_main_procedures
    ADD CONSTRAINT proxy_main_procedures_main_procedure_id_fkey FOREIGN KEY (main_procedure_id) REFERENCES public.main_procedures(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: proxy_pharmacy_cancel_items proxy_pharmacy_cancel_items_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_pharmacy_cancel_items
    ADD CONSTRAINT proxy_pharmacy_cancel_items_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: proxy_pharmacy_cancel_items proxy_pharmacy_cancel_items_pharmacy_sale_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.proxy_pharmacy_cancel_items
    ADD CONSTRAINT proxy_pharmacy_cancel_items_pharmacy_sale_item_id_fkey FOREIGN KEY (pharmacy_sale_item_id) REFERENCES public.pharmacy_sale_items(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: purchase_order_items purchase_order_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_order_items
    ADD CONSTRAINT purchase_order_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: purchase_order_items purchase_order_items_purchase_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_order_items
    ADD CONSTRAINT purchase_order_items_purchase_order_id_fkey FOREIGN KEY (purchase_order_id) REFERENCES public.purchase_orders(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: purchase_orders purchase_orders_approved_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_approved_by_id_fkey FOREIGN KEY (approved_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: purchase_orders purchase_orders_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: purchase_orders purchase_orders_purchase_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_purchase_request_id_fkey FOREIGN KEY (purchase_request_id) REFERENCES public.purchase_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: purchase_orders purchase_orders_rejected_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_rejected_by_id_fkey FOREIGN KEY (rejected_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: purchase_orders purchase_orders_supplier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: purchase_orders purchase_orders_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_orders
    ADD CONSTRAINT purchase_orders_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: purchase_request_items purchase_request_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_request_items
    ADD CONSTRAINT purchase_request_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: purchase_request_items purchase_request_items_purchase_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_request_items
    ADD CONSTRAINT purchase_request_items_purchase_request_id_fkey FOREIGN KEY (purchase_request_id) REFERENCES public.purchase_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: purchase_requests purchase_requests_approved_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_requests
    ADD CONSTRAINT purchase_requests_approved_by_id_fkey FOREIGN KEY (approved_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: purchase_requests purchase_requests_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_requests
    ADD CONSTRAINT purchase_requests_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: purchase_requests purchase_requests_rejected_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_requests
    ADD CONSTRAINT purchase_requests_rejected_by_id_fkey FOREIGN KEY (rejected_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: purchase_requests purchase_requests_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchase_requests
    ADD CONSTRAINT purchase_requests_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: purchased_price_updated_stock_activity_logs purchased_price_updated_stock_activity_logs_update_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchased_price_updated_stock_activity_logs
    ADD CONSTRAINT purchased_price_updated_stock_activity_logs_update_id_fkey FOREIGN KEY (purchased_price_updated_stock_id) REFERENCES public.purchased_price_updated_stocks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: purchased_price_updated_stock_activity_logs purchased_price_updated_stock_activity_logs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchased_price_updated_stock_activity_logs
    ADD CONSTRAINT purchased_price_updated_stock_activity_logs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: purchased_price_updated_stocks purchased_price_updated_stocks_batch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchased_price_updated_stocks
    ADD CONSTRAINT purchased_price_updated_stocks_batch_id_fkey FOREIGN KEY (batch_id) REFERENCES public.batches(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: purchased_price_updated_stocks purchased_price_updated_stocks_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchased_price_updated_stocks
    ADD CONSTRAINT purchased_price_updated_stocks_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: purchased_price_updated_stocks purchased_price_updated_stocks_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchased_price_updated_stocks
    ADD CONSTRAINT purchased_price_updated_stocks_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: purchased_price_updated_stocks purchased_price_updated_stocks_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.purchased_price_updated_stocks
    ADD CONSTRAINT purchased_price_updated_stocks_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: referrals referrals_clinic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_clinic_id_fkey FOREIGN KEY (clinic_id) REFERENCES public.clinics(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: referrals referrals_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: referrals referrals_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: referrals referrals_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: referrals referrals_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referrals
    ADD CONSTRAINT referrals_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: roles roles_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: roles roles_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: room_logs room_logs_admission__id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_logs
    ADD CONSTRAINT room_logs_admission__id_fkey FOREIGN KEY (admission__id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: room_logs room_logs_admission_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_logs
    ADD CONSTRAINT room_logs_admission_patient_id_fkey FOREIGN KEY (admission_patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: room_logs room_logs_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_logs
    ADD CONSTRAINT room_logs_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: room_logs room_logs_room_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_logs
    ADD CONSTRAINT room_logs_room_id_fkey FOREIGN KEY (room_id) REFERENCES public.rooms(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: room_logs room_logs_transfered_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_logs
    ADD CONSTRAINT room_logs_transfered_by_id_fkey FOREIGN KEY (transfered_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: room_logs room_logs_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_logs
    ADD CONSTRAINT room_logs_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: room_types room_types_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_types
    ADD CONSTRAINT room_types_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: room_types room_types_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.room_types
    ADD CONSTRAINT room_types_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: rooms rooms_building_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_building_id_fkey FOREIGN KEY (building_id) REFERENCES public.buildings(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: rooms rooms_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: rooms rooms_floor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_floor_id_fkey FOREIGN KEY (floor_id) REFERENCES public.floors(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: rooms rooms_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: rooms rooms_wardRoomType_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT "rooms_wardRoomType_id_fkey" FOREIGN KEY ("wardRoomType_id") REFERENCES public.ward_room_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: rooms rooms_ward_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_ward_id_fkey FOREIGN KEY (ward_id) REFERENCES public.wards(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: sale_return_items sale_return_items_pharmacy_sale_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sale_return_items
    ADD CONSTRAINT sale_return_items_pharmacy_sale_item_id_fkey FOREIGN KEY (pharmacy_sale_item_id) REFERENCES public.pharmacy_sale_items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: sale_return_items sale_return_items_sale_return_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sale_return_items
    ADD CONSTRAINT sale_return_items_sale_return_id_fkey FOREIGN KEY (sale_return_id) REFERENCES public.sale_returns(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: sale_returns sale_returns_approved_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sale_returns
    ADD CONSTRAINT sale_returns_approved_by_id_fkey FOREIGN KEY (approved_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: sale_returns sale_returns_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sale_returns
    ADD CONSTRAINT sale_returns_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: sale_returns sale_returns_pharmacy_sale_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sale_returns
    ADD CONSTRAINT sale_returns_pharmacy_sale_id_fkey FOREIGN KEY (pharmacy_sale_id) REFERENCES public.pharmacy_sales(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: sale_returns sale_returns_rejected_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sale_returns
    ADD CONSTRAINT sale_returns_rejected_by_id_fkey FOREIGN KEY (rejected_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: sale_returns sale_returns_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sale_returns
    ADD CONSTRAINT sale_returns_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: selling_price_change_histories selling_price_change_histories_changed_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.selling_price_change_histories
    ADD CONSTRAINT selling_price_change_histories_changed_by_id_fkey FOREIGN KEY (changed_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: selling_price_change_histories selling_price_change_histories_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.selling_price_change_histories
    ADD CONSTRAINT selling_price_change_histories_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_bill_items service_bill_items_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_bill_items
    ADD CONSTRAINT service_bill_items_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: service_bill_items service_bill_items_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_bill_items
    ADD CONSTRAINT service_bill_items_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: service_bill_items service_bill_items_service_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_bill_items
    ADD CONSTRAINT service_bill_items_service_bill_id_fkey FOREIGN KEY (service_bill_id) REFERENCES public.service_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_bill_items service_bill_items_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_bill_items
    ADD CONSTRAINT service_bill_items_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_bills service_bills_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_bills
    ADD CONSTRAINT service_bills_bill_id_fkey FOREIGN KEY (bill_id) REFERENCES public.bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_bills service_bills_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_bills
    ADD CONSTRAINT service_bills_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_bills service_bills_proxy_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_bills
    ADD CONSTRAINT service_bills_proxy_bill_id_fkey FOREIGN KEY (proxy_bill_id) REFERENCES public.proxy_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_categories service_categories_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_categories
    ADD CONSTRAINT service_categories_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_categories service_categories_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_categories
    ADD CONSTRAINT service_categories_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_category_module_mapping service_category_module_mapping_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_category_module_mapping
    ADD CONSTRAINT service_category_module_mapping_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_category_module_mapping service_category_module_mapping_service_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_category_module_mapping
    ADD CONSTRAINT service_category_module_mapping_service_category_id_fkey FOREIGN KEY (service_category_id) REFERENCES public.service_categories(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_category_module_mapping service_category_module_mapping_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_category_module_mapping
    ADD CONSTRAINT service_category_module_mapping_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_package_bill_items service_package_bill_items_service_pacakge_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_bill_items
    ADD CONSTRAINT service_package_bill_items_service_pacakge_id_fkey FOREIGN KEY (service_pacakge_id) REFERENCES public.service_packages(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_package_bill_items service_package_bill_items_service_package_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_bill_items
    ADD CONSTRAINT service_package_bill_items_service_package_bill_id_fkey FOREIGN KEY (service_package_bill_id) REFERENCES public.service_package_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_package_bills service_package_bills_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_bills
    ADD CONSTRAINT service_package_bills_bill_id_fkey FOREIGN KEY (bill_id) REFERENCES public.bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_package_bills service_package_bills_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_bills
    ADD CONSTRAINT service_package_bills_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_package_bills service_package_bills_proxy_bill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_bills
    ADD CONSTRAINT service_package_bills_proxy_bill_id_fkey FOREIGN KEY (proxy_bill_id) REFERENCES public.proxy_bills(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_package_items service_package_items_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_items
    ADD CONSTRAINT service_package_items_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_package_items service_package_items_service_package_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_items
    ADD CONSTRAINT service_package_items_service_package_id_fkey FOREIGN KEY (service_package_id) REFERENCES public.service_packages(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_package_procedures service_package_procedures_procedure_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_procedures
    ADD CONSTRAINT service_package_procedures_procedure_id_fkey FOREIGN KEY (procedure_id) REFERENCES public.procedures(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_package_procedures service_package_procedures_service_package_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_procedures
    ADD CONSTRAINT service_package_procedures_service_package_id_fkey FOREIGN KEY (service_package_id) REFERENCES public.service_packages(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_package_room_types service_package_room_types_room_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_room_types
    ADD CONSTRAINT service_package_room_types_room_type_id_fkey FOREIGN KEY (room_type_id) REFERENCES public.room_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_package_room_types service_package_room_types_service_package_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_package_room_types
    ADD CONSTRAINT service_package_room_types_service_package_id_fkey FOREIGN KEY (service_package_id) REFERENCES public.service_packages(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_packages service_packages_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_packages
    ADD CONSTRAINT service_packages_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_packages service_packages_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_packages
    ADD CONSTRAINT service_packages_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: service_request_items service_request_items_cancelled_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_request_items
    ADD CONSTRAINT service_request_items_cancelled_by_id_fkey FOREIGN KEY (cancelled_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: service_request_items service_request_items_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_request_items
    ADD CONSTRAINT "service_request_items_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_request_items service_request_items_doctorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_request_items
    ADD CONSTRAINT "service_request_items_doctorId_fkey" FOREIGN KEY ("doctorId") REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: service_request_items service_request_items_iPDDailyServiceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_request_items
    ADD CONSTRAINT "service_request_items_iPDDailyServiceId_fkey" FOREIGN KEY ("iPDDailyServiceId") REFERENCES public.ipd_daily_bill_services(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: service_request_items service_request_items_serviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_request_items
    ADD CONSTRAINT "service_request_items_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES public.services(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_request_items service_request_items_serviceRequestId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_request_items
    ADD CONSTRAINT "service_request_items_serviceRequestId_fkey" FOREIGN KEY ("serviceRequestId") REFERENCES public.service_requests(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_request_items service_request_items_updatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_request_items
    ADD CONSTRAINT "service_request_items_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_requests service_requests_admissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_requests
    ADD CONSTRAINT "service_requests_admissionId_fkey" FOREIGN KEY ("admissionId") REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_requests service_requests_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_requests
    ADD CONSTRAINT "service_requests_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_requests service_requests_ipdEmrId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_requests
    ADD CONSTRAINT "service_requests_ipdEmrId_fkey" FOREIGN KEY ("ipdEmrId") REFERENCES public.ipd_emrs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: service_requests service_requests_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_requests
    ADD CONSTRAINT service_requests_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: service_requests service_requests_referralDoctorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_requests
    ADD CONSTRAINT "service_requests_referralDoctorId_fkey" FOREIGN KEY ("referralDoctorId") REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: service_requests service_requests_referral_clinic_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_requests
    ADD CONSTRAINT service_requests_referral_clinic_id_fkey FOREIGN KEY (referral_clinic_id) REFERENCES public.clinics(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: service_requests service_requests_roomLogId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_requests
    ADD CONSTRAINT "service_requests_roomLogId_fkey" FOREIGN KEY ("roomLogId") REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: service_requests service_requests_updatedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_requests
    ADD CONSTRAINT "service_requests_updatedById_fkey" FOREIGN KEY ("updatedById") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_sub_categories service_sub_categories_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_sub_categories
    ADD CONSTRAINT service_sub_categories_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: service_sub_categories service_sub_categories_service_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_sub_categories
    ADD CONSTRAINT service_sub_categories_service_category_id_fkey FOREIGN KEY (service_category_id) REFERENCES public.service_categories(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: service_sub_categories service_sub_categories_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.service_sub_categories
    ADD CONSTRAINT service_sub_categories_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: services services_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.service_categories(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: services services_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: services services_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: services services_sub_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_sub_category_id_fkey FOREIGN KEY (sub_category_id) REFERENCES public.service_sub_categories(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: services services_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: sessions sessions_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: sessions sessions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: specializations specializations_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.specializations
    ADD CONSTRAINT specializations_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: specializations specializations_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.specializations
    ADD CONSTRAINT specializations_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: speical_lab_tests speical_lab_tests_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.speical_lab_tests
    ADD CONSTRAINT speical_lab_tests_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: speical_lab_tests speical_lab_tests_lab_unit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.speical_lab_tests
    ADD CONSTRAINT speical_lab_tests_lab_unit_id_fkey FOREIGN KEY (lab_unit_id) REFERENCES public.lab_units(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: speical_lab_tests speical_lab_tests_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.speical_lab_tests
    ADD CONSTRAINT speical_lab_tests_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_adjustments stock_adjustments_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_adjustments
    ADD CONSTRAINT stock_adjustments_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_adjustments stock_adjustments_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_adjustments
    ADD CONSTRAINT stock_adjustments_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_adjustments stock_adjustments_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_adjustments
    ADD CONSTRAINT stock_adjustments_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_damages stock_damages_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_damages
    ADD CONSTRAINT stock_damages_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_damages stock_damages_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_damages
    ADD CONSTRAINT stock_damages_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_movements stock_movements_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_movements stock_movements_grn_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_grn_id_fkey FOREIGN KEY (grn_id) REFERENCES public."GRN"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_movements stock_movements_grn_return_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_grn_return_id_fkey FOREIGN KEY (grn_return_id) REFERENCES public.grn_returns(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_movements stock_movements_ipd_sale_return_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_ipd_sale_return_id_fkey FOREIGN KEY (ipd_sale_return_id) REFERENCES public.ipd_pharmacy_returns(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_movements stock_movements_pharmacy_sale_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_pharmacy_sale_id_fkey FOREIGN KEY (pharmacy_sale_id) REFERENCES public.pharmacy_sales(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_movements stock_movements_sale_return_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_sale_return_id_fkey FOREIGN KEY (sale_return_id) REFERENCES public.sale_returns(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_movements stock_movements_stock_adjustment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_stock_adjustment_id_fkey FOREIGN KEY (stock_adjustment_id) REFERENCES public.stock_adjustments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_movements stock_movements_stock_damage_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_stock_damage_id_fkey FOREIGN KEY (stock_damage_id) REFERENCES public.stock_damages(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_movements stock_movements_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_movements stock_movements_transfer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_transfer_id_fkey FOREIGN KEY (transfer_id) REFERENCES public.stock_transfers(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_movements stock_movements_used_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_movements
    ADD CONSTRAINT stock_movements_used_item_id_fkey FOREIGN KEY (used_item_id) REFERENCES public.used_items(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_request_items stock_request_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_request_items
    ADD CONSTRAINT stock_request_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_request_items stock_request_items_stock_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_request_items
    ADD CONSTRAINT stock_request_items_stock_request_id_fkey FOREIGN KEY (stock_request_id) REFERENCES public.stock_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: stock_requests stock_requests_approved_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_requests
    ADD CONSTRAINT stock_requests_approved_by_id_fkey FOREIGN KEY (approved_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_requests stock_requests_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_requests
    ADD CONSTRAINT stock_requests_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_requests stock_requests_received_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_requests
    ADD CONSTRAINT stock_requests_received_by_id_fkey FOREIGN KEY (received_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_requests stock_requests_rejected_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_requests
    ADD CONSTRAINT stock_requests_rejected_by_id_fkey FOREIGN KEY (rejected_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_requests stock_requests_requested_from_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_requests
    ADD CONSTRAINT stock_requests_requested_from_store_id_fkey FOREIGN KEY (requested_from_store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_requests stock_requests_requested_to_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_requests
    ADD CONSTRAINT stock_requests_requested_to_store_id_fkey FOREIGN KEY (requested_to_store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_requests stock_requests_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_requests
    ADD CONSTRAINT stock_requests_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_transfer_items stock_transfer_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_transfer_items
    ADD CONSTRAINT stock_transfer_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_transfer_items stock_transfer_items_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_transfer_items
    ADD CONSTRAINT stock_transfer_items_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_transfer_items stock_transfer_items_stock_transfer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_transfer_items
    ADD CONSTRAINT stock_transfer_items_stock_transfer_id_fkey FOREIGN KEY (stock_transfer_id) REFERENCES public.stock_transfers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: stock_transfers stock_transfers_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_transfers
    ADD CONSTRAINT stock_transfers_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stock_transfers stock_transfers_rejected_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_transfers
    ADD CONSTRAINT stock_transfers_rejected_by_id_fkey FOREIGN KEY (rejected_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_transfers stock_transfers_stock_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_transfers
    ADD CONSTRAINT stock_transfers_stock_request_id_fkey FOREIGN KEY (stock_request_id) REFERENCES public.stock_requests(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: stock_transfers stock_transfers_transferred_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_transfers
    ADD CONSTRAINT stock_transfers_transferred_by_id_fkey FOREIGN KEY (transferred_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stock_transfers stock_transfers_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_transfers
    ADD CONSTRAINT stock_transfers_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stocks stocks_batch_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_batch_id_fkey FOREIGN KEY (batch_id) REFERENCES public.batches(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stocks stocks_expiryUpdatedStockId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT "stocks_expiryUpdatedStockId_fkey" FOREIGN KEY ("expiryUpdatedStockId") REFERENCES public.expiry_updated_stocks(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stocks stocks_foc_item_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_foc_item_created_by_id_fkey FOREIGN KEY (foc_item_created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stocks stocks_foc_item_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_foc_item_updated_by_id_fkey FOREIGN KEY (foc_item_updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stocks stocks_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stocks stocks_purchased_price_updated_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_purchased_price_updated_stock_id_fkey FOREIGN KEY (purchased_price_updated_stock_id) REFERENCES public.purchased_price_updated_stocks(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: stocks stocks_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: store_mappings store_mappings_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.store_mappings
    ADD CONSTRAINT store_mappings_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: store_mappings store_mappings_store_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.store_mappings
    ADD CONSTRAINT store_mappings_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: store_mappings store_mappings_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.store_mappings
    ADD CONSTRAINT store_mappings_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: store_mappings store_mappings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.store_mappings
    ADD CONSTRAINT store_mappings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: stores stores_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: stores stores_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: supplier_contact_persons supplier_contact_persons_supplier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supplier_contact_persons
    ADD CONSTRAINT supplier_contact_persons_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: supplier_payment_infos supplier_payment_infos_bank_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supplier_payment_infos
    ADD CONSTRAINT supplier_payment_infos_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES public.banks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: supplier_payment_infos supplier_payment_infos_paymentMethodId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supplier_payment_infos
    ADD CONSTRAINT "supplier_payment_infos_paymentMethodId_fkey" FOREIGN KEY ("paymentMethodId") REFERENCES public.payment_methods(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: supplier_payment_infos supplier_payment_infos_supplier_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supplier_payment_infos
    ADD CONSTRAINT supplier_payment_infos_supplier_id_fkey FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: suppliers suppliers_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: suppliers suppliers_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: test_scripts test_scripts_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_scripts
    ADD CONSTRAINT test_scripts_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: test_scripts test_scripts_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.test_scripts
    ADD CONSTRAINT test_scripts_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: units units_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: units units_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: used_item_stock used_item_stock_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.used_item_stock
    ADD CONSTRAINT used_item_stock_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: used_item_stock used_item_stock_used_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.used_item_stock
    ADD CONSTRAINT used_item_stock_used_item_id_fkey FOREIGN KEY (used_item_id) REFERENCES public.used_items(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: used_items used_items_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.used_items
    ADD CONSTRAINT used_items_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: used_items used_items_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.used_items
    ADD CONSTRAINT used_items_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: used_items used_items_used_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.used_items
    ADD CONSTRAINT used_items_used_by_id_fkey FOREIGN KEY (used_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: users users_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: users users_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: users users_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: users users_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: vital_signs vital_signs_admission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vital_signs
    ADD CONSTRAINT vital_signs_admission_id_fkey FOREIGN KEY (admission_id) REFERENCES public.admissions(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: vital_signs vital_signs_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vital_signs
    ADD CONSTRAINT vital_signs_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: vital_signs vital_signs_doctor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vital_signs
    ADD CONSTRAINT vital_signs_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctors(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: vital_signs vital_signs_ipd_emr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vital_signs
    ADD CONSTRAINT vital_signs_ipd_emr_id_fkey FOREIGN KEY (ipd_emr_id) REFERENCES public.ipd_emrs(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: vital_signs vital_signs_patient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vital_signs
    ADD CONSTRAINT vital_signs_patient_id_fkey FOREIGN KEY (patient_id) REFERENCES public.patients(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: vital_signs vital_signs_room_log_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vital_signs
    ADD CONSTRAINT vital_signs_room_log_id_fkey FOREIGN KEY (room_log_id) REFERENCES public.room_logs(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: vital_signs vital_signs_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vital_signs
    ADD CONSTRAINT vital_signs_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ward_room_types ward_room_types_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ward_room_types
    ADD CONSTRAINT ward_room_types_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ward_room_types ward_room_types_roomType_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ward_room_types
    ADD CONSTRAINT "ward_room_types_roomType_id_fkey" FOREIGN KEY ("roomType_id") REFERENCES public.room_types(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: ward_room_types ward_room_types_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ward_room_types
    ADD CONSTRAINT ward_room_types_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ward_room_types ward_room_types_ward_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ward_room_types
    ADD CONSTRAINT ward_room_types_ward_id_fkey FOREIGN KEY (ward_id) REFERENCES public.wards(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: wards wards_building_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wards
    ADD CONSTRAINT wards_building_id_fkey FOREIGN KEY (building_id) REFERENCES public.buildings(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: wards wards_created_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wards
    ADD CONSTRAINT wards_created_by_id_fkey FOREIGN KEY (created_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: wards wards_floor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wards
    ADD CONSTRAINT wards_floor_id_fkey FOREIGN KEY (floor_id) REFERENCES public.floors(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: wards wards_updated_by_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wards
    ADD CONSTRAINT wards_updated_by_id_fkey FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict 1Sp4iuvobC5kwiI0bHftcFg5Dq9cz73nExOqs50zAWWr6QnGYb3AEAUzeuAbHw6

