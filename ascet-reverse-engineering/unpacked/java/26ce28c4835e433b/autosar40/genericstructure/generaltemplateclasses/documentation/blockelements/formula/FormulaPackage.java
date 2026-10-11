/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.FormulaFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.impl.FormulaPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface FormulaPackage
extends EPackage {
    public static final String eNAME = "formula";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/formula";
    public static final String eNS_PREFIX = "";
    public static final FormulaPackage eINSTANCE = FormulaPackageImpl.init();
    public static final int ML_FORMULA = 0;
    public static final int ML_FORMULA__GCHECKSUM = 0;
    public static final int ML_FORMULA__GTIMESTAMP = 1;
    public static final int ML_FORMULA__CHECKSUM = 2;
    public static final int ML_FORMULA__TIMESTAMP = 3;
    public static final int ML_FORMULA__SI = 4;
    public static final int ML_FORMULA__VIEW = 5;
    public static final int ML_FORMULA__BREAK = 6;
    public static final int ML_FORMULA__KEEP_WITH_PREVIOUS = 7;
    public static final int ML_FORMULA__FORMULA_CAPTION = 8;
    public static final int ML_FORMULA__LGRAPHICS = 9;
    public static final int ML_FORMULA__VERBATIM = 10;
    public static final int ML_FORMULA__TEX_MATH = 11;
    public static final int ML_FORMULA__GENERIC_MATH = 12;
    public static final int ML_FORMULA__VARIATION_POINT = 13;
    public static final int ML_FORMULA_FEATURE_COUNT = 14;

    public EClass getMlFormula();

    public EReference getMlFormula_FormulaCaption();

    public EReference getMlFormula_LGraphics();

    public EReference getMlFormula_Verbatim();

    public EReference getMlFormula_TexMath();

    public EReference getMlFormula_GenericMath();

    public EReference getMlFormula_VariationPoint();

    public FormulaFactory getFormulaFactory();

    public static interface Literals {
        public static final EClass ML_FORMULA = eINSTANCE.getMlFormula();
        public static final EReference ML_FORMULA__FORMULA_CAPTION = eINSTANCE.getMlFormula_FormulaCaption();
        public static final EReference ML_FORMULA__LGRAPHICS = eINSTANCE.getMlFormula_LGraphics();
        public static final EReference ML_FORMULA__VERBATIM = eINSTANCE.getMlFormula_Verbatim();
        public static final EReference ML_FORMULA__TEX_MATH = eINSTANCE.getMlFormula_TexMath();
        public static final EReference ML_FORMULA__GENERIC_MATH = eINSTANCE.getMlFormula_GenericMath();
        public static final EReference ML_FORMULA__VARIATION_POINT = eINSTANCE.getMlFormula_VariationPoint();
    }
}

