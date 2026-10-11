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
package autosar3x.bswmodule.bswimplementation.impl;

import autosar3x.bswmodule.bswimplementation.BswImplementation;
import autosar3x.bswmodule.bswimplementation.BswimplementationFactory;
import autosar3x.bswmodule.bswimplementation.BswimplementationPackage;
import autosar3x.bswmodule.bswimplementation.impl.BswImplementationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BswimplementationFactoryImpl
extends EFactoryImpl
implements BswimplementationFactory {
    public static BswimplementationFactory init() {
        try {
            BswimplementationFactory theBswimplementationFactory = (BswimplementationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/bm/bimplementation");
            if (theBswimplementationFactory != null) {
                return theBswimplementationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new BswimplementationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBswImplementation();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public BswImplementation createBswImplementation() {
        BswImplementationImpl bswImplementation = new BswImplementationImpl();
        return bswImplementation;
    }

    public BswimplementationPackage getBswimplementationPackage() {
        return (BswimplementationPackage)this.getEPackage();
    }

    @Deprecated
    public static BswimplementationPackage getPackage() {
        return BswimplementationPackage.eINSTANCE;
    }
}

