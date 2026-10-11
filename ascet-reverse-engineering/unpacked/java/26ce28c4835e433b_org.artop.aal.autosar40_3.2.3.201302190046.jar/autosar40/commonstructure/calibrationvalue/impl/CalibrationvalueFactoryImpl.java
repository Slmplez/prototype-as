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
package autosar40.commonstructure.calibrationvalue.impl;

import autosar40.commonstructure.calibrationvalue.CalibrationvalueFactory;
import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;
import autosar40.commonstructure.calibrationvalue.SwAxisCont;
import autosar40.commonstructure.calibrationvalue.SwValueCont;
import autosar40.commonstructure.calibrationvalue.SwValues;
import autosar40.commonstructure.calibrationvalue.ValueGroup;
import autosar40.commonstructure.calibrationvalue.impl.SwAxisContImpl;
import autosar40.commonstructure.calibrationvalue.impl.SwValueContImpl;
import autosar40.commonstructure.calibrationvalue.impl.SwValuesImpl;
import autosar40.commonstructure.calibrationvalue.impl.ValueGroupImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CalibrationvalueFactoryImpl
extends EFactoryImpl
implements CalibrationvalueFactory {
    public static CalibrationvalueFactory init() {
        try {
            CalibrationvalueFactory theCalibrationvalueFactory = (CalibrationvalueFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/cv");
            if (theCalibrationvalueFactory != null) {
                return theCalibrationvalueFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CalibrationvalueFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSwAxisCont();
            }
            case 1: {
                return this.createSwValueCont();
            }
            case 2: {
                return this.createValueGroup();
            }
            case 3: {
                return this.createSwValues();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SwAxisCont createSwAxisCont() {
        SwAxisContImpl swAxisCont = new SwAxisContImpl();
        return swAxisCont;
    }

    public SwValueCont createSwValueCont() {
        SwValueContImpl swValueCont = new SwValueContImpl();
        return swValueCont;
    }

    public ValueGroup createValueGroup() {
        ValueGroupImpl valueGroup = new ValueGroupImpl();
        return valueGroup;
    }

    public SwValues createSwValues() {
        SwValuesImpl swValues = new SwValuesImpl();
        return swValues;
    }

    public CalibrationvaluePackage getCalibrationvaluePackage() {
        return (CalibrationvaluePackage)this.getEPackage();
    }

    @Deprecated
    public static CalibrationvaluePackage getPackage() {
        return CalibrationvaluePackage.eINSTANCE;
    }
}

