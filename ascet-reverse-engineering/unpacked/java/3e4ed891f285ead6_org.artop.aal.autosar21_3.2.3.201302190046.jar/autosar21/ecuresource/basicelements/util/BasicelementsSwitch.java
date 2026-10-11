/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.ecuresource.basicelements.util;

import autosar21.ecuresource.basicelements.BasicelementsPackage;
import autosar21.ecuresource.basicelements.BootTime;
import autosar21.ecuresource.basicelements.ElectricalRange;
import autosar21.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar21.ecuresource.basicelements.FrequencyRange;
import autosar21.ecuresource.basicelements.MemoryAccess;
import autosar21.ecuresource.basicelements.SupportsSafety;
import autosar21.ecuresource.basicelements.SupportsSecurity;
import autosar21.ecuresource.basicelements.Temperature;
import autosar21.ecuresource.basicelements.TimeRange;
import autosar21.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicelementsSwitch<T> {
    protected static BasicelementsPackage modelPackage;

    public BasicelementsSwitch() {
        if (modelPackage == null) {
            modelPackage = BasicelementsPackage.eINSTANCE;
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
                BootTime bootTime = (BootTime)theEObject;
                T result = this.caseBootTime(bootTime);
                if (result == null) {
                    result = this.caseARObject(bootTime);
                }
                if (result == null) {
                    result = this.caseGARObject(bootTime);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ElectricalRange electricalRange = (ElectricalRange)theEObject;
                T result = this.caseElectricalRange(electricalRange);
                if (result == null) {
                    result = this.caseARObject(electricalRange);
                }
                if (result == null) {
                    result = this.caseGARObject(electricalRange);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ErrorDetectionCorrection errorDetectionCorrection = (ErrorDetectionCorrection)theEObject;
                T result = this.caseErrorDetectionCorrection(errorDetectionCorrection);
                if (result == null) {
                    result = this.caseARObject(errorDetectionCorrection);
                }
                if (result == null) {
                    result = this.caseGARObject(errorDetectionCorrection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                FrequencyRange frequencyRange = (FrequencyRange)theEObject;
                T result = this.caseFrequencyRange(frequencyRange);
                if (result == null) {
                    result = this.caseARObject(frequencyRange);
                }
                if (result == null) {
                    result = this.caseGARObject(frequencyRange);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                MemoryAccess memoryAccess = (MemoryAccess)theEObject;
                T result = this.caseMemoryAccess(memoryAccess);
                if (result == null) {
                    result = this.caseARObject(memoryAccess);
                }
                if (result == null) {
                    result = this.caseGARObject(memoryAccess);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                TimeRange timeRange = (TimeRange)theEObject;
                T result = this.caseTimeRange(timeRange);
                if (result == null) {
                    result = this.caseARObject(timeRange);
                }
                if (result == null) {
                    result = this.caseGARObject(timeRange);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SupportsSafety supportsSafety = (SupportsSafety)theEObject;
                T result = this.caseSupportsSafety(supportsSafety);
                if (result == null) {
                    result = this.caseARObject(supportsSafety);
                }
                if (result == null) {
                    result = this.caseGARObject(supportsSafety);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                SupportsSecurity supportsSecurity = (SupportsSecurity)theEObject;
                T result = this.caseSupportsSecurity(supportsSecurity);
                if (result == null) {
                    result = this.caseARObject(supportsSecurity);
                }
                if (result == null) {
                    result = this.caseGARObject(supportsSecurity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                Temperature temperature = (Temperature)theEObject;
                T result = this.caseTemperature(temperature);
                if (result == null) {
                    result = this.caseARObject(temperature);
                }
                if (result == null) {
                    result = this.caseGARObject(temperature);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBootTime(BootTime object) {
        return null;
    }

    public T caseElectricalRange(ElectricalRange object) {
        return null;
    }

    public T caseErrorDetectionCorrection(ErrorDetectionCorrection object) {
        return null;
    }

    public T caseFrequencyRange(FrequencyRange object) {
        return null;
    }

    public T caseMemoryAccess(MemoryAccess object) {
        return null;
    }

    public T caseTimeRange(TimeRange object) {
        return null;
    }

    public T caseSupportsSafety(SupportsSafety object) {
        return null;
    }

    public T caseSupportsSecurity(SupportsSecurity object) {
        return null;
    }

    public T caseTemperature(Temperature object) {
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

