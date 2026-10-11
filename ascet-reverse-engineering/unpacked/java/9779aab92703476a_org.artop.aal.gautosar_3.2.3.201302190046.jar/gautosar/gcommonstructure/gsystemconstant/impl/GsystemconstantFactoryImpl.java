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
package gautosar.gcommonstructure.gsystemconstant.impl;

import gautosar.gcommonstructure.gsystemconstant.GsystemconstantFactory;
import gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GsystemconstantFactoryImpl
extends EFactoryImpl
implements GsystemconstantFactory {
    public static GsystemconstantFactory init() {
        try {
            GsystemconstantFactory theGsystemconstantFactory = (GsystemconstantFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/cs/sc");
            if (theGsystemconstantFactory != null) {
                return theGsystemconstantFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GsystemconstantFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GsystemconstantPackage getGsystemconstantPackage() {
        return (GsystemconstantPackage)this.getEPackage();
    }

    @Deprecated
    public static GsystemconstantPackage getPackage() {
        return GsystemconstantPackage.eINSTANCE;
    }
}

