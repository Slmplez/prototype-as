/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system;

import autosar40.system.RootSwCompositionPrototype;
import autosar40.system.System;
import autosar40.system.SystemMapping;
import autosar40.system.SystemPackage;
import autosar40.system.impl.SystemFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SystemFactory
extends EFactory {
    public static final SystemFactory eINSTANCE = SystemFactoryImpl.init();

    public RootSwCompositionPrototype createRootSwCompositionPrototype();

    public System createSystem();

    public SystemMapping createSystemMapping();

    public SystemPackage getSystemPackage();
}

