/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.swcinternalbehavior.servercall;

import autosar3x.swcomponent.swcinternalbehavior.servercall.ServercallFactory;
import autosar3x.swcomponent.swcinternalbehavior.servercall.impl.ServercallPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ServercallPackage
extends EPackage {
    public static final String eNAME = "servercall";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/sib/sc";
    public static final String eNS_PREFIX = "";
    public static final ServercallPackage eINSTANCE = ServercallPackageImpl.init();
    public static final int SERVER_CALL_POINT = 0;
    public static final int SERVER_CALL_POINT__GCHECKSUM = 0;
    public static final int SERVER_CALL_POINT__GTIMESTAMP = 1;
    public static final int SERVER_CALL_POINT__CHECKSUM = 2;
    public static final int SERVER_CALL_POINT__TIMESTAMP = 3;
    public static final int SERVER_CALL_POINT__GSHORT_NAME = 4;
    public static final int SERVER_CALL_POINT__GUUID = 5;
    public static final int SERVER_CALL_POINT__GCATEGORY = 6;
    public static final int SERVER_CALL_POINT__GDESC = 7;
    public static final int SERVER_CALL_POINT__SHORT_NAME = 8;
    public static final int SERVER_CALL_POINT__LONG_NAME = 9;
    public static final int SERVER_CALL_POINT__DESC = 10;
    public static final int SERVER_CALL_POINT__CATEGORY = 11;
    public static final int SERVER_CALL_POINT__ADMIN_DATA = 12;
    public static final int SERVER_CALL_POINT__INTRODUCTION = 13;
    public static final int SERVER_CALL_POINT__UUID = 14;
    public static final int SERVER_CALL_POINT__ALL_EXTENSIONS = 15;
    public static final int SERVER_CALL_POINT__CONTAINED_EXTENSIONS = 16;
    public static final int SERVER_CALL_POINT__GTIMEOUT = 17;
    public static final int SERVER_CALL_POINT__RUNNABLE_ENTITY = 18;
    public static final int SERVER_CALL_POINT__OPERATION = 19;
    public static final int SERVER_CALL_POINT__TIMEOUT = 20;
    public static final int SERVER_CALL_POINT_FEATURE_COUNT = 21;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT = 1;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GCHECKSUM = 0;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GTIMESTAMP = 1;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__CHECKSUM = 2;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__TIMESTAMP = 3;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GSHORT_NAME = 4;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GUUID = 5;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GCATEGORY = 6;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GDESC = 7;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__SHORT_NAME = 8;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__LONG_NAME = 9;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__DESC = 10;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__CATEGORY = 11;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__ADMIN_DATA = 12;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__INTRODUCTION = 13;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__UUID = 14;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__ALL_EXTENSIONS = 15;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__CONTAINED_EXTENSIONS = 16;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GTIMEOUT = 17;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__RUNNABLE_ENTITY = 18;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__OPERATION = 19;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__TIMEOUT = 20;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT_FEATURE_COUNT = 21;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT = 2;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GCHECKSUM = 0;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GTIMESTAMP = 1;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__CHECKSUM = 2;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__TIMESTAMP = 3;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GSHORT_NAME = 4;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GUUID = 5;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GCATEGORY = 6;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GDESC = 7;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__SHORT_NAME = 8;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__LONG_NAME = 9;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__DESC = 10;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__CATEGORY = 11;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__ADMIN_DATA = 12;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__INTRODUCTION = 13;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__UUID = 14;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__ALL_EXTENSIONS = 15;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__CONTAINED_EXTENSIONS = 16;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GTIMEOUT = 17;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__RUNNABLE_ENTITY = 18;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__OPERATION = 19;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__TIMEOUT = 20;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT_FEATURE_COUNT = 21;

    public EClass getServerCallPoint();

    public EReference getServerCallPoint_RunnableEntity();

    public EReference getServerCallPoint_Operation();

    public EAttribute getServerCallPoint_Timeout();

    public EClass getSynchronousServerCallPoint();

    public EClass getAsynchronousServerCallPoint();

    public ServercallFactory getServercallFactory();

    public static interface Literals {
        public static final EClass SERVER_CALL_POINT = eINSTANCE.getServerCallPoint();
        public static final EReference SERVER_CALL_POINT__RUNNABLE_ENTITY = eINSTANCE.getServerCallPoint_RunnableEntity();
        public static final EReference SERVER_CALL_POINT__OPERATION = eINSTANCE.getServerCallPoint_Operation();
        public static final EAttribute SERVER_CALL_POINT__TIMEOUT = eINSTANCE.getServerCallPoint_Timeout();
        public static final EClass SYNCHRONOUS_SERVER_CALL_POINT = eINSTANCE.getSynchronousServerCallPoint();
        public static final EClass ASYNCHRONOUS_SERVER_CALL_POINT = eINSTANCE.getAsynchronousServerCallPoint();
    }
}

