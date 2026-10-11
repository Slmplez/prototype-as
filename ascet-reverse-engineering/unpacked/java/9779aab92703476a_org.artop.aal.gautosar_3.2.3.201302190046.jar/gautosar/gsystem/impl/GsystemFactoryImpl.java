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
package gautosar.gsystem.impl;

import gautosar.gsystem.GsystemFactory;
import gautosar.gsystem.GsystemPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GsystemFactoryImpl
extends EFactoryImpl
implements GsystemFactory {
    public static GsystemFactory init() {
        try {
            GsystemFactory theGsystemFactory = (GsystemFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/s");
            if (theGsystemFactory != null) {
                return theGsystemFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GsystemFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GsystemPackage getGsystemPackage() {
        return (GsystemPackage)this.getEPackage();
    }

    @Deprecated
    public static GsystemPackage getPackage() {
        return GsystemPackage.eINSTANCE;
    }
}

