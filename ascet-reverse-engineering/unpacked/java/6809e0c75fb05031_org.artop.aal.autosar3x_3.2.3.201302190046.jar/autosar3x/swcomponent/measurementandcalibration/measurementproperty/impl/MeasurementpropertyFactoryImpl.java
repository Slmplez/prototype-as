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
package autosar3x.swcomponent.measurementandcalibration.measurementproperty.impl;

import autosar3x.swcomponent.measurementandcalibration.measurementproperty.DataPrototypeRef;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyFactory;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.impl.DataPrototypeRefImpl;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.impl.RecordElementRefImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class MeasurementpropertyFactoryImpl
extends EFactoryImpl
implements MeasurementpropertyFactory {
    public static MeasurementpropertyFactory init() {
        try {
            MeasurementpropertyFactory theMeasurementpropertyFactory = (MeasurementpropertyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/mac/mp");
            if (theMeasurementpropertyFactory != null) {
                return theMeasurementpropertyFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new MeasurementpropertyFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createDataPrototypeRef();
            }
            case 1: {
                return this.createRecordElementRef();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DataPrototypeRef createDataPrototypeRef() {
        DataPrototypeRefImpl dataPrototypeRef = new DataPrototypeRefImpl();
        return dataPrototypeRef;
    }

    public RecordElementRef createRecordElementRef() {
        RecordElementRefImpl recordElementRef = new RecordElementRefImpl();
        return recordElementRef;
    }

    public MeasurementpropertyPackage getMeasurementpropertyPackage() {
        return (MeasurementpropertyPackage)this.getEPackage();
    }

    @Deprecated
    public static MeasurementpropertyPackage getPackage() {
        return MeasurementpropertyPackage.eINSTANCE;
    }
}

