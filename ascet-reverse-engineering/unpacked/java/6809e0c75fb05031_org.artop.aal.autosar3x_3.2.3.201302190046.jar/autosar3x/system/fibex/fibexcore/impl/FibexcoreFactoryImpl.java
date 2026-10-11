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
package autosar3x.system.fibex.fibexcore.impl;

import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.FibexcoreFactory;
import autosar3x.system.fibex.fibexcore.FibexcorePackage;
import autosar3x.system.fibex.fibexcore.impl.FibexElementImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class FibexcoreFactoryImpl
extends EFactoryImpl
implements FibexcoreFactory {
    public static FibexcoreFactory init() {
        try {
            FibexcoreFactory theFibexcoreFactory = (FibexcoreFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/f/fcore");
            if (theFibexcoreFactory != null) {
                return theFibexcoreFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new FibexcoreFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createFibexElement();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public FibexElement createFibexElement() {
        FibexElementImpl fibexElement = new FibexElementImpl();
        return fibexElement;
    }

    public FibexcorePackage getFibexcorePackage() {
        return (FibexcorePackage)this.getEPackage();
    }

    @Deprecated
    public static FibexcorePackage getPackage() {
        return FibexcorePackage.eINSTANCE;
    }
}

