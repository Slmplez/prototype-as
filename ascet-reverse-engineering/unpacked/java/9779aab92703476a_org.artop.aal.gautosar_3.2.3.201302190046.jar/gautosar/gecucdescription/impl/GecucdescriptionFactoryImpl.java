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
package gautosar.gecucdescription.impl;

import gautosar.gecucdescription.GecucdescriptionFactory;
import gautosar.gecucdescription.GecucdescriptionPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GecucdescriptionFactoryImpl
extends EFactoryImpl
implements GecucdescriptionFactory {
    public static GecucdescriptionFactory init() {
        try {
            GecucdescriptionFactory theGecucdescriptionFactory = (GecucdescriptionFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/ed");
            if (theGecucdescriptionFactory != null) {
                return theGecucdescriptionFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GecucdescriptionFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GecucdescriptionPackage getGecucdescriptionPackage() {
        return (GecucdescriptionPackage)this.getEPackage();
    }

    @Deprecated
    public static GecucdescriptionPackage getPackage() {
        return GecucdescriptionPackage.eINSTANCE;
    }
}

