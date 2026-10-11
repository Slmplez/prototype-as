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
package gautosar.gcommonstructure.gresourceconsumption.impl;

import gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionFactory;
import gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GresourceconsumptionFactoryImpl
extends EFactoryImpl
implements GresourceconsumptionFactory {
    public static GresourceconsumptionFactory init() {
        try {
            GresourceconsumptionFactory theGresourceconsumptionFactory = (GresourceconsumptionFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/cs/rc");
            if (theGresourceconsumptionFactory != null) {
                return theGresourceconsumptionFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GresourceconsumptionFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GresourceconsumptionPackage getGresourceconsumptionPackage() {
        return (GresourceconsumptionPackage)this.getEPackage();
    }

    @Deprecated
    public static GresourceconsumptionPackage getPackage() {
        return GresourceconsumptionPackage.eINSTANCE;
    }
}

