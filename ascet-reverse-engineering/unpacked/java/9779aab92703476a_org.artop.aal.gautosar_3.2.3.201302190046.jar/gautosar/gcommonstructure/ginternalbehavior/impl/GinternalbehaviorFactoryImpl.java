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
package gautosar.gcommonstructure.ginternalbehavior.impl;

import gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorFactory;
import gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GinternalbehaviorFactoryImpl
extends EFactoryImpl
implements GinternalbehaviorFactory {
    public static GinternalbehaviorFactory init() {
        try {
            GinternalbehaviorFactory theGinternalbehaviorFactory = (GinternalbehaviorFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/cs/ib");
            if (theGinternalbehaviorFactory != null) {
                return theGinternalbehaviorFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GinternalbehaviorFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GinternalbehaviorPackage getGinternalbehaviorPackage() {
        return (GinternalbehaviorPackage)this.getEPackage();
    }

    @Deprecated
    public static GinternalbehaviorPackage getPackage() {
        return GinternalbehaviorPackage.eINSTANCE;
    }
}

