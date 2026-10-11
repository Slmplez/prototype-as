/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.calibrationparameter;

import autosar21.swcomponent.measurementandcalibration.calibrationparameter.CalibrationparameterPackage;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprm;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisIndividualAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisSet;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmValueAxisLabels;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl.CalibrationparameterFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CalibrationparameterFactory
extends EFactory {
    public static final CalibrationparameterFactory eINSTANCE = CalibrationparameterFactoryImpl.init();

    public SwCalprmAxis createSwCalprmAxis();

    public SwCalprmAxisCommonAxis createSwCalprmAxisCommonAxis();

    public SwCalprmAxisIndividualAxis createSwCalprmAxisIndividualAxis();

    public SwCalprmAxisSet createSwCalprmAxisSet();

    public SwCalprmValueAxisLabels createSwCalprmValueAxisLabels();

    public SwCalprm createSwCalprm();

    public CalibrationparameterPackage getCalibrationparameterPackage();
}

