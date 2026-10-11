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
package gautosar.gcommonstructure.gbasetypes.impl;

import gautosar.gcommonstructure.gbasetypes.GbasetypesFactory;
import gautosar.gcommonstructure.gbasetypes.GbasetypesPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GbasetypesFactoryImpl
extends EFactoryImpl
implements GbasetypesFactory {
    public static GbasetypesFactory init() {
        try {
            GbasetypesFactory theGbasetypesFactory = (GbasetypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/cs/bt");
            if (theGbasetypesFactory != null) {
                return theGbasetypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GbasetypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GbasetypesPackage getGbasetypesPackage() {
        return (GbasetypesPackage)this.getEPackage();
    }

    @Deprecated
    public static GbasetypesPackage getPackage() {
        return GbasetypesPackage.eINSTANCE;
    }
}

