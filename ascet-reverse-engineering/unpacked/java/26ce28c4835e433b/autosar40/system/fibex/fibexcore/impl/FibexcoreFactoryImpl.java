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
package autosar40.system.fibex.fibexcore.impl;

import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.FibexElementRefConditional;
import autosar40.system.fibex.fibexcore.FibexcoreFactory;
import autosar40.system.fibex.fibexcore.FibexcorePackage;
import autosar40.system.fibex.fibexcore.impl.FibexElementImpl;
import autosar40.system.fibex.fibexcore.impl.FibexElementRefConditionalImpl;
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
            FibexcoreFactory theFibexcoreFactory = (FibexcoreFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/fcore");
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
            case 1: {
                return this.createFibexElementRefConditional();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public FibexElement createFibexElement() {
        FibexElementImpl fibexElement = new FibexElementImpl();
        return fibexElement;
    }

    public FibexElementRefConditional createFibexElementRefConditional() {
        FibexElementRefConditionalImpl fibexElementRefConditional = new FibexElementRefConditionalImpl();
        return fibexElementRefConditional;
    }

    public FibexcorePackage getFibexcorePackage() {
        return (FibexcorePackage)this.getEPackage();
    }

    @Deprecated
    public static FibexcorePackage getPackage() {
        return FibexcorePackage.eINSTANCE;
    }
}

