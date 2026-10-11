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
package autosar3x.swcomponent.services.impl;

import autosar3x.swcomponent.services.EcuSwComposition;
import autosar3x.swcomponent.services.ServiceComponentPrototype;
import autosar3x.swcomponent.services.ServicesFactory;
import autosar3x.swcomponent.services.ServicesPackage;
import autosar3x.swcomponent.services.impl.EcuSwCompositionImpl;
import autosar3x.swcomponent.services.impl.ServiceComponentPrototypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ServicesFactoryImpl
extends EFactoryImpl
implements ServicesFactory {
    public static ServicesFactory init() {
        try {
            ServicesFactory theServicesFactory = (ServicesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/s");
            if (theServicesFactory != null) {
                return theServicesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ServicesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createServiceComponentPrototype();
            }
            case 1: {
                return this.createEcuSwComposition();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ServiceComponentPrototype createServiceComponentPrototype() {
        ServiceComponentPrototypeImpl serviceComponentPrototype = new ServiceComponentPrototypeImpl();
        return serviceComponentPrototype;
    }

    public EcuSwComposition createEcuSwComposition() {
        EcuSwCompositionImpl ecuSwComposition = new EcuSwCompositionImpl();
        return ecuSwComposition;
    }

    public ServicesPackage getServicesPackage() {
        return (ServicesPackage)this.getEPackage();
    }

    @Deprecated
    public static ServicesPackage getPackage() {
        return ServicesPackage.eINSTANCE;
    }
}

