/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.composition;

import autosar40.swcomponent.composition.AssemblySwConnector;
import autosar40.swcomponent.composition.CompositionPackage;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.DelegationSwConnector;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.composition.impl.CompositionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CompositionFactory
extends EFactory {
    public static final CompositionFactory eINSTANCE = CompositionFactoryImpl.init();

    public AssemblySwConnector createAssemblySwConnector();

    public SwComponentPrototype createSwComponentPrototype();

    public DelegationSwConnector createDelegationSwConnector();

    public CompositionSwComponentType createCompositionSwComponentType();

    public CompositionPackage getCompositionPackage();
}

