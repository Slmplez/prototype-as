/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gdatatype.gcomputationmethod;

import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodFactory;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.impl.GcomputationmethodPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GcomputationmethodPackage
extends EPackage {
    public static final String eNAME = "gcomputationmethod";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/d/cm";
    public static final String eNS_PREFIX = "gcm";
    public static final GcomputationmethodPackage eINSTANCE = GcomputationmethodPackageImpl.init();
    public static final int GCOMPU_METHOD = 0;
    public static final int GCOMPU_METHOD__GCHECKSUM = 0;
    public static final int GCOMPU_METHOD__GTIMESTAMP = 1;
    public static final int GCOMPU_METHOD__GSHORT_NAME = 2;
    public static final int GCOMPU_METHOD__GUUID = 3;
    public static final int GCOMPU_METHOD__GCATEGORY = 4;
    public static final int GCOMPU_METHOD__GDESC = 5;
    public static final int GCOMPU_METHOD__GAR_PACKAGE = 6;
    public static final int GCOMPU_METHOD__GCOMPU_PHYS_TO_INTERNAL = 7;
    public static final int GCOMPU_METHOD__GCOMPU_INTERNAL_TO_PHYS = 8;
    public static final int GCOMPU_METHOD__GUNIT = 9;
    public static final int GCOMPU_METHOD_FEATURE_COUNT = 10;
    public static final int GCOMPU = 1;
    public static final int GCOMPU__GCHECKSUM = 0;
    public static final int GCOMPU__GTIMESTAMP = 1;
    public static final int GCOMPU__GCOMPU_CONTENT = 2;
    public static final int GCOMPU_FEATURE_COUNT = 3;
    public static final int GCOMPU_CONTENT = 2;
    public static final int GCOMPU_CONTENT__GCHECKSUM = 0;
    public static final int GCOMPU_CONTENT__GTIMESTAMP = 1;
    public static final int GCOMPU_CONTENT_FEATURE_COUNT = 2;
    public static final int GCOMPU_SCALES = 3;
    public static final int GCOMPU_SCALES__GCHECKSUM = 0;
    public static final int GCOMPU_SCALES__GTIMESTAMP = 1;
    public static final int GCOMPU_SCALES__GCOMPU_SCALES = 2;
    public static final int GCOMPU_SCALES_FEATURE_COUNT = 3;
    public static final int GCOMPU_SCALE = 4;
    public static final int GCOMPU_SCALE__GCHECKSUM = 0;
    public static final int GCOMPU_SCALE__GTIMESTAMP = 1;
    public static final int GCOMPU_SCALE__GCOMPU_SCALE_CONTENTS = 2;
    public static final int GCOMPU_SCALE__GLOWER_LIMIT = 3;
    public static final int GCOMPU_SCALE__GUPPER_LIMIT = 4;
    public static final int GCOMPU_SCALE__GSHORT_LABEL = 5;
    public static final int GCOMPU_SCALE_FEATURE_COUNT = 6;
    public static final int GCOMPU_SCALE_CONTENTS = 5;
    public static final int GCOMPU_SCALE_CONTENTS__GCHECKSUM = 0;
    public static final int GCOMPU_SCALE_CONTENTS__GTIMESTAMP = 1;
    public static final int GCOMPU_SCALE_CONTENTS_FEATURE_COUNT = 2;
    public static final int GCOMPU_SCALE_CONSTANT_CONTENTS = 6;
    public static final int GCOMPU_SCALE_CONSTANT_CONTENTS__GCHECKSUM = 0;
    public static final int GCOMPU_SCALE_CONSTANT_CONTENTS__GTIMESTAMP = 1;
    public static final int GCOMPU_SCALE_CONSTANT_CONTENTS__GCOMPU_CONST = 2;
    public static final int GCOMPU_SCALE_CONSTANT_CONTENTS_FEATURE_COUNT = 3;
    public static final int GCOMPU_SCALE_RATIONAL_FORMULA = 7;
    public static final int GCOMPU_SCALE_RATIONAL_FORMULA__GCHECKSUM = 0;
    public static final int GCOMPU_SCALE_RATIONAL_FORMULA__GTIMESTAMP = 1;
    public static final int GCOMPU_SCALE_RATIONAL_FORMULA__GCOMPU_RATIONAL_COEFFS = 2;
    public static final int GCOMPU_SCALE_RATIONAL_FORMULA_FEATURE_COUNT = 3;
    public static final int GCOMPU_CONST = 8;
    public static final int GCOMPU_CONST__GCHECKSUM = 0;
    public static final int GCOMPU_CONST__GTIMESTAMP = 1;
    public static final int GCOMPU_CONST__GCOMPU_CONST_CONTENT_TYPE = 2;
    public static final int GCOMPU_CONST_FEATURE_COUNT = 3;
    public static final int GCOMPU_CONST_CONTENT = 9;
    public static final int GCOMPU_CONST_CONTENT__GCHECKSUM = 0;
    public static final int GCOMPU_CONST_CONTENT__GTIMESTAMP = 1;
    public static final int GCOMPU_CONST_CONTENT_FEATURE_COUNT = 2;
    public static final int GCOMPU_CONST_TEXT_CONTENT = 10;
    public static final int GCOMPU_CONST_TEXT_CONTENT__GCHECKSUM = 0;
    public static final int GCOMPU_CONST_TEXT_CONTENT__GTIMESTAMP = 1;
    public static final int GCOMPU_CONST_TEXT_CONTENT__GVT = 2;
    public static final int GCOMPU_CONST_TEXT_CONTENT_FEATURE_COUNT = 3;
    public static final int GCOMPU_CONST_NUMERIC_CONTENT = 11;
    public static final int GCOMPU_CONST_NUMERIC_CONTENT__GCHECKSUM = 0;
    public static final int GCOMPU_CONST_NUMERIC_CONTENT__GTIMESTAMP = 1;
    public static final int GCOMPU_CONST_NUMERIC_CONTENT__GV = 2;
    public static final int GCOMPU_CONST_NUMERIC_CONTENT_FEATURE_COUNT = 3;
    public static final int GCOMPU_CONST_FORMULA_CONTENT = 12;
    public static final int GCOMPU_CONST_FORMULA_CONTENT__GCHECKSUM = 0;
    public static final int GCOMPU_CONST_FORMULA_CONTENT__GTIMESTAMP = 1;
    public static final int GCOMPU_CONST_FORMULA_CONTENT_FEATURE_COUNT = 2;
    public static final int GCOMPU_RATIONAL_COEFFS = 13;
    public static final int GCOMPU_RATIONAL_COEFFS__GCHECKSUM = 0;
    public static final int GCOMPU_RATIONAL_COEFFS__GTIMESTAMP = 1;
    public static final int GCOMPU_RATIONAL_COEFFS__GCOMPU_NUMERATOR = 2;
    public static final int GCOMPU_RATIONAL_COEFFS__GCOMPU_DENOMINATOR = 3;
    public static final int GCOMPU_RATIONAL_COEFFS_FEATURE_COUNT = 4;
    public static final int GCOMPU_NOMINATOR_DENOMINATOR = 14;
    public static final int GCOMPU_NOMINATOR_DENOMINATOR__GCHECKSUM = 0;
    public static final int GCOMPU_NOMINATOR_DENOMINATOR__GTIMESTAMP = 1;
    public static final int GCOMPU_NOMINATOR_DENOMINATOR_FEATURE_COUNT = 2;

    public EClass getGCompuMethod();

    public EReference getGCompuMethod_GCompuPhysToInternal();

    public EReference getGCompuMethod_GCompuInternalToPhys();

    public EReference getGCompuMethod_GUnit();

    public EClass getGCompu();

    public EReference getGCompu_GCompuContent();

    public EClass getGCompuContent();

    public EClass getGCompuScales();

    public EReference getGCompuScales_GCompuScales();

    public EClass getGCompuScale();

    public EReference getGCompuScale_GCompuScaleContents();

    public EReference getGCompuScale_GLowerLimit();

    public EReference getGCompuScale_GUpperLimit();

    public EAttribute getGCompuScale_GShortLabel();

    public EClass getGCompuScaleContents();

    public EClass getGCompuScaleConstantContents();

    public EReference getGCompuScaleConstantContents_GCompuConst();

    public EClass getGCompuScaleRationalFormula();

    public EReference getGCompuScaleRationalFormula_GCompuRationalCoeffs();

    public EClass getGCompuConst();

    public EReference getGCompuConst_GCompuConstContentType();

    public EClass getGCompuConstContent();

    public EClass getGCompuConstTextContent();

    public EAttribute getGCompuConstTextContent_GVt();

    public EClass getGCompuConstNumericContent();

    public EAttribute getGCompuConstNumericContent_GV();

    public EClass getGCompuConstFormulaContent();

    public EClass getGCompuRationalCoeffs();

    public EReference getGCompuRationalCoeffs_GCompuNumerator();

    public EReference getGCompuRationalCoeffs_GCompuDenominator();

    public EClass getGCompuNominatorDenominator();

    public GcomputationmethodFactory getGcomputationmethodFactory();

    public static interface Literals {
        public static final EClass GCOMPU_METHOD = eINSTANCE.getGCompuMethod();
        public static final EReference GCOMPU_METHOD__GCOMPU_PHYS_TO_INTERNAL = eINSTANCE.getGCompuMethod_GCompuPhysToInternal();
        public static final EReference GCOMPU_METHOD__GCOMPU_INTERNAL_TO_PHYS = eINSTANCE.getGCompuMethod_GCompuInternalToPhys();
        public static final EReference GCOMPU_METHOD__GUNIT = eINSTANCE.getGCompuMethod_GUnit();
        public static final EClass GCOMPU = eINSTANCE.getGCompu();
        public static final EReference GCOMPU__GCOMPU_CONTENT = eINSTANCE.getGCompu_GCompuContent();
        public static final EClass GCOMPU_CONTENT = eINSTANCE.getGCompuContent();
        public static final EClass GCOMPU_SCALES = eINSTANCE.getGCompuScales();
        public static final EReference GCOMPU_SCALES__GCOMPU_SCALES = eINSTANCE.getGCompuScales_GCompuScales();
        public static final EClass GCOMPU_SCALE = eINSTANCE.getGCompuScale();
        public static final EReference GCOMPU_SCALE__GCOMPU_SCALE_CONTENTS = eINSTANCE.getGCompuScale_GCompuScaleContents();
        public static final EReference GCOMPU_SCALE__GLOWER_LIMIT = eINSTANCE.getGCompuScale_GLowerLimit();
        public static final EReference GCOMPU_SCALE__GUPPER_LIMIT = eINSTANCE.getGCompuScale_GUpperLimit();
        public static final EAttribute GCOMPU_SCALE__GSHORT_LABEL = eINSTANCE.getGCompuScale_GShortLabel();
        public static final EClass GCOMPU_SCALE_CONTENTS = eINSTANCE.getGCompuScaleContents();
        public static final EClass GCOMPU_SCALE_CONSTANT_CONTENTS = eINSTANCE.getGCompuScaleConstantContents();
        public static final EReference GCOMPU_SCALE_CONSTANT_CONTENTS__GCOMPU_CONST = eINSTANCE.getGCompuScaleConstantContents_GCompuConst();
        public static final EClass GCOMPU_SCALE_RATIONAL_FORMULA = eINSTANCE.getGCompuScaleRationalFormula();
        public static final EReference GCOMPU_SCALE_RATIONAL_FORMULA__GCOMPU_RATIONAL_COEFFS = eINSTANCE.getGCompuScaleRationalFormula_GCompuRationalCoeffs();
        public static final EClass GCOMPU_CONST = eINSTANCE.getGCompuConst();
        public static final EReference GCOMPU_CONST__GCOMPU_CONST_CONTENT_TYPE = eINSTANCE.getGCompuConst_GCompuConstContentType();
        public static final EClass GCOMPU_CONST_CONTENT = eINSTANCE.getGCompuConstContent();
        public static final EClass GCOMPU_CONST_TEXT_CONTENT = eINSTANCE.getGCompuConstTextContent();
        public static final EAttribute GCOMPU_CONST_TEXT_CONTENT__GVT = eINSTANCE.getGCompuConstTextContent_GVt();
        public static final EClass GCOMPU_CONST_NUMERIC_CONTENT = eINSTANCE.getGCompuConstNumericContent();
        public static final EAttribute GCOMPU_CONST_NUMERIC_CONTENT__GV = eINSTANCE.getGCompuConstNumericContent_GV();
        public static final EClass GCOMPU_CONST_FORMULA_CONTENT = eINSTANCE.getGCompuConstFormulaContent();
        public static final EClass GCOMPU_RATIONAL_COEFFS = eINSTANCE.getGCompuRationalCoeffs();
        public static final EReference GCOMPU_RATIONAL_COEFFS__GCOMPU_NUMERATOR = eINSTANCE.getGCompuRationalCoeffs_GCompuNumerator();
        public static final EReference GCOMPU_RATIONAL_COEFFS__GCOMPU_DENOMINATOR = eINSTANCE.getGCompuRationalCoeffs_GCompuDenominator();
        public static final EClass GCOMPU_NOMINATOR_DENOMINATOR = eINSTANCE.getGCompuNominatorDenominator();
    }
}

