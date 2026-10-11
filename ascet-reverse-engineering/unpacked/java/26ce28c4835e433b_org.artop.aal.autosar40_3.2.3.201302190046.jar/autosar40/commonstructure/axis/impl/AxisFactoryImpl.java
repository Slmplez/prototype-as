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
package autosar40.commonstructure.axis.impl;

import autosar40.commonstructure.axis.AxisFactory;
import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.axis.SwAxisGeneric;
import autosar40.commonstructure.axis.SwAxisGrouped;
import autosar40.commonstructure.axis.SwAxisIndividual;
import autosar40.commonstructure.axis.SwAxisType;
import autosar40.commonstructure.axis.SwGenericAxisParam;
import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.commonstructure.axis.impl.SwAxisGenericImpl;
import autosar40.commonstructure.axis.impl.SwAxisGroupedImpl;
import autosar40.commonstructure.axis.impl.SwAxisIndividualImpl;
import autosar40.commonstructure.axis.impl.SwAxisTypeImpl;
import autosar40.commonstructure.axis.impl.SwGenericAxisParamImpl;
import autosar40.commonstructure.axis.impl.SwGenericAxisParamTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class AxisFactoryImpl
extends EFactoryImpl
implements AxisFactory {
    public static AxisFactory init() {
        try {
            AxisFactory theAxisFactory = (AxisFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/a");
            if (theAxisFactory != null) {
                return theAxisFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new AxisFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwAxisGeneric();
            }
            case 1: {
                return this.createSwAxisType();
            }
            case 2: {
                return this.createSwGenericAxisParam();
            }
            case 3: {
                return this.createSwAxisGrouped();
            }
            case 4: {
                return this.createSwAxisIndividual();
            }
            case 5: {
                return this.createSwGenericAxisParamType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwAxisGeneric createSwAxisGeneric() {
        SwAxisGenericImpl swAxisGeneric = new SwAxisGenericImpl();
        return swAxisGeneric;
    }

    public SwAxisType createSwAxisType() {
        SwAxisTypeImpl swAxisType = new SwAxisTypeImpl();
        return swAxisType;
    }

    public SwGenericAxisParam createSwGenericAxisParam() {
        SwGenericAxisParamImpl swGenericAxisParam = new SwGenericAxisParamImpl();
        return swGenericAxisParam;
    }

    public SwAxisGrouped createSwAxisGrouped() {
        SwAxisGroupedImpl swAxisGrouped = new SwAxisGroupedImpl();
        return swAxisGrouped;
    }

    public SwAxisIndividual createSwAxisIndividual() {
        SwAxisIndividualImpl swAxisIndividual = new SwAxisIndividualImpl();
        return swAxisIndividual;
    }

    public SwGenericAxisParamType createSwGenericAxisParamType() {
        SwGenericAxisParamTypeImpl swGenericAxisParamType = new SwGenericAxisParamTypeImpl();
        return swGenericAxisParamType;
    }

    public AxisPackage getAxisPackage() {
        return (AxisPackage)this.getEPackage();
    }

    @Deprecated
    public static AxisPackage getPackage() {
        return AxisPackage.eINSTANCE;
    }
}

