/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.components;

import autosar21.swcomponent.components.AtomicSoftwareComponentType;
import autosar21.swcomponent.components.CalprmComponentType;
import autosar21.swcomponent.components.ComponentsPackage;
import autosar21.swcomponent.components.PPortPrototype;
import autosar21.swcomponent.components.RPortPrototype;
import autosar21.swcomponent.components.SensorActuatorSoftwareComponentType;
import autosar21.swcomponent.components.ServiceComponentType;
import autosar21.swcomponent.components.impl.ComponentsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ComponentsFactory
extends EFactory {
    public static final ComponentsFactory eINSTANCE = ComponentsFactoryImpl.init();

    public PPortPrototype createPPortPrototype();

    public RPortPrototype createRPortPrototype();

    public AtomicSoftwareComponentType createAtomicSoftwareComponentType();

    public ServiceComponentType createServiceComponentType();

    public CalprmComponentType createCalprmComponentType();

    public SensorActuatorSoftwareComponentType createSensorActuatorSoftwareComponentType();

    public ComponentsPackage getComponentsPackage();
}

