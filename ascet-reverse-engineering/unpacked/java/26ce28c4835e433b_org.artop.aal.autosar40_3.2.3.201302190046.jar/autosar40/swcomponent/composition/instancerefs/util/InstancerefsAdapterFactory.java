/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.composition.instancerefs.util;

import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.composition.instancerefs.ComponentInCompositionInstanceRef;
import autosar40.swcomponent.composition.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.composition.instancerefs.PPortInCompositionInstanceRef;
import autosar40.swcomponent.composition.instancerefs.PortInCompositionTypeInstanceRef;
import autosar40.swcomponent.composition.instancerefs.RPortInCompositionInstanceRef;
import autosar40.swcomponent.composition.instancerefs.util.InstancerefsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstancerefsAdapterFactory
extends AdapterFactoryImpl {
    protected static InstancerefsPackage modelPackage;
    protected InstancerefsSwitch<Adapter> modelSwitch = new InstancerefsSwitch<Adapter>(){

        @Override
        public Adapter caseComponentInCompositionInstanceRef(ComponentInCompositionInstanceRef object) {
            return InstancerefsAdapterFactory.this.createComponentInCompositionInstanceRefAdapter();
        }

        @Override
        public Adapter casePortInCompositionTypeInstanceRef(PortInCompositionTypeInstanceRef object) {
            return InstancerefsAdapterFactory.this.createPortInCompositionTypeInstanceRefAdapter();
        }

        @Override
        public Adapter caseRPortInCompositionInstanceRef(RPortInCompositionInstanceRef object) {
            return InstancerefsAdapterFactory.this.createRPortInCompositionInstanceRefAdapter();
        }

        @Override
        public Adapter casePPortInCompositionInstanceRef(PPortInCompositionInstanceRef object) {
            return InstancerefsAdapterFactory.this.createPPortInCompositionInstanceRefAdapter();
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
        public Adapter caseGRPortInCompositionIRef(GRPortInCompositionIRef object) {
            return InstancerefsAdapterFactory.this.createGRPortInCompositionIRefAdapter();
        }

        @Override
        public Adapter caseGPPortInCompositionIRef(GPPortInCompositionIRef object) {
            return InstancerefsAdapterFactory.this.createGPPortInCompositionIRefAdapter();
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

    public Adapter createComponentInCompositionInstanceRefAdapter() {
        return null;
    }

    public Adapter createPortInCompositionTypeInstanceRefAdapter() {
        return null;
    }

    public Adapter createRPortInCompositionInstanceRefAdapter() {
        return null;
    }

    public Adapter createPPortInCompositionInstanceRefAdapter() {
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

    public Adapter createGRPortInCompositionIRefAdapter() {
        return null;
    }

    public Adapter createGPPortInCompositionIRefAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

