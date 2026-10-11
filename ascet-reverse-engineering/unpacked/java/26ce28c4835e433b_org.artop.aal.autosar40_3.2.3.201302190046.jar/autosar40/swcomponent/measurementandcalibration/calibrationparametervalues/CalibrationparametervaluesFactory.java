/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.measurementandcalibration.calibrationparametervalues;

import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationParameterValue;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationParameterValueSet;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationparametervaluesPackage;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.impl.CalibrationparametervaluesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CalibrationparametervaluesFactory
extends EFactory {
    public static final CalibrationparametervaluesFactory eINSTANCE = CalibrationparametervaluesFactoryImpl.init();

    public CalibrationParameterValue createCalibrationParameterValue();

    public CalibrationParameterValueSet createCalibrationParameterValueSet();

    public CalibrationparametervaluesPackage getCalibrationparametervaluesPackage();
}

