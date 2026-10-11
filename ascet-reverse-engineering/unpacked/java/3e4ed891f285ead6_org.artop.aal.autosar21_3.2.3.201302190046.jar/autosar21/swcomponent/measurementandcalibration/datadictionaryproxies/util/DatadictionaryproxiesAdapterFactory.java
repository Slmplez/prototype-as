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
package autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwCalprmRefProxy;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefMsr;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.swCalprmRef;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.util.DatadictionaryproxiesSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class DatadictionaryproxiesAdapterFactory
extends AdapterFactoryImpl {
    protected static DatadictionaryproxiesPackage modelPackage;
    protected DatadictionaryproxiesSwitch<Adapter> modelSwitch = new DatadictionaryproxiesSwitch<Adapter>(){

        @Override
        public Adapter caseswCalprmRef(swCalprmRef object) {
            return DatadictionaryproxiesAdapterFactory.this.createswCalprmRefAdapter();
        }

        @Override
        public Adapter caseSwCalprmRefProxy(SwCalprmRefProxy object) {
            return DatadictionaryproxiesAdapterFactory.this.createSwCalprmRefProxyAdapter();
        }

        @Override
        public Adapter caseSwVariableRefMsr(SwVariableRefMsr object) {
            return DatadictionaryproxiesAdapterFactory.this.createSwVariableRefMsrAdapter();
        }

        @Override
        public Adapter caseSwVariableRefProxy(SwVariableRefProxy object) {
            return DatadictionaryproxiesAdapterFactory.this.createSwVariableRefProxyAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return DatadictionaryproxiesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return DatadictionaryproxiesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return DatadictionaryproxiesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public DatadictionaryproxiesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = DatadictionaryproxiesPackage.eINSTANCE;
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

    public Adapter createswCalprmRefAdapter() {
        return null;
    }

    public Adapter createSwCalprmRefProxyAdapter() {
        return null;
    }

    public Adapter createSwVariableRefMsrAdapter() {
        return null;
    }

    public Adapter createSwVariableRefProxyAdapter() {
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

