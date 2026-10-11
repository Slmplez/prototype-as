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
package autosar3x.ecuresource.sensoractuator.util;

import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.sensoractuator.ActuatorHW;
import autosar3x.ecuresource.sensoractuator.DisplayHW;
import autosar3x.ecuresource.sensoractuator.SensorActuatorHW;
import autosar3x.ecuresource.sensoractuator.SensorHW;
import autosar3x.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
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
public class SensoractuatorSwitch<T> {
    protected static SensoractuatorPackage modelPackage;

    public SensoractuatorSwitch() {
        if (modelPackage == null) {
            modelPackage = SensoractuatorPackage.eINSTANCE;
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
                ActuatorHW actuatorHW = (ActuatorHW)theEObject;
                T result = this.caseActuatorHW(actuatorHW);
                if (result == null) {
                    result = this.caseSensorActuatorHW(actuatorHW);
                }
                if (result == null) {
                    result = this.caseHWElement(actuatorHW);
                }
                if (result == null) {
                    result = this.caseARElement(actuatorHW);
                }
                if (result == null) {
                    result = this.casePackageableElement(actuatorHW);
                }
                if (result == null) {
                    result = this.caseIdentifiable(actuatorHW);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(actuatorHW);
                }
                if (result == null) {
                    result = this.caseARObject(actuatorHW);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(actuatorHW);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)actuatorHW);
                }
                if (result == null) {
                    result = this.caseGARObject(actuatorHW);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SensorActuatorHW sensorActuatorHW = (SensorActuatorHW)theEObject;
                T result = this.caseSensorActuatorHW(sensorActuatorHW);
                if (result == null) {
                    result = this.caseHWElement(sensorActuatorHW);
                }
                if (result == null) {
                    result = this.caseARElement(sensorActuatorHW);
                }
                if (result == null) {
                    result = this.casePackageableElement(sensorActuatorHW);
                }
                if (result == null) {
                    result = this.caseIdentifiable(sensorActuatorHW);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(sensorActuatorHW);
                }
                if (result == null) {
                    result = this.caseARObject(sensorActuatorHW);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(sensorActuatorHW);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)sensorActuatorHW);
                }
                if (result == null) {
                    result = this.caseGARObject(sensorActuatorHW);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                DisplayHW displayHW = (DisplayHW)theEObject;
                T result = this.caseDisplayHW(displayHW);
                if (result == null) {
                    result = this.caseSensorActuatorHW(displayHW);
                }
                if (result == null) {
                    result = this.caseHWElement(displayHW);
                }
                if (result == null) {
                    result = this.caseARElement(displayHW);
                }
                if (result == null) {
                    result = this.casePackageableElement(displayHW);
                }
                if (result == null) {
                    result = this.caseIdentifiable(displayHW);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(displayHW);
                }
                if (result == null) {
                    result = this.caseARObject(displayHW);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(displayHW);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)displayHW);
                }
                if (result == null) {
                    result = this.caseGARObject(displayHW);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SensorHW sensorHW = (SensorHW)theEObject;
                T result = this.caseSensorHW(sensorHW);
                if (result == null) {
                    result = this.caseSensorActuatorHW(sensorHW);
                }
                if (result == null) {
                    result = this.caseHWElement(sensorHW);
                }
                if (result == null) {
                    result = this.caseARElement(sensorHW);
                }
                if (result == null) {
                    result = this.casePackageableElement(sensorHW);
                }
                if (result == null) {
                    result = this.caseIdentifiable(sensorHW);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(sensorHW);
                }
                if (result == null) {
                    result = this.caseARObject(sensorHW);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(sensorHW);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)sensorHW);
                }
                if (result == null) {
                    result = this.caseGARObject(sensorHW);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseActuatorHW(ActuatorHW object) {
        return null;
    }

    public T caseSensorActuatorHW(SensorActuatorHW object) {
        return null;
    }

    public T caseDisplayHW(DisplayHW object) {
        return null;
    }

    public T caseSensorHW(SensorHW object) {
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

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseHWElement(HWElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

