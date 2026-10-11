/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref;

import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.InstancerefFactory;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/sib/de/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int DATA_READ_ACCESS_DATA_ELEMENT = 0;
    public static final int DATA_READ_ACCESS_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int DATA_READ_ACCESS_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int DATA_READ_ACCESS_DATA_ELEMENT__CHECKSUM = 2;
    public static final int DATA_READ_ACCESS_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int DATA_READ_ACCESS_DATA_ELEMENT__GCONTEXT_RPORT = 4;
    public static final int DATA_READ_ACCESS_DATA_ELEMENT__GTARGET_DATA_ELEMENT = 5;
    public static final int DATA_READ_ACCESS_DATA_ELEMENT__DATA_READ_ACCESS = 6;
    public static final int DATA_READ_ACCESS_DATA_ELEMENT__RPORT_PROTOTYPE = 7;
    public static final int DATA_READ_ACCESS_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = 8;
    public static final int DATA_READ_ACCESS_DATA_ELEMENT_FEATURE_COUNT = 9;
    public static final int DATA_SEND_POINT_DATA_ELEMENT = 1;
    public static final int DATA_SEND_POINT_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int DATA_SEND_POINT_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int DATA_SEND_POINT_DATA_ELEMENT__CHECKSUM = 2;
    public static final int DATA_SEND_POINT_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int DATA_SEND_POINT_DATA_ELEMENT__GCONTEXT_PPORT = 4;
    public static final int DATA_SEND_POINT_DATA_ELEMENT__GTARGET_DATA_ELEMENT = 5;
    public static final int DATA_SEND_POINT_DATA_ELEMENT__DATA_SEND_POINT = 6;
    public static final int DATA_SEND_POINT_DATA_ELEMENT__PPORT_PROTOTYPE = 7;
    public static final int DATA_SEND_POINT_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = 8;
    public static final int DATA_SEND_POINT_DATA_ELEMENT_FEATURE_COUNT = 9;
    public static final int DATA_WRITE_ACCESS_DATA_ELEMENT = 2;
    public static final int DATA_WRITE_ACCESS_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int DATA_WRITE_ACCESS_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int DATA_WRITE_ACCESS_DATA_ELEMENT__CHECKSUM = 2;
    public static final int DATA_WRITE_ACCESS_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int DATA_WRITE_ACCESS_DATA_ELEMENT__GCONTEXT_PPORT = 4;
    public static final int DATA_WRITE_ACCESS_DATA_ELEMENT__GTARGET_DATA_ELEMENT = 5;
    public static final int DATA_WRITE_ACCESS_DATA_ELEMENT__DATA_WRITE_ACCESS = 6;
    public static final int DATA_WRITE_ACCESS_DATA_ELEMENT__PPORT_PROTOTYPE = 7;
    public static final int DATA_WRITE_ACCESS_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = 8;
    public static final int DATA_WRITE_ACCESS_DATA_ELEMENT_FEATURE_COUNT = 9;
    public static final int DATA_RECEIVE_POINT_DATA_ELEMENT = 3;
    public static final int DATA_RECEIVE_POINT_DATA_ELEMENT__GCHECKSUM = 0;
    public static final int DATA_RECEIVE_POINT_DATA_ELEMENT__GTIMESTAMP = 1;
    public static final int DATA_RECEIVE_POINT_DATA_ELEMENT__CHECKSUM = 2;
    public static final int DATA_RECEIVE_POINT_DATA_ELEMENT__TIMESTAMP = 3;
    public static final int DATA_RECEIVE_POINT_DATA_ELEMENT__GCONTEXT_RPORT = 4;
    public static final int DATA_RECEIVE_POINT_DATA_ELEMENT__GTARGET_DATA_ELEMENT = 5;
    public static final int DATA_RECEIVE_POINT_DATA_ELEMENT__DATA_RECEIVE_POINT = 6;
    public static final int DATA_RECEIVE_POINT_DATA_ELEMENT__RPORT_PROTOTYPE = 7;
    public static final int DATA_RECEIVE_POINT_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = 8;
    public static final int DATA_RECEIVE_POINT_DATA_ELEMENT_FEATURE_COUNT = 9;

    public EClass getDataReadAccessDataElement();

    public EReference getDataReadAccessDataElement_DataReadAccess();

    public EReference getDataReadAccessDataElement_RPortPrototype();

    public EReference getDataReadAccessDataElement_DataElementPrototype();

    public EClass getDataSendPointDataElement();

    public EReference getDataSendPointDataElement_DataSendPoint();

    public EReference getDataSendPointDataElement_PPortPrototype();

    public EReference getDataSendPointDataElement_DataElementPrototype();

    public EClass getDataWriteAccessDataElement();

    public EReference getDataWriteAccessDataElement_DataWriteAccess();

    public EReference getDataWriteAccessDataElement_PPortPrototype();

    public EReference getDataWriteAccessDataElement_DataElementPrototype();

    public EClass getDataReceivePointDataElement();

    public EReference getDataReceivePointDataElement_DataReceivePoint();

    public EReference getDataReceivePointDataElement_RPortPrototype();

    public EReference getDataReceivePointDataElement_DataElementPrototype();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass DATA_READ_ACCESS_DATA_ELEMENT = eINSTANCE.getDataReadAccessDataElement();
        public static final EReference DATA_READ_ACCESS_DATA_ELEMENT__DATA_READ_ACCESS = eINSTANCE.getDataReadAccessDataElement_DataReadAccess();
        public static final EReference DATA_READ_ACCESS_DATA_ELEMENT__RPORT_PROTOTYPE = eINSTANCE.getDataReadAccessDataElement_RPortPrototype();
        public static final EReference DATA_READ_ACCESS_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getDataReadAccessDataElement_DataElementPrototype();
        public static final EClass DATA_SEND_POINT_DATA_ELEMENT = eINSTANCE.getDataSendPointDataElement();
        public static final EReference DATA_SEND_POINT_DATA_ELEMENT__DATA_SEND_POINT = eINSTANCE.getDataSendPointDataElement_DataSendPoint();
        public static final EReference DATA_SEND_POINT_DATA_ELEMENT__PPORT_PROTOTYPE = eINSTANCE.getDataSendPointDataElement_PPortPrototype();
        public static final EReference DATA_SEND_POINT_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getDataSendPointDataElement_DataElementPrototype();
        public static final EClass DATA_WRITE_ACCESS_DATA_ELEMENT = eINSTANCE.getDataWriteAccessDataElement();
        public static final EReference DATA_WRITE_ACCESS_DATA_ELEMENT__DATA_WRITE_ACCESS = eINSTANCE.getDataWriteAccessDataElement_DataWriteAccess();
        public static final EReference DATA_WRITE_ACCESS_DATA_ELEMENT__PPORT_PROTOTYPE = eINSTANCE.getDataWriteAccessDataElement_PPortPrototype();
        public static final EReference DATA_WRITE_ACCESS_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getDataWriteAccessDataElement_DataElementPrototype();
        public static final EClass DATA_RECEIVE_POINT_DATA_ELEMENT = eINSTANCE.getDataReceivePointDataElement();
        public static final EReference DATA_RECEIVE_POINT_DATA_ELEMENT__DATA_RECEIVE_POINT = eINSTANCE.getDataReceivePointDataElement_DataReceivePoint();
        public static final EReference DATA_RECEIVE_POINT_DATA_ELEMENT__RPORT_PROTOTYPE = eINSTANCE.getDataReceivePointDataElement_RPortPrototype();
        public static final EReference DATA_RECEIVE_POINT_DATA_ELEMENT__DATA_ELEMENT_PROTOTYPE = eINSTANCE.getDataReceivePointDataElement_DataElementPrototype();
    }
}

