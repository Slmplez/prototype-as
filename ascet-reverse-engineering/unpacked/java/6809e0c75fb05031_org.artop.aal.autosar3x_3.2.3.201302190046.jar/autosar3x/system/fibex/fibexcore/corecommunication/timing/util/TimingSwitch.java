/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.AbsoluteTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.RelativeTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.RequestControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeTypeTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeCondition;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeFalseTiming;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TimingSwitch<T> {
    protected static TimingPackage modelPackage;

    public TimingSwitch() {
        if (modelPackage == null) {
            modelPackage = TimingPackage.eINSTANCE;
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
                AbsoluteTolerance absoluteTolerance = (AbsoluteTolerance)theEObject;
                T result = this.caseAbsoluteTolerance(absoluteTolerance);
                if (result == null) {
                    result = this.caseTimeRangeTypeTolerance(absoluteTolerance);
                }
                if (result == null) {
                    result = this.caseARObject(absoluteTolerance);
                }
                if (result == null) {
                    result = this.caseGARObject(absoluteTolerance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                TimeRangeTypeTolerance timeRangeTypeTolerance = (TimeRangeTypeTolerance)theEObject;
                T result = this.caseTimeRangeTypeTolerance(timeRangeTypeTolerance);
                if (result == null) {
                    result = this.caseARObject(timeRangeTypeTolerance);
                }
                if (result == null) {
                    result = this.caseGARObject(timeRangeTypeTolerance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                CyclicTiming cyclicTiming = (CyclicTiming)theEObject;
                T result = this.caseCyclicTiming(cyclicTiming);
                if (result == null) {
                    result = this.caseARObject(cyclicTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(cyclicTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                TimeRangeType timeRangeType = (TimeRangeType)theEObject;
                T result = this.caseTimeRangeType(timeRangeType);
                if (result == null) {
                    result = this.caseARObject(timeRangeType);
                }
                if (result == null) {
                    result = this.caseGARObject(timeRangeType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                EventControlledTiming eventControlledTiming = (EventControlledTiming)theEObject;
                T result = this.caseEventControlledTiming(eventControlledTiming);
                if (result == null) {
                    result = this.caseARObject(eventControlledTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(eventControlledTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                RelativeTolerance relativeTolerance = (RelativeTolerance)theEObject;
                T result = this.caseRelativeTolerance(relativeTolerance);
                if (result == null) {
                    result = this.caseTimeRangeTypeTolerance(relativeTolerance);
                }
                if (result == null) {
                    result = this.caseARObject(relativeTolerance);
                }
                if (result == null) {
                    result = this.caseGARObject(relativeTolerance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                TransmissionModeCondition transmissionModeCondition = (TransmissionModeCondition)theEObject;
                T result = this.caseTransmissionModeCondition(transmissionModeCondition);
                if (result == null) {
                    result = this.caseARObject(transmissionModeCondition);
                }
                if (result == null) {
                    result = this.caseGARObject(transmissionModeCondition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                TransmissionModeDeclaration transmissionModeDeclaration = (TransmissionModeDeclaration)theEObject;
                T result = this.caseTransmissionModeDeclaration(transmissionModeDeclaration);
                if (result == null) {
                    result = this.caseARObject(transmissionModeDeclaration);
                }
                if (result == null) {
                    result = this.caseGARObject(transmissionModeDeclaration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                TransmissionModeFalseTiming transmissionModeFalseTiming = (TransmissionModeFalseTiming)theEObject;
                T result = this.caseTransmissionModeFalseTiming(transmissionModeFalseTiming);
                if (result == null) {
                    result = this.caseARObject(transmissionModeFalseTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(transmissionModeFalseTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                RequestControlledTiming requestControlledTiming = (RequestControlledTiming)theEObject;
                T result = this.caseRequestControlledTiming(requestControlledTiming);
                if (result == null) {
                    result = this.caseARObject(requestControlledTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(requestControlledTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAbsoluteTolerance(AbsoluteTolerance object) {
        return null;
    }

    public T caseTimeRangeTypeTolerance(TimeRangeTypeTolerance object) {
        return null;
    }

    public T caseCyclicTiming(CyclicTiming object) {
        return null;
    }

    public T caseTimeRangeType(TimeRangeType object) {
        return null;
    }

    public T caseEventControlledTiming(EventControlledTiming object) {
        return null;
    }

    public T caseRelativeTolerance(RelativeTolerance object) {
        return null;
    }

    public T caseTransmissionModeCondition(TransmissionModeCondition object) {
        return null;
    }

    public T caseTransmissionModeDeclaration(TransmissionModeDeclaration object) {
        return null;
    }

    public T caseTransmissionModeFalseTiming(TransmissionModeFalseTiming object) {
        return null;
    }

    public T caseRequestControlledTiming(RequestControlledTiming object) {
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

