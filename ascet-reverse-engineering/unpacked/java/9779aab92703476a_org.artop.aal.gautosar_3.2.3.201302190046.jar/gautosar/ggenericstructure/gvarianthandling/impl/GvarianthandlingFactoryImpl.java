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
package gautosar.ggenericstructure.gvarianthandling.impl;

import gautosar.ggenericstructure.gvarianthandling.GvarianthandlingFactory;
import gautosar.ggenericstructure.gvarianthandling.GvarianthandlingPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GvarianthandlingFactoryImpl
extends EFactoryImpl
implements GvarianthandlingFactory {
    public static GvarianthandlingFactory init() {
        try {
            GvarianthandlingFactory theGvarianthandlingFactory = (GvarianthandlingFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/gs/vh");
            if (theGvarianthandlingFactory != null) {
                return theGvarianthandlingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GvarianthandlingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GvarianthandlingPackage getGvarianthandlingPackage() {
        return (GvarianthandlingPackage)this.getEPackage();
    }

    @Deprecated
    public static GvarianthandlingPackage getPackage() {
        return GvarianthandlingPackage.eINSTANCE;
    }
}

