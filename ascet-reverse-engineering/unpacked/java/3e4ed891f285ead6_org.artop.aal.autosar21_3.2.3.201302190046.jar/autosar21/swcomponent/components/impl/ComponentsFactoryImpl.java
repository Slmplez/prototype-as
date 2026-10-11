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
package autosar21.swcomponent.components.impl;

import autosar21.swcomponent.components.AtomicSoftwareComponentType;
import autosar21.swcomponent.components.CalprmComponentType;
import autosar21.swcomponent.components.ComponentType;
import autosar21.swcomponent.components.ComponentsFactory;
import autosar21.swcomponent.components.ComponentsPackage;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.components.SensorActuatorSoftwareComponentType;
import autosar21.swcomponent.components.ServiceComponentType;
import autosar21.swcomponent.components.impl.AtomicSoftwareComponentTypeImpl;
import autosar21.swcomponent.components.impl.CalprmComponentTypeImpl;
import autosar21.swcomponent.components.impl.ComponentTypeImpl;
import autosar21.swcomponent.components.impl.PPortPrototypeImpl;
import autosar21.swcomponent.components.impl.PortPrototypeImpl;
import autosar21.swcomponent.components.impl.RPortPrototypeImpl;
import autosar21.swcomponent.components.impl.SensorActuatorSoftwareComponentTypeImpl;
import autosar21.swcomponent.components.impl.ServiceComponentTypeImpl;
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
            ComponentsFactory theComponentsFactory = (ComponentsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/components");
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
                return this.createPPortPrototype();
            }
            case 1: {
                return this.createPortPrototype();
            }
            case 2: {
                return this.createRPortPrototype();
            }
            case 3: {
                return this.createAtomicSoftwareComponentType();
            }
            case 4: {
                return this.createServiceComponentType();
            }
            case 5: {
                return this.createCalprmComponentType();
            }
            case 6: {
                return this.createSensorActuatorSoftwareComponentType();
            }
            case 7: {
                return this.createComponentType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public PPortPrototype createPPortPrototype() {
        PPortPrototypeImpl pPortPrototype = new PPortPrototypeImpl();
        return pPortPrototype;
    }

    public PortPrototype createPortPrototype() {
        PortPrototypeImpl portPrototype = new PortPrototypeImpl();
        return portPrototype;
    }

    public RPortPrototype createRPortPrototype() {
        RPortPrototypeImpl rPortPrototype = new RPortPrototypeImpl();
        return rPortPrototype;
    }

    public AtomicSoftwareComponentType createAtomicSoftwareComponentType() {
        AtomicSoftwareComponentTypeImpl atomicSoftwareComponentType = new AtomicSoftwareComponentTypeImpl();
        return atomicSoftwareComponentType;
    }

    public ServiceComponentType createServiceComponentType() {
        ServiceComponentTypeImpl serviceComponentType = new ServiceComponentTypeImpl();
        return serviceComponentType;
    }

    public CalprmComponentType createCalprmComponentType() {
        CalprmComponentTypeImpl calprmComponentType = new CalprmComponentTypeImpl();
        return calprmComponentType;
    }

    public SensorActuatorSoftwareComponentType createSensorActuatorSoftwareComponentType() {
        SensorActuatorSoftwareComponentTypeImpl sensorActuatorSoftwareComponentType = new SensorActuatorSoftwareComponentTypeImpl();
        return sensorActuatorSoftwareComponentType;
    }

    public ComponentType createComponentType() {
        ComponentTypeImpl componentType = new ComponentTypeImpl();
        return componentType;
    }

    public ComponentsPackage getComponentsPackage() {
        return (ComponentsPackage)this.getEPackage();
    }

    @Deprecated
    public static ComponentsPackage getPackage() {
        return ComponentsPackage.eINSTANCE;
    }
}

