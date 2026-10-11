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
package autosar40.commonstructure.calibrationparameter.impl;

import autosar40.commonstructure.calibrationparameter.CalibrationparameterFactory;
import autosar40.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar40.commonstructure.calibrationparameter.CalprmAxisCategoryEnum;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxis;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxisSet;
import autosar40.commonstructure.calibrationparameter.SwCalprmValueAxisLabels;
import autosar40.commonstructure.calibrationparameter.impl.SwCalprmAxisImpl;
import autosar40.commonstructure.calibrationparameter.impl.SwCalprmAxisSetImpl;
import autosar40.commonstructure.calibrationparameter.impl.SwCalprmValueAxisLabelsImpl;
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
            CalibrationparameterFactory theCalibrationparameterFactory = (CalibrationparameterFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/cp");
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
                return this.createSwCalprmAxisSet();
            }
            case 3: {
                return this.createSwCalprmValueAxisLabels();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
                return this.createCalprmAxisCategoryEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 4: {
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

