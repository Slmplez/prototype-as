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
package autosar40.commonstructure.datadefproperties.util;

import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadefproperties.SwBitRepresentation;
import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsConditional;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.commonstructure.datadefproperties.SwDataDependency;
import autosar40.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar40.commonstructure.datadefproperties.SwPointerTargetProps;
import autosar40.commonstructure.datadefproperties.SwTextProps;
import autosar40.commonstructure.datadefproperties.ValueList;
import autosar40.commonstructure.datadefproperties.util.DatadefpropertiesSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
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
        public Adapter caseValueList(ValueList object) {
            return DatadefpropertiesAdapterFactory.this.createValueListAdapter();
        }

        @Override
        public Adapter caseSwBitRepresentation(SwBitRepresentation object) {
            return DatadefpropertiesAdapterFactory.this.createSwBitRepresentationAdapter();
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
        public Adapter caseSwPointerTargetProps(SwPointerTargetProps object) {
            return DatadefpropertiesAdapterFactory.this.createSwPointerTargetPropsAdapter();
        }

        @Override
        public Adapter caseSwTextProps(SwTextProps object) {
            return DatadefpropertiesAdapterFactory.this.createSwTextPropsAdapter();
        }

        @Override
        public Adapter caseSwDataDefPropsContent(SwDataDefPropsContent object) {
            return DatadefpropertiesAdapterFactory.this.createSwDataDefPropsContentAdapter();
        }

        @Override
        public Adapter caseSwDataDefPropsConditional(SwDataDefPropsConditional object) {
            return DatadefpropertiesAdapterFactory.this.createSwDataDefPropsConditionalAdapter();
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

    public Adapter createValueListAdapter() {
        return null;
    }

    public Adapter createSwBitRepresentationAdapter() {
        return null;
    }

    public Adapter createSwDataDependencyAdapter() {
        return null;
    }

    public Adapter createSwDataDependencyArgsAdapter() {
        return null;
    }

    public Adapter createSwPointerTargetPropsAdapter() {
        return null;
    }

    public Adapter createSwTextPropsAdapter() {
        return null;
    }

    public Adapter createSwDataDefPropsContentAdapter() {
        return null;
    }

    public Adapter createSwDataDefPropsConditionalAdapter() {
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

