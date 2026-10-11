/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.calibrationvalue;

import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;
import autosar40.commonstructure.calibrationvalue.SwAxisCont;
import autosar40.commonstructure.calibrationvalue.SwValueCont;
import autosar40.commonstructure.calibrationvalue.SwValues;
import autosar40.commonstructure.calibrationvalue.ValueGroup;
import autosar40.commonstructure.calibrationvalue.impl.CalibrationvalueFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CalibrationvalueFactory
extends EFactory {
    public static final CalibrationvalueFactory eINSTANCE = CalibrationvalueFactoryImpl.init();

    public SwAxisCont createSwAxisCont();

    public SwValueCont createSwValueCont();

    public ValueGroup createValueGroup();

    public SwValues createSwValues();

    public CalibrationvaluePackage getCalibrationvaluePackage();
}

