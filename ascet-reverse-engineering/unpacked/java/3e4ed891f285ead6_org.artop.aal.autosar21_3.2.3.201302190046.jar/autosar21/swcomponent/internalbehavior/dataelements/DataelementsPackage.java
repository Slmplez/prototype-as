/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.internalbehavior.dataelements;

import autosar21.swcomponent.internalbehavior.dataelements.DataelementsFactory;
import autosar21.swcomponent.internalbehavior.dataelements.impl.DataelementsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface DataelementsPackage
extends EPackage {
    public static final String eNAME = "dataelements";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/ib/de";
    public static final String eNS_PREFIX = "";
    public static final DataelementsPackage eINSTANCE = DataelementsPackageImpl.init();
    public static final int DATA_RECEIVE_POINT = 0;
    public static final int DATA_RECEIVE_POINT__GCHECKSUM = 0;
    public static final int DATA_RECEIVE_POINT__GTIMESTAMP = 1;
    public static final int DATA_RECEIVE_POINT__CHECKSUM = 2;
    public static final int DATA_RECEIVE_POINT__TIMESTAMP = 3;
    public static final int DATA_RECEIVE_POINT__GSHORT_NAME = 4;
    public static final int DATA_RECEIVE_POINT__GUUID = 5;
    public static final int DATA_RECEIVE_POINT__GCATEGORY = 6;
    public static final int DATA_RECEIVE_POINT__GDESC = 7;
    public static final int DATA_RECEIVE_POINT__SHORT_NAME = 8;
    public static final int DATA_RECEIVE_POINT__LONG_NAME = 9;
    public static final int DATA_RECEIVE_POINT__DESC = 10;
    public static final int DATA_RECEIVE_POINT__CATEGORY = 11;
    public static final int DATA_RECEIVE_POINT__ADMIN_DATA = 12;
    public static final int DATA_RECEIVE_POINT__UUID = 13;
    public static final int DATA_RECEIVE_POINT__ALL_EXTENSIONS = 14;
    public static final int DATA_RECEIVE_POINT__CONTAINED_EXTENSIONS = 15;
    public static final int DATA_RECEIVE_POINT__GDATA_ELEMENT = 16;
    public static final int DATA_RECEIVE_POINT__RUNNABLE_ENTITY = 17;
    public static final int DATA_RECEIVE_POINT__DATA_ELEMENT = 18;
    public static final int DATA_RECEIVE_POINT_FEATURE_COUNT = 19;
    public static final int DATA_READ_ACCESS = 1;
    public static final int DATA_READ_ACCESS__GCHECKSUM = 0;
    public static final int DATA_READ_ACCESS__GTIMESTAMP = 1;
    public static final int DATA_READ_ACCESS__CHECKSUM = 2;
    public static final int DATA_READ_ACCESS__TIMESTAMP = 3;
    public static final int DATA_READ_ACCESS__GSHORT_NAME = 4;
    public static final int DATA_READ_ACCESS__GUUID = 5;
    public static final int DATA_READ_ACCESS__GCATEGORY = 6;
    public static final int DATA_READ_ACCESS__GDESC = 7;
    public static final int DATA_READ_ACCESS__SHORT_NAME = 8;
    public static final int DATA_READ_ACCESS__LONG_NAME = 9;
    public static final int DATA_READ_ACCESS__DESC = 10;
    public static final int DATA_READ_ACCESS__CATEGORY = 11;
    public static final int DATA_READ_ACCESS__ADMIN_DATA = 12;
    public static final int DATA_READ_ACCESS__UUID = 13;
    public static final int DATA_READ_ACCESS__ALL_EXTENSIONS = 14;
    public static final int DATA_READ_ACCESS__CONTAINED_EXTENSIONS = 15;
    public static final int DATA_READ_ACCESS__GDATA_ELEMENT = 16;
    public static final int DATA_READ_ACCESS__RUNNABLE_ENTITY = 17;
    public static final int DATA_READ_ACCESS__DATA_ELEMENT = 18;
    public static final int DATA_READ_ACCESS_FEATURE_COUNT = 19;
    public static final int DATA_SEND_POINT = 2;
    public static final int DATA_SEND_POINT__GCHECKSUM = 0;
    public static final int DATA_SEND_POINT__GTIMESTAMP = 1;
    public static final int DATA_SEND_POINT__CHECKSUM = 2;
    public static final int DATA_SEND_POINT__TIMESTAMP = 3;
    public static final int DATA_SEND_POINT__GSHORT_NAME = 4;
    public static final int DATA_SEND_POINT__GUUID = 5;
    public static final int DATA_SEND_POINT__GCATEGORY = 6;
    public static final int DATA_SEND_POINT__GDESC = 7;
    public static final int DATA_SEND_POINT__SHORT_NAME = 8;
    public static final int DATA_SEND_POINT__LONG_NAME = 9;
    public static final int DATA_SEND_POINT__DESC = 10;
    public static final int DATA_SEND_POINT__CATEGORY = 11;
    public static final int DATA_SEND_POINT__ADMIN_DATA = 12;
    public static final int DATA_SEND_POINT__UUID = 13;
    public static final int DATA_SEND_POINT__ALL_EXTENSIONS = 14;
    public static final int DATA_SEND_POINT__CONTAINED_EXTENSIONS = 15;
    public static final int DATA_SEND_POINT__GDATA_ELEMENT = 16;
    public static final int DATA_SEND_POINT__RUNNABLE_ENTITY = 17;
    public static final int DATA_SEND_POINT__DATA_ELEMENT = 18;
    public static final int DATA_SEND_POINT_FEATURE_COUNT = 19;
    public static final int DATA_WRITE_ACCESS = 3;
    public static final int DATA_WRITE_ACCESS__GCHECKSUM = 0;
    public static final int DATA_WRITE_ACCESS__GTIMESTAMP = 1;
    public static final int DATA_WRITE_ACCESS__CHECKSUM = 2;
    public static final int DATA_WRITE_ACCESS__TIMESTAMP = 3;
    public static final int DATA_WRITE_ACCESS__GSHORT_NAME = 4;
    public static final int DATA_WRITE_ACCESS__GUUID = 5;
    public static final int DATA_WRITE_ACCESS__GCATEGORY = 6;
    public static final int DATA_WRITE_ACCESS__GDESC = 7;
    public static final int DATA_WRITE_ACCESS__SHORT_NAME = 8;
    public static final int DATA_WRITE_ACCESS__LONG_NAME = 9;
    public static final int DATA_WRITE_ACCESS__DESC = 10;
    public static final int DATA_WRITE_ACCESS__CATEGORY = 11;
    public static final int DATA_WRITE_ACCESS__ADMIN_DATA = 12;
    public static final int DATA_WRITE_ACCESS__UUID = 13;
    public static final int DATA_WRITE_ACCESS__ALL_EXTENSIONS = 14;
    public static final int DATA_WRITE_ACCESS__CONTAINED_EXTENSIONS = 15;
    public static final int DATA_WRITE_ACCESS__GDATA_ELEMENT = 16;
    public static final int DATA_WRITE_ACCESS__RUNNABLE_ENTITY = 17;
    public static final int DATA_WRITE_ACCESS__DATA_ELEMENT = 18;
    public static final int DATA_WRITE_ACCESS_FEATURE_COUNT = 19;

    public EClass getDataReceivePoint();

    public EReference getDataReceivePoint_RunnableEntity();

    public EReference getDataReceivePoint_DataElement();

    public EClass getDataReadAccess();

    public EReference getDataReadAccess_RunnableEntity();

    public EReference getDataReadAccess_DataElement();

    public EClass getDataSendPoint();

    public EReference getDataSendPoint_RunnableEntity();

    public EReference getDataSendPoint_DataElement();

    public EClass getDataWriteAccess();

    public EReference getDataWriteAccess_RunnableEntity();

    public EReference getDataWriteAccess_DataElement();

    public DataelementsFactory getDataelementsFactory();

    public static interface Literals {
        public static final EClass DATA_RECEIVE_POINT = eINSTANCE.getDataReceivePoint();
        public static final EReference DATA_RECEIVE_POINT__RUNNABLE_ENTITY = eINSTANCE.getDataReceivePoint_RunnableEntity();
        public static final EReference DATA_RECEIVE_POINT__DATA_ELEMENT = eINSTANCE.getDataReceivePoint_DataElement();
        public static final EClass DATA_READ_ACCESS = eINSTANCE.getDataReadAccess();
        public static final EReference DATA_READ_ACCESS__RUNNABLE_ENTITY = eINSTANCE.getDataReadAccess_RunnableEntity();
        public static final EReference DATA_READ_ACCESS__DATA_ELEMENT = eINSTANCE.getDataReadAccess_DataElement();
        public static final EClass DATA_SEND_POINT = eINSTANCE.getDataSendPoint();
        public static final EReference DATA_SEND_POINT__RUNNABLE_ENTITY = eINSTANCE.getDataSendPoint_RunnableEntity();
        public static final EReference DATA_SEND_POINT__DATA_ELEMENT = eINSTANCE.getDataSendPoint_DataElement();
        public static final EClass DATA_WRITE_ACCESS = eINSTANCE.getDataWriteAccess();
        public static final EReference DATA_WRITE_ACCESS__RUNNABLE_ENTITY = eINSTANCE.getDataWriteAccess_RunnableEntity();
        public static final EReference DATA_WRITE_ACCESS__DATA_ELEMENT = eINSTANCE.getDataWriteAccess_DataElement();
    }
}

