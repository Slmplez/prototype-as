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
package autosar3x.ecuresource.ecuelectronics.util;

import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.HWPort;
import autosar3x.ecuresource.ecuelectronics.BusTermination;
import autosar3x.ecuresource.ecuelectronics.Clock;
import autosar3x.ecuresource.ecuelectronics.CommunicationTransceiver;
import autosar3x.ecuresource.ecuelectronics.DiscreteECUElectronics;
import autosar3x.ecuresource.ecuelectronics.ECUElectronics;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.Oscillator;
import autosar3x.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar3x.ecuresource.ecuelectronics.PowerDriverHWPort;
import autosar3x.ecuresource.ecuelectronics.PowerDriverNotification;
import autosar3x.ecuresource.ecuelectronics.PowerDriverProtection;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyCurrentNotification;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyHWElement;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyHWPort;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyVoltageNotification;
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
public class EcuelectronicsSwitch<T> {
    protected static EcuelectronicsPackage modelPackage;

    public EcuelectronicsSwitch() {
        if (modelPackage == null) {
            modelPackage = EcuelectronicsPackage.eINSTANCE;
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
                BusTermination busTermination = (BusTermination)theEObject;
                T result = this.caseBusTermination(busTermination);
                if (result == null) {
                    result = this.caseARObject(busTermination);
                }
                if (result == null) {
                    result = this.caseGARObject(busTermination);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                Clock clock = (Clock)theEObject;
                T result = this.caseClock(clock);
                if (result == null) {
                    result = this.caseECUElectronics(clock);
                }
                if (result == null) {
                    result = this.caseHWElement(clock);
                }
                if (result == null) {
                    result = this.caseARElement(clock);
                }
                if (result == null) {
                    result = this.casePackageableElement(clock);
                }
                if (result == null) {
                    result = this.caseIdentifiable(clock);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(clock);
                }
                if (result == null) {
                    result = this.caseARObject(clock);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(clock);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)clock);
                }
                if (result == null) {
                    result = this.caseGARObject(clock);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ECUElectronics ecuElectronics = (ECUElectronics)theEObject;
                T result = this.caseECUElectronics(ecuElectronics);
                if (result == null) {
                    result = this.caseHWElement(ecuElectronics);
                }
                if (result == null) {
                    result = this.caseARElement(ecuElectronics);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecuElectronics);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuElectronics);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecuElectronics);
                }
                if (result == null) {
                    result = this.caseARObject(ecuElectronics);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuElectronics);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)ecuElectronics);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuElectronics);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                CommunicationTransceiver communicationTransceiver = (CommunicationTransceiver)theEObject;
                T result = this.caseCommunicationTransceiver(communicationTransceiver);
                if (result == null) {
                    result = this.caseECUElectronics(communicationTransceiver);
                }
                if (result == null) {
                    result = this.caseHWElement(communicationTransceiver);
                }
                if (result == null) {
                    result = this.caseARElement(communicationTransceiver);
                }
                if (result == null) {
                    result = this.casePackageableElement(communicationTransceiver);
                }
                if (result == null) {
                    result = this.caseIdentifiable(communicationTransceiver);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(communicationTransceiver);
                }
                if (result == null) {
                    result = this.caseARObject(communicationTransceiver);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationTransceiver);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)communicationTransceiver);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationTransceiver);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                DiscreteECUElectronics discreteECUElectronics = (DiscreteECUElectronics)theEObject;
                T result = this.caseDiscreteECUElectronics(discreteECUElectronics);
                if (result == null) {
                    result = this.caseECUElectronics(discreteECUElectronics);
                }
                if (result == null) {
                    result = this.caseHWElement(discreteECUElectronics);
                }
                if (result == null) {
                    result = this.caseARElement(discreteECUElectronics);
                }
                if (result == null) {
                    result = this.casePackageableElement(discreteECUElectronics);
                }
                if (result == null) {
                    result = this.caseIdentifiable(discreteECUElectronics);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(discreteECUElectronics);
                }
                if (result == null) {
                    result = this.caseARObject(discreteECUElectronics);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(discreteECUElectronics);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)discreteECUElectronics);
                }
                if (result == null) {
                    result = this.caseGARObject(discreteECUElectronics);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                PowerDriverHWElement powerDriverHWElement = (PowerDriverHWElement)theEObject;
                T result = this.casePowerDriverHWElement(powerDriverHWElement);
                if (result == null) {
                    result = this.caseECUElectronics(powerDriverHWElement);
                }
                if (result == null) {
                    result = this.caseHWElement(powerDriverHWElement);
                }
                if (result == null) {
                    result = this.caseARElement(powerDriverHWElement);
                }
                if (result == null) {
                    result = this.casePackageableElement(powerDriverHWElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(powerDriverHWElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(powerDriverHWElement);
                }
                if (result == null) {
                    result = this.caseARObject(powerDriverHWElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(powerDriverHWElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)powerDriverHWElement);
                }
                if (result == null) {
                    result = this.caseGARObject(powerDriverHWElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                PowerDriverNotification powerDriverNotification = (PowerDriverNotification)theEObject;
                T result = this.casePowerDriverNotification(powerDriverNotification);
                if (result == null) {
                    result = this.caseARObject(powerDriverNotification);
                }
                if (result == null) {
                    result = this.caseGARObject(powerDriverNotification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                PowerDriverProtection powerDriverProtection = (PowerDriverProtection)theEObject;
                T result = this.casePowerDriverProtection(powerDriverProtection);
                if (result == null) {
                    result = this.caseARObject(powerDriverProtection);
                }
                if (result == null) {
                    result = this.caseGARObject(powerDriverProtection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                PowerDriverHWPort powerDriverHWPort = (PowerDriverHWPort)theEObject;
                T result = this.casePowerDriverHWPort(powerDriverHWPort);
                if (result == null) {
                    result = this.caseHWPort(powerDriverHWPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(powerDriverHWPort);
                }
                if (result == null) {
                    result = this.caseARObject(powerDriverHWPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(powerDriverHWPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)powerDriverHWPort);
                }
                if (result == null) {
                    result = this.caseGARObject(powerDriverHWPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                PowerSupplyCurrentNotification powerSupplyCurrentNotification = (PowerSupplyCurrentNotification)theEObject;
                T result = this.casePowerSupplyCurrentNotification(powerSupplyCurrentNotification);
                if (result == null) {
                    result = this.caseARObject(powerSupplyCurrentNotification);
                }
                if (result == null) {
                    result = this.caseGARObject(powerSupplyCurrentNotification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                PowerSupplyHWElement powerSupplyHWElement = (PowerSupplyHWElement)theEObject;
                T result = this.casePowerSupplyHWElement(powerSupplyHWElement);
                if (result == null) {
                    result = this.caseECUElectronics(powerSupplyHWElement);
                }
                if (result == null) {
                    result = this.caseHWElement(powerSupplyHWElement);
                }
                if (result == null) {
                    result = this.caseARElement(powerSupplyHWElement);
                }
                if (result == null) {
                    result = this.casePackageableElement(powerSupplyHWElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(powerSupplyHWElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(powerSupplyHWElement);
                }
                if (result == null) {
                    result = this.caseARObject(powerSupplyHWElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(powerSupplyHWElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)powerSupplyHWElement);
                }
                if (result == null) {
                    result = this.caseGARObject(powerSupplyHWElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                PowerSupplyVoltageNotification powerSupplyVoltageNotification = (PowerSupplyVoltageNotification)theEObject;
                T result = this.casePowerSupplyVoltageNotification(powerSupplyVoltageNotification);
                if (result == null) {
                    result = this.caseARObject(powerSupplyVoltageNotification);
                }
                if (result == null) {
                    result = this.caseGARObject(powerSupplyVoltageNotification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                PowerSupplyHWPort powerSupplyHWPort = (PowerSupplyHWPort)theEObject;
                T result = this.casePowerSupplyHWPort(powerSupplyHWPort);
                if (result == null) {
                    result = this.caseHWPort(powerSupplyHWPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(powerSupplyHWPort);
                }
                if (result == null) {
                    result = this.caseARObject(powerSupplyHWPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(powerSupplyHWPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)powerSupplyHWPort);
                }
                if (result == null) {
                    result = this.caseGARObject(powerSupplyHWPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                Oscillator oscillator = (Oscillator)theEObject;
                T result = this.caseOscillator(oscillator);
                if (result == null) {
                    result = this.caseECUElectronics(oscillator);
                }
                if (result == null) {
                    result = this.caseHWElement(oscillator);
                }
                if (result == null) {
                    result = this.caseARElement(oscillator);
                }
                if (result == null) {
                    result = this.casePackageableElement(oscillator);
                }
                if (result == null) {
                    result = this.caseIdentifiable(oscillator);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(oscillator);
                }
                if (result == null) {
                    result = this.caseARObject(oscillator);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(oscillator);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)oscillator);
                }
                if (result == null) {
                    result = this.caseGARObject(oscillator);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBusTermination(BusTermination object) {
        return null;
    }

    public T caseClock(Clock object) {
        return null;
    }

    public T caseECUElectronics(ECUElectronics object) {
        return null;
    }

    public T caseCommunicationTransceiver(CommunicationTransceiver object) {
        return null;
    }

    public T caseDiscreteECUElectronics(DiscreteECUElectronics object) {
        return null;
    }

    public T casePowerDriverHWElement(PowerDriverHWElement object) {
        return null;
    }

    public T casePowerDriverNotification(PowerDriverNotification object) {
        return null;
    }

    public T casePowerDriverProtection(PowerDriverProtection object) {
        return null;
    }

    public T casePowerDriverHWPort(PowerDriverHWPort object) {
        return null;
    }

    public T casePowerSupplyCurrentNotification(PowerSupplyCurrentNotification object) {
        return null;
    }

    public T casePowerSupplyHWElement(PowerSupplyHWElement object) {
        return null;
    }

    public T casePowerSupplyVoltageNotification(PowerSupplyVoltageNotification object) {
        return null;
    }

    public T casePowerSupplyHWPort(PowerSupplyHWPort object) {
        return null;
    }

    public T caseOscillator(Oscillator object) {
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

    public T caseHWPort(HWPort object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

