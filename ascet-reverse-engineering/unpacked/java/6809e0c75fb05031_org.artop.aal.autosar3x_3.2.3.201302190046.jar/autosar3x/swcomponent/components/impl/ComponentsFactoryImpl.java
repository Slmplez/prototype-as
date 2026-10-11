/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.swcomponent.components.impl;

import autosar3x.swcomponent.components.ApplicationSoftwareComponentType;
import autosar3x.swcomponent.components.AtomicSoftwareComponentType;
import autosar3x.swcomponent.components.CalprmComponentType;
import autosar3x.swcomponent.components.ComplexDeviceDriverComponentType;
import autosar3x.swcomponent.components.ComponentType;
import autosar3x.swcomponent.components.ComponentsFactory;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.EcuAbstractionComponentType;
import autosar3x.swcomponent.components.PPortPrototype;
import autosar3x.swcomponent.components.PortGroup;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.components.SensorActuatorSoftwareComponentType;
import autosar3x.swcomponent.components.ServiceComponentType;
import autosar3x.swcomponent.components.impl.ApplicationSoftwareComponentTypeImpl;
import autosar3x.swcomponent.components.impl.AtomicSoftwareComponentTypeImpl;
import autosar3x.swcomponent.components.impl.CalprmComponentTypeImpl;
import autosar3x.swcomponent.components.impl.ComplexDeviceDriverComponentTypeImpl;
import autosar3x.swcomponent.components.impl.ComponentTypeImpl;
import autosar3x.swcomponent.components.impl.EcuAbstractionComponentTypeImpl;
import autosar3x.swcomponent.components.impl.PPortPrototypeImpl;
import autosar3x.swcomponent.components.impl.PortGroupImpl;
import autosar3x.swcomponent.components.impl.PortPrototypeImpl;
import autosar3x.swcomponent.components.impl.RPortPrototypeImpl;
import autosar3x.swcomponent.components.impl.SensorActuatorSoftwareComponentTypeImpl;
import autosar3x.swcomponent.components.impl.ServiceComponentTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ComponentsFactoryImpl
extends EFactoryImpl
implements ComponentsFactory {
    public static ComponentsFactory init() {
        try {
            ComponentsFactory theComponentsFactory = (ComponentsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/components");
            if (theComponentsFactory != null) {
                return theComponentsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ComponentsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createApplicationSoftwareComponentType();
            }
            case 1: {
                return this.createAtomicSoftwareComponentType();
            }
            case 2: {
                return this.createComponentType();
            }
            case 3: {
                return this.createPortPrototype();
            }
            case 4: {
                return this.createRPortPrototype();
            }
            case 5: {
                return this.createServiceComponentType();
            }
            case 6: {
                return this.createPortGroup();
            }
            case 7: {
                return this.createCalprmComponentType();
            }
            case 8: {
                return this.createComplexDeviceDriverComponentType();
            }
            case 9: {
                return this.createEcuAbstractionComponentType();
            }
            case 10: {
                return this.createSensorActuatorSoftwareComponentType();
            }
            case 11: {
                return this.createPPortPrototype();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ApplicationSoftwareComponentType createApplicationSoftwareComponentType() {
        ApplicationSoftwareComponentTypeImpl applicationSoftwareComponentType = new ApplicationSoftwareComponentTypeImpl();
        return applicationSoftwareComponentType;
    }

    public AtomicSoftwareComponentType createAtomicSoftwareComponentType() {
        AtomicSoftwareComponentTypeImpl atomicSoftwareComponentType = new AtomicSoftwareComponentTypeImpl();
        return atomicSoftwareComponentType;
    }

    public ComponentType createComponentType() {
        ComponentTypeImpl componentType = new ComponentTypeImpl();
        return componentType;
    }

    public PortPrototype createPortPrototype() {
        PortPrototypeImpl portPrototype = new PortPrototypeImpl();
        return portPrototype;
    }

    public RPortPrototype createRPortPrototype() {
        RPortPrototypeImpl rPortPrototype = new RPortPrototypeImpl();
        return rPortPrototype;
    }

    public ServiceComponentType createServiceComponentType() {
        ServiceComponentTypeImpl serviceComponentType = new ServiceComponentTypeImpl();
        return serviceComponentType;
    }

    public PortGroup createPortGroup() {
        PortGroupImpl portGroup = new PortGroupImpl();
        return portGroup;
    }

    public CalprmComponentType createCalprmComponentType() {
        CalprmComponentTypeImpl calprmComponentType = new CalprmComponentTypeImpl();
        return calprmComponentType;
    }

    public ComplexDeviceDriverComponentType createComplexDeviceDriverComponentType() {
        ComplexDeviceDriverComponentTypeImpl complexDeviceDriverComponentType = new ComplexDeviceDriverComponentTypeImpl();
        return complexDeviceDriverComponentType;
    }

    public EcuAbstractionComponentType createEcuAbstractionComponentType() {
        EcuAbstractionComponentTypeImpl ecuAbstractionComponentType = new EcuAbstractionComponentTypeImpl();
        return ecuAbstractionComponentType;
    }

    public SensorActuatorSoftwareComponentType createSensorActuatorSoftwareComponentType() {
        SensorActuatorSoftwareComponentTypeImpl sensorActuatorSoftwareComponentType = new SensorActuatorSoftwareComponentTypeImpl();
        return sensorActuatorSoftwareComponentType;
    }

    public PPortPrototype createPPortPrototype() {
        PPortPrototypeImpl pPortPrototype = new PPortPrototypeImpl();
        return pPortPrototype;
    }

    public ComponentsPackage getComponentsPackage() {
        return (ComponentsPackage)this.getEPackage();
    }

    @Deprecated
    public static ComponentsPackage getPackage() {
        return ComponentsPackage.eINSTANCE;
    }
}

