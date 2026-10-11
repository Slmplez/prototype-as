/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.measurementandcalibration.measurementproperty.util;

import autosar3x.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.DataPrototypeRef;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.util.MeasurementpropertySwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class MeasurementpropertyAdapterFactory
extends AdapterFactoryImpl {
    protected static MeasurementpropertyPackage modelPackage;
    protected MeasurementpropertySwitch<Adapter> modelSwitch = new MeasurementpropertySwitch<Adapter>(){

        @Override
        public Adapter caseDataPrototypeRef(DataPrototypeRef object) {
            return MeasurementpropertyAdapterFactory.this.createDataPrototypeRefAdapter();
        }

        @Override
        public Adapter caseRecordElementRef(RecordElementRef object) {
            return MeasurementpropertyAdapterFactory.this.createRecordElementRefAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return MeasurementpropertyAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return MeasurementpropertyAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseSwVariableRefProxy(SwVariableRefProxy object) {
            return MeasurementpropertyAdapterFactory.this.createSwVariableRefProxyAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return MeasurementpropertyAdapterFactory.this.createEObjectAdapter();
        }
    };

    public MeasurementpropertyAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = MeasurementpropertyPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createDataPrototypeRefAdapter() {
        return null;
    }

    public Adapter createRecordElementRefAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createSwVariableRefProxyAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

