/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.genericstructure.formulalanguage;

import autosar40.genericstructure.formulalanguage.FormulalanguageFactory;
import autosar40.genericstructure.formulalanguage.impl.FormulalanguagePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface FormulalanguagePackage
extends EPackage {
    public static final String eNAME = "formulalanguage";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/fl";
    public static final String eNS_PREFIX = "";
    public static final FormulalanguagePackage eINSTANCE = FormulalanguagePackageImpl.init();
    public static final int FORMULA_EXPRESSION = 0;
    public static final int FORMULA_EXPRESSION__GCHECKSUM = 0;
    public static final int FORMULA_EXPRESSION__GTIMESTAMP = 1;
    public static final int FORMULA_EXPRESSION__CHECKSUM = 2;
    public static final int FORMULA_EXPRESSION__TIMESTAMP = 3;
    public static final int FORMULA_EXPRESSION__MIXED = 4;
    public static final int FORMULA_EXPRESSION_FEATURE_COUNT = 5;

    public EClass getFormulaExpression();

    public EAttribute getFormulaExpression_Mixed();

    public FormulalanguageFactory getFormulalanguageFactory();

    public static interface Literals {
        public static final EClass FORMULA_EXPRESSION = eINSTANCE.getFormulaExpression();
        public static final EAttribute FORMULA_EXPRESSION__MIXED = eINSTANCE.getFormulaExpression_Mixed();
    }
}

