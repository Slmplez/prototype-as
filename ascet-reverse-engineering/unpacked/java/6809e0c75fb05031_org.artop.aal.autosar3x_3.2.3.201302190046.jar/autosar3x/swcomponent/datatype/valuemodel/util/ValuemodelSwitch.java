/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.gformulalanguage.GFormulaExpression
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint
 *  gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.datatype.valuemodel.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.valuemodel.V;
import autosar3x.swcomponent.datatype.valuemodel.ValueByFormula;
import autosar3x.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar3x.swcomponent.datatype.valuemodel.Vf;
import autosar3x.swcomponent.datatype.valuemodel.Vt;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint;
import gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ValuemodelSwitch<T> {
    protected static ValuemodelPackage modelPackage;

    public ValuemodelSwitch() {
        if (modelPackage == null) {
            modelPackage = ValuemodelPackage.eINSTANCE;
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
                ValueByFormula valueByFormula = (ValueByFormula)theEObject;
                T result = this.caseValueByFormula(valueByFormula);
                if (result == null) {
                    result = this.caseARObject(valueByFormula);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(valueByFormula);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula((GSwSystemconstDependentFormula)valueByFormula);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression((GFormulaExpression)valueByFormula);
                }
                if (result == null) {
                    result = this.caseGARObject(valueByFormula);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                Vt vt = (Vt)theEObject;
                T result = this.caseVt(vt);
                if (result == null) {
                    result = this.caseARObject(vt);
                }
                if (result == null) {
                    result = this.caseGARObject(vt);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                V v = (V)theEObject;
                T result = this.caseV(v);
                if (result == null) {
                    result = this.caseARObject(v);
                }
                if (result == null) {
                    result = this.caseGARObject(v);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Vf vf = (Vf)theEObject;
                T result = this.caseVf(vf);
                if (result == null) {
                    result = this.caseValueByFormula(vf);
                }
                if (result == null) {
                    result = this.caseARObject(vf);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(vf);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula((GSwSystemconstDependentFormula)vf);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression((GFormulaExpression)vf);
                }
                if (result == null) {
                    result = this.caseGARObject(vf);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseValueByFormula(ValueByFormula object) {
        return null;
    }

    public T caseVt(Vt object) {
        return null;
    }

    public T caseV(V object) {
        return null;
    }

    public T caseVf(Vf object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

