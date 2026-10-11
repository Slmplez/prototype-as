/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.systemconstant;

import autosar40.commonstructure.systemconstant.SystemconstantFactory;
import autosar40.commonstructure.systemconstant.impl.SystemconstantPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SystemconstantPackage
extends EPackage {
    public static final String eNAME = "systemconstant";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/sconstant";
    public static final String eNS_PREFIX = "";
    public static final SystemconstantPackage eINSTANCE = SystemconstantPackageImpl.init();
    public static final int SW_SYSTEMCONST = 0;
    public static final int SW_SYSTEMCONST__GCHECKSUM = 0;
    public static final int SW_SYSTEMCONST__GTIMESTAMP = 1;
    public static final int SW_SYSTEMCONST__CHECKSUM = 2;
    public static final int SW_SYSTEMCONST__TIMESTAMP = 3;
    public static final int SW_SYSTEMCONST__GSHORT_NAME = 4;
    public static final int SW_SYSTEMCONST__SHORT_NAME = 5;
    public static final int SW_SYSTEMCONST__LONG_NAME = 6;
    public static final int SW_SYSTEMCONST__GUUID = 7;
    public static final int SW_SYSTEMCONST__GCATEGORY = 8;
    public static final int SW_SYSTEMCONST__GDESC = 9;
    public static final int SW_SYSTEMCONST__DESC = 10;
    public static final int SW_SYSTEMCONST__CATEGORY = 11;
    public static final int SW_SYSTEMCONST__ADMIN_DATA = 12;
    public static final int SW_SYSTEMCONST__INTRODUCTION = 13;
    public static final int SW_SYSTEMCONST__ANNOTATIONS = 14;
    public static final int SW_SYSTEMCONST__UUID = 15;
    public static final int SW_SYSTEMCONST__ALL_EXTENSIONS = 16;
    public static final int SW_SYSTEMCONST__CONTAINED_EXTENSIONS = 17;
    public static final int SW_SYSTEMCONST__GAR_PACKAGE = 18;
    public static final int SW_SYSTEMCONST__AR_PACKAGE = 19;
    public static final int SW_SYSTEMCONST__VARIATION_POINT = 20;
    public static final int SW_SYSTEMCONST__SW_DATA_DEF_PROPS = 21;
    public static final int SW_SYSTEMCONST_FEATURE_COUNT = 22;

    public EClass getSwSystemconst();

    public EReference getSwSystemconst_SwDataDefProps();

    public SystemconstantFactory getSystemconstantFactory();

    public static interface Literals {
        public static final EClass SW_SYSTEMCONST = eINSTANCE.getSwSystemconst();
        public static final EReference SW_SYSTEMCONST__SW_DATA_DEF_PROPS = eINSTANCE.getSwSystemconst_SwDataDefProps();
    }
}

