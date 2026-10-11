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
package autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl;

import autosar21.swcomponent.measurementandcalibration.calibrationparameter.CalibrationparameterFactory;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.CalibrationparameterPackage;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprm;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisIndividualAxis;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmAxisSet;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.SwCalprmValueAxisLabels;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl.SwCalprmAxisCommonAxisImpl;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl.SwCalprmAxisImpl;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl.SwCalprmAxisIndividualAxisImpl;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl.SwCalprmAxisSetImpl;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl.SwCalprmImpl;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl.SwCalprmValueAxisLabelsImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CalibrationparameterFactoryImpl
extends EFactoryImpl
implements CalibrationparameterFactory {
    public static CalibrationparameterFactory init() {
        try {
            CalibrationparameterFactory theCalibrationparameterFactory = (CalibrationparameterFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/mac/cp");
            if (theCalibrationparameterFactory != null) {
                return theCalibrationparameterFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CalibrationparameterFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwCalprmAxis();
            }
            case 2: {
                return this.createSwCalprmAxisCommonAxis();
            }
            case 3: {
                return this.createSwCalprmAxisIndividualAxis();
            }
            case 4: {
                return this.createSwCalprmAxisSet();
            }
            case 5: {
                return this.createSwCalprmValueAxisLabels();
            }
            case 6: {
                return this.createSwCalprm();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwCalprmAxis createSwCalprmAxis() {
        SwCalprmAxisImpl swCalprmAxis = new SwCalprmAxisImpl();
        return swCalprmAxis;
    }

    public SwCalprmAxisCommonAxis createSwCalprmAxisCommonAxis() {
        SwCalprmAxisCommonAxisImpl swCalprmAxisCommonAxis = new SwCalprmAxisCommonAxisImpl();
        return swCalprmAxisCommonAxis;
    }

    public SwCalprmAxisIndividualAxis createSwCalprmAxisIndividualAxis() {
        SwCalprmAxisIndividualAxisImpl swCalprmAxisIndividualAxis = new SwCalprmAxisIndividualAxisImpl();
        return swCalprmAxisIndividualAxis;
    }

    public SwCalprmAxisSet createSwCalprmAxisSet() {
        SwCalprmAxisSetImpl swCalprmAxisSet = new SwCalprmAxisSetImpl();
        return swCalprmAxisSet;
    }

    public SwCalprmValueAxisLabels createSwCalprmValueAxisLabels() {
        SwCalprmValueAxisLabelsImpl swCalprmValueAxisLabels = new SwCalprmValueAxisLabelsImpl();
        return swCalprmValueAxisLabels;
    }

    public SwCalprm createSwCalprm() {
        SwCalprmImpl swCalprm = new SwCalprmImpl();
        return swCalprm;
    }

    public CalibrationparameterPackage getCalibrationparameterPackage() {
        return (CalibrationparameterPackage)this.getEPackage();
    }

    @Deprecated
    public static CalibrationparameterPackage getPackage() {
        return CalibrationparameterPackage.eINSTANCE;
    }
}

