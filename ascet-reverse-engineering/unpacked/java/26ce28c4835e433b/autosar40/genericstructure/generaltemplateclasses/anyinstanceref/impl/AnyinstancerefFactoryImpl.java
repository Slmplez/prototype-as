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
package autosar40.genericstructure.generaltemplateclasses.anyinstanceref.impl;

import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyinstancerefFactory;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyinstancerefPackage;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.impl.AnyInstanceRefImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class AnyinstancerefFactoryImpl
extends EFactoryImpl
implements AnyinstancerefFactory {
    public static AnyinstancerefFactory init() {
        try {
            AnyinstancerefFactory theAnyinstancerefFactory = (AnyinstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/air");
            if (theAnyinstancerefFactory != null) {
                return theAnyinstancerefFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new AnyinstancerefFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAnyInstanceRef();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AnyInstanceRef createAnyInstanceRef() {
        AnyInstanceRefImpl anyInstanceRef = new AnyInstanceRefImpl();
        return anyInstanceRef;
    }

    public AnyinstancerefPackage getAnyinstancerefPackage() {
        return (AnyinstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static AnyinstancerefPackage getPackage() {
        return AnyinstancerefPackage.eINSTANCE;
    }
}

