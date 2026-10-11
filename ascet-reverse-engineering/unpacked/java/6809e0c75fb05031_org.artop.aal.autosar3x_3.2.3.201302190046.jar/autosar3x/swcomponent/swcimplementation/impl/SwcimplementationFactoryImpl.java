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
package autosar3x.swcomponent.swcimplementation.impl;

import autosar3x.swcomponent.swcimplementation.PerInstanceMemorySize;
import autosar3x.swcomponent.swcimplementation.SwcImplementation;
import autosar3x.swcomponent.swcimplementation.SwcimplementationFactory;
import autosar3x.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar3x.swcomponent.swcimplementation.impl.PerInstanceMemorySizeImpl;
import autosar3x.swcomponent.swcimplementation.impl.SwcImplementationImpl;
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
            SwcimplementationFactory theSwcimplementationFactory = (SwcimplementationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/si");
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

