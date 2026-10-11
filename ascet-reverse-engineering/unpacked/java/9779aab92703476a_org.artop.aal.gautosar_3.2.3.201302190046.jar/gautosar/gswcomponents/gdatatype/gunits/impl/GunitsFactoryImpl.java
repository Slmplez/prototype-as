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
package gautosar.gswcomponents.gdatatype.gunits.impl;

import gautosar.gswcomponents.gdatatype.gunits.GunitsFactory;
import gautosar.gswcomponents.gdatatype.gunits.GunitsPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GunitsFactoryImpl
extends EFactoryImpl
implements GunitsFactory {
    public static GunitsFactory init() {
        try {
            GunitsFactory theGunitsFactory = (GunitsFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/d/u");
            if (theGunitsFactory != null) {
                return theGunitsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GunitsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GunitsPackage getGunitsPackage() {
        return (GunitsPackage)this.getEPackage();
    }

    @Deprecated
    public static GunitsPackage getPackage() {
        return GunitsPackage.eINSTANCE;
    }
}

