/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.commonstructure.calibrationparameter.impl;

import autosar3x.commonstructure.calibrationparameter.CalibrationparameterFactory;
import autosar3x.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar3x.commonstructure.calibrationparameter.CalprmAxisCategoryEnum;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisCommonAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisIndividualAxis;
import autosar3x.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar3x.commonstructure.calibrationparameter.SwCalprmValueAxisLabels;
import autosar3x.commonstructure.calibrationparameter.impl.SwCalprmAxisCommonAxisImpl;
import autosar3x.commonstructure.calibrationparameter.impl.SwCalprmAxisImpl;
import autosar3x.commonstructure.calibrationparameter.impl.SwCalprmAxisIndividualAxisImpl;
import autosar3x.commonstructure.calibrationparameter.impl.SwCalprmAxisSetImpl;
import autosar3x.commonstructure.calibrationparameter.impl.SwCalprmValueAxisLabelsImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CalibrationparameterFactoryImpl
extends EFactoryImpl
implements CalibrationparameterFactory {
    public static CalibrationparameterFactory init() {
        try {
            CalibrationparameterFactory theCalibrationparameterFactory = (CalibrationparameterFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/cp");
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
            case 1: {
                return this.createSwCalprmAxisSet();
            }
            case 2: {
                return this.createSwCalprmValueAxisLabels();
            }
            case 4: {
                return this.createSwCalprmAxisCommonAxis();
            }
            case 5: {
                return this.createSwCalprmAxisIndividualAxis();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.createCalprmAxisCategoryEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.convertCalprmAxisCategoryEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public SwCalprmAxis createSwCalprmAxis() {
        SwCalprmAxisImpl swCalprmAxis = new SwCalprmAxisImpl();
        return swCalprmAxis;
    }

    public SwCalprmAxisSet createSwCalprmAxisSet() {
        SwCalprmAxisSetImpl swCalprmAxisSet = new SwCalprmAxisSetImpl();
        return swCalprmAxisSet;
    }

    public SwCalprmValueAxisLabels createSwCalprmValueAxisLabels() {
        SwCalprmValueAxisLabelsImpl swCalprmValueAxisLabels = new SwCalprmValueAxisLabelsImpl();
        return swCalprmValueAxisLabels;
    }

    public SwCalprmAxisCommonAxis createSwCalprmAxisCommonAxis() {
        SwCalprmAxisCommonAxisImpl swCalprmAxisCommonAxis = new SwCalprmAxisCommonAxisImpl();
        return swCalprmAxisCommonAxis;
    }

    public SwCalprmAxisIndividualAxis createSwCalprmAxisIndividualAxis() {
        SwCalprmAxisIndividualAxisImpl swCalprmAxisIndividualAxis = new SwCalprmAxisIndividualAxisImpl();
        return swCalprmAxisIndividualAxis;
    }

    public CalprmAxisCategoryEnum createCalprmAxisCategoryEnumFromString(EDataType eDataType, String initialValue) {
        CalprmAxisCategoryEnum result = CalprmAxisCategoryEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCalprmAxisCategoryEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CalibrationparameterPackage getCalibrationparameterPackage() {
        return (CalibrationparameterPackage)this.getEPackage();
    }

    @Deprecated
    public static CalibrationparameterPackage getPackage() {
        return CalibrationparameterPackage.eINSTANCE;
    }
}

