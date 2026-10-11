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
package autosar40.swcomponent.components.impl;

import autosar40.swcomponent.components.ApplicationSwComponentType;
import autosar40.swcomponent.components.ComplexDeviceDriverSwComponentType;
import autosar40.swcomponent.components.ComponentsFactory;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.EcuAbstractionSwComponentType;
import autosar40.swcomponent.components.NvBlockSwComponentType;
import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.components.ParameterSwComponentType;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.components.PortPrototypeRefConditional;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.components.SensorActuatorSwComponentType;
import autosar40.swcomponent.components.ServiceProxySwComponentType;
import autosar40.swcomponent.components.ServiceSwComponentType;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.components.SymbolProps;
import autosar40.swcomponent.components.impl.ApplicationSwComponentTypeImpl;
import autosar40.swcomponent.components.impl.ComplexDeviceDriverSwComponentTypeImpl;
import autosar40.swcomponent.components.impl.EcuAbstractionSwComponentTypeImpl;
import autosar40.swcomponent.components.impl.NvBlockSwComponentTypeImpl;
import autosar40.swcomponent.components.impl.PPortPrototypeImpl;
import autosar40.swcomponent.components.impl.ParameterSwComponentTypeImpl;
import autosar40.swcomponent.components.impl.PortGroupImpl;
import autosar40.swcomponent.components.impl.PortPrototypeImpl;
import autosar40.swcomponent.components.impl.PortPrototypeRefConditionalImpl;
import autosar40.swcomponent.components.impl.RPortPrototypeImpl;
import autosar40.swcomponent.components.impl.SensorActuatorSwComponentTypeImpl;
import autosar40.swcomponent.components.impl.ServiceProxySwComponentTypeImpl;
import autosar40.swcomponent.components.impl.ServiceSwComponentTypeImpl;
import autosar40.swcomponent.components.impl.SwComponentTypeImpl;
import autosar40.swcomponent.components.impl.SymbolPropsImpl;
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
            ComponentsFactory theComponentsFactory = (ComponentsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/components");
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
                return this.createServiceProxySwComponentType();
            }
            case 2: {
                return this.createSwComponentType();
            }
            case 3: {
                return this.createPortGroup();
            }
            case 4: {
                return this.createPPortPrototype();
            }
            case 5: {
                return this.createRPortPrototype();
            }
            case 6: {
                return this.createPortPrototypeRefConditional();
            }
            case 7: {
                return this.createSymbolProps();
            }
            case 8: {
                return this.createApplicationSwComponentType();
            }
            case 9: {
                return this.createComplexDeviceDriverSwComponentType();
            }
            case 10: {
                return this.createEcuAbstractionSwComponentType();
            }
            case 11: {
                return this.createNvBlockSwComponentType();
            }
            case 12: {
                return this.createParameterSwComponentType();
            }
            case 13: {
                return this.createSensorActuatorSwComponentType();
            }
            case 14: {
                return this.createServiceSwComponentType();
            }
            case 15: {
                return this.createPortPrototype();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ServiceProxySwComponentType createServiceProxySwComponentType() {
        ServiceProxySwComponentTypeImpl serviceProxySwComponentType = new ServiceProxySwComponentTypeImpl();
        return serviceProxySwComponentType;
    }

    public SwComponentType createSwComponentType() {
        SwComponentTypeImpl swComponentType = new SwComponentTypeImpl();
        return swComponentType;
    }

    public PortGroup createPortGroup() {
        PortGroupImpl portGroup = new PortGroupImpl();
        return portGroup;
    }

    public PPortPrototype createPPortPrototype() {
        PPortPrototypeImpl pPortPrototype = new PPortPrototypeImpl();
        return pPortPrototype;
    }

    public RPortPrototype createRPortPrototype() {
        RPortPrototypeImpl rPortPrototype = new RPortPrototypeImpl();
        return rPortPrototype;
    }

    public PortPrototypeRefConditional createPortPrototypeRefConditional() {
        PortPrototypeRefConditionalImpl portPrototypeRefConditional = new PortPrototypeRefConditionalImpl();
        return portPrototypeRefConditional;
    }

    public SymbolProps createSymbolProps() {
        SymbolPropsImpl symbolProps = new SymbolPropsImpl();
        return symbolProps;
    }

    public ApplicationSwComponentType createApplicationSwComponentType() {
        ApplicationSwComponentTypeImpl applicationSwComponentType = new ApplicationSwComponentTypeImpl();
        return applicationSwComponentType;
    }

    public ComplexDeviceDriverSwComponentType createComplexDeviceDriverSwComponentType() {
        ComplexDeviceDriverSwComponentTypeImpl complexDeviceDriverSwComponentType = new ComplexDeviceDriverSwComponentTypeImpl();
        return complexDeviceDriverSwComponentType;
    }

    public EcuAbstractionSwComponentType createEcuAbstractionSwComponentType() {
        EcuAbstractionSwComponentTypeImpl ecuAbstractionSwComponentType = new EcuAbstractionSwComponentTypeImpl();
        return ecuAbstractionSwComponentType;
    }

    public NvBlockSwComponentType createNvBlockSwComponentType() {
        NvBlockSwComponentTypeImpl nvBlockSwComponentType = new NvBlockSwComponentTypeImpl();
        return nvBlockSwComponentType;
    }

    public ParameterSwComponentType createParameterSwComponentType() {
        ParameterSwComponentTypeImpl parameterSwComponentType = new ParameterSwComponentTypeImpl();
        return parameterSwComponentType;
    }

    public SensorActuatorSwComponentType createSensorActuatorSwComponentType() {
        SensorActuatorSwComponentTypeImpl sensorActuatorSwComponentType = new SensorActuatorSwComponentTypeImpl();
        return sensorActuatorSwComponentType;
    }

    public ServiceSwComponentType createServiceSwComponentType() {
        ServiceSwComponentTypeImpl serviceSwComponentType = new ServiceSwComponentTypeImpl();
        return serviceSwComponentType;
    }

    public PortPrototype createPortPrototype() {
        PortPrototypeImpl portPrototype = new PortPrototypeImpl();
        return portPrototype;
    }

    public ComponentsPackage getComponentsPackage() {
        return (ComponentsPackage)this.getEPackage();
    }

    @Deprecated
    public static ComponentsPackage getPackage() {
        return ComponentsPackage.eINSTANCE;
    }
}

