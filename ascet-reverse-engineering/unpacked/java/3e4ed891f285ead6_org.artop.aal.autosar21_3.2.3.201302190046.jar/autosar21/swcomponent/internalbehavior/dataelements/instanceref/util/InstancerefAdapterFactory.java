/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.internalbehavior.dataelements.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataReadAccessDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataReceivePointDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataSendPointDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.DataWriteAccessDataElement;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.InstancerefPackage;
import autosar21.swcomponent.internalbehavior.dataelements.instanceref.util.InstancerefSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;
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
        public Adapter caseDataReadAccessDataElement(DataReadAccessDataElement object) {
            return InstancerefAdapterFactory.this.createDataReadAccessDataElementAdapter();
        }

        @Override
        public Adapter caseDataReceivePointDataElement(DataReceivePointDataElement object) {
            return InstancerefAdapterFactory.this.createDataReceivePointDataElementAdapter();
        }

        @Override
        public Adapter caseDataSendPointDataElement(DataSendPointDataElement object) {
            return InstancerefAdapterFactory.this.createDataSendPointDataElementAdapter();
        }

        @Override
        public Adapter caseDataWriteAccessDataElement(DataWriteAccessDataElement object) {
            return InstancerefAdapterFactory.this.createDataWriteAccessDataElementAdapter();
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
        public Adapter caseGPVariableInAtomicSwcIRef(GPVariableInAtomicSwcIRef object) {
            return InstancerefAdapterFactory.this.createGPVariableInAtomicSwcIRefAdapter();
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

    public Adapter createDataReadAccessDataElementAdapter() {
        return null;
    }

    public Adapter createDataReceivePointDataElementAdapter() {
        return null;
    }

    public Adapter createDataSendPointDataElementAdapter() {
        return null;
    }

    public Adapter createDataWriteAccessDataElementAdapter() {
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

    public Adapter createGPVariableInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

