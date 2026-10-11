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
package autosar21.genericstructure.commonpatterns.inlinetextmodel.impl;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelFactory;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InlinetextmodelFactoryImpl
extends EFactoryImpl
implements InlinetextmodelFactory {
    public static InlinetextmodelFactory init() {
        try {
            InlinetextmodelFactory theInlinetextmodelFactory = (InlinetextmodelFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/gs/cp/itm");
            if (theInlinetextmodelFactory != null) {
                return theInlinetextmodelFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InlinetextmodelFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public InlinetextmodelPackage getInlinetextmodelPackage() {
        return (InlinetextmodelPackage)this.getEPackage();
    }

    @Deprecated
    public static InlinetextmodelPackage getPackage() {
        return InlinetextmodelPackage.eINSTANCE;
    }
}

