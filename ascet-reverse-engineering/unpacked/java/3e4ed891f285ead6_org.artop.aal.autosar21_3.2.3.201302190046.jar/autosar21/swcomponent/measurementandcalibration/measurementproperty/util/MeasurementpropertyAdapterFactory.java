/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.DataPrototypeRef;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.Measurable;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.PerInstanceMemoryVariable;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.RecordElementRef;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.util.MeasurementpropertySwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
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
        public Adapter casePerInstanceMemoryVariable(PerInstanceMemoryVariable object) {
            return MeasurementpropertyAdapterFactory.this.createPerInstanceMemoryVariableAdapter();
        }

        @Override
        public Adapter caseRecordElementRef(RecordElementRef object) {
            return MeasurementpropertyAdapterFactory.this.createRecordElementRefAdapter();
        }

        @Override
        public Adapter caseMeasurable(Measurable object) {
            return MeasurementpropertyAdapterFactory.this.createMeasurableAdapter();
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
        public Adapter caseGReferrable(GReferrable object) {
            return MeasurementpropertyAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return MeasurementpropertyAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return MeasurementpropertyAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGDataPrototype(GDataPrototype object) {
            return MeasurementpropertyAdapterFactory.this.createGDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGAutosarDataPrototype(GAutosarDataPrototype object) {
            return MeasurementpropertyAdapterFactory.this.createGAutosarDataPrototypeAdapter();
        }

        @Override
        public Adapter caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
            return MeasurementpropertyAdapterFactory.this.createGApplicationCompositeElementDataPrototypeAdapter();
        }

        @Override
        public Adapter caseDataPrototype(DataPrototype object) {
            return MeasurementpropertyAdapterFactory.this.createDataPrototypeAdapter();
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

    public Adapter createPerInstanceMemoryVariableAdapter() {
        return null;
    }

    public Adapter createRecordElementRefAdapter() {
        return null;
    }

    public Adapter createMeasurableAdapter() {
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

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createGDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGAutosarDataPrototypeAdapter() {
        return null;
    }

    public Adapter createGApplicationCompositeElementDataPrototypeAdapter() {
        return null;
    }

    public Adapter createDataPrototypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

