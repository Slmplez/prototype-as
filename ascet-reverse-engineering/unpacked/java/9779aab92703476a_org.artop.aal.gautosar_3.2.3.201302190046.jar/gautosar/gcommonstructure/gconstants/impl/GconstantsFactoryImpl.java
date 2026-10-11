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
package gautosar.gcommonstructure.gconstants.impl;

import gautosar.gcommonstructure.gconstants.GconstantsFactory;
import gautosar.gcommonstructure.gconstants.GconstantsPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GconstantsFactoryImpl
extends EFactoryImpl
implements GconstantsFactory {
    public static GconstantsFactory init() {
        try {
            GconstantsFactory theGconstantsFactory = (GconstantsFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/cs/const");
            if (theGconstantsFactory != null) {
                return theGconstantsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GconstantsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GconstantsPackage getGconstantsPackage() {
        return (GconstantsPackage)this.getEPackage();
    }

    @Deprecated
    public static GconstantsPackage getPackage() {
        return GconstantsPackage.eINSTANCE;
    }
}

