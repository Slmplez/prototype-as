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
package gautosar.gcommonstructure.gdatadefproperties.impl;

import gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesFactory;
import gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GdatadefpropertiesFactoryImpl
extends EFactoryImpl
implements GdatadefpropertiesFactory {
    public static GdatadefpropertiesFactory init() {
        try {
            GdatadefpropertiesFactory theGdatadefpropertiesFactory = (GdatadefpropertiesFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/cs/ddp");
            if (theGdatadefpropertiesFactory != null) {
                return theGdatadefpropertiesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GdatadefpropertiesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GdatadefpropertiesPackage getGdatadefpropertiesPackage() {
        return (GdatadefpropertiesPackage)this.getEPackage();
    }

    @Deprecated
    public static GdatadefpropertiesPackage getPackage() {
        return GdatadefpropertiesPackage.eINSTANCE;
    }
}

