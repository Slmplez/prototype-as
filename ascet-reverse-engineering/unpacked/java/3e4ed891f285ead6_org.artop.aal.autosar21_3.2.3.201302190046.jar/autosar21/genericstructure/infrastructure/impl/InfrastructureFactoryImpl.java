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
package autosar21.genericstructure.infrastructure.impl;

import autosar21.genericstructure.infrastructure.InfrastructureFactory;
import autosar21.genericstructure.infrastructure.InfrastructurePackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InfrastructureFactoryImpl
extends EFactoryImpl
implements InfrastructureFactory {
    public static InfrastructureFactory init() {
        try {
            InfrastructureFactory theInfrastructureFactory = (InfrastructureFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/gs/i");
            if (theInfrastructureFactory != null) {
                return theInfrastructureFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InfrastructureFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public InfrastructurePackage getInfrastructurePackage() {
        return (InfrastructurePackage)this.getEPackage();
    }

    @Deprecated
    public static InfrastructurePackage getPackage() {
        return InfrastructurePackage.eINSTANCE;
    }
}

