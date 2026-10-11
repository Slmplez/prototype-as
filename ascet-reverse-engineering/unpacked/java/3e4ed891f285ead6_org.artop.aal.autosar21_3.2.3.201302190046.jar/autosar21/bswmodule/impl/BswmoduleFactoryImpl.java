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
package autosar21.bswmodule.impl;

import autosar21.bswmodule.BswModuleDescription;
import autosar21.bswmodule.BswmoduleFactory;
import autosar21.bswmodule.BswmodulePackage;
import autosar21.bswmodule.impl.BswModuleDescriptionImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BswmoduleFactoryImpl
extends EFactoryImpl
implements BswmoduleFactory {
    public static BswmoduleFactory init() {
        try {
            BswmoduleFactory theBswmoduleFactory = (BswmoduleFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/bm");
            if (theBswmoduleFactory != null) {
                return theBswmoduleFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new BswmoduleFactoryImpl();
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

    public BswmodulePackage getBswmodulePackage() {
        return (BswmodulePackage)this.getEPackage();
    }

    @Deprecated
    public static BswmodulePackage getPackage() {
        return BswmodulePackage.eINSTANCE;
    }
}

