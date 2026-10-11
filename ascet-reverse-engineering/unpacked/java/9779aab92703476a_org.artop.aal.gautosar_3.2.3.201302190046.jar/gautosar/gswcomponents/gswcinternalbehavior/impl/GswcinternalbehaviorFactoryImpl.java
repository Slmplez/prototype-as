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
package gautosar.gswcomponents.gswcinternalbehavior.impl;

import gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorFactory;
import gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GswcinternalbehaviorFactoryImpl
extends EFactoryImpl
implements GswcinternalbehaviorFactory {
    public static GswcinternalbehaviorFactory init() {
        try {
            GswcinternalbehaviorFactory theGswcinternalbehaviorFactory = (GswcinternalbehaviorFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/sib");
            if (theGswcinternalbehaviorFactory != null) {
                return theGswcinternalbehaviorFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GswcinternalbehaviorFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GswcinternalbehaviorPackage getGswcinternalbehaviorPackage() {
        return (GswcinternalbehaviorPackage)this.getEPackage();
    }

    @Deprecated
    public static GswcinternalbehaviorPackage getPackage() {
        return GswcinternalbehaviorPackage.eINSTANCE;
    }
}

