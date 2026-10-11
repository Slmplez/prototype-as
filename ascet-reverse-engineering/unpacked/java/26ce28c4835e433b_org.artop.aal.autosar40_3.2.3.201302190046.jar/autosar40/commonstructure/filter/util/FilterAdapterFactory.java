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
package autosar40.commonstructure.filter.util;

import autosar40.commonstructure.filter.DataFilter;
import autosar40.commonstructure.filter.FilterPackage;
import autosar40.commonstructure.filter.util.FilterSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class FilterAdapterFactory
extends AdapterFactoryImpl {
    protected static FilterPackage modelPackage;
    protected FilterSwitch<Adapter> modelSwitch = new FilterSwitch<Adapter>(){

        @Override
        public Adapter caseDataFilter(DataFilter object) {
            return FilterAdapterFactory.this.createDataFilterAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return FilterAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return FilterAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return FilterAdapterFactory.this.createEObjectAdapter();
        }
    };

    public FilterAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = FilterPackage.eINSTANCE;
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

    public Adapter createDataFilterAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

