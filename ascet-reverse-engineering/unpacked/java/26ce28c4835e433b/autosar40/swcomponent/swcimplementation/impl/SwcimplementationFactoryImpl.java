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
package autosar40.swcomponent.swcimplementation.impl;

import autosar40.swcomponent.swcimplementation.PerInstanceMemorySize;
import autosar40.swcomponent.swcimplementation.SwcImplementation;
import autosar40.swcomponent.swcimplementation.SwcimplementationFactory;
import autosar40.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar40.swcomponent.swcimplementation.impl.PerInstanceMemorySizeImpl;
import autosar40.swcomponent.swcimplementation.impl.SwcImplementationImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SwcimplementationFactoryImpl
extends EFactoryImpl
implements SwcimplementationFactory {
    public static SwcimplementationFactory init() {
        try {
            SwcimplementationFactory theSwcimplementationFactory = (SwcimplementationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/si");
            if (theSwcimplementationFactory != null) {
                return theSwcimplementationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SwcimplementationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createPerInstanceMemorySize();
            }
            case 1: {
                return this.createSwcImplementation();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public PerInstanceMemorySize createPerInstanceMemorySize() {
        PerInstanceMemorySizeImpl perInstanceMemorySize = new PerInstanceMemorySizeImpl();
        return perInstanceMemorySize;
    }

    public SwcImplementation createSwcImplementation() {
        SwcImplementationImpl swcImplementation = new SwcImplementationImpl();
        return swcImplementation;
    }

    public SwcimplementationPackage getSwcimplementationPackage() {
        return (SwcimplementationPackage)this.getEPackage();
    }

    @Deprecated
    public static SwcimplementationPackage getPackage() {
        return SwcimplementationPackage.eINSTANCE;
    }
}

