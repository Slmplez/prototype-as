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
package gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.impl;

import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryFactory;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GperinstancememoryFactoryImpl
extends EFactoryImpl
implements GperinstancememoryFactory {
    public static GperinstancememoryFactory init() {
        try {
            GperinstancememoryFactory theGperinstancememoryFactory = (GperinstancememoryFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/sib/pim");
            if (theGperinstancememoryFactory != null) {
                return theGperinstancememoryFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GperinstancememoryFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GperinstancememoryPackage getGperinstancememoryPackage() {
        return (GperinstancememoryPackage)this.getEPackage();
    }

    @Deprecated
    public static GperinstancememoryPackage getPackage() {
        return GperinstancememoryPackage.eINSTANCE;
    }
}

