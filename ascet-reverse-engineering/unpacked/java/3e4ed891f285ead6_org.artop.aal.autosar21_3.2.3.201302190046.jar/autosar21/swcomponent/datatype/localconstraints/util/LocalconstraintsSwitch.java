/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.gformulalanguage.GFormulaExpression
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint
 *  gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.datatype.localconstraints.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.localconstraints.Interstring;
import autosar21.swcomponent.datatype.localconstraints.Limit;
import autosar21.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar21.swcomponent.datatype.valuemodel.ValueByFormula;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint;
import gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LocalconstraintsSwitch<T> {
    protected static LocalconstraintsPackage modelPackage;

    public LocalconstraintsSwitch() {
        if (modelPackage == null) {
            modelPackage = LocalconstraintsPackage.eINSTANCE;
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
                Interstring interstring = (Interstring)theEObject;
                T result = this.caseInterstring(interstring);
                if (result == null) {
                    result = this.caseARObject(interstring);
                }
                if (result == null) {
                    result = this.caseGARObject(interstring);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                Limit limit = (Limit)theEObject;
                T result = this.caseLimit(limit);
                if (result == null) {
                    result = this.caseValueByFormula(limit);
                }
                if (result == null) {
                    result = this.caseGLimit(limit);
                }
                if (result == null) {
                    result = this.caseARObject(limit);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(limit);
                }
                if (result == null) {
                    result = this.caseGAbstractLimit((GAbstractLimit)limit);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula((GSwSystemconstDependentFormula)limit);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression((GFormulaExpression)limit);
                }
                if (result == null) {
                    result = this.caseGARObject(limit);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseInterstring(Interstring object) {
        return null;
    }

    public T caseLimit(Limit object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
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

    public T caseValueByFormula(ValueByFormula object) {
        return null;
    }

    public T caseGAbstractLimit(GAbstractLimit object) {
        return null;
    }

    public T caseGLimit(GLimit object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

