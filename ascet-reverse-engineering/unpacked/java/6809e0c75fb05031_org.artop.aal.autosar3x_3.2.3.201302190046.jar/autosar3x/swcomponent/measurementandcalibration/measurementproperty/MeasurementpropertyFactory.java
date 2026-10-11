/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.measurementandcalibration.measurementproperty;

import autosar3x.swcomponent.measurementandcalibration.measurementproperty.DataPrototypeRef;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.impl.MeasurementpropertyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface MeasurementpropertyFactory
extends EFactory {
    public static final MeasurementpropertyFactory eINSTANCE = MeasurementpropertyFactoryImpl.init();

    public DataPrototypeRef createDataPrototypeRef();

    public RecordElementRef createRecordElementRef();

    public MeasurementpropertyPackage getMeasurementpropertyPackage();
}

