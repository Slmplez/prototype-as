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
package autosar40.swcomponent.swcinternalbehavior.includeddatatypes.impl;

import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludedDataTypeSet;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludeddatatypesFactory;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludeddatatypesPackage;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.impl.IncludedDataTypeSetImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class IncludeddatatypesFactoryImpl
extends EFactoryImpl
implements IncludeddatatypesFactory {
    public static IncludeddatatypesFactory init() {
        try {
            IncludeddatatypesFactory theIncludeddatatypesFactory = (IncludeddatatypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/idt");
            if (theIncludeddatatypesFactory != null) {
                return theIncludeddatatypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new IncludeddatatypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createIncludedDataTypeSet();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public IncludedDataTypeSet createIncludedDataTypeSet() {
        IncludedDataTypeSetImpl includedDataTypeSet = new IncludedDataTypeSetImpl();
        return includedDataTypeSet;
    }

    public IncludeddatatypesPackage getIncludeddatatypesPackage() {
        return (IncludeddatatypesPackage)this.getEPackage();
    }

    @Deprecated
    public static IncludeddatatypesPackage getPackage() {
        return IncludeddatatypesPackage.eINSTANCE;
    }
}

