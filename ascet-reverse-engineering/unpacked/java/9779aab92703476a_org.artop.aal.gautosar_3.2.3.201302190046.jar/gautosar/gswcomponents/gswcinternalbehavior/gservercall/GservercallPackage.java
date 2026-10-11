/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.gswcomponents.gswcinternalbehavior.gservercall;

import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallFactory;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.impl.GservercallPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface GservercallPackage
extends EPackage {
    public static final String eNAME = "gservercall";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/sib/sc";
    public static final String eNS_PREFIX = "";
    public static final GservercallPackage eINSTANCE = GservercallPackageImpl.init();
    public static final int GSERVER_CALL_POINT = 0;
    public static final int GSERVER_CALL_POINT__GCHECKSUM = 0;
    public static final int GSERVER_CALL_POINT__GTIMESTAMP = 1;
    public static final int GSERVER_CALL_POINT__GSHORT_NAME = 2;
    public static final int GSERVER_CALL_POINT__GUUID = 3;
    public static final int GSERVER_CALL_POINT__GCATEGORY = 4;
    public static final int GSERVER_CALL_POINT__GDESC = 5;
    public static final int GSERVER_CALL_POINT__GTIMEOUT = 6;
    public static final int GSERVER_CALL_POINT_FEATURE_COUNT = 7;
    public static final int GASYNCHRONOUS_SERVER_CALL_POINT = 1;
    public static final int GASYNCHRONOUS_SERVER_CALL_POINT__GCHECKSUM = 0;
    public static final int GASYNCHRONOUS_SERVER_CALL_POINT__GTIMESTAMP = 1;
    public static final int GASYNCHRONOUS_SERVER_CALL_POINT__GSHORT_NAME = 2;
    public static final int GASYNCHRONOUS_SERVER_CALL_POINT__GUUID = 3;
    public static final int GASYNCHRONOUS_SERVER_CALL_POINT__GCATEGORY = 4;
    public static final int GASYNCHRONOUS_SERVER_CALL_POINT__GDESC = 5;
    public static final int GASYNCHRONOUS_SERVER_CALL_POINT__GTIMEOUT = 6;
    public static final int GASYNCHRONOUS_SERVER_CALL_POINT_FEATURE_COUNT = 7;
    public static final int GSYNCHRONOUS_SERVER_CALL_POINT = 2;
    public static final int GSYNCHRONOUS_SERVER_CALL_POINT__GCHECKSUM = 0;
    public static final int GSYNCHRONOUS_SERVER_CALL_POINT__GTIMESTAMP = 1;
    public static final int GSYNCHRONOUS_SERVER_CALL_POINT__GSHORT_NAME = 2;
    public static final int GSYNCHRONOUS_SERVER_CALL_POINT__GUUID = 3;
    public static final int GSYNCHRONOUS_SERVER_CALL_POINT__GCATEGORY = 4;
    public static final int GSYNCHRONOUS_SERVER_CALL_POINT__GDESC = 5;
    public static final int GSYNCHRONOUS_SERVER_CALL_POINT__GTIMEOUT = 6;
    public static final int GSYNCHRONOUS_SERVER_CALL_POINT_FEATURE_COUNT = 7;

    public EClass getGServerCallPoint();

    public EAttribute getGServerCallPoint_GTimeout();

    public EClass getGAsynchronousServerCallPoint();

    public EClass getGSynchronousServerCallPoint();

    public GservercallFactory getGservercallFactory();

    public static interface Literals {
        public static final EClass GSERVER_CALL_POINT = eINSTANCE.getGServerCallPoint();
        public static final EAttribute GSERVER_CALL_POINT__GTIMEOUT = eINSTANCE.getGServerCallPoint_GTimeout();
        public static final EClass GASYNCHRONOUS_SERVER_CALL_POINT = eINSTANCE.getGAsynchronousServerCallPoint();
        public static final EClass GSYNCHRONOUS_SERVER_CALL_POINT = eINSTANCE.getGSynchronousServerCallPoint();
    }
}

