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
package gautosar.gswcomponents.gdatatype.gcomputationmethod.impl;

import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodFactory;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GcomputationmethodFactoryImpl
extends EFactoryImpl
implements GcomputationmethodFactory {
    public static GcomputationmethodFactory init() {
        try {
            GcomputationmethodFactory theGcomputationmethodFactory = (GcomputationmethodFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/d/cm");
            if (theGcomputationmethodFactory != null) {
                return theGcomputationmethodFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GcomputationmethodFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GcomputationmethodPackage getGcomputationmethodPackage() {
        return (GcomputationmethodPackage)this.getEPackage();
    }

    @Deprecated
    public static GcomputationmethodPackage getPackage() {
        return GcomputationmethodPackage.eINSTANCE;
    }
}

