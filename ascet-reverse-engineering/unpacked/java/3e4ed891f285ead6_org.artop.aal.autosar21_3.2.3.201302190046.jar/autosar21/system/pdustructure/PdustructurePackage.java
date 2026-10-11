/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.system.pdustructure;

import autosar21.system.pdustructure.PdustructureFactory;
import autosar21.system.pdustructure.impl.PdustructurePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PdustructurePackage
extends EPackage {
    public static final String eNAME = "pdustructure";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/s/pdus";
    public static final String eNS_PREFIX = "";
    public static final PdustructurePackage eINSTANCE = PdustructurePackageImpl.init();
    public static final int MULTIPLEXER = 0;
    public static final int MULTIPLEXER__GCHECKSUM = 0;
    public static final int MULTIPLEXER__GTIMESTAMP = 1;
    public static final int MULTIPLEXER__CHECKSUM = 2;
    public static final int MULTIPLEXER__TIMESTAMP = 3;
    public static final int MULTIPLEXER__PDU_TYPE = 4;
    public static final int MULTIPLEXER__DATAS = 5;
    public static final int MULTIPLEXER__SELECTOR_FIELD_BYTE_ORDER = 6;
    public static final int MULTIPLEXER__SELECTOR_FIELD_LENGTH = 7;
    public static final int MULTIPLEXER__SELECTOR_FIELD_START_POSITION = 8;
    public static final int MULTIPLEXER_FEATURE_COUNT = 9;
    public static final int SUB_PDU = 1;
    public static final int SUB_PDU__GCHECKSUM = 0;
    public static final int SUB_PDU__GTIMESTAMP = 1;
    public static final int SUB_PDU__CHECKSUM = 2;
    public static final int SUB_PDU__TIMESTAMP = 3;
    public static final int SUB_PDU__DYNAMIC_SUB_PDU_TIMINGS = 4;
    public static final int SUB_PDU__INCLUDED_SIGNALS = 5;
    public static final int SUB_PDU__SELECTOR_FIELD_CODE = 6;
    public static final int SUB_PDU__START_POSITION = 7;
    public static final int SUB_PDU__SUB_PDU_SIZE = 8;
    public static final int SUB_PDU_FEATURE_COUNT = 9;
    public static final int SIGNAL_POSITION = 2;
    public static final int SIGNAL_POSITION__GCHECKSUM = 0;
    public static final int SIGNAL_POSITION__GTIMESTAMP = 1;
    public static final int SIGNAL_POSITION__CHECKSUM = 2;
    public static final int SIGNAL_POSITION__TIMESTAMP = 3;
    public static final int SIGNAL_POSITION__GSHORT_NAME = 4;
    public static final int SIGNAL_POSITION__GUUID = 5;
    public static final int SIGNAL_POSITION__GCATEGORY = 6;
    public static final int SIGNAL_POSITION__GDESC = 7;
    public static final int SIGNAL_POSITION__SHORT_NAME = 8;
    public static final int SIGNAL_POSITION__LONG_NAME = 9;
    public static final int SIGNAL_POSITION__DESC = 10;
    public static final int SIGNAL_POSITION__CATEGORY = 11;
    public static final int SIGNAL_POSITION__ADMIN_DATA = 12;
    public static final int SIGNAL_POSITION__UUID = 13;
    public static final int SIGNAL_POSITION__ALL_EXTENSIONS = 14;
    public static final int SIGNAL_POSITION__CONTAINED_EXTENSIONS = 15;
    public static final int SIGNAL_POSITION__PACKING_BYTE_ORDER = 16;
    public static final int SIGNAL_POSITION__START_POSITION = 17;
    public static final int SIGNAL_POSITION__SYSTEM_SIGNAL = 18;
    public static final int SIGNAL_POSITION_FEATURE_COUNT = 19;
    public static final int PDU_TYPE = 3;
    public static final int PDU_TYPE__GCHECKSUM = 0;
    public static final int PDU_TYPE__GTIMESTAMP = 1;
    public static final int PDU_TYPE__CHECKSUM = 2;
    public static final int PDU_TYPE__TIMESTAMP = 3;
    public static final int PDU_TYPE__GSHORT_NAME = 4;
    public static final int PDU_TYPE__GUUID = 5;
    public static final int PDU_TYPE__GCATEGORY = 6;
    public static final int PDU_TYPE__GDESC = 7;
    public static final int PDU_TYPE__SHORT_NAME = 8;
    public static final int PDU_TYPE__LONG_NAME = 9;
    public static final int PDU_TYPE__DESC = 10;
    public static final int PDU_TYPE__CATEGORY = 11;
    public static final int PDU_TYPE__ADMIN_DATA = 12;
    public static final int PDU_TYPE__UUID = 13;
    public static final int PDU_TYPE__ALL_EXTENSIONS = 14;
    public static final int PDU_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int PDU_TYPE__GAR_PACKAGE = 16;
    public static final int PDU_TYPE__AR_PACKAGE = 17;
    public static final int PDU_TYPE__INCLUDED_SIGNALS = 18;
    public static final int PDU_TYPE__MULTIPLEXER_DYNAMIC_PART = 19;
    public static final int PDU_TYPE__MULTIPLEXER_STATIC_PART = 20;
    public static final int PDU_TYPE__NEEDS_UPDATE_INDICATION = 21;
    public static final int PDU_TYPE__PDU_LENGTH = 22;
    public static final int PDU_TYPE_FEATURE_COUNT = 23;

    public EClass getMultiplexer();

    public EReference getMultiplexer_PDUType();

    public EReference getMultiplexer_Datas();

    public EAttribute getMultiplexer_SelectorFieldByteOrder();

    public EAttribute getMultiplexer_SelectorFieldLength();

    public EAttribute getMultiplexer_SelectorFieldStartPosition();

    public EClass getSubPDU();

    public EReference getSubPDU_DynamicSubPDUTimings();

    public EReference getSubPDU_IncludedSignals();

    public EAttribute getSubPDU_SelectorFieldCode();

    public EAttribute getSubPDU_StartPosition();

    public EAttribute getSubPDU_SubPDUSize();

    public EClass getSignalPosition();

    public EAttribute getSignalPosition_PackingByteOrder();

    public EAttribute getSignalPosition_StartPosition();

    public EReference getSignalPosition_SystemSignal();

    public EClass getPDUType();

    public EReference getPDUType_IncludedSignals();

    public EReference getPDUType_MultiplexerDynamicPart();

    public EReference getPDUType_MultiplexerStaticPart();

    public EAttribute getPDUType_NeedsUpdateIndication();

    public EAttribute getPDUType_PDULength();

    public PdustructureFactory getPdustructureFactory();

    public static interface Literals {
        public static final EClass MULTIPLEXER = eINSTANCE.getMultiplexer();
        public static final EReference MULTIPLEXER__PDU_TYPE = eINSTANCE.getMultiplexer_PDUType();
        public static final EReference MULTIPLEXER__DATAS = eINSTANCE.getMultiplexer_Datas();
        public static final EAttribute MULTIPLEXER__SELECTOR_FIELD_BYTE_ORDER = eINSTANCE.getMultiplexer_SelectorFieldByteOrder();
        public static final EAttribute MULTIPLEXER__SELECTOR_FIELD_LENGTH = eINSTANCE.getMultiplexer_SelectorFieldLength();
        public static final EAttribute MULTIPLEXER__SELECTOR_FIELD_START_POSITION = eINSTANCE.getMultiplexer_SelectorFieldStartPosition();
        public static final EClass SUB_PDU = eINSTANCE.getSubPDU();
        public static final EReference SUB_PDU__DYNAMIC_SUB_PDU_TIMINGS = eINSTANCE.getSubPDU_DynamicSubPDUTimings();
        public static final EReference SUB_PDU__INCLUDED_SIGNALS = eINSTANCE.getSubPDU_IncludedSignals();
        public static final EAttribute SUB_PDU__SELECTOR_FIELD_CODE = eINSTANCE.getSubPDU_SelectorFieldCode();
        public static final EAttribute SUB_PDU__START_POSITION = eINSTANCE.getSubPDU_StartPosition();
        public static final EAttribute SUB_PDU__SUB_PDU_SIZE = eINSTANCE.getSubPDU_SubPDUSize();
        public static final EClass SIGNAL_POSITION = eINSTANCE.getSignalPosition();
        public static final EAttribute SIGNAL_POSITION__PACKING_BYTE_ORDER = eINSTANCE.getSignalPosition_PackingByteOrder();
        public static final EAttribute SIGNAL_POSITION__START_POSITION = eINSTANCE.getSignalPosition_StartPosition();
        public static final EReference SIGNAL_POSITION__SYSTEM_SIGNAL = eINSTANCE.getSignalPosition_SystemSignal();
        public static final EClass PDU_TYPE = eINSTANCE.getPDUType();
        public static final EReference PDU_TYPE__INCLUDED_SIGNALS = eINSTANCE.getPDUType_IncludedSignals();
        public static final EReference PDU_TYPE__MULTIPLEXER_DYNAMIC_PART = eINSTANCE.getPDUType_MultiplexerDynamicPart();
        public static final EReference PDU_TYPE__MULTIPLEXER_STATIC_PART = eINSTANCE.getPDUType_MultiplexerStaticPart();
        public static final EAttribute PDU_TYPE__NEEDS_UPDATE_INDICATION = eINSTANCE.getPDUType_NeedsUpdateIndication();
        public static final EAttribute PDU_TYPE__PDU_LENGTH = eINSTANCE.getPDUType_PDULength();
    }
}

