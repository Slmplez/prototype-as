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
package autosar40.genericstructure.generaltemplateclasses.arobject.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.ArobjectFactory;
import autosar40.genericstructure.generaltemplateclasses.arobject.ArobjectPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ArobjectFactoryImpl
extends EFactoryImpl
implements ArobjectFactory {
    public static ArobjectFactory init() {
        try {
            ArobjectFactory theArobjectFactory = (ArobjectFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/ao");
            if (theArobjectFactory != null) {
                return theArobjectFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ArobjectFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ArobjectPackage getArobjectPackage() {
        return (ArobjectPackage)this.getEPackage();
    }

    @Deprecated
    public static ArobjectPackage getPackage() {
        return ArobjectPackage.eINSTANCE;
    }
}

