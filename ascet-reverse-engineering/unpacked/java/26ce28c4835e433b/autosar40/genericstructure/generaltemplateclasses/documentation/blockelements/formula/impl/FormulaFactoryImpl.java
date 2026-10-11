/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.FormulaFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.FormulaPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.MlFormula;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.impl.MlFormulaImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class FormulaFactoryImpl
extends EFactoryImpl
implements FormulaFactory {
    public static FormulaFactory init() {
        try {
            FormulaFactory theFormulaFactory = (FormulaFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/formula");
            if (theFormulaFactory != null) {
                return theFormulaFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new FormulaFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createMlFormula();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public MlFormula createMlFormula() {
        MlFormulaImpl mlFormula = new MlFormulaImpl();
        return mlFormula;
    }

    public FormulaPackage getFormulaPackage() {
        return (FormulaPackage)this.getEPackage();
    }

    @Deprecated
    public static FormulaPackage getPackage() {
        return FormulaPackage.eINSTANCE;
    }
}

