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
package autosar40.swcomponent.swcinternalbehavior.includeddatatypes.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludedDataTypeSet;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludeddatatypesPackage;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.util.IncludeddatatypesSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class IncludeddatatypesAdapterFactory
extends AdapterFactoryImpl {
    protected static IncludeddatatypesPackage modelPackage;
    protected IncludeddatatypesSwitch<Adapter> modelSwitch = new IncludeddatatypesSwitch<Adapter>(){

        @Override
        public Adapter caseIncludedDataTypeSet(IncludedDataTypeSet object) {
            return IncludeddatatypesAdapterFactory.this.createIncludedDataTypeSetAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return IncludeddatatypesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return IncludeddatatypesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return IncludeddatatypesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public IncludeddatatypesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = IncludeddatatypesPackage.eINSTANCE;
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

    public Adapter createIncludedDataTypeSetAdapter() {
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

