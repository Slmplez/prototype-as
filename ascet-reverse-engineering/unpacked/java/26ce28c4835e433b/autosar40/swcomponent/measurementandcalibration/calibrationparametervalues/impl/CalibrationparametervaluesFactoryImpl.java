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
package autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.impl;

import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationParameterValue;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationParameterValueSet;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationparametervaluesFactory;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationparametervaluesPackage;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.impl.CalibrationParameterValueImpl;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.impl.CalibrationParameterValueSetImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CalibrationparametervaluesFactoryImpl
extends EFactoryImpl
implements CalibrationparametervaluesFactory {
    public static CalibrationparametervaluesFactory init() {
        try {
            CalibrationparametervaluesFactory theCalibrationparametervaluesFactory = (CalibrationparametervaluesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/mac/cpv");
            if (theCalibrationparametervaluesFactory != null) {
                return theCalibrationparametervaluesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CalibrationparametervaluesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createCalibrationParameterValue();
            }
            case 1: {
                return this.createCalibrationParameterValueSet();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public CalibrationParameterValue createCalibrationParameterValue() {
        CalibrationParameterValueImpl calibrationParameterValue = new CalibrationParameterValueImpl();
        return calibrationParameterValue;
    }

    public CalibrationParameterValueSet createCalibrationParameterValueSet() {
        CalibrationParameterValueSetImpl calibrationParameterValueSet = new CalibrationParameterValueSetImpl();
        return calibrationParameterValueSet;
    }

    public CalibrationparametervaluesPackage getCalibrationparametervaluesPackage() {
        return (CalibrationparametervaluesPackage)this.getEPackage();
    }

    @Deprecated
    public static CalibrationparametervaluesPackage getPackage() {
        return CalibrationparametervaluesPackage.eINSTANCE;
    }
}

