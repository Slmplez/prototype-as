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
package autosar40.commonstructure.datadictionaryproxies.util;

import autosar40.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar40.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar40.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar40.commonstructure.datadictionaryproxies.util.DatadictionaryproxiesSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
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
        public Adapter caseSwVariableRefProxy(SwVariableRefProxy object) {
            return DatadictionaryproxiesAdapterFactory.this.createSwVariableRefProxyAdapter();
        }

        @Override
        public Adapter caseSwCalprmRefProxy(SwCalprmRefProxy object) {
            return DatadictionaryproxiesAdapterFactory.this.createSwCalprmRefProxyAdapter();
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

    public Adapter createSwVariableRefProxyAdapter() {
        return null;
    }

    public Adapter createSwCalprmRefProxyAdapter() {
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

