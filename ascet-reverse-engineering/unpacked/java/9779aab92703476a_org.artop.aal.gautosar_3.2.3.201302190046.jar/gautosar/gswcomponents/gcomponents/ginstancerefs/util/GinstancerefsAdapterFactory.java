/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gcomponents.ginstancerefs.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage;
import gautosar.gswcomponents.gcomponents.ginstancerefs.util.GinstancerefsSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GinstancerefsAdapterFactory
extends AdapterFactoryImpl {
    protected static GinstancerefsPackage modelPackage;
    protected GinstancerefsSwitch<Adapter> modelSwitch = new GinstancerefsSwitch<Adapter>(){

        @Override
        public Adapter caseGVariableInAtomicSwcIRef(GVariableInAtomicSwcIRef object) {
            return GinstancerefsAdapterFactory.this.createGVariableInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGRVariableInAtomicSwcIRef(GRVariableInAtomicSwcIRef object) {
            return GinstancerefsAdapterFactory.this.createGRVariableInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGPVariableInAtomicSwcIRef(GPVariableInAtomicSwcIRef object) {
            return GinstancerefsAdapterFactory.this.createGPVariableInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGOperationInAtomicSwcIRef(GOperationInAtomicSwcIRef object) {
            return GinstancerefsAdapterFactory.this.createGOperationInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGROperationInAtomicSwcIRef(GROperationInAtomicSwcIRef object) {
            return GinstancerefsAdapterFactory.this.createGROperationInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGPOperationInAtomicSwcIRef(GPOperationInAtomicSwcIRef object) {
            return GinstancerefsAdapterFactory.this.createGPOperationInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGModeGroupInAtomicSwcIRef(GModeGroupInAtomicSwcIRef object) {
            return GinstancerefsAdapterFactory.this.createGModeGroupInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGRModeGroupInAtomicSwcIRef(GRModeGroupInAtomicSwcIRef object) {
            return GinstancerefsAdapterFactory.this.createGRModeGroupInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGPModeGroupInAtomicSwcIRef(GPModeGroupInAtomicSwcIRef object) {
            return GinstancerefsAdapterFactory.this.createGPModeGroupInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGParameterInAtomicSwcIRef(GParameterInAtomicSwcIRef object) {
            return GinstancerefsAdapterFactory.this.createGParameterInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGRModeInAtomicSwcIRef(GRModeInAtomicSwcIRef object) {
            return GinstancerefsAdapterFactory.this.createGRModeInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GinstancerefsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GinstancerefsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GinstancerefsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GinstancerefsPackage.eINSTANCE;
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

    public Adapter createGVariableInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGRVariableInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGPVariableInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGOperationInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGROperationInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGPOperationInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGModeGroupInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGRModeGroupInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGPModeGroupInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGParameterInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGRModeInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

