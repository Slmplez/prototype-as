/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.measurementandcalibration.calibrationparameter.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.CalibrationparameterPackage;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprm;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisIndividualAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisSet;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmValueAxisLabels;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
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
                SwCalprmAxisAxis swCalprmAxisAxis = (SwCalprmAxisAxis)theEObject;
                T result = this.caseSwCalprmAxisAxis(swCalprmAxisAxis);
                if (result == null) {
                    result = this.caseARObject(swCalprmAxisAxis);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprmAxisAxis);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwCalprmAxisCommonAxis swCalprmAxisCommonAxis = (SwCalprmAxisCommonAxis)theEObject;
                T result = this.caseSwCalprmAxisCommonAxis(swCalprmAxisCommonAxis);
                if (result == null) {
                    result = this.caseSwCalprmAxisAxis(swCalprmAxisCommonAxis);
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
            case 3: {
                SwCalprmAxisIndividualAxis swCalprmAxisIndividualAxis = (SwCalprmAxisIndividualAxis)theEObject;
                T result = this.caseSwCalprmAxisIndividualAxis(swCalprmAxisIndividualAxis);
                if (result == null) {
                    result = this.caseSwCalprmAxisAxis(swCalprmAxisIndividualAxis);
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
            case 4: {
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
            case 5: {
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
            case 6: {
                SwCalprm swCalprm = (SwCalprm)theEObject;
                T result = this.caseSwCalprm(swCalprm);
                if (result == null) {
                    result = this.caseARElement(swCalprm);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(swCalprm);
                }
                if (result == null) {
                    result = this.casePackageableElement(swCalprm);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swCalprm);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swCalprm);
                }
                if (result == null) {
                    result = this.caseARObject(swCalprm);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swCalprm);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swCalprm);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprm);
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

    public T caseSwCalprmAxisAxis(SwCalprmAxisAxis object) {
        return null;
    }

    public T caseSwCalprmAxisCommonAxis(SwCalprmAxisCommonAxis object) {
        return null;
    }

    public T caseSwCalprmAxisIndividualAxis(SwCalprmAxisIndividualAxis object) {
        return null;
    }

    public T caseSwCalprmAxisSet(SwCalprmAxisSet object) {
        return null;
    }

    public T caseSwCalprmValueAxisLabels(SwCalprmValueAxisLabels object) {
        return null;
    }

    public T caseSwCalprm(SwCalprm object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseNonSplitableElement(NonSplitableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

