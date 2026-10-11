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
package autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationParameterValue;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationParameterValueSet;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationparametervaluesPackage;
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
public class CalibrationparametervaluesSwitch<T> {
    protected static CalibrationparametervaluesPackage modelPackage;

    public CalibrationparametervaluesSwitch() {
        if (modelPackage == null) {
            modelPackage = CalibrationparametervaluesPackage.eINSTANCE;
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
                CalibrationParameterValue calibrationParameterValue = (CalibrationParameterValue)theEObject;
                T result = this.caseCalibrationParameterValue(calibrationParameterValue);
                if (result == null) {
                    result = this.caseARObject(calibrationParameterValue);
                }
                if (result == null) {
                    result = this.caseGARObject(calibrationParameterValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CalibrationParameterValueSet calibrationParameterValueSet = (CalibrationParameterValueSet)theEObject;
                T result = this.caseCalibrationParameterValueSet(calibrationParameterValueSet);
                if (result == null) {
                    result = this.caseARElement(calibrationParameterValueSet);
                }
                if (result == null) {
                    result = this.casePackageableElement(calibrationParameterValueSet);
                }
                if (result == null) {
                    result = this.caseCollectableElement(calibrationParameterValueSet);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(calibrationParameterValueSet);
                }
                if (result == null) {
                    result = this.caseIdentifiable(calibrationParameterValueSet);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(calibrationParameterValueSet);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(calibrationParameterValueSet);
                }
                if (result == null) {
                    result = this.caseReferrable(calibrationParameterValueSet);
                }
                if (result == null) {
                    result = this.caseARObject(calibrationParameterValueSet);
                }
                if (result == null) {
                    result = this.caseGReferrable(calibrationParameterValueSet);
                }
                if (result == null) {
                    result = this.caseGARObject(calibrationParameterValueSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCalibrationParameterValue(CalibrationParameterValue object) {
        return null;
    }

    public T caseCalibrationParameterValueSet(CalibrationParameterValueSet object) {
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

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseCollectableElement(CollectableElement object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

