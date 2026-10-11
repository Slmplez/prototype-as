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
package autosar21.swcomponent.vfberrors.impl;

import autosar21.swcomponent.vfberrors.ApplicationError;
import autosar21.swcomponent.vfberrors.DevelopmentError;
import autosar21.swcomponent.vfberrors.VfberrorsFactory;
import autosar21.swcomponent.vfberrors.VfberrorsPackage;
import autosar21.swcomponent.vfberrors.impl.ApplicationErrorImpl;
import autosar21.swcomponent.vfberrors.impl.DevelopmentErrorImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class VfberrorsFactoryImpl
extends EFactoryImpl
implements VfberrorsFactory {
    public static VfberrorsFactory init() {
        try {
            VfberrorsFactory theVfberrorsFactory = (VfberrorsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/vfbe");
            if (theVfberrorsFactory != null) {
                return theVfberrorsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new VfberrorsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createDevelopmentError();
            }
            case 1: {
                return this.createApplicationError();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DevelopmentError createDevelopmentError() {
        DevelopmentErrorImpl developmentError = new DevelopmentErrorImpl();
        return developmentError;
    }

    public ApplicationError createApplicationError() {
        ApplicationErrorImpl applicationError = new ApplicationErrorImpl();
        return applicationError;
    }

    public VfberrorsPackage getVfberrorsPackage() {
        return (VfberrorsPackage)this.getEPackage();
    }

    @Deprecated
    public static VfberrorsPackage getPackage() {
        return VfberrorsPackage.eINSTANCE;
    }
}

