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
package gautosar.gcommonstructure.gimplementation.impl;

import gautosar.gcommonstructure.gimplementation.GimplementationFactory;
import gautosar.gcommonstructure.gimplementation.GimplementationPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GimplementationFactoryImpl
extends EFactoryImpl
implements GimplementationFactory {
    public static GimplementationFactory init() {
        try {
            GimplementationFactory theGimplementationFactory = (GimplementationFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/cs/implementation");
            if (theGimplementationFactory != null) {
                return theGimplementationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GimplementationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GimplementationPackage getGimplementationPackage() {
        return (GimplementationPackage)this.getEPackage();
    }

    @Deprecated
    public static GimplementationPackage getPackage() {
        return GimplementationPackage.eINSTANCE;
    }
}

