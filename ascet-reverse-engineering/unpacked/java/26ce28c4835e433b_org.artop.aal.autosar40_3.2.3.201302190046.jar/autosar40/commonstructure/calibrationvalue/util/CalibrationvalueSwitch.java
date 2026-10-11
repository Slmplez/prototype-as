/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.calibrationvalue.util;

import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;
import autosar40.commonstructure.calibrationvalue.SwAxisCont;
import autosar40.commonstructure.calibrationvalue.SwValueCont;
import autosar40.commonstructure.calibrationvalue.SwValues;
import autosar40.commonstructure.calibrationvalue.ValueGroup;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CalibrationvalueSwitch<T> {
    protected static CalibrationvaluePackage modelPackage;

    public CalibrationvalueSwitch() {
        if (modelPackage == null) {
            modelPackage = CalibrationvaluePackage.eINSTANCE;
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
                SwAxisCont swAxisCont = (SwAxisCont)theEObject;
                T result = this.caseSwAxisCont(swAxisCont);
                if (result == null) {
                    result = this.caseARObject(swAxisCont);
                }
                if (result == null) {
                    result = this.caseGARObject(swAxisCont);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwValueCont swValueCont = (SwValueCont)theEObject;
                T result = this.caseSwValueCont(swValueCont);
                if (result == null) {
                    result = this.caseARObject(swValueCont);
                }
                if (result == null) {
                    result = this.caseGARObject(swValueCont);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ValueGroup valueGroup = (ValueGroup)theEObject;
                T result = this.caseValueGroup(valueGroup);
                if (result == null) {
                    result = this.caseARObject(valueGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(valueGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SwValues swValues = (SwValues)theEObject;
                T result = this.caseSwValues(swValues);
                if (result == null) {
                    result = this.caseARObject(swValues);
                }
                if (result == null) {
                    result = this.caseGARObject(swValues);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwAxisCont(SwAxisCont object) {
        return null;
    }

    public T caseSwValueCont(SwValueCont object) {
        return null;
    }

    public T caseValueGroup(ValueGroup object) {
        return null;
    }

    public T caseSwValues(SwValues object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

