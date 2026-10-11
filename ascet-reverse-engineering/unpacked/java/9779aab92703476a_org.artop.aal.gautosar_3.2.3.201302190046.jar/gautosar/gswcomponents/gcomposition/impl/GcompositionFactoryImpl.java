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
package gautosar.gswcomponents.gcomposition.impl;

import gautosar.gswcomponents.gcomposition.GcompositionFactory;
import gautosar.gswcomponents.gcomposition.GcompositionPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GcompositionFactoryImpl
extends EFactoryImpl
implements GcompositionFactory {
    public static GcompositionFactory init() {
        try {
            GcompositionFactory theGcompositionFactory = (GcompositionFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/composition");
            if (theGcompositionFactory != null) {
                return theGcompositionFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GcompositionFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GcompositionPackage getGcompositionPackage() {
        return (GcompositionPackage)this.getEPackage();
    }

    @Deprecated
    public static GcompositionPackage getPackage() {
        return GcompositionPackage.eINSTANCE;
    }
}

