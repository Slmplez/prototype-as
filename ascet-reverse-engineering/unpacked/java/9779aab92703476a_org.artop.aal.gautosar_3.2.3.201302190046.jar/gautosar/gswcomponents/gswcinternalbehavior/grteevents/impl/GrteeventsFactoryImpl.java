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
package gautosar.gswcomponents.gswcinternalbehavior.grteevents.impl;

import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsFactory;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GrteeventsFactoryImpl
extends EFactoryImpl
implements GrteeventsFactory {
    public static GrteeventsFactory init() {
        try {
            GrteeventsFactory theGrteeventsFactory = (GrteeventsFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/sib/rtee");
            if (theGrteeventsFactory != null) {
                return theGrteeventsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GrteeventsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GrteeventsPackage getGrteeventsPackage() {
        return (GrteeventsPackage)this.getEPackage();
    }

    @Deprecated
    public static GrteeventsPackage getPackage() {
        return GrteeventsPackage.eINSTANCE;
    }
}

