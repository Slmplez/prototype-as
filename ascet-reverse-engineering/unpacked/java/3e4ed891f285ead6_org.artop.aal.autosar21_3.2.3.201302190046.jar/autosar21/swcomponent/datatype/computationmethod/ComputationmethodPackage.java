/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.datatype.computationmethod;

import autosar21.swcomponent.datatype.computationmethod.ComputationmethodFactory;
import autosar21.swcomponent.datatype.computationmethod.impl.ComputationmethodPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ComputationmethodPackage
extends EPackage {
    public static final String eNAME = "computationmethod";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/d/cm";
    public static final String eNS_PREFIX = "";
    public static final ComputationmethodPackage eINSTANCE = ComputationmethodPackageImpl.init();
    public static final int COMPU = 0;
    public static final int COMPU__GCHECKSUM = 0;
    public static final int COMPU__GTIMESTAMP = 1;
    public static final int COMPU__CHECKSUM = 2;
    public static final int COMPU__TIMESTAMP = 3;
    public static final int COMPU__GCOMPU_CONTENT = 4;
    public static final int COMPU__COMPU_CONTENT_TYPE = 5;
    public static final int COMPU__COMPU_DEFAULT_VALUE = 6;
    public static final int COMPU_FEATURE_COUNT = 7;
    public static final int COMPU_CONTENT = 1;
    public static final int COMPU_CONTENT__GCHECKSUM = 0;
    public static final int COMPU_CONTENT__GTIMESTAMP = 1;
    public static final int COMPU_CONTENT__CHECKSUM = 2;
    public static final int COMPU_CONTENT__TIMESTAMP = 3;
    public static final int COMPU_CONTENT__COMPU = 4;
    public static final int COMPU_CONTENT_FEATURE_COUNT = 5;
    public static final int COMPU_CONST = 2;
    public static final int COMPU_CONST__GCHECKSUM = 0;
    public static final int COMPU_CONST__GTIMESTAMP = 1;
    public static final int COMPU_CONST__CHECKSUM = 2;
    public static final int COMPU_CONST__TIMESTAMP = 3;
    public static final int COMPU_CONST__GCOMPU_CONST_CONTENT_TYPE = 4;
    public static final int COMPU_CONST__COMPU_CONST_CONTENT_TYPE = 5;
    public static final int COMPU_CONST_FEATURE_COUNT = 6;
    public static final int COMPU_CONST_CONTENT = 3;
    public static final int COMPU_CONST_CONTENT__GCHECKSUM = 0;
    public static final int COMPU_CONST_CONTENT__GTIMESTAMP = 1;
    public static final int COMPU_CONST_CONTENT__CHECKSUM = 2;
    public static final int COMPU_CONST_CONTENT__TIMESTAMP = 3;
    public static final int COMPU_CONST_CONTENT__COMPU_CONST = 4;
    public static final int COMPU_CONST_CONTENT_FEATURE_COUNT = 5;
    public static final int COMPU_CONST_FORMULA_CONTENT = 4;
    public static final int COMPU_CONST_FORMULA_CONTENT__GCHECKSUM = 0;
    public static final int COMPU_CONST_FORMULA_CONTENT__GTIMESTAMP = 1;
    public static final int COMPU_CONST_FORMULA_CONTENT__CHECKSUM = 2;
    public static final int COMPU_CONST_FORMULA_CONTENT__TIMESTAMP = 3;
    public static final int COMPU_CONST_FORMULA_CONTENT__COMPU_CONST = 4;
    public static final int COMPU_CONST_FORMULA_CONTENT__VF = 5;
    public static final int COMPU_CONST_FORMULA_CONTENT_FEATURE_COUNT = 6;
    public static final int COMPU_CONST_NUMERIC_CONTENT = 5;
    public static final int COMPU_CONST_NUMERIC_CONTENT__GCHECKSUM = 0;
    public static final int COMPU_CONST_NUMERIC_CONTENT__GTIMESTAMP = 1;
    public static final int COMPU_CONST_NUMERIC_CONTENT__CHECKSUM = 2;
    public static final int COMPU_CONST_NUMERIC_CONTENT__TIMESTAMP = 3;
    public static final int COMPU_CONST_NUMERIC_CONTENT__COMPU_CONST = 4;
    public static final int COMPU_CONST_NUMERIC_CONTENT__GV = 5;
    public static final int COMPU_CONST_NUMERIC_CONTENT__V = 6;
    public static final int COMPU_CONST_NUMERIC_CONTENT_FEATURE_COUNT = 7;
    public static final int COMPU_CONST_TEXT_CONTENT = 6;
    public static final int COMPU_CONST_TEXT_CONTENT__GCHECKSUM = 0;
    public static final int COMPU_CONST_TEXT_CONTENT__GTIMESTAMP = 1;
    public static final int COMPU_CONST_TEXT_CONTENT__CHECKSUM = 2;
    public static final int COMPU_CONST_TEXT_CONTENT__TIMESTAMP = 3;
    public static final int COMPU_CONST_TEXT_CONTENT__COMPU_CONST = 4;
    public static final int COMPU_CONST_TEXT_CONTENT__GVT = 5;
    public static final int COMPU_CONST_TEXT_CONTENT__VT = 6;
    public static final int COMPU_CONST_TEXT_CONTENT_FEATURE_COUNT = 7;
    public static final int COMPU_DEFAULT_VALUE = 7;
    public static final int COMPU_DEFAULT_VALUE__GCHECKSUM = 0;
    public static final int COMPU_DEFAULT_VALUE__GTIMESTAMP = 1;
    public static final int COMPU_DEFAULT_VALUE__CHECKSUM = 2;
    public static final int COMPU_DEFAULT_VALUE__TIMESTAMP = 3;
    public static final int COMPU_DEFAULT_VALUE_FEATURE_COUNT = 4;
    public static final int COMPU_GENERIC_MATH = 8;
    public static final int COMPU_GENERIC_MATH__GCHECKSUM = 0;
    public static final int COMPU_GENERIC_MATH__GTIMESTAMP = 1;
    public static final int COMPU_GENERIC_MATH__CHECKSUM = 2;
    public static final int COMPU_GENERIC_MATH__TIMESTAMP = 3;
    public static final int COMPU_GENERIC_MATH__MIXED = 4;
    public static final int COMPU_GENERIC_MATH__LEVELS = 5;
    public static final int COMPU_GENERIC_MATH_FEATURE_COUNT = 6;
    public static final int COMPU_METHOD = 9;
    public static final int COMPU_METHOD__GCHECKSUM = 0;
    public static final int COMPU_METHOD__GTIMESTAMP = 1;
    public static final int COMPU_METHOD__CHECKSUM = 2;
    public static final int COMPU_METHOD__TIMESTAMP = 3;
    public static final int COMPU_METHOD__GSHORT_NAME = 4;
    public static final int COMPU_METHOD__GUUID = 5;
    public static final int COMPU_METHOD__GCATEGORY = 6;
    public static final int COMPU_METHOD__GDESC = 7;
    public static final int COMPU_METHOD__SHORT_NAME = 8;
    public static final int COMPU_METHOD__LONG_NAME = 9;
    public static final int COMPU_METHOD__DESC = 10;
    public static final int COMPU_METHOD__CATEGORY = 11;
    public static final int COMPU_METHOD__ADMIN_DATA = 12;
    public static final int COMPU_METHOD__UUID = 13;
    public static final int COMPU_METHOD__ALL_EXTENSIONS = 14;
    public static final int COMPU_METHOD__CONTAINED_EXTENSIONS = 15;
    public static final int COMPU_METHOD__GAR_PACKAGE = 16;
    public static final int COMPU_METHOD__AR_PACKAGE = 17;
    public static final int COMPU_METHOD__GCOMPU_PHYS_TO_INTERNAL = 18;
    public static final int COMPU_METHOD__GCOMPU_INTERNAL_TO_PHYS = 19;
    public static final int COMPU_METHOD__GUNIT = 20;
    public static final int COMPU_METHOD__UNIT = 21;
    public static final int COMPU_METHOD__COMPU_INTERNAL_TO_PHYS = 22;
    public static final int COMPU_METHOD__COMPU_PHYS_TO_INTERNAL = 23;
    public static final int COMPU_METHOD_FEATURE_COUNT = 24;
    public static final int COMPU_NOMINATOR_DENOMINATOR = 10;
    public static final int COMPU_NOMINATOR_DENOMINATOR__GCHECKSUM = 0;
    public static final int COMPU_NOMINATOR_DENOMINATOR__GTIMESTAMP = 1;
    public static final int COMPU_NOMINATOR_DENOMINATOR__CHECKSUM = 2;
    public static final int COMPU_NOMINATOR_DENOMINATOR__TIMESTAMP = 3;
    public static final int COMPU_NOMINATOR_DENOMINATOR__VFS = 4;
    public static final int COMPU_NOMINATOR_DENOMINATOR__VS = 5;
    public static final int COMPU_NOMINATOR_DENOMINATOR_FEATURE_COUNT = 6;
    public static final int COMPU_PROG_CODE = 11;
    public static final int COMPU_PROG_CODE__GCHECKSUM = 0;
    public static final int COMPU_PROG_CODE__GTIMESTAMP = 1;
    public static final int COMPU_PROG_CODE__CHECKSUM = 2;
    public static final int COMPU_PROG_CODE__TIMESTAMP = 3;
    public static final int COMPU_PROG_CODE__COMPU = 4;
    public static final int COMPU_PROG_CODE__PROG_CODE = 5;
    public static final int COMPU_PROG_CODE_FEATURE_COUNT = 6;
    public static final int PROG_CODE = 12;
    public static final int PROG_CODE__GCHECKSUM = 0;
    public static final int PROG_CODE__GTIMESTAMP = 1;
    public static final int PROG_CODE__CHECKSUM = 2;
    public static final int PROG_CODE__TIMESTAMP = 3;
    public static final int PROG_CODE__COMPU_PROG_CODE = 4;
    public static final int PROG_CODE_FEATURE_COUNT = 5;
    public static final int COMPU_RATIONAL_COEFFS = 13;
    public static final int COMPU_RATIONAL_COEFFS__GCHECKSUM = 0;
    public static final int COMPU_RATIONAL_COEFFS__GTIMESTAMP = 1;
    public static final int COMPU_RATIONAL_COEFFS__CHECKSUM = 2;
    public static final int COMPU_RATIONAL_COEFFS__TIMESTAMP = 3;
    public static final int COMPU_RATIONAL_COEFFS__GCOMPU_NUMERATOR = 4;
    public static final int COMPU_RATIONAL_COEFFS__GCOMPU_DENOMINATOR = 5;
    public static final int COMPU_RATIONAL_COEFFS__COMPU_SCALE_RATIONAL_FORMULA = 6;
    public static final int COMPU_RATIONAL_COEFFS__COMPU_NUMERATOR = 7;
    public static final int COMPU_RATIONAL_COEFFS__COMPU_DENOMINATOR = 8;
    public static final int COMPU_RATIONAL_COEFFS_FEATURE_COUNT = 9;
    public static final int COMPU_SCALE = 14;
    public static final int COMPU_SCALE__GCHECKSUM = 0;
    public static final int COMPU_SCALE__GTIMESTAMP = 1;
    public static final int COMPU_SCALE__CHECKSUM = 2;
    public static final int COMPU_SCALE__TIMESTAMP = 3;
    public static final int COMPU_SCALE__GCOMPU_SCALE_CONTENTS = 4;
    public static final int COMPU_SCALE__GLOWER_LIMIT = 5;
    public static final int COMPU_SCALE__GUPPER_LIMIT = 6;
    public static final int COMPU_SCALE__GSHORT_LABEL = 7;
    public static final int COMPU_SCALE__COMPU_SCALES = 8;
    public static final int COMPU_SCALE__SHORT_LABEL = 9;
    public static final int COMPU_SCALE__DESC = 10;
    public static final int COMPU_SCALE__LOWER_LIMIT = 11;
    public static final int COMPU_SCALE__UPPER_LIMIT = 12;
    public static final int COMPU_SCALE__COMPU_SCALE_CONTENTS_TYPE = 13;
    public static final int COMPU_SCALE_FEATURE_COUNT = 14;
    public static final int COMPU_SCALE_CONTENTS = 15;
    public static final int COMPU_SCALE_CONTENTS__GCHECKSUM = 0;
    public static final int COMPU_SCALE_CONTENTS__GTIMESTAMP = 1;
    public static final int COMPU_SCALE_CONTENTS__CHECKSUM = 2;
    public static final int COMPU_SCALE_CONTENTS__TIMESTAMP = 3;
    public static final int COMPU_SCALE_CONTENTS__COMPU_SCALE = 4;
    public static final int COMPU_SCALE_CONTENTS_FEATURE_COUNT = 5;
    public static final int COMPU_SCALE_CONSTANT_CONTENTS = 16;
    public static final int COMPU_SCALE_CONSTANT_CONTENTS__GCHECKSUM = 0;
    public static final int COMPU_SCALE_CONSTANT_CONTENTS__GTIMESTAMP = 1;
    public static final int COMPU_SCALE_CONSTANT_CONTENTS__CHECKSUM = 2;
    public static final int COMPU_SCALE_CONSTANT_CONTENTS__TIMESTAMP = 3;
    public static final int COMPU_SCALE_CONSTANT_CONTENTS__COMPU_SCALE = 4;
    public static final int COMPU_SCALE_CONSTANT_CONTENTS__GCOMPU_CONST = 5;
    public static final int COMPU_SCALE_CONSTANT_CONTENTS__COMPU_CONST = 6;
    public static final int COMPU_SCALE_CONSTANT_CONTENTS_FEATURE_COUNT = 7;
    public static final int COMPU_SCALE_GENERIC_MATH = 17;
    public static final int COMPU_SCALE_GENERIC_MATH__GCHECKSUM = 0;
    public static final int COMPU_SCALE_GENERIC_MATH__GTIMESTAMP = 1;
    public static final int COMPU_SCALE_GENERIC_MATH__CHECKSUM = 2;
    public static final int COMPU_SCALE_GENERIC_MATH__TIMESTAMP = 3;
    public static final int COMPU_SCALE_GENERIC_MATH__COMPU_SCALE = 4;
    public static final int COMPU_SCALE_GENERIC_MATH_FEATURE_COUNT = 5;
    public static final int COMPU_SCALE_RATIONAL_FORMULA = 18;
    public static final int COMPU_SCALE_RATIONAL_FORMULA__GCHECKSUM = 0;
    public static final int COMPU_SCALE_RATIONAL_FORMULA__GTIMESTAMP = 1;
    public static final int COMPU_SCALE_RATIONAL_FORMULA__CHECKSUM = 2;
    public static final int COMPU_SCALE_RATIONAL_FORMULA__TIMESTAMP = 3;
    public static final int COMPU_SCALE_RATIONAL_FORMULA__COMPU_SCALE = 4;
    public static final int COMPU_SCALE_RATIONAL_FORMULA__GCOMPU_RATIONAL_COEFFS = 5;
    public static final int COMPU_SCALE_RATIONAL_FORMULA__COMPU_RATIONAL_COEFFS = 6;
    public static final int COMPU_SCALE_RATIONAL_FORMULA_FEATURE_COUNT = 7;
    public static final int COMPU_SCALES = 19;
    public static final int COMPU_SCALES__GCHECKSUM = 0;
    public static final int COMPU_SCALES__GTIMESTAMP = 1;
    public static final int COMPU_SCALES__CHECKSUM = 2;
    public static final int COMPU_SCALES__TIMESTAMP = 3;
    public static final int COMPU_SCALES__COMPU = 4;
    public static final int COMPU_SCALES__GCOMPU_SCALES = 5;
    public static final int COMPU_SCALES__COMPU_SCALES = 6;
    public static final int COMPU_SCALES_FEATURE_COUNT = 7;

    public EClass getCompu();

    public EReference getCompu_CompuContentType();

    public EReference getCompu_CompuDefaultValue();

    public EClass getCompuContent();

    public EReference getCompuContent_Compu();

    public EClass getCompuConst();

    public EReference getCompuConst_CompuConstContentType();

    public EClass getCompuConstContent();

    public EReference getCompuConstContent_CompuConst();

    public EClass getCompuConstFormulaContent();

    public EReference getCompuConstFormulaContent_Vf();

    public EClass getCompuConstNumericContent();

    public EAttribute getCompuConstNumericContent_V();

    public EClass getCompuConstTextContent();

    public EReference getCompuConstTextContent_Vt();

    public EClass getCompuDefaultValue();

    public EClass getCompuGenericMath();

    public EAttribute getCompuGenericMath_Levels();

    public EClass getCompuMethod();

    public EReference getCompuMethod_Unit();

    public EReference getCompuMethod_CompuInternalToPhys();

    public EReference getCompuMethod_CompuPhysToInternal();

    public EClass getCompuNominatorDenominator();

    public EReference getCompuNominatorDenominator_Vfs();

    public EAttribute getCompuNominatorDenominator_Vs();

    public EClass getCompuProgCode();

    public EReference getCompuProgCode_ProgCode();

    public EClass getProgCode();

    public EReference getProgCode_CompuProgCode();

    public EClass getCompuRationalCoeffs();

    public EReference getCompuRationalCoeffs_CompuScaleRationalFormula();

    public EReference getCompuRationalCoeffs_CompuNumerator();

    public EReference getCompuRationalCoeffs_CompuDenominator();

    public EClass getCompuScale();

    public EReference getCompuScale_CompuScales();

    public EAttribute getCompuScale_ShortLabel();

    public EReference getCompuScale_Desc();

    public EReference getCompuScale_LowerLimit();

    public EReference getCompuScale_UpperLimit();

    public EReference getCompuScale_CompuScaleContentsType();

    public EClass getCompuScaleContents();

    public EReference getCompuScaleContents_CompuScale();

    public EClass getCompuScaleConstantContents();

    public EReference getCompuScaleConstantContents_CompuConst();

    public EClass getCompuScaleGenericMath();

    public EClass getCompuScaleRationalFormula();

    public EReference getCompuScaleRationalFormula_CompuRationalCoeffs();

    public EClass getCompuScales();

    public EReference getCompuScales_CompuScales();

    public ComputationmethodFactory getComputationmethodFactory();

    public static interface Literals {
        public static final EClass COMPU = eINSTANCE.getCompu();
        public static final EReference COMPU__COMPU_CONTENT_TYPE = eINSTANCE.getCompu_CompuContentType();
        public static final EReference COMPU__COMPU_DEFAULT_VALUE = eINSTANCE.getCompu_CompuDefaultValue();
        public static final EClass COMPU_CONTENT = eINSTANCE.getCompuContent();
        public static final EReference COMPU_CONTENT__COMPU = eINSTANCE.getCompuContent_Compu();
        public static final EClass COMPU_CONST = eINSTANCE.getCompuConst();
        public static final EReference COMPU_CONST__COMPU_CONST_CONTENT_TYPE = eINSTANCE.getCompuConst_CompuConstContentType();
        public static final EClass COMPU_CONST_CONTENT = eINSTANCE.getCompuConstContent();
        public static final EReference COMPU_CONST_CONTENT__COMPU_CONST = eINSTANCE.getCompuConstContent_CompuConst();
        public static final EClass COMPU_CONST_FORMULA_CONTENT = eINSTANCE.getCompuConstFormulaContent();
        public static final EReference COMPU_CONST_FORMULA_CONTENT__VF = eINSTANCE.getCompuConstFormulaContent_Vf();
        public static final EClass COMPU_CONST_NUMERIC_CONTENT = eINSTANCE.getCompuConstNumericContent();
        public static final EAttribute COMPU_CONST_NUMERIC_CONTENT__V = eINSTANCE.getCompuConstNumericContent_V();
        public static final EClass COMPU_CONST_TEXT_CONTENT = eINSTANCE.getCompuConstTextContent();
        public static final EReference COMPU_CONST_TEXT_CONTENT__VT = eINSTANCE.getCompuConstTextContent_Vt();
        public static final EClass COMPU_DEFAULT_VALUE = eINSTANCE.getCompuDefaultValue();
        public static final EClass COMPU_GENERIC_MATH = eINSTANCE.getCompuGenericMath();
        public static final EAttribute COMPU_GENERIC_MATH__LEVELS = eINSTANCE.getCompuGenericMath_Levels();
        public static final EClass COMPU_METHOD = eINSTANCE.getCompuMethod();
        public static final EReference COMPU_METHOD__UNIT = eINSTANCE.getCompuMethod_Unit();
        public static final EReference COMPU_METHOD__COMPU_INTERNAL_TO_PHYS = eINSTANCE.getCompuMethod_CompuInternalToPhys();
        public static final EReference COMPU_METHOD__COMPU_PHYS_TO_INTERNAL = eINSTANCE.getCompuMethod_CompuPhysToInternal();
        public static final EClass COMPU_NOMINATOR_DENOMINATOR = eINSTANCE.getCompuNominatorDenominator();
        public static final EReference COMPU_NOMINATOR_DENOMINATOR__VFS = eINSTANCE.getCompuNominatorDenominator_Vfs();
        public static final EAttribute COMPU_NOMINATOR_DENOMINATOR__VS = eINSTANCE.getCompuNominatorDenominator_Vs();
        public static final EClass COMPU_PROG_CODE = eINSTANCE.getCompuProgCode();
        public static final EReference COMPU_PROG_CODE__PROG_CODE = eINSTANCE.getCompuProgCode_ProgCode();
        public static final EClass PROG_CODE = eINSTANCE.getProgCode();
        public static final EReference PROG_CODE__COMPU_PROG_CODE = eINSTANCE.getProgCode_CompuProgCode();
        public static final EClass COMPU_RATIONAL_COEFFS = eINSTANCE.getCompuRationalCoeffs();
        public static final EReference COMPU_RATIONAL_COEFFS__COMPU_SCALE_RATIONAL_FORMULA = eINSTANCE.getCompuRationalCoeffs_CompuScaleRationalFormula();
        public static final EReference COMPU_RATIONAL_COEFFS__COMPU_NUMERATOR = eINSTANCE.getCompuRationalCoeffs_CompuNumerator();
        public static final EReference COMPU_RATIONAL_COEFFS__COMPU_DENOMINATOR = eINSTANCE.getCompuRationalCoeffs_CompuDenominator();
        public static final EClass COMPU_SCALE = eINSTANCE.getCompuScale();
        public static final EReference COMPU_SCALE__COMPU_SCALES = eINSTANCE.getCompuScale_CompuScales();
        public static final EAttribute COMPU_SCALE__SHORT_LABEL = eINSTANCE.getCompuScale_ShortLabel();
        public static final EReference COMPU_SCALE__DESC = eINSTANCE.getCompuScale_Desc();
        public static final EReference COMPU_SCALE__LOWER_LIMIT = eINSTANCE.getCompuScale_LowerLimit();
        public static final EReference COMPU_SCALE__UPPER_LIMIT = eINSTANCE.getCompuScale_UpperLimit();
        public static final EReference COMPU_SCALE__COMPU_SCALE_CONTENTS_TYPE = eINSTANCE.getCompuScale_CompuScaleContentsType();
        public static final EClass COMPU_SCALE_CONTENTS = eINSTANCE.getCompuScaleContents();
        public static final EReference COMPU_SCALE_CONTENTS__COMPU_SCALE = eINSTANCE.getCompuScaleContents_CompuScale();
        public static final EClass COMPU_SCALE_CONSTANT_CONTENTS = eINSTANCE.getCompuScaleConstantContents();
        public static final EReference COMPU_SCALE_CONSTANT_CONTENTS__COMPU_CONST = eINSTANCE.getCompuScaleConstantContents_CompuConst();
        public static final EClass COMPU_SCALE_GENERIC_MATH = eINSTANCE.getCompuScaleGenericMath();
        public static final EClass COMPU_SCALE_RATIONAL_FORMULA = eINSTANCE.getCompuScaleRationalFormula();
        public static final EReference COMPU_SCALE_RATIONAL_FORMULA__COMPU_RATIONAL_COEFFS = eINSTANCE.getCompuScaleRationalFormula_CompuRationalCoeffs();
        public static final EClass COMPU_SCALES = eINSTANCE.getCompuScales();
        public static final EReference COMPU_SCALES__COMPU_SCALES = eINSTANCE.getCompuScales_CompuScales();
    }
}

