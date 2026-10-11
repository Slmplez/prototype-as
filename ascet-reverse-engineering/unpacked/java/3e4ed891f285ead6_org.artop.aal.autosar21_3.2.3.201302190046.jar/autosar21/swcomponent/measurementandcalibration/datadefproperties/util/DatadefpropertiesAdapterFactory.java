/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.measurementandcalibration.datadefproperties.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwArraysize;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwBitRepresentation;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwComparisonVariables;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependency;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependencyArgs;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwGenericAxisParamValue;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwPointer;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwSemaphore;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwTextProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwVariableRef;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.util.DatadefpropertiesSwitch;
import gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class DatadefpropertiesAdapterFactory
extends AdapterFactoryImpl {
    protected static DatadefpropertiesPackage modelPackage;
    protected DatadefpropertiesSwitch<Adapter> modelSwitch = new DatadefpropertiesSwitch<Adapter>(){

        @Override
        public Adapter caseSwArraysize(SwArraysize object) {
            return DatadefpropertiesAdapterFactory.this.createSwArraysizeAdapter();
        }

        @Override
        public Adapter caseSwBitRepresentation(SwBitRepresentation object) {
            return DatadefpropertiesAdapterFactory.this.createSwBitRepresentationAdapter();
        }

        @Override
        public Adapter caseSwComparisonVariables(SwComparisonVariables object) {
            return DatadefpropertiesAdapterFactory.this.createSwComparisonVariablesAdapter();
        }

        @Override
        public Adapter caseSwGenericAxisParamValue(SwGenericAxisParamValue object) {
            return DatadefpropertiesAdapterFactory.this.createSwGenericAxisParamValueAdapter();
        }

        @Override
        public Adapter caseSwDataDependency(SwDataDependency object) {
            return DatadefpropertiesAdapterFactory.this.createSwDataDependencyAdapter();
        }

        @Override
        public Adapter caseSwDataDependencyArgs(SwDataDependencyArgs object) {
            return DatadefpropertiesAdapterFactory.this.createSwDataDependencyArgsAdapter();
        }

        @Override
        public Adapter caseSwPointer(SwPointer object) {
            return DatadefpropertiesAdapterFactory.this.createSwPointerAdapter();
        }

        @Override
        public Adapter caseSwSemaphore(SwSemaphore object) {
            return DatadefpropertiesAdapterFactory.this.createSwSemaphoreAdapter();
        }

        @Override
        public Adapter caseSwTextProps(SwTextProps object) {
            return DatadefpropertiesAdapterFactory.this.createSwTextPropsAdapter();
        }

        @Override
        public Adapter caseSwVariableRef(SwVariableRef object) {
            return DatadefpropertiesAdapterFactory.this.createSwVariableRefAdapter();
        }

        @Override
        public Adapter caseSwDataDefProps(SwDataDefProps object) {
            return DatadefpropertiesAdapterFactory.this.createSwDataDefPropsAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return DatadefpropertiesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return DatadefpropertiesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGSwDataDefPropsConditional(GSwDataDefPropsConditional object) {
            return DatadefpropertiesAdapterFactory.this.createGSwDataDefPropsConditionalAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return DatadefpropertiesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public DatadefpropertiesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = DatadefpropertiesPackage.eINSTANCE;
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

    public Adapter createSwArraysizeAdapter() {
        return null;
    }

    public Adapter createSwBitRepresentationAdapter() {
        return null;
    }

    public Adapter createSwComparisonVariablesAdapter() {
        return null;
    }

    public Adapter createSwGenericAxisParamValueAdapter() {
        return null;
    }

    public Adapter createSwDataDependencyAdapter() {
        return null;
    }

    public Adapter createSwDataDependencyArgsAdapter() {
        return null;
    }

    public Adapter createSwPointerAdapter() {
        return null;
    }

    public Adapter createSwSemaphoreAdapter() {
        return null;
    }

    public Adapter createSwTextPropsAdapter() {
        return null;
    }

    public Adapter createSwVariableRefAdapter() {
        return null;
    }

    public Adapter createSwDataDefPropsAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGSwDataDefPropsConditionalAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

