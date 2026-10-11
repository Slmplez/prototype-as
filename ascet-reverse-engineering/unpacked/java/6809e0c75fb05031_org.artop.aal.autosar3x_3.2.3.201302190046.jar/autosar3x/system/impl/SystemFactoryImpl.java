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
package autosar3x.system.impl;

import autosar3x.system.SoftwareComposition;
import autosar3x.system.System;
import autosar3x.system.SystemFactory;
import autosar3x.system.SystemMapping;
import autosar3x.system.SystemPackage;
import autosar3x.system.impl.SoftwareCompositionImpl;
import autosar3x.system.impl.SystemImpl;
import autosar3x.system.impl.SystemMappingImpl;
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
            SystemFactory theSystemFactory = (SystemFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s");
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
                return this.createSoftwareComposition();
            }
            case 1: {
                return this.createSystemMapping();
            }
            case 2: {
                return this.createSystem();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SoftwareComposition createSoftwareComposition() {
        SoftwareCompositionImpl softwareComposition = new SoftwareCompositionImpl();
        return softwareComposition;
    }

    public SystemMapping createSystemMapping() {
        SystemMappingImpl systemMapping = new SystemMappingImpl();
        return systemMapping;
    }

    public System createSystem() {
        SystemImpl system = new SystemImpl();
        return system;
    }

    public SystemPackage getSystemPackage() {
        return (SystemPackage)this.getEPackage();
    }

    @Deprecated
    public static SystemPackage getPackage() {
        return SystemPackage.eINSTANCE;
    }
}

