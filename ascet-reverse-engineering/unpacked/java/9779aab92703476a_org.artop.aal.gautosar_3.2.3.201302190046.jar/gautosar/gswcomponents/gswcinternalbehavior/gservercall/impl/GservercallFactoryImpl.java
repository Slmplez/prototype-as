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
package gautosar.gswcomponents.gswcinternalbehavior.gservercall.impl;

import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallFactory;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GservercallFactoryImpl
extends EFactoryImpl
implements GservercallFactory {
    public static GservercallFactory init() {
        try {
            GservercallFactory theGservercallFactory = (GservercallFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/sib/sc");
            if (theGservercallFactory != null) {
                return theGservercallFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GservercallFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GservercallPackage getGservercallPackage() {
        return (GservercallPackage)this.getEPackage();
    }

    @Deprecated
    public static GservercallPackage getPackage() {
        return GservercallPackage.eINSTANCE;
    }
}

