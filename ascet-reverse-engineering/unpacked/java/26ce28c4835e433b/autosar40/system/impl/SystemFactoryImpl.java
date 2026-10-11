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
package autosar40.system.impl;

import autosar40.system.RootSwCompositionPrototype;
import autosar40.system.System;
import autosar40.system.SystemFactory;
import autosar40.system.SystemMapping;
import autosar40.system.SystemPackage;
import autosar40.system.impl.RootSwCompositionPrototypeImpl;
import autosar40.system.impl.SystemImpl;
import autosar40.system.impl.SystemMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SystemFactoryImpl
extends EFactoryImpl
implements SystemFactory {
    public static SystemFactory init() {
        try {
            SystemFactory theSystemFactory = (SystemFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system");
            if (theSystemFactory != null) {
                return theSystemFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SystemFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createRootSwCompositionPrototype();
            }
            case 1: {
                return this.createSystem();
            }
            case 2: {
                return this.createSystemMapping();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public RootSwCompositionPrototype createRootSwCompositionPrototype() {
        RootSwCompositionPrototypeImpl rootSwCompositionPrototype = new RootSwCompositionPrototypeImpl();
        return rootSwCompositionPrototype;
    }

    public System createSystem() {
        SystemImpl system = new SystemImpl();
        return system;
    }

    public SystemMapping createSystemMapping() {
        SystemMappingImpl systemMapping = new SystemMappingImpl();
        return systemMapping;
    }

    public SystemPackage getSystemPackage() {
        return (SystemPackage)this.getEPackage();
    }

    @Deprecated
    public static SystemPackage getPackage() {
        return SystemPackage.eINSTANCE;
    }
}

