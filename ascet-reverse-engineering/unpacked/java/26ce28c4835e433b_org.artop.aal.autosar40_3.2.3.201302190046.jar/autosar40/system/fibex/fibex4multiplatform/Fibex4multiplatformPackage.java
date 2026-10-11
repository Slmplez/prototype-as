/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.fibex.fibex4multiplatform;

import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformFactory;
import autosar40.system.fibex.fibex4multiplatform.impl.Fibex4multiplatformPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface Fibex4multiplatformPackage
extends EPackage {
    public static final String eNAME = "fibex4multiplatform";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/fm";
    public static final String eNS_PREFIX = "";
    public static final Fibex4multiplatformPackage eINSTANCE = Fibex4multiplatformPackageImpl.init();
    public static final int DEFAULT_VALUE_ELEMENT = 0;
    public static final int DEFAULT_VALUE_ELEMENT__GCHECKSUM = 0;
    public static final int DEFAULT_VALUE_ELEMENT__GTIMESTAMP = 1;
    public static final int DEFAULT_VALUE_ELEMENT__CHECKSUM = 2;
    public static final int DEFAULT_VALUE_ELEMENT__TIMESTAMP = 3;
    public static final int DEFAULT_VALUE_ELEMENT__PDU_MAPPING_DEFAULT_VALUE = 4;
    public static final int DEFAULT_VALUE_ELEMENT__ELEMENT_BYTE_VALUE = 5;
    public static final int DEFAULT_VALUE_ELEMENT__ELEMENT_POSITION = 6;
    public static final int DEFAULT_VALUE_ELEMENT_FEATURE_COUNT = 7;
    public static final int FRAME_MAPPING = 1;
    public static final int FRAME_MAPPING__GCHECKSUM = 0;
    public static final int FRAME_MAPPING__GTIMESTAMP = 1;
    public static final int FRAME_MAPPING__CHECKSUM = 2;
    public static final int FRAME_MAPPING__TIMESTAMP = 3;
    public static final int FRAME_MAPPING__GATEWAY = 4;
    public static final int FRAME_MAPPING__INTRODUCTION = 5;
    public static final int FRAME_MAPPING__SOURCE_FRAME = 6;
    public static final int FRAME_MAPPING__TARGET_FRAME = 7;
    public static final int FRAME_MAPPING__VARIATION_POINT = 8;
    public static final int FRAME_MAPPING_FEATURE_COUNT = 9;
    public static final int GATEWAY = 2;
    public static final int GATEWAY__GCHECKSUM = 0;
    public static final int GATEWAY__GTIMESTAMP = 1;
    public static final int GATEWAY__CHECKSUM = 2;
    public static final int GATEWAY__TIMESTAMP = 3;
    public static final int GATEWAY__GSHORT_NAME = 4;
    public static final int GATEWAY__SHORT_NAME = 5;
    public static final int GATEWAY__LONG_NAME = 6;
    public static final int GATEWAY__GUUID = 7;
    public static final int GATEWAY__GCATEGORY = 8;
    public static final int GATEWAY__GDESC = 9;
    public static final int GATEWAY__DESC = 10;
    public static final int GATEWAY__CATEGORY = 11;
    public static final int GATEWAY__ADMIN_DATA = 12;
    public static final int GATEWAY__INTRODUCTION = 13;
    public static final int GATEWAY__ANNOTATIONS = 14;
    public static final int GATEWAY__UUID = 15;
    public static final int GATEWAY__ALL_EXTENSIONS = 16;
    public static final int GATEWAY__CONTAINED_EXTENSIONS = 17;
    public static final int GATEWAY__GAR_PACKAGE = 18;
    public static final int GATEWAY__AR_PACKAGE = 19;
    public static final int GATEWAY__VARIATION_POINT = 20;
    public static final int GATEWAY__ECU = 21;
    public static final int GATEWAY__FRAME_MAPPINGS = 22;
    public static final int GATEWAY__IPDU_MAPPINGS = 23;
    public static final int GATEWAY__SIGNAL_MAPPINGS = 24;
    public static final int GATEWAY_FEATURE_COUNT = 25;
    public static final int ISIGNAL_MAPPING = 3;
    public static final int ISIGNAL_MAPPING__GCHECKSUM = 0;
    public static final int ISIGNAL_MAPPING__GTIMESTAMP = 1;
    public static final int ISIGNAL_MAPPING__CHECKSUM = 2;
    public static final int ISIGNAL_MAPPING__TIMESTAMP = 3;
    public static final int ISIGNAL_MAPPING__GATEWAY = 4;
    public static final int ISIGNAL_MAPPING__INTRODUCTION = 5;
    public static final int ISIGNAL_MAPPING__SOURCE_SIGNAL = 6;
    public static final int ISIGNAL_MAPPING__TARGET_SIGNAL = 7;
    public static final int ISIGNAL_MAPPING__VARIATION_POINT = 8;
    public static final int ISIGNAL_MAPPING_FEATURE_COUNT = 9;
    public static final int IPDU_MAPPING = 4;
    public static final int IPDU_MAPPING__GCHECKSUM = 0;
    public static final int IPDU_MAPPING__GTIMESTAMP = 1;
    public static final int IPDU_MAPPING__CHECKSUM = 2;
    public static final int IPDU_MAPPING__TIMESTAMP = 3;
    public static final int IPDU_MAPPING__GATEWAY = 4;
    public static final int IPDU_MAPPING__INTRODUCTION = 5;
    public static final int IPDU_MAPPING__PDUR_TP_CHUNK_SIZE = 6;
    public static final int IPDU_MAPPING__SOURCE_IPDU = 7;
    public static final int IPDU_MAPPING__TARGET_IPDU = 8;
    public static final int IPDU_MAPPING__VARIATION_POINT = 9;
    public static final int IPDU_MAPPING_FEATURE_COUNT = 10;
    public static final int TARGET_IPDU_REF = 5;
    public static final int TARGET_IPDU_REF__GCHECKSUM = 0;
    public static final int TARGET_IPDU_REF__GTIMESTAMP = 1;
    public static final int TARGET_IPDU_REF__CHECKSUM = 2;
    public static final int TARGET_IPDU_REF__TIMESTAMP = 3;
    public static final int TARGET_IPDU_REF__IPDU_MAPPING = 4;
    public static final int TARGET_IPDU_REF__DEFAULT_VALUE = 5;
    public static final int TARGET_IPDU_REF__TARGET_IPDU = 6;
    public static final int TARGET_IPDU_REF_FEATURE_COUNT = 7;
    public static final int PDU_MAPPING_DEFAULT_VALUE = 6;
    public static final int PDU_MAPPING_DEFAULT_VALUE__GCHECKSUM = 0;
    public static final int PDU_MAPPING_DEFAULT_VALUE__GTIMESTAMP = 1;
    public static final int PDU_MAPPING_DEFAULT_VALUE__CHECKSUM = 2;
    public static final int PDU_MAPPING_DEFAULT_VALUE__TIMESTAMP = 3;
    public static final int PDU_MAPPING_DEFAULT_VALUE__TARGET_IPDU_REF = 4;
    public static final int PDU_MAPPING_DEFAULT_VALUE__DEFAULT_VALUE_ELEMENTS = 5;
    public static final int PDU_MAPPING_DEFAULT_VALUE_FEATURE_COUNT = 6;

    public EClass getDefaultValueElement();

    public EReference getDefaultValueElement_PduMappingDefaultValue();

    public EAttribute getDefaultValueElement_ElementByteValue();

    public EAttribute getDefaultValueElement_ElementPosition();

    public EClass getFrameMapping();

    public EReference getFrameMapping_Gateway();

    public EReference getFrameMapping_Introduction();

    public EReference getFrameMapping_SourceFrame();

    public EReference getFrameMapping_TargetFrame();

    public EReference getFrameMapping_VariationPoint();

    public EClass getGateway();

    public EReference getGateway_Ecu();

    public EReference getGateway_FrameMappings();

    public EReference getGateway_IPduMappings();

    public EReference getGateway_SignalMappings();

    public EClass getISignalMapping();

    public EReference getISignalMapping_Gateway();

    public EReference getISignalMapping_Introduction();

    public EReference getISignalMapping_SourceSignal();

    public EReference getISignalMapping_TargetSignal();

    public EReference getISignalMapping_VariationPoint();

    public EClass getIPduMapping();

    public EReference getIPduMapping_Gateway();

    public EReference getIPduMapping_Introduction();

    public EAttribute getIPduMapping_PdurTpChunkSize();

    public EReference getIPduMapping_SourceIPdu();

    public EReference getIPduMapping_TargetIPdu();

    public EReference getIPduMapping_VariationPoint();

    public EClass getTargetIPduRef();

    public EReference getTargetIPduRef_IPduMapping();

    public EReference getTargetIPduRef_DefaultValue();

    public EReference getTargetIPduRef_TargetIPdu();

    public EClass getPduMappingDefaultValue();

    public EReference getPduMappingDefaultValue_TargetIPduRef();

    public EReference getPduMappingDefaultValue_DefaultValueElements();

    public Fibex4multiplatformFactory getFibex4multiplatformFactory();

    public static interface Literals {
        public static final EClass DEFAULT_VALUE_ELEMENT = eINSTANCE.getDefaultValueElement();
        public static final EReference DEFAULT_VALUE_ELEMENT__PDU_MAPPING_DEFAULT_VALUE = eINSTANCE.getDefaultValueElement_PduMappingDefaultValue();
        public static final EAttribute DEFAULT_VALUE_ELEMENT__ELEMENT_BYTE_VALUE = eINSTANCE.getDefaultValueElement_ElementByteValue();
        public static final EAttribute DEFAULT_VALUE_ELEMENT__ELEMENT_POSITION = eINSTANCE.getDefaultValueElement_ElementPosition();
        public static final EClass FRAME_MAPPING = eINSTANCE.getFrameMapping();
        public static final EReference FRAME_MAPPING__GATEWAY = eINSTANCE.getFrameMapping_Gateway();
        public static final EReference FRAME_MAPPING__INTRODUCTION = eINSTANCE.getFrameMapping_Introduction();
        public static final EReference FRAME_MAPPING__SOURCE_FRAME = eINSTANCE.getFrameMapping_SourceFrame();
        public static final EReference FRAME_MAPPING__TARGET_FRAME = eINSTANCE.getFrameMapping_TargetFrame();
        public static final EReference FRAME_MAPPING__VARIATION_POINT = eINSTANCE.getFrameMapping_VariationPoint();
        public static final EClass GATEWAY = eINSTANCE.getGateway();
        public static final EReference GATEWAY__ECU = eINSTANCE.getGateway_Ecu();
        public static final EReference GATEWAY__FRAME_MAPPINGS = eINSTANCE.getGateway_FrameMappings();
        public static final EReference GATEWAY__IPDU_MAPPINGS = eINSTANCE.getGateway_IPduMappings();
        public static final EReference GATEWAY__SIGNAL_MAPPINGS = eINSTANCE.getGateway_SignalMappings();
        public static final EClass ISIGNAL_MAPPING = eINSTANCE.getISignalMapping();
        public static final EReference ISIGNAL_MAPPING__GATEWAY = eINSTANCE.getISignalMapping_Gateway();
        public static final EReference ISIGNAL_MAPPING__INTRODUCTION = eINSTANCE.getISignalMapping_Introduction();
        public static final EReference ISIGNAL_MAPPING__SOURCE_SIGNAL = eINSTANCE.getISignalMapping_SourceSignal();
        public static final EReference ISIGNAL_MAPPING__TARGET_SIGNAL = eINSTANCE.getISignalMapping_TargetSignal();
        public static final EReference ISIGNAL_MAPPING__VARIATION_POINT = eINSTANCE.getISignalMapping_VariationPoint();
        public static final EClass IPDU_MAPPING = eINSTANCE.getIPduMapping();
        public static final EReference IPDU_MAPPING__GATEWAY = eINSTANCE.getIPduMapping_Gateway();
        public static final EReference IPDU_MAPPING__INTRODUCTION = eINSTANCE.getIPduMapping_Introduction();
        public static final EAttribute IPDU_MAPPING__PDUR_TP_CHUNK_SIZE = eINSTANCE.getIPduMapping_PdurTpChunkSize();
        public static final EReference IPDU_MAPPING__SOURCE_IPDU = eINSTANCE.getIPduMapping_SourceIPdu();
        public static final EReference IPDU_MAPPING__TARGET_IPDU = eINSTANCE.getIPduMapping_TargetIPdu();
        public static final EReference IPDU_MAPPING__VARIATION_POINT = eINSTANCE.getIPduMapping_VariationPoint();
        public static final EClass TARGET_IPDU_REF = eINSTANCE.getTargetIPduRef();
        public static final EReference TARGET_IPDU_REF__IPDU_MAPPING = eINSTANCE.getTargetIPduRef_IPduMapping();
        public static final EReference TARGET_IPDU_REF__DEFAULT_VALUE = eINSTANCE.getTargetIPduRef_DefaultValue();
        public static final EReference TARGET_IPDU_REF__TARGET_IPDU = eINSTANCE.getTargetIPduRef_TargetIPdu();
        public static final EClass PDU_MAPPING_DEFAULT_VALUE = eINSTANCE.getPduMappingDefaultValue();
        public static final EReference PDU_MAPPING_DEFAULT_VALUE__TARGET_IPDU_REF = eINSTANCE.getPduMappingDefaultValue_TargetIPduRef();
        public static final EReference PDU_MAPPING_DEFAULT_VALUE__DEFAULT_VALUE_ELEMENTS = eINSTANCE.getPduMappingDefaultValue_DefaultValueElements();
    }
}

