/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.ggenericstructure.gvarianthandling;

import gautosar.ggenericstructure.gvarianthandling.GvarianthandlingFactory;
import gautosar.ggenericstructure.gvarianthandling.impl.GvarianthandlingPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface GvarianthandlingPackage
extends EPackage {
    public static final String eNAME = "gvarianthandling";
    public static final String eNS_URI = "http://artop.org/gautosar/gs/vh";
    public static final String eNS_PREFIX = "null";
    public static final GvarianthandlingPackage eINSTANCE = GvarianthandlingPackageImpl.init();
    public static final int GSW_SYSTEMCONST_DEPENDENT_FORMULA = 0;
    public static final int GSW_SYSTEMCONST_DEPENDENT_FORMULA__GCHECKSUM = 0;
    public static final int GSW_SYSTEMCONST_DEPENDENT_FORMULA__GTIMESTAMP = 1;
    public static final int GSW_SYSTEMCONST_DEPENDENT_FORMULA_FEATURE_COUNT = 2;
    public static final int GATTRIBUTE_VALUE_VARIATION_POINT = 1;
    public static final int GATTRIBUTE_VALUE_VARIATION_POINT__GCHECKSUM = 0;
    public static final int GATTRIBUTE_VALUE_VARIATION_POINT__GTIMESTAMP = 1;
    public static final int GATTRIBUTE_VALUE_VARIATION_POINT_FEATURE_COUNT = 2;

    public EClass getGSwSystemconstDependentFormula();

    public EClass getGAttributeValueVariationPoint();

    public GvarianthandlingFactory getGvarianthandlingFactory();

    public static interface Literals {
        public static final EClass GSW_SYSTEMCONST_DEPENDENT_FORMULA = eINSTANCE.getGSwSystemconstDependentFormula();
        public static final EClass GATTRIBUTE_VALUE_VARIATION_POINT = eINSTANCE.getGAttributeValueVariationPoint();
    }
}

