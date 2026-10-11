/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.calibrationparameter;

import autosar40.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxis;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar40.commonstructure.calibrationparameter.SwCalprmValueAxisLabels;
import autosar40.commonstructure.calibrationparameter.impl.CalibrationparameterFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CalibrationparameterFactory
extends EFactory {
    public static final CalibrationparameterFactory eINSTANCE = CalibrationparameterFactoryImpl.init();

    public SwCalprmAxis createSwCalprmAxis();

    public SwCalprmAxisSet createSwCalprmAxisSet();

    public SwCalprmValueAxisLabels createSwCalprmValueAxisLabels();

    public CalibrationparameterPackage getCalibrationparameterPackage();
}

