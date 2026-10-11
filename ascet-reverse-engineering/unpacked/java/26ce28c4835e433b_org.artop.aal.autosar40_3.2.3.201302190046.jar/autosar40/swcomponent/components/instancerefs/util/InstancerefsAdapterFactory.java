/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.components.instancerefs.util;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.components.instancerefs.InnerPortGroupInCompositionInstanceRef;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.ModeGroupInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.OperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.PModeGroupInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.POperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.PTriggerInAtomicSwcTypeInstanceRef;
import autosar40.swcomponent.components.instancerefs.PVariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RModeGroupInAtomicSWCInstanceRef;
import autosar40.swcomponent.components.instancerefs.RModeInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.ROperationInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RTriggerInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.RVariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.TriggerInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.VariableInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.util.InstancerefsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstancerefsAdapterFactory
extends AdapterFactoryImpl {
    protected static InstancerefsPackage modelPackage;
    protected InstancerefsSwitch<Adapter> modelSwitch = new InstancerefsSwitch<Adapter>(){

        @Override
        public Adapter caseModeGroupInAtomicSwcInstanceRef(ModeGroupInAtomicSwcInstanceRef object) {
            return InstancerefsAdapterFactory.this.createModeGroupInAtomicSwcInstanceRefAdapter();
        }

        @Override
        public Adapter caseOperationInAtomicSwcInstanceRef(OperationInAtomicSwcInstanceRef object) {
            return InstancerefsAdapterFactory.this.createOperationInAtomicSwcInstanceRefAdapter();
        }

        @Override
        public Adapter casePModeGroupInAtomicSwcInstanceRef(PModeGroupInAtomicSwcInstanceRef object) {
            return InstancerefsAdapterFactory.this.createPModeGroupInAtomicSwcInstanceRefAdapter();
        }

        @Override
        public Adapter casePOperationInAtomicSwcInstanceRef(POperationInAtomicSwcInstanceRef object) {
            return InstancerefsAdapterFactory.this.createPOperationInAtomicSwcInstanceRefAdapter();
        }

        @Override
        public Adapter casePTriggerInAtomicSwcTypeInstanceRef(PTriggerInAtomicSwcTypeInstanceRef object) {
            return InstancerefsAdapterFactory.this.createPTriggerInAtomicSwcTypeInstanceRefAdapter();
        }

        @Override
        public Adapter caseTriggerInAtomicSwcInstanceRef(TriggerInAtomicSwcInstanceRef object) {
            return InstancerefsAdapterFactory.this.createTriggerInAtomicSwcInstanceRefAdapter();
        }

        @Override
        public Adapter casePVariableInAtomicSwcInstanceRef(PVariableInAtomicSwcInstanceRef object) {
            return InstancerefsAdapterFactory.this.createPVariableInAtomicSwcInstanceRefAdapter();
        }

        @Override
        public Adapter caseVariableInAtomicSwcInstanceRef(VariableInAtomicSwcInstanceRef object) {
            return InstancerefsAdapterFactory.this.createVariableInAtomicSwcInstanceRefAdapter();
        }

        @Override
        public Adapter caseRModeGroupInAtomicSWCInstanceRef(RModeGroupInAtomicSWCInstanceRef object) {
            return InstancerefsAdapterFactory.this.createRModeGroupInAtomicSWCInstanceRefAdapter();
        }

        @Override
        public Adapter caseRModeInAtomicSwcInstanceRef(RModeInAtomicSwcInstanceRef object) {
            return InstancerefsAdapterFactory.this.createRModeInAtomicSwcInstanceRefAdapter();
        }

        @Override
        public Adapter caseROperationInAtomicSwcInstanceRef(ROperationInAtomicSwcInstanceRef object) {
            return InstancerefsAdapterFactory.this.createROperationInAtomicSwcInstanceRefAdapter();
        }

        @Override
        public Adapter caseRTriggerInAtomicSwcInstanceRef(RTriggerInAtomicSwcInstanceRef object) {
            return InstancerefsAdapterFactory.this.createRTriggerInAtomicSwcInstanceRefAdapter();
        }

        @Override
        public Adapter caseRVariableInAtomicSwcInstanceRef(RVariableInAtomicSwcInstanceRef object) {
            return InstancerefsAdapterFactory.this.createRVariableInAtomicSwcInstanceRefAdapter();
        }

        @Override
        public Adapter caseInnerPortGroupInCompositionInstanceRef(InnerPortGroupInCompositionInstanceRef object) {
            return InstancerefsAdapterFactory.this.createInnerPortGroupInCompositionInstanceRefAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InstancerefsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InstancerefsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseAtpInstanceRef(AtpInstanceRef object) {
            return InstancerefsAdapterFactory.this.createAtpInstanceRefAdapter();
        }

        @Override
        public Adapter caseGModeGroupInAtomicSwcIRef(GModeGroupInAtomicSwcIRef object) {
            return InstancerefsAdapterFactory.this.createGModeGroupInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGOperationInAtomicSwcIRef(GOperationInAtomicSwcIRef object) {
            return InstancerefsAdapterFactory.this.createGOperationInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGPModeGroupInAtomicSwcIRef(GPModeGroupInAtomicSwcIRef object) {
            return InstancerefsAdapterFactory.this.createGPModeGroupInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGPOperationInAtomicSwcIRef(GPOperationInAtomicSwcIRef object) {
            return InstancerefsAdapterFactory.this.createGPOperationInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGVariableInAtomicSwcIRef(GVariableInAtomicSwcIRef object) {
            return InstancerefsAdapterFactory.this.createGVariableInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGPVariableInAtomicSwcIRef(GPVariableInAtomicSwcIRef object) {
            return InstancerefsAdapterFactory.this.createGPVariableInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGRModeGroupInAtomicSwcIRef(GRModeGroupInAtomicSwcIRef object) {
            return InstancerefsAdapterFactory.this.createGRModeGroupInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGRModeInAtomicSwcIRef(GRModeInAtomicSwcIRef object) {
            return InstancerefsAdapterFactory.this.createGRModeInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGROperationInAtomicSwcIRef(GROperationInAtomicSwcIRef object) {
            return InstancerefsAdapterFactory.this.createGROperationInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter caseGRVariableInAtomicSwcIRef(GRVariableInAtomicSwcIRef object) {
            return InstancerefsAdapterFactory.this.createGRVariableInAtomicSwcIRefAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InstancerefsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InstancerefsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InstancerefsPackage.eINSTANCE;
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

    public Adapter createModeGroupInAtomicSwcInstanceRefAdapter() {
        return null;
    }

    public Adapter createOperationInAtomicSwcInstanceRefAdapter() {
        return null;
    }

    public Adapter createPModeGroupInAtomicSwcInstanceRefAdapter() {
        return null;
    }

    public Adapter createPOperationInAtomicSwcInstanceRefAdapter() {
        return null;
    }

    public Adapter createPTriggerInAtomicSwcTypeInstanceRefAdapter() {
        return null;
    }

    public Adapter createTriggerInAtomicSwcInstanceRefAdapter() {
        return null;
    }

    public Adapter createPVariableInAtomicSwcInstanceRefAdapter() {
        return null;
    }

    public Adapter createVariableInAtomicSwcInstanceRefAdapter() {
        return null;
    }

    public Adapter createRModeGroupInAtomicSWCInstanceRefAdapter() {
        return null;
    }

    public Adapter createRModeInAtomicSwcInstanceRefAdapter() {
        return null;
    }

    public Adapter createROperationInAtomicSwcInstanceRefAdapter() {
        return null;
    }

    public Adapter createRTriggerInAtomicSwcInstanceRefAdapter() {
        return null;
    }

    public Adapter createRVariableInAtomicSwcInstanceRefAdapter() {
        return null;
    }

    public Adapter createInnerPortGroupInCompositionInstanceRefAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createAtpInstanceRefAdapter() {
        return null;
    }

    public Adapter createGModeGroupInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGOperationInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGPModeGroupInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGPOperationInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGVariableInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGPVariableInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGRModeGroupInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGRModeInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGROperationInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createGRVariableInAtomicSwcIRefAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

