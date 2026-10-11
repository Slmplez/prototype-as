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
package autosar21.swcomponent.internalbehavior.nvrammapping.impl;

import autosar21.swcomponent.internalbehavior.nvrammapping.NVRAMMapping;
import autosar21.swcomponent.internalbehavior.nvrammapping.NvrammappingFactory;
import autosar21.swcomponent.internalbehavior.nvrammapping.NvrammappingPackage;
import autosar21.swcomponent.internalbehavior.nvrammapping.impl.NVRAMMappingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class NvrammappingFactoryImpl
extends EFactoryImpl
implements NvrammappingFactory {
    public static NvrammappingFactory init() {
        try {
            NvrammappingFactory theNvrammappingFactory = (NvrammappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/ib/nvramm");
            if (theNvrammappingFactory != null) {
                return theNvrammappingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new NvrammappingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createNVRAMMapping();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public NVRAMMapping createNVRAMMapping() {
        NVRAMMappingImpl nvramMapping = new NVRAMMappingImpl();
        return nvramMapping;
    }

    public NvrammappingPackage getNvrammappingPackage() {
        return (NvrammappingPackage)this.getEPackage();
    }

    @Deprecated
    public static NvrammappingPackage getPackage() {
        return NvrammappingPackage.eINSTANCE;
    }
}

