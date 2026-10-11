/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.fibex.fibexcore;

import autosar40.system.fibex.fibexcore.FibexcoreFactory;
import autosar40.system.fibex.fibexcore.impl.FibexcorePackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface FibexcorePackage
extends EPackage {
    public static final String eNAME = "fibexcore";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/f/fcore";
    public static final String eNS_PREFIX = "";
    public static final FibexcorePackage eINSTANCE = FibexcorePackageImpl.init();
    public static final int FIBEX_ELEMENT = 0;
    public static final int FIBEX_ELEMENT__GCHECKSUM = 0;
    public static final int FIBEX_ELEMENT__GTIMESTAMP = 1;
    public static final int FIBEX_ELEMENT__CHECKSUM = 2;
    public static final int FIBEX_ELEMENT__TIMESTAMP = 3;
    public static final int FIBEX_ELEMENT__GSHORT_NAME = 4;
    public static final int FIBEX_ELEMENT__SHORT_NAME = 5;
    public static final int FIBEX_ELEMENT__LONG_NAME = 6;
    public static final int FIBEX_ELEMENT__GUUID = 7;
    public static final int FIBEX_ELEMENT__GCATEGORY = 8;
    public static final int FIBEX_ELEMENT__GDESC = 9;
    public static final int FIBEX_ELEMENT__DESC = 10;
    public static final int FIBEX_ELEMENT__CATEGORY = 11;
    public static final int FIBEX_ELEMENT__ADMIN_DATA = 12;
    public static final int FIBEX_ELEMENT__INTRODUCTION = 13;
    public static final int FIBEX_ELEMENT__ANNOTATIONS = 14;
    public static final int FIBEX_ELEMENT__UUID = 15;
    public static final int FIBEX_ELEMENT__ALL_EXTENSIONS = 16;
    public static final int FIBEX_ELEMENT__CONTAINED_EXTENSIONS = 17;
    public static final int FIBEX_ELEMENT__GAR_PACKAGE = 18;
    public static final int FIBEX_ELEMENT__AR_PACKAGE = 19;
    public static final int FIBEX_ELEMENT__VARIATION_POINT = 20;
    public static final int FIBEX_ELEMENT_FEATURE_COUNT = 21;
    public static final int FIBEX_ELEMENT_REF_CONDITIONAL = 1;
    public static final int FIBEX_ELEMENT_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int FIBEX_ELEMENT_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int FIBEX_ELEMENT_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int FIBEX_ELEMENT_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int FIBEX_ELEMENT_REF_CONDITIONAL__SYSTEM = 4;
    public static final int FIBEX_ELEMENT_REF_CONDITIONAL__FIBEX_ELEMENT = 5;
    public static final int FIBEX_ELEMENT_REF_CONDITIONAL__VARIATION_POINT = 6;
    public static final int FIBEX_ELEMENT_REF_CONDITIONAL_FEATURE_COUNT = 7;

    public EClass getFibexElement();

    public EClass getFibexElementRefConditional();

    public EReference getFibexElementRefConditional_System();

    public EReference getFibexElementRefConditional_FibexElement();

    public EReference getFibexElementRefConditional_VariationPoint();

    public FibexcoreFactory getFibexcoreFactory();

    public static interface Literals {
        public static final EClass FIBEX_ELEMENT = eINSTANCE.getFibexElement();
        public static final EClass FIBEX_ELEMENT_REF_CONDITIONAL = eINSTANCE.getFibexElementRefConditional();
        public static final EReference FIBEX_ELEMENT_REF_CONDITIONAL__SYSTEM = eINSTANCE.getFibexElementRefConditional_System();
        public static final EReference FIBEX_ELEMENT_REF_CONDITIONAL__FIBEX_ELEMENT = eINSTANCE.getFibexElementRefConditional_FibexElement();
        public static final EReference FIBEX_ELEMENT_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getFibexElementRefConditional_VariationPoint();
    }
}

