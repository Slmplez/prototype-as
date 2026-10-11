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
package gautosar.gswcomponents.gswcinternalbehavior.gdataelements.impl;

import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsFactory;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GdataelementsFactoryImpl
extends EFactoryImpl
implements GdataelementsFactory {
    public static GdataelementsFactory init() {
        try {
            GdataelementsFactory theGdataelementsFactory = (GdataelementsFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/sib/de");
            if (theGdataelementsFactory != null) {
                return theGdataelementsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GdataelementsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GdataelementsPackage getGdataelementsPackage() {
        return (GdataelementsPackage)this.getEPackage();
    }

    @Deprecated
    public static GdataelementsPackage getPackage() {
        return GdataelementsPackage.eINSTANCE;
    }
}

