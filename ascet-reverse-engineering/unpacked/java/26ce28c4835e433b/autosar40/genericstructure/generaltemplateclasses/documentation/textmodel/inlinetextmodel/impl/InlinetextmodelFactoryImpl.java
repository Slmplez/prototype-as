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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
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
            InlinetextmodelFactory theInlinetextmodelFactory = (InlinetextmodelFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/itm");
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

