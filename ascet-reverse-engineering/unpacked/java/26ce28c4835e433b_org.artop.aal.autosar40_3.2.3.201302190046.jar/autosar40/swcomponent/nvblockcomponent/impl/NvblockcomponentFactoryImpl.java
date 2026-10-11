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
package autosar40.swcomponent.nvblockcomponent.impl;

import autosar40.swcomponent.nvblockcomponent.NvBlockDataMapping;
import autosar40.swcomponent.nvblockcomponent.NvBlockDescriptor;
import autosar40.swcomponent.nvblockcomponent.NvblockcomponentFactory;
import autosar40.swcomponent.nvblockcomponent.NvblockcomponentPackage;
import autosar40.swcomponent.nvblockcomponent.impl.NvBlockDataMappingImpl;
import autosar40.swcomponent.nvblockcomponent.impl.NvBlockDescriptorImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class NvblockcomponentFactoryImpl
extends EFactoryImpl
implements NvblockcomponentFactory {
    public static NvblockcomponentFactory init() {
        try {
            NvblockcomponentFactory theNvblockcomponentFactory = (NvblockcomponentFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/nbc");
            if (theNvblockcomponentFactory != null) {
                return theNvblockcomponentFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new NvblockcomponentFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createNvBlockDataMapping();
            }
            case 1: {
                return this.createNvBlockDescriptor();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public NvBlockDataMapping createNvBlockDataMapping() {
        NvBlockDataMappingImpl nvBlockDataMapping = new NvBlockDataMappingImpl();
        return nvBlockDataMapping;
    }

    public NvBlockDescriptor createNvBlockDescriptor() {
        NvBlockDescriptorImpl nvBlockDescriptor = new NvBlockDescriptorImpl();
        return nvBlockDescriptor;
    }

    public NvblockcomponentPackage getNvblockcomponentPackage() {
        return (NvblockcomponentPackage)this.getEPackage();
    }

    @Deprecated
    public static NvblockcomponentPackage getPackage() {
        return NvblockcomponentPackage.eINSTANCE;
    }
}

