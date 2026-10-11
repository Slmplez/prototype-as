/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.components;

import autosar3x.swcomponent.components.ApplicationSoftwareComponentType;
import autosar3x.swcomponent.components.CalprmComponentType;
import autosar3x.swcomponent.components.ComplexDeviceDriverComponentType;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.EcuAbstractionComponentType;
import autosar3x.swcomponent.components.PPortPrototype;
import autosar3x.swcomponent.components.PortGroup;
import autosar3x.swcomponent.components.RPortPrototype;
import autosar3x.swcomponent.components.SensorActuatorSoftwareComponentType;
import autosar3x.swcomponent.components.ServiceComponentType;
import autosar3x.swcomponent.components.impl.ComponentsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComponentsFactory
extends EFactory {
    public static final ComponentsFactory eINSTANCE = ComponentsFactoryImpl.init();

    public ApplicationSoftwareComponentType createApplicationSoftwareComponentType();

    public RPortPrototype createRPortPrototype();

    public ServiceComponentType createServiceComponentType();

    public PortGroup createPortGroup();

    public CalprmComponentType createCalprmComponentType();

    public ComplexDeviceDriverComponentType createComplexDeviceDriverComponentType();

    public EcuAbstractionComponentType createEcuAbstractionComponentType();

    public SensorActuatorSoftwareComponentType createSensorActuatorSoftwareComponentType();

    public PPortPrototype createPPortPrototype();

    public ComponentsPackage getComponentsPackage();
}

