/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.composition;

import autosar21.swcomponent.composition.AssemblyConnectorPrototype;
import autosar21.swcomponent.composition.ComponentPrototype;
import autosar21.swcomponent.composition.CompositionPackage;
import autosar21.swcomponent.composition.CompositionType;
import autosar21.swcomponent.composition.DelegationConnectorPrototype;
import autosar21.swcomponent.composition.ServiceConnectorPrototype;
import autosar21.swcomponent.composition.impl.CompositionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CompositionFactory
extends EFactory {
    public static final CompositionFactory eINSTANCE = CompositionFactoryImpl.init();

    public AssemblyConnectorPrototype createAssemblyConnectorPrototype();

    public CompositionType createCompositionType();

    public ServiceConnectorPrototype createServiceConnectorPrototype();

    public DelegationConnectorPrototype createDelegationConnectorPrototype();

    public ComponentPrototype createComponentPrototype();

    public CompositionPackage getCompositionPackage();
}

