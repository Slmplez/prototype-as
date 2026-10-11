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
package gautosar.gswcomponents.gswcimplementation.impl;

import gautosar.gswcomponents.gswcimplementation.GswcimplementationFactory;
import gautosar.gswcomponents.gswcimplementation.GswcimplementationPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GswcimplementationFactoryImpl
extends EFactoryImpl
implements GswcimplementationFactory {
    public static GswcimplementationFactory init() {
        try {
            GswcimplementationFactory theGswcimplementationFactory = (GswcimplementationFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/si");
            if (theGswcimplementationFactory != null) {
                return theGswcimplementationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GswcimplementationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GswcimplementationPackage getGswcimplementationPackage() {
        return (GswcimplementationPackage)this.getEPackage();
    }

    @Deprecated
    public static GswcimplementationPackage getPackage() {
        return GswcimplementationPackage.eINSTANCE;
    }
}

