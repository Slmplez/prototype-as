/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar3x.system.fibex.fibexcore;

import autosar3x.system.fibex.fibexcore.FibexcoreFactory;
import autosar3x.system.fibex.fibexcore.impl.FibexcorePackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface FibexcorePackage
extends EPackage {
    public static final String eNAME = "fibexcore";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/f/fcore";
    public static final String eNS_PREFIX = "";
    public static final FibexcorePackage eINSTANCE = FibexcorePackageImpl.init();
    public static final int FIBEX_ELEMENT = 0;
    public static final int FIBEX_ELEMENT__GCHECKSUM = 0;
    public static final int FIBEX_ELEMENT__GTIMESTAMP = 1;
    public static final int FIBEX_ELEMENT__CHECKSUM = 2;
    public static final int FIBEX_ELEMENT__TIMESTAMP = 3;
    public static final int FIBEX_ELEMENT__GSHORT_NAME = 4;
    public static final int FIBEX_ELEMENT__GUUID = 5;
    public static final int FIBEX_ELEMENT__GCATEGORY = 6;
    public static final int FIBEX_ELEMENT__GDESC = 7;
    public static final int FIBEX_ELEMENT__SHORT_NAME = 8;
    public static final int FIBEX_ELEMENT__LONG_NAME = 9;
    public static final int FIBEX_ELEMENT__DESC = 10;
    public static final int FIBEX_ELEMENT__CATEGORY = 11;
    public static final int FIBEX_ELEMENT__ADMIN_DATA = 12;
    public static final int FIBEX_ELEMENT__INTRODUCTION = 13;
    public static final int FIBEX_ELEMENT__UUID = 14;
    public static final int FIBEX_ELEMENT__ALL_EXTENSIONS = 15;
    public static final int FIBEX_ELEMENT__CONTAINED_EXTENSIONS = 16;
    public static final int FIBEX_ELEMENT__GAR_PACKAGE = 17;
    public static final int FIBEX_ELEMENT__AR_PACKAGE = 18;
    public static final int FIBEX_ELEMENT_FEATURE_COUNT = 19;

    public EClass getFibexElement();

    public FibexcoreFactory getFibexcoreFactory();

    public static interface Literals {
        public static final EClass FIBEX_ELEMENT = eINSTANCE.getFibexElement();
    }
}

