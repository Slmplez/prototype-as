/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.vfberrors;

import autosar21.swcomponent.vfberrors.VfberrorsFactory;
import autosar21.swcomponent.vfberrors.impl.VfberrorsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface VfberrorsPackage
extends EPackage {
    public static final String eNAME = "vfberrors";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/vfbe";
    public static final String eNS_PREFIX = "";
    public static final VfberrorsPackage eINSTANCE = VfberrorsPackageImpl.init();
    public static final int DEVELOPMENT_ERROR = 0;
    public static final int DEVELOPMENT_ERROR__GCHECKSUM = 0;
    public static final int DEVELOPMENT_ERROR__GTIMESTAMP = 1;
    public static final int DEVELOPMENT_ERROR__CHECKSUM = 2;
    public static final int DEVELOPMENT_ERROR__TIMESTAMP = 3;
    public static final int DEVELOPMENT_ERROR_FEATURE_COUNT = 4;
    public static final int APPLICATION_ERROR = 1;
    public static final int APPLICATION_ERROR__GCHECKSUM = 0;
    public static final int APPLICATION_ERROR__GTIMESTAMP = 1;
    public static final int APPLICATION_ERROR__CHECKSUM = 2;
    public static final int APPLICATION_ERROR__TIMESTAMP = 3;
    public static final int APPLICATION_ERROR__GSHORT_NAME = 4;
    public static final int APPLICATION_ERROR__GUUID = 5;
    public static final int APPLICATION_ERROR__GCATEGORY = 6;
    public static final int APPLICATION_ERROR__GDESC = 7;
    public static final int APPLICATION_ERROR__SHORT_NAME = 8;
    public static final int APPLICATION_ERROR__LONG_NAME = 9;
    public static final int APPLICATION_ERROR__DESC = 10;
    public static final int APPLICATION_ERROR__CATEGORY = 11;
    public static final int APPLICATION_ERROR__ADMIN_DATA = 12;
    public static final int APPLICATION_ERROR__UUID = 13;
    public static final int APPLICATION_ERROR__ALL_EXTENSIONS = 14;
    public static final int APPLICATION_ERROR__CONTAINED_EXTENSIONS = 15;
    public static final int APPLICATION_ERROR__GERROR_CODE = 16;
    public static final int APPLICATION_ERROR__CLIENT_SERVER_INTERFACE = 17;
    public static final int APPLICATION_ERROR__ERROR_CODE = 18;
    public static final int APPLICATION_ERROR_FEATURE_COUNT = 19;

    public EClass getDevelopmentError();

    public EClass getApplicationError();

    public EReference getApplicationError_ClientServerInterface();

    public EAttribute getApplicationError_ErrorCode();

    public VfberrorsFactory getVfberrorsFactory();

    public static interface Literals {
        public static final EClass DEVELOPMENT_ERROR = eINSTANCE.getDevelopmentError();
        public static final EClass APPLICATION_ERROR = eINSTANCE.getApplicationError();
        public static final EReference APPLICATION_ERROR__CLIENT_SERVER_INTERFACE = eINSTANCE.getApplicationError_ClientServerInterface();
        public static final EAttribute APPLICATION_ERROR__ERROR_CODE = eINSTANCE.getApplicationError_ErrorCode();
    }
}

