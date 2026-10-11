/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.internalbehavior.servercall.instanceref;

import autosar21.swcomponent.internalbehavior.servercall.instanceref.InstancerefFactory;
import autosar21.swcomponent.internalbehavior.servercall.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/ib/sc/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int SERVER_CALL_POINT_OPERATION = 0;
    public static final int SERVER_CALL_POINT_OPERATION__GCHECKSUM = 0;
    public static final int SERVER_CALL_POINT_OPERATION__GTIMESTAMP = 1;
    public static final int SERVER_CALL_POINT_OPERATION__CHECKSUM = 2;
    public static final int SERVER_CALL_POINT_OPERATION__TIMESTAMP = 3;
    public static final int SERVER_CALL_POINT_OPERATION__GCONTEXT_RPORT = 4;
    public static final int SERVER_CALL_POINT_OPERATION__GTARGET_REQUIRED_OPERATION = 5;
    public static final int SERVER_CALL_POINT_OPERATION__SERVER_CALL_POINT = 6;
    public static final int SERVER_CALL_POINT_OPERATION__RPORT_PROTOTYPE = 7;
    public static final int SERVER_CALL_POINT_OPERATION__OPERATION_PROTOTYPE = 8;
    public static final int SERVER_CALL_POINT_OPERATION_FEATURE_COUNT = 9;

    public EClass getServerCallPointOperation();

    public EReference getServerCallPointOperation_ServerCallPoint();

    public EReference getServerCallPointOperation_RPortPrototype();

    public EReference getServerCallPointOperation_OperationPrototype();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass SERVER_CALL_POINT_OPERATION = eINSTANCE.getServerCallPointOperation();
        public static final EReference SERVER_CALL_POINT_OPERATION__SERVER_CALL_POINT = eINSTANCE.getServerCallPointOperation_ServerCallPoint();
        public static final EReference SERVER_CALL_POINT_OPERATION__RPORT_PROTOTYPE = eINSTANCE.getServerCallPointOperation_RPortPrototype();
        public static final EReference SERVER_CALL_POINT_OPERATION__OPERATION_PROTOTYPE = eINSTANCE.getServerCallPointOperation_OperationPrototype();
    }
}

