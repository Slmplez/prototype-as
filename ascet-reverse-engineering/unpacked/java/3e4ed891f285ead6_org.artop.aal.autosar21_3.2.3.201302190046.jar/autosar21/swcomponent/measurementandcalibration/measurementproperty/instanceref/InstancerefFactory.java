/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref;

import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.DataPrototypeRefDataPrototype;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefPackage;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.RecordElementRefRecordElement;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public DataPrototypeRefDataPrototype createDataPrototypeRefDataPrototype();

    public RecordElementRefRecordElement createRecordElementRefRecordElement();

    public InstancerefPackage getInstancerefPackage();
}

