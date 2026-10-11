/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.components;

import autosar40.swcomponent.components.ApplicationSwComponentType;
import autosar40.swcomponent.components.ComplexDeviceDriverSwComponentType;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.EcuAbstractionSwComponentType;
import autosar40.swcomponent.components.NvBlockSwComponentType;
import autosar40.swcomponent.components.PPortPrototype;
import autosar40.swcomponent.components.ParameterSwComponentType;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.components.PortPrototypeRefConditional;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.components.SensorActuatorSwComponentType;
import autosar40.swcomponent.components.ServiceProxySwComponentType;
import autosar40.swcomponent.components.ServiceSwComponentType;
import autosar40.swcomponent.components.SymbolProps;
import autosar40.swcomponent.components.impl.ComponentsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComponentsFactory
extends EFactory {
    public static final ComponentsFactory eINSTANCE = ComponentsFactoryImpl.init();

    public ServiceProxySwComponentType createServiceProxySwComponentType();

    public PortGroup createPortGroup();

    public PPortPrototype createPPortPrototype();

    public RPortPrototype createRPortPrototype();

    public PortPrototypeRefConditional createPortPrototypeRefConditional();

    public SymbolProps createSymbolProps();

    public ApplicationSwComponentType createApplicationSwComponentType();

    public ComplexDeviceDriverSwComponentType createComplexDeviceDriverSwComponentType();

    public EcuAbstractionSwComponentType createEcuAbstractionSwComponentType();

    public NvBlockSwComponentType createNvBlockSwComponentType();

    public ParameterSwComponentType createParameterSwComponentType();

    public SensorActuatorSwComponentType createSensorActuatorSwComponentType();

    public ServiceSwComponentType createServiceSwComponentType();

    public ComponentsPackage getComponentsPackage();
}

