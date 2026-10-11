/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.commonstructure.calibrationparameter.util;

import autosar3x.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisIndividualAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisTypeProps;
import autosar3x.commonstructure.calibrationparameter.SwCalprmValueAxisLabels;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CalibrationparameterSwitch<T> {
    protected static CalibrationparameterPackage modelPackage;

    public CalibrationparameterSwitch() {
        if (modelPackage == null) {
            modelPackage = CalibrationparameterPackage.eINSTANCE;
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
                SwCalprmAxis swCalprmAxis = (SwCalprmAxis)theEObject;
                T result = this.caseSwCalprmAxis(swCalprmAxis);
                if (result == null) {
                    result = this.caseARObject(swCalprmAxis);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprmAxis);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwCalprmAxisSet swCalprmAxisSet = (SwCalprmAxisSet)theEObject;
                T result = this.caseSwCalprmAxisSet(swCalprmAxisSet);
                if (result == null) {
                    result = this.caseARObject(swCalprmAxisSet);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprmAxisSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwCalprmValueAxisLabels swCalprmValueAxisLabels = (SwCalprmValueAxisLabels)theEObject;
                T result = this.caseSwCalprmValueAxisLabels(swCalprmValueAxisLabels);
                if (result == null) {
                    result = this.caseARObject(swCalprmValueAxisLabels);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprmValueAxisLabels);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SwCalprmAxisTypeProps swCalprmAxisTypeProps = (SwCalprmAxisTypeProps)theEObject;
                T result = this.caseSwCalprmAxisTypeProps(swCalprmAxisTypeProps);
                if (result == null) {
                    result = this.caseARObject(swCalprmAxisTypeProps);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprmAxisTypeProps);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SwCalprmAxisCommonAxis swCalprmAxisCommonAxis = (SwCalprmAxisCommonAxis)theEObject;
                T result = this.caseSwCalprmAxisCommonAxis(swCalprmAxisCommonAxis);
                if (result == null) {
                    result = this.caseSwCalprmAxisTypeProps(swCalprmAxisCommonAxis);
                }
                if (result == null) {
                    result = this.caseARObject(swCalprmAxisCommonAxis);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprmAxisCommonAxis);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SwCalprmAxisIndividualAxis swCalprmAxisIndividualAxis = (SwCalprmAxisIndividualAxis)theEObject;
                T result = this.caseSwCalprmAxisIndividualAxis(swCalprmAxisIndividualAxis);
                if (result == null) {
                    result = this.caseSwCalprmAxisTypeProps(swCalprmAxisIndividualAxis);
                }
                if (result == null) {
                    result = this.caseARObject(swCalprmAxisIndividualAxis);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprmAxisIndividualAxis);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwCalprmAxis(SwCalprmAxis object) {
        return null;
    }

    public T caseSwCalprmAxisSet(SwCalprmAxisSet object) {
        return null;
    }

    public T caseSwCalprmValueAxisLabels(SwCalprmValueAxisLabels object) {
        return null;
    }

    public T caseSwCalprmAxisTypeProps(SwCalprmAxisTypeProps object) {
        return null;
    }

    public T caseSwCalprmAxisCommonAxis(SwCalprmAxisCommonAxis object) {
        return null;
    }

    public T caseSwCalprmAxisIndividualAxis(SwCalprmAxisIndividualAxis object) {
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

