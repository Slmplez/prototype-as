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
package autosar21.swcomponent.measurementandcalibration.measurementproperty.impl;

import autosar21.swcomponent.measurementandcalibration.measurementproperty.DataPrototypeRef;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.Measurable;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyFactory;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.PerInstanceMemoryVariable;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.impl.DataPrototypeRefImpl;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.impl.MeasurableImpl;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.impl.PerInstanceMemoryVariableImpl;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.impl.RecordElementRefImpl;
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
            MeasurementpropertyFactory theMeasurementpropertyFactory = (MeasurementpropertyFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/mac/mp");
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
                return this.createPerInstanceMemoryVariable();
            }
            case 2: {
                return this.createRecordElementRef();
            }
            case 3: {
                return this.createMeasurable();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DataPrototypeRef createDataPrototypeRef() {
        DataPrototypeRefImpl dataPrototypeRef = new DataPrototypeRefImpl();
        return dataPrototypeRef;
    }

    public PerInstanceMemoryVariable createPerInstanceMemoryVariable() {
        PerInstanceMemoryVariableImpl perInstanceMemoryVariable = new PerInstanceMemoryVariableImpl();
        return perInstanceMemoryVariable;
    }

    public RecordElementRef createRecordElementRef() {
        RecordElementRefImpl recordElementRef = new RecordElementRefImpl();
        return recordElementRef;
    }

    public Measurable createMeasurable() {
        MeasurableImpl measurable = new MeasurableImpl();
        return measurable;
    }

    public MeasurementpropertyPackage getMeasurementpropertyPackage() {
        return (MeasurementpropertyPackage)this.getEPackage();
    }

    @Deprecated
    public static MeasurementpropertyPackage getPackage() {
        return MeasurementpropertyPackage.eINSTANCE;
    }
}

