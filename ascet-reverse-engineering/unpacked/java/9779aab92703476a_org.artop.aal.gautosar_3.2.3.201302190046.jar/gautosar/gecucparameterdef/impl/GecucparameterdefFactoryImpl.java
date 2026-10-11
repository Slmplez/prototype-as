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
package gautosar.gecucparameterdef.impl;

import gautosar.gecucparameterdef.GecucparameterdefFactory;
import gautosar.gecucparameterdef.GecucparameterdefPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GecucparameterdefFactoryImpl
extends EFactoryImpl
implements GecucparameterdefFactory {
    public static GecucparameterdefFactory init() {
        try {
            GecucparameterdefFactory theGecucparameterdefFactory = (GecucparameterdefFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/pd");
            if (theGecucparameterdefFactory != null) {
                return theGecucparameterdefFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GecucparameterdefFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GecucparameterdefPackage getGecucparameterdefPackage() {
        return (GecucparameterdefPackage)this.getEPackage();
    }

    @Deprecated
    public static GecucparameterdefPackage getPackage() {
        return GecucparameterdefPackage.eINSTANCE;
    }
}

