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
package gautosar.gswcomponents.gdatatype.gdatatypes.impl;

import gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesFactory;
import gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GdatatypesFactoryImpl
extends EFactoryImpl
implements GdatatypesFactory {
    public static GdatatypesFactory init() {
        try {
            GdatatypesFactory theGdatatypesFactory = (GdatatypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/d/d");
            if (theGdatatypesFactory != null) {
                return theGdatatypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GdatatypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GdatatypesPackage getGdatatypesPackage() {
        return (GdatatypesPackage)this.getEPackage();
    }

    @Deprecated
    public static GdatatypesPackage getPackage() {
        return GdatatypesPackage.eINSTANCE;
    }
}

