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
package autosar21.swcomponent.measurementandcalibration.axis.impl;

import autosar21.swcomponent.measurementandcalibration.axis.AxisFactory;
import autosar21.swcomponent.measurementandcalibration.axis.AxisPackage;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGeneric;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGrouped;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisIndividual;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisType;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParam;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParamType;
import autosar21.swcomponent.measurementandcalibration.axis.impl.SwAxisGenericImpl;
import autosar21.swcomponent.measurementandcalibration.axis.impl.SwAxisGroupedImpl;
import autosar21.swcomponent.measurementandcalibration.axis.impl.SwAxisIndividualImpl;
import autosar21.swcomponent.measurementandcalibration.axis.impl.SwAxisTypeImpl;
import autosar21.swcomponent.measurementandcalibration.axis.impl.SwGenericAxisParamImpl;
import autosar21.swcomponent.measurementandcalibration.axis.impl.SwGenericAxisParamTypeImpl;
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
            AxisFactory theAxisFactory = (AxisFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/mac/a");
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
                return this.createSwGenericAxisParam();
            }
            case 2: {
                return this.createSwGenericAxisParamType();
            }
            case 3: {
                return this.createSwAxisType();
            }
            case 4: {
                return this.createSwAxisIndividual();
            }
            case 5: {
                return this.createSwAxisGrouped();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwAxisGeneric createSwAxisGeneric() {
        SwAxisGenericImpl swAxisGeneric = new SwAxisGenericImpl();
        return swAxisGeneric;
    }

    public SwGenericAxisParam createSwGenericAxisParam() {
        SwGenericAxisParamImpl swGenericAxisParam = new SwGenericAxisParamImpl();
        return swGenericAxisParam;
    }

    public SwGenericAxisParamType createSwGenericAxisParamType() {
        SwGenericAxisParamTypeImpl swGenericAxisParamType = new SwGenericAxisParamTypeImpl();
        return swGenericAxisParamType;
    }

    public SwAxisType createSwAxisType() {
        SwAxisTypeImpl swAxisType = new SwAxisTypeImpl();
        return swAxisType;
    }

    public SwAxisIndividual createSwAxisIndividual() {
        SwAxisIndividualImpl swAxisIndividual = new SwAxisIndividualImpl();
        return swAxisIndividual;
    }

    public SwAxisGrouped createSwAxisGrouped() {
        SwAxisGroupedImpl swAxisGrouped = new SwAxisGroupedImpl();
        return swAxisGrouped;
    }

    public AxisPackage getAxisPackage() {
        return (AxisPackage)this.getEPackage();
    }

    @Deprecated
    public static AxisPackage getPackage() {
        return AxisPackage.eINSTANCE;
    }
}

