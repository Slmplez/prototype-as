/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.DataReceiveErrorEventData;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.DataReceivedEventData;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.InstancerefPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.ModeSwitchEventMode;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.OperationInvokedEventOperation;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.util.InstancerefSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstancerefAdapterFactory
extends AdapterFactoryImpl {
    protected static InstancerefPackage modelPackage;
    protected InstancerefSwitch<Adapter> modelSwitch = new InstancerefSwitch<Adapter>(){

        @Override
        public Adapter caseDataReceiveErrorEventData(DataReceiveErrorEventData object) {
            return InstancerefAdapterFactory.this.createDataReceiveErrorEventDataAdapter();
        }

        @Override
        public Adapter caseModeSwitchEventMode(ModeSwitchEventMode object) {
            return InstancerefAdapterFactory.this.createModeSwitchEventModeAdapter();
        }

        @Override
        public Adapter caseOperationInvokedEventOperation(OperationInvokedEventOperation object) {
            return InstancerefAdapterFactory.this.createOperationInvokedEventOperationAdapter();
        }

        @Override
        public Adapter caseDataReceivedEventData(DataReceivedEventData object) {
            return InstancerefAdapterFactory.this.createDataReceivedEventDataAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InstancerefAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InstancerefAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGVariableInAtomicSwcIRef(GVariableInAtomicSwcIRef object) {
            return InstancerefAdapterFactory.this.createGVariableInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGRVariableInAtomicSwcIRef(GRVariableInAtomicSwcIRef object) {
            return InstancerefAdapterFactory.this.createGRVariableInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGRModeInAtomicSwcIRef(GRModeInAtomicSwcIRef object) {
            return InstancerefAdapterFactory.this.createGRModeInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGOperationInAtomicSwcIRef(GOperationInAtomicSwcIRef object) {
            return InstancerefAdapterFactory.this.createGOperationInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGPOperationInAtomicSwcIRef(GPOperationInAtomicSwcIRef object) {
            return InstancerefAdapterFactory.this.createGPOperationInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InstancerefAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InstancerefAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
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

    public Adapter createDataReceiveErrorEventDataAdapter() {
        return null;
    }

    public Adapter createModeSwitchEventModeAdapter() {
        return null;
    }

    public Adapter createOperationInvokedEventOperationAdapter() {
        return null;
    }

    public Adapter createDataReceivedEventDataAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGVariableInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGRVariableInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGRModeInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGOperationInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGPOperationInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

