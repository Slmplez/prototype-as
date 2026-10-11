/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty;

import autosar21.swcomponent.measurementandcalibration.measurementproperty.DataPrototypeRef;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.Measurable;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.PerInstanceMemoryVariable;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.impl.MeasurementpropertyFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface MeasurementpropertyFactory
extends EFactory {
    public static final MeasurementpropertyFactory eINSTANCE = MeasurementpropertyFactoryImpl.init();

    public DataPrototypeRef createDataPrototypeRef();

    public PerInstanceMemoryVariable createPerInstanceMemoryVariable();

    public RecordElementRef createRecordElementRef();

    public Measurable createMeasurable();

    public MeasurementpropertyPackage getMeasurementpropertyPackage();
}

