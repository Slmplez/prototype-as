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
package gautosar.gswcomponents.gdatatype.gdataprototypes.impl;

import gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesFactory;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GdataprototypesFactoryImpl
extends EFactoryImpl
implements GdataprototypesFactory {
    public static GdataprototypesFactory init() {
        try {
            GdataprototypesFactory theGdataprototypesFactory = (GdataprototypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/d/dp");
            if (theGdataprototypesFactory != null) {
                return theGdataprototypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GdataprototypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GdataprototypesPackage getGdataprototypesPackage() {
        return (GdataprototypesPackage)this.getEPackage();
    }

    @Deprecated
    public static GdataprototypesPackage getPackage() {
        return GdataprototypesPackage.eINSTANCE;
    }
}

