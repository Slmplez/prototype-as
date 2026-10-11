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
package gautosar.gswcomponents.gcomponents.impl;

import gautosar.gswcomponents.gcomponents.GcomponentsFactory;
import gautosar.gswcomponents.gcomponents.GcomponentsPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GcomponentsFactoryImpl
extends EFactoryImpl
implements GcomponentsFactory {
    public static GcomponentsFactory init() {
        try {
            GcomponentsFactory theGcomponentsFactory = (GcomponentsFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/components");
            if (theGcomponentsFactory != null) {
                return theGcomponentsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GcomponentsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GcomponentsPackage getGcomponentsPackage() {
        return (GcomponentsPackage)this.getEPackage();
    }

    @Deprecated
    public static GcomponentsPackage getPackage() {
        return GcomponentsPackage.eINSTANCE;
    }
}

