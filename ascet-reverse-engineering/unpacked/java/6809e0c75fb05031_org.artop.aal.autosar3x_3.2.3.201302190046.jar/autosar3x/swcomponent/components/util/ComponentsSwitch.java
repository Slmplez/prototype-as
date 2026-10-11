/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gcomponents.GApplicationSwComponentType
 *  gautosar.gswcomponents.gcomponents.GAtomicSwComponentType
 *  gautosar.gswcomponents.gcomponents.GPPortPrototype
 *  gautosar.gswcomponents.gcomponents.GPortPrototype
 *  gautosar.gswcomponents.gcomponents.GRPortPrototype
 *  gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType
 *  gautosar.gswcomponents.gcomponents.GServiceSwComponentType
 *  gautosar.gswcomponents.gcomponents.GSwComponentType
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.components.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.components.ApplicationSoftwareComponentType;
import autosar3x.swcomponent.components.AtomicSoftwareComponentType;
import autosar3x.swcomponent.components.CalprmComponentType;
import autosar3x.swcomponent.components.ComplexDeviceDriverComponentType;
import autosar3x.swcomponent.components.ComponentType;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.EcuAbstractionComponentType;
import autosar3x.swcomponent.components.PPortPrototype;
import autosar3x.swcomponent.components.PortGroup;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.components.SensorActuatorSoftwareComponentType;
import autosar3x.swcomponent.components.ServiceComponentType;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gcomponents.GApplicationSwComponentType;
import gautosar.gswcomponents.gcomponents.GAtomicSwComponentType;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType;
import gautosar.gswcomponents.gcomponents.GServiceSwComponentType;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ComponentsSwitch<T> {
    protected static ComponentsPackage modelPackage;

    public ComponentsSwitch() {
        if (modelPackage == null) {
            modelPackage = ComponentsPackage.eINSTANCE;
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
                ApplicationSoftwareComponentType applicationSoftwareComponentType = (ApplicationSoftwareComponentType)theEObject;
                T result = this.caseApplicationSoftwareComponentType(applicationSoftwareComponentType);
                if (result == null) {
                    result = this.caseAtomicSoftwareComponentType(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGApplicationSwComponentType(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseComponentType(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationSoftwareComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AtomicSoftwareComponentType atomicSoftwareComponentType = (AtomicSoftwareComponentType)theEObject;
                T result = this.caseAtomicSoftwareComponentType(atomicSoftwareComponentType);
                if (result == null) {
                    result = this.caseComponentType(atomicSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(atomicSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(atomicSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(atomicSoftwareComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(atomicSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(atomicSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(atomicSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(atomicSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(atomicSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)atomicSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(atomicSoftwareComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ComponentType componentType = (ComponentType)theEObject;
                T result = this.caseComponentType(componentType);
                if (result == null) {
                    result = this.caseARElement(componentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(componentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(componentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(componentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(componentType);
                }
                if (result == null) {
                    result = this.caseARObject(componentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(componentType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)componentType);
                }
                if (result == null) {
                    result = this.caseGARObject(componentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                PortPrototype portPrototype = (PortPrototype)theEObject;
                T result = this.casePortPrototype(portPrototype);
                if (result == null) {
                    result = this.caseIdentifiable(portPrototype);
                }
                if (result == null) {
                    result = this.caseGPortPrototype(portPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(portPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(portPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)portPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(portPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                RPortPrototype rPortPrototype = (RPortPrototype)theEObject;
                T result = this.caseRPortPrototype(rPortPrototype);
                if (result == null) {
                    result = this.casePortPrototype(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseGRPortPrototype(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseGPortPrototype(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(rPortPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)rPortPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(rPortPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ServiceComponentType serviceComponentType = (ServiceComponentType)theEObject;
                T result = this.caseServiceComponentType(serviceComponentType);
                if (result == null) {
                    result = this.caseAtomicSoftwareComponentType(serviceComponentType);
                }
                if (result == null) {
                    result = this.caseGServiceSwComponentType(serviceComponentType);
                }
                if (result == null) {
                    result = this.caseComponentType(serviceComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(serviceComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(serviceComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(serviceComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(serviceComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(serviceComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(serviceComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(serviceComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(serviceComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)serviceComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(serviceComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                PortGroup portGroup = (PortGroup)theEObject;
                T result = this.casePortGroup(portGroup);
                if (result == null) {
                    result = this.caseIdentifiable(portGroup);
                }
                if (result == null) {
                    result = this.caseARObject(portGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(portGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)portGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(portGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                CalprmComponentType calprmComponentType = (CalprmComponentType)theEObject;
                T result = this.caseCalprmComponentType(calprmComponentType);
                if (result == null) {
                    result = this.caseComponentType(calprmComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(calprmComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(calprmComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(calprmComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(calprmComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(calprmComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(calprmComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(calprmComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)calprmComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(calprmComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ComplexDeviceDriverComponentType complexDeviceDriverComponentType = (ComplexDeviceDriverComponentType)theEObject;
                T result = this.caseComplexDeviceDriverComponentType(complexDeviceDriverComponentType);
                if (result == null) {
                    result = this.caseAtomicSoftwareComponentType(complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.caseComponentType(complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(complexDeviceDriverComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                EcuAbstractionComponentType ecuAbstractionComponentType = (EcuAbstractionComponentType)theEObject;
                T result = this.caseEcuAbstractionComponentType(ecuAbstractionComponentType);
                if (result == null) {
                    result = this.caseAtomicSoftwareComponentType(ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.caseComponentType(ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuAbstractionComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                SensorActuatorSoftwareComponentType sensorActuatorSoftwareComponentType = (SensorActuatorSoftwareComponentType)theEObject;
                T result = this.caseSensorActuatorSoftwareComponentType(sensorActuatorSoftwareComponentType);
                if (result == null) {
                    result = this.caseAtomicSoftwareComponentType(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGSensorActuatorSwComponentType(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseComponentType(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseARElement(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.casePackageableElement(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseARObject(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(sensorActuatorSoftwareComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                PPortPrototype pPortPrototype = (PPortPrototype)theEObject;
                T result = this.casePPortPrototype(pPortPrototype);
                if (result == null) {
                    result = this.casePortPrototype(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseGPPortPrototype(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseGPortPrototype(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pPortPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)pPortPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(pPortPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseApplicationSoftwareComponentType(ApplicationSoftwareComponentType object) {
        return null;
    }

    public T caseAtomicSoftwareComponentType(AtomicSoftwareComponentType object) {
        return null;
    }

    public T caseComponentType(ComponentType object) {
        return null;
    }

    public T casePortPrototype(PortPrototype object) {
        return null;
    }

    public T caseRPortPrototype(RPortPrototype object) {
        return null;
    }

    public T caseServiceComponentType(ServiceComponentType object) {
        return null;
    }

    public T casePortGroup(PortGroup object) {
        return null;
    }

    public T caseCalprmComponentType(CalprmComponentType object) {
        return null;
    }

    public T caseComplexDeviceDriverComponentType(ComplexDeviceDriverComponentType object) {
        return null;
    }

    public T caseEcuAbstractionComponentType(EcuAbstractionComponentType object) {
        return null;
    }

    public T caseSensorActuatorSoftwareComponentType(SensorActuatorSoftwareComponentType object) {
        return null;
    }

    public T casePPortPrototype(PPortPrototype object) {
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

    public T caseGSwComponentType(GSwComponentType object) {
        return null;
    }

    public T caseGAtomicSwComponentType(GAtomicSwComponentType object) {
        return null;
    }

    public T caseGApplicationSwComponentType(GApplicationSwComponentType object) {
        return null;
    }

    public T caseGPortPrototype(GPortPrototype object) {
        return null;
    }

    public T caseGRPortPrototype(GRPortPrototype object) {
        return null;
    }

    public T caseGServiceSwComponentType(GServiceSwComponentType object) {
        return null;
    }

    public T caseGSensorActuatorSwComponentType(GSensorActuatorSwComponentType object) {
        return null;
    }

    public T caseGPPortPrototype(GPPortPrototype object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

