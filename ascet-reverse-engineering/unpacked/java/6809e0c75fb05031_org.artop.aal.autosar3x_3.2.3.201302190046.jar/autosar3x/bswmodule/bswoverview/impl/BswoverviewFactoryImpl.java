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
package autosar3x.bswmodule.bswoverview.impl;

import autosar3x.bswmodule.bswoverview.BswModuleDescription;
import autosar3x.bswmodule.bswoverview.BswoverviewFactory;
import autosar3x.bswmodule.bswoverview.BswoverviewPackage;
import autosar3x.bswmodule.bswoverview.impl.BswModuleDescriptionImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BswoverviewFactoryImpl
extends EFactoryImpl
implements BswoverviewFactory {
    public static BswoverviewFactory init() {
        try {
            BswoverviewFactory theBswoverviewFactory = (BswoverviewFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/bm/bo");
            if (theBswoverviewFactory != null) {
                return theBswoverviewFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new BswoverviewFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBswModuleDescription();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public BswModuleDescription createBswModuleDescription() {
        BswModuleDescriptionImpl bswModuleDescription = new BswModuleDescriptionImpl();
        return bswModuleDescription;
    }

    public BswoverviewPackage getBswoverviewPackage() {
        return (BswoverviewPackage)this.getEPackage();
    }

    @Deprecated
    public static BswoverviewPackage getPackage() {
        return BswoverviewPackage.eINSTANCE;
    }
}

