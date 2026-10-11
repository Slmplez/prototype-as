/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.varianthandling;

import autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingFactory;
import autosar40.swcomponent.swcinternalbehavior.varianthandling.impl.VarianthandlingPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface VarianthandlingPackage
extends EPackage {
    public static final String eNAME = "varianthandling";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/vh";
    public static final String eNS_PREFIX = "";
    public static final VarianthandlingPackage eINSTANCE = VarianthandlingPackageImpl.init();
    public static final int VARIATION_POINT_PROXY = 0;
    public static final int VARIATION_POINT_PROXY__GCHECKSUM = 0;
    public static final int VARIATION_POINT_PROXY__GTIMESTAMP = 1;
    public static final int VARIATION_POINT_PROXY__CHECKSUM = 2;
    public static final int VARIATION_POINT_PROXY__TIMESTAMP = 3;
    public static final int VARIATION_POINT_PROXY__GSHORT_NAME = 4;
    public static final int VARIATION_POINT_PROXY__SHORT_NAME = 5;
    public static final int VARIATION_POINT_PROXY__LONG_NAME = 6;
    public static final int VARIATION_POINT_PROXY__GUUID = 7;
    public static final int VARIATION_POINT_PROXY__GCATEGORY = 8;
    public static final int VARIATION_POINT_PROXY__GDESC = 9;
    public static final int VARIATION_POINT_PROXY__DESC = 10;
    public static final int VARIATION_POINT_PROXY__CATEGORY = 11;
    public static final int VARIATION_POINT_PROXY__ADMIN_DATA = 12;
    public static final int VARIATION_POINT_PROXY__INTRODUCTION = 13;
    public static final int VARIATION_POINT_PROXY__ANNOTATIONS = 14;
    public static final int VARIATION_POINT_PROXY__UUID = 15;
    public static final int VARIATION_POINT_PROXY__ALL_EXTENSIONS = 16;
    public static final int VARIATION_POINT_PROXY__CONTAINED_EXTENSIONS = 17;
    public static final int VARIATION_POINT_PROXY__SWC_INTERNAL_BEHAVIOR = 18;
    public static final int VARIATION_POINT_PROXY__CONDITION_ACCESS = 19;
    public static final int VARIATION_POINT_PROXY__VALUE_ACCESS = 20;
    public static final int VARIATION_POINT_PROXY_FEATURE_COUNT = 21;

    public EClass getVariationPointProxy();

    public EReference getVariationPointProxy_SwcInternalBehavior();

    public EReference getVariationPointProxy_ConditionAccess();

    public EReference getVariationPointProxy_ValueAccess();

    public VarianthandlingFactory getVarianthandlingFactory();

    public static interface Literals {
        public static final EClass VARIATION_POINT_PROXY = eINSTANCE.getVariationPointProxy();
        public static final EReference VARIATION_POINT_PROXY__SWC_INTERNAL_BEHAVIOR = eINSTANCE.getVariationPointProxy_SwcInternalBehavior();
        public static final EReference VARIATION_POINT_PROXY__CONDITION_ACCESS = eINSTANCE.getVariationPointProxy_ConditionAccess();
        public static final EReference VARIATION_POINT_PROXY__VALUE_ACCESS = eINSTANCE.getVariationPointProxy_ValueAccess();
    }
}

