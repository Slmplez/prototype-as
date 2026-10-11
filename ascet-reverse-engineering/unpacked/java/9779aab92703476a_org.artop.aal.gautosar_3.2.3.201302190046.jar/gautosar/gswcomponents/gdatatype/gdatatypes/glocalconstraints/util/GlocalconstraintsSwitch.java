/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.util;

import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint;
import gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GlocalconstraintsSwitch<T> {
    protected static GlocalconstraintsPackage modelPackage;

    public GlocalconstraintsSwitch() {
        if (modelPackage == null) {
            modelPackage = GlocalconstraintsPackage.eINSTANCE;
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
                GLimit gLimit = (GLimit)theEObject;
                T result = this.caseGLimit(gLimit);
                if (result == null) {
                    result = this.caseGAbstractLimit(gLimit);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(gLimit);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(gLimit);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(gLimit);
                }
                if (result == null) {
                    result = this.caseGARObject(gLimit);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GAbstractLimit gAbstractLimit = (GAbstractLimit)theEObject;
                T result = this.caseGAbstractLimit(gAbstractLimit);
                if (result == null) {
                    result = this.caseGARObject(gAbstractLimit);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGLimit(GLimit object) {
        return null;
    }

    public T caseGAbstractLimit(GAbstractLimit object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseGFormulaExpression(GFormulaExpression object) {
        return null;
    }

    public T caseGSwSystemconstDependentFormula(GSwSystemconstDependentFormula object) {
        return null;
    }

    public T caseGAttributeValueVariationPoint(GAttributeValueVariationPoint object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

