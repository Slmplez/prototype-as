/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.ggenericstructure.gvarianthandling.util;

import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint;
import gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula;
import gautosar.ggenericstructure.gvarianthandling.GvarianthandlingPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GvarianthandlingSwitch<T> {
    protected static GvarianthandlingPackage modelPackage;

    public GvarianthandlingSwitch() {
        if (modelPackage == null) {
            modelPackage = GvarianthandlingPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                GSwSystemconstDependentFormula gSwSystemconstDependentFormula = (GSwSystemconstDependentFormula)theEObject;
                T result = this.caseGSwSystemconstDependentFormula(gSwSystemconstDependentFormula);
                if (result == null) {
                    result = this.caseGFormulaExpression(gSwSystemconstDependentFormula);
                }
                if (result == null) {
                    result = this.caseGARObject(gSwSystemconstDependentFormula);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GAttributeValueVariationPoint gAttributeValueVariationPoint = (GAttributeValueVariationPoint)theEObject;
                T result = this.caseGAttributeValueVariationPoint(gAttributeValueVariationPoint);
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(gAttributeValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(gAttributeValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(gAttributeValueVariationPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGSwSystemconstDependentFormula(GSwSystemconstDependentFormula object) {
        return null;
    }

    public T caseGAttributeValueVariationPoint(GAttributeValueVariationPoint object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseGFormulaExpression(GFormulaExpression object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

