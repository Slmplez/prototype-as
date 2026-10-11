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
package gautosar.ggenericstructure.ginfrastructure.impl;

import gautosar.ggenericstructure.ginfrastructure.GinfrastructureFactory;
import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GinfrastructureFactoryImpl
extends EFactoryImpl
implements GinfrastructureFactory {
    public static GinfrastructureFactory init() {
        try {
            GinfrastructureFactory theGinfrastructureFactory = (GinfrastructureFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/gs/in");
            if (theGinfrastructureFactory != null) {
                return theGinfrastructureFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GinfrastructureFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GinfrastructurePackage getGinfrastructurePackage() {
        return (GinfrastructurePackage)this.getEPackage();
    }

    @Deprecated
    public static GinfrastructurePackage getPackage() {
        return GinfrastructurePackage.eINSTANCE;
    }
}

