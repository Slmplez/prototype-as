/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.servercall;

import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallFactory;
import autosar40.swcomponent.swcinternalbehavior.servercall.impl.ServercallPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ServercallPackage
extends EPackage {
    public static final String eNAME = "servercall";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/sc";
    public static final String eNS_PREFIX = "";
    public static final ServercallPackage eINSTANCE = ServercallPackageImpl.init();
    public static final int SERVER_CALL_POINT = 1;
    public static final int SERVER_CALL_POINT__GCHECKSUM = 0;
    public static final int SERVER_CALL_POINT__GTIMESTAMP = 1;
    public static final int SERVER_CALL_POINT__CHECKSUM = 2;
    public static final int SERVER_CALL_POINT__TIMESTAMP = 3;
    public static final int SERVER_CALL_POINT__GSHORT_NAME = 4;
    public static final int SERVER_CALL_POINT__SHORT_NAME = 5;
    public static final int SERVER_CALL_POINT__LONG_NAME = 6;
    public static final int SERVER_CALL_POINT__GUUID = 7;
    public static final int SERVER_CALL_POINT__GCATEGORY = 8;
    public static final int SERVER_CALL_POINT__GDESC = 9;
    public static final int SERVER_CALL_POINT__DESC = 10;
    public static final int SERVER_CALL_POINT__CATEGORY = 11;
    public static final int SERVER_CALL_POINT__ADMIN_DATA = 12;
    public static final int SERVER_CALL_POINT__INTRODUCTION = 13;
    public static final int SERVER_CALL_POINT__ANNOTATIONS = 14;
    public static final int SERVER_CALL_POINT__UUID = 15;
    public static final int SERVER_CALL_POINT__ALL_EXTENSIONS = 16;
    public static final int SERVER_CALL_POINT__CONTAINED_EXTENSIONS = 17;
    public static final int SERVER_CALL_POINT__GTIMEOUT = 18;
    public static final int SERVER_CALL_POINT__RUNNABLE_ENTITY = 19;
    public static final int SERVER_CALL_POINT__OPERATION = 20;
    public static final int SERVER_CALL_POINT__TIMEOUT = 21;
    public static final int SERVER_CALL_POINT__VARIATION_POINT = 22;
    public static final int SERVER_CALL_POINT_FEATURE_COUNT = 23;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT = 0;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GCHECKSUM = 0;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GTIMESTAMP = 1;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__CHECKSUM = 2;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__TIMESTAMP = 3;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GSHORT_NAME = 4;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__SHORT_NAME = 5;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__LONG_NAME = 6;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GUUID = 7;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GCATEGORY = 8;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GDESC = 9;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__DESC = 10;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__CATEGORY = 11;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__ADMIN_DATA = 12;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__INTRODUCTION = 13;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__ANNOTATIONS = 14;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__UUID = 15;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__ALL_EXTENSIONS = 16;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__CONTAINED_EXTENSIONS = 17;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__GTIMEOUT = 18;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__RUNNABLE_ENTITY = 19;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__OPERATION = 20;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__TIMEOUT = 21;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT__VARIATION_POINT = 22;
    public static final int ASYNCHRONOUS_SERVER_CALL_POINT_FEATURE_COUNT = 23;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT = 2;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GCHECKSUM = 0;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GTIMESTAMP = 1;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__CHECKSUM = 2;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__TIMESTAMP = 3;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GSHORT_NAME = 4;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__SHORT_NAME = 5;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__LONG_NAME = 6;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GUUID = 7;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GCATEGORY = 8;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GDESC = 9;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__DESC = 10;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__CATEGORY = 11;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__ADMIN_DATA = 12;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__INTRODUCTION = 13;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__ANNOTATIONS = 14;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__UUID = 15;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__ALL_EXTENSIONS = 16;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__CONTAINED_EXTENSIONS = 17;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__GTIMEOUT = 18;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__RUNNABLE_ENTITY = 19;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__OPERATION = 20;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__TIMEOUT = 21;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT__VARIATION_POINT = 22;
    public static final int SYNCHRONOUS_SERVER_CALL_POINT_FEATURE_COUNT = 23;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT = 3;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__GCHECKSUM = 0;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__GTIMESTAMP = 1;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__CHECKSUM = 2;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__TIMESTAMP = 3;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__GSHORT_NAME = 4;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__SHORT_NAME = 5;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__LONG_NAME = 6;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__GUUID = 7;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__GCATEGORY = 8;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__GDESC = 9;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__DESC = 10;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__CATEGORY = 11;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__ADMIN_DATA = 12;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__INTRODUCTION = 13;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__ANNOTATIONS = 14;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__UUID = 15;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__ALL_EXTENSIONS = 16;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__CONTAINED_EXTENSIONS = 17;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__RUNNABLE_ENTITY = 18;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__ASYNCHRONOUS_SERVER_CALL_POINT = 19;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__VARIATION_POINT = 20;
    public static final int ASYNCHRONOUS_SERVER_CALL_RESULT_POINT_FEATURE_COUNT = 21;

    public EClass getAsynchronousServerCallPoint();

    public EClass getServerCallPoint();

    public EReference getServerCallPoint_RunnableEntity();

    public EReference getServerCallPoint_Operation();

    public EAttribute getServerCallPoint_Timeout();

    public EReference getServerCallPoint_VariationPoint();

    public EClass getSynchronousServerCallPoint();

    public EClass getAsynchronousServerCallResultPoint();

    public EReference getAsynchronousServerCallResultPoint_RunnableEntity();

    public EReference getAsynchronousServerCallResultPoint_AsynchronousServerCallPoint();

    public EReference getAsynchronousServerCallResultPoint_VariationPoint();

    public ServercallFactory getServercallFactory();

    public static interface Literals {
        public static final EClass ASYNCHRONOUS_SERVER_CALL_POINT = eINSTANCE.getAsynchronousServerCallPoint();
        public static final EClass SERVER_CALL_POINT = eINSTANCE.getServerCallPoint();
        public static final EReference SERVER_CALL_POINT__RUNNABLE_ENTITY = eINSTANCE.getServerCallPoint_RunnableEntity();
        public static final EReference SERVER_CALL_POINT__OPERATION = eINSTANCE.getServerCallPoint_Operation();
        public static final EAttribute SERVER_CALL_POINT__TIMEOUT = eINSTANCE.getServerCallPoint_Timeout();
        public static final EReference SERVER_CALL_POINT__VARIATION_POINT = eINSTANCE.getServerCallPoint_VariationPoint();
        public static final EClass SYNCHRONOUS_SERVER_CALL_POINT = eINSTANCE.getSynchronousServerCallPoint();
        public static final EClass ASYNCHRONOUS_SERVER_CALL_RESULT_POINT = eINSTANCE.getAsynchronousServerCallResultPoint();
        public static final EReference ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__RUNNABLE_ENTITY = eINSTANCE.getAsynchronousServerCallResultPoint_RunnableEntity();
        public static final EReference ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__ASYNCHRONOUS_SERVER_CALL_POINT = eINSTANCE.getAsynchronousServerCallResultPoint_AsynchronousServerCallPoint();
        public static final EReference ASYNCHRONOUS_SERVER_CALL_RESULT_POINT__VARIATION_POINT = eINSTANCE.getAsynchronousServerCallResultPoint_VariationPoint();
    }
}

