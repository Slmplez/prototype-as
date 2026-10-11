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
package gautosar.gswcomponents.gcomponents.ginstancerefs.impl;

import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsFactory;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GinstancerefsFactoryImpl
extends EFactoryImpl
implements GinstancerefsFactory {
    public static GinstancerefsFactory init() {
        try {
            GinstancerefsFactory theGinstancerefsFactory = (GinstancerefsFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/components/ir");
            if (theGinstancerefsFactory != null) {
                return theGinstancerefsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GinstancerefsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GinstancerefsPackage getGinstancerefsPackage() {
        return (GinstancerefsPackage)this.getEPackage();
    }

    @Deprecated
    public static GinstancerefsPackage getPackage() {
        return GinstancerefsPackage.eINSTANCE;
    }
}

