/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.FormulaPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.MlFormula;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.impl.FormulaFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface FormulaFactory
extends EFactory {
    public static final FormulaFactory eINSTANCE = FormulaFactoryImpl.init();

    public MlFormula createMlFormula();

    public FormulaPackage getFormulaPackage();
}

