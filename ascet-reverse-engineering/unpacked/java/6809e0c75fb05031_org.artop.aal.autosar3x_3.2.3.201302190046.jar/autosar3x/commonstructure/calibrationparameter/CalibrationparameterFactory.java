/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.calibrationparameter;

import autosar3x.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisIndividualAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar3x.commonstructure.calibrationparameter.SwCalprmValueAxisLabels;
import autosar3x.commonstructure.calibrationparameter.impl.CalibrationparameterFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CalibrationparameterFactory
extends EFactory {
    public static final CalibrationparameterFactory eINSTANCE = CalibrationparameterFactoryImpl.init();

    public SwCalprmAxis createSwCalprmAxis();

    public SwCalprmAxisSet createSwCalprmAxisSet();

    public SwCalprmValueAxisLabels createSwCalprmValueAxisLabels();

    public SwCalprmAxisCommonAxis createSwCalprmAxisCommonAxis();

    public SwCalprmAxisIndividualAxis createSwCalprmAxisIndividualAxis();

    public CalibrationparameterPackage getCalibrationparameterPackage();
}

