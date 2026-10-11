/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.composition;

import autosar3x.swcomponent.composition.AssemblyConnectorPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.composition.CompositionPackage;
import autosar3x.swcomponent.composition.CompositionType;
import autosar3x.swcomponent.composition.DelegationConnectorPrototype;
import autosar3x.swcomponent.composition.ServiceConnectorPrototype;
import autosar3x.swcomponent.composition.impl.CompositionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CompositionFactory
extends EFactory {
    public static final CompositionFactory eINSTANCE = CompositionFactoryImpl.init();

    public ServiceConnectorPrototype createServiceConnectorPrototype();

    public CompositionType createCompositionType();

    public AssemblyConnectorPrototype createAssemblyConnectorPrototype();

    public DelegationConnectorPrototype createDelegationConnectorPrototype();

    public ComponentPrototype createComponentPrototype();

    public CompositionPackage getCompositionPackage();
}

