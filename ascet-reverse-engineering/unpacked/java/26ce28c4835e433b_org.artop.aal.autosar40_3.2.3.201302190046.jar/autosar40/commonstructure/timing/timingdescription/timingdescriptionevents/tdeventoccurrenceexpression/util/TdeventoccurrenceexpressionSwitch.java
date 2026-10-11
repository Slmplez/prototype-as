/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.gformulalanguage.GFormulaExpression
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.util;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpression;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TDEventOccurrenceExpressionFormula;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TdeventoccurrenceexpressionPackage;
import autosar40.genericstructure.formulalanguage.FormulaExpression;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TdeventoccurrenceexpressionSwitch<T> {
    protected static TdeventoccurrenceexpressionPackage modelPackage;

    public TdeventoccurrenceexpressionSwitch() {
        if (modelPackage == null) {
            modelPackage = TdeventoccurrenceexpressionPackage.eINSTANCE;
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
                TDEventOccurrenceExpressionFormula tdEventOccurrenceExpressionFormula = (TDEventOccurrenceExpressionFormula)theEObject;
                T result = this.caseTDEventOccurrenceExpressionFormula(tdEventOccurrenceExpressionFormula);
                if (result == null) {
                    result = this.caseFormulaExpression(tdEventOccurrenceExpressionFormula);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventOccurrenceExpressionFormula);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(tdEventOccurrenceExpressionFormula);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventOccurrenceExpressionFormula);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                TDEventOccurrenceExpression tdEventOccurrenceExpression = (TDEventOccurrenceExpression)theEObject;
                T result = this.caseTDEventOccurrenceExpression(tdEventOccurrenceExpression);
                if (result == null) {
                    result = this.caseARObject(tdEventOccurrenceExpression);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventOccurrenceExpression);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseTDEventOccurrenceExpressionFormula(TDEventOccurrenceExpressionFormula object) {
        return null;
    }

    public T caseTDEventOccurrenceExpression(TDEventOccurrenceExpression object) {
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

    public T caseFormulaExpression(FormulaExpression object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

