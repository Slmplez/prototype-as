/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeProviderIRef
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeRequesterIRef
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.composition.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.composition.instanceref.AssemblyConnectorPrototypeProvider;
import autosar21.swcomponent.composition.instanceref.AssemblyConnectorPrototypeRequester;
import autosar21.swcomponent.composition.instanceref.DelegationConnectorPrototypeInnerPort;
import autosar21.swcomponent.composition.instanceref.InstancerefPackage;
import autosar21.swcomponent.composition.instanceref.ServiceConnectorPrototypeApplicationPort;
import autosar21.swcomponent.composition.instanceref.ServiceConnectorPrototypeServicePort;
import autosar21.swcomponent.composition.instanceref.util.InstancerefSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeProviderIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeRequesterIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstancerefAdapterFactory
extends AdapterFactoryImpl {
    protected static InstancerefPackage modelPackage;
    protected InstancerefSwitch<Adapter> modelSwitch = new InstancerefSwitch<Adapter>(){

        @Override
        public Adapter caseAssemblyConnectorPrototypeProvider(AssemblyConnectorPrototypeProvider object) {
            return InstancerefAdapterFactory.this.createAssemblyConnectorPrototypeProviderAdapter();
        }

        @Override
        public Adapter caseAssemblyConnectorPrototypeRequester(AssemblyConnectorPrototypeRequester object) {
            return InstancerefAdapterFactory.this.createAssemblyConnectorPrototypeRequesterAdapter();
        }

        @Override
        public Adapter caseDelegationConnectorPrototypeInnerPort(DelegationConnectorPrototypeInnerPort object) {
            return InstancerefAdapterFactory.this.createDelegationConnectorPrototypeInnerPortAdapter();
        }

        @Override
        public Adapter caseServiceConnectorPrototypeApplicationPort(ServiceConnectorPrototypeApplicationPort object) {
            return InstancerefAdapterFactory.this.createServiceConnectorPrototypeApplicationPortAdapter();
        }

        @Override
        public Adapter caseServiceConnectorPrototypeServicePort(ServiceConnectorPrototypeServicePort object) {
            return InstancerefAdapterFactory.this.createServiceConnectorPrototypeServicePortAdapter();
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
        public Adapter caseGPPortInCompositionIRef(GPPortInCompositionIRef object) {
            return InstancerefAdapterFactory.this.createGPPortInCompositionIRefAdapter();
        }

        @Override
        public Adapter caseGAssemblyConnectorPrototypeProviderIRef(GAssemblyConnectorPrototypeProviderIRef object) {
            return InstancerefAdapterFactory.this.createGAssemblyConnectorPrototypeProviderIRefAdapter();
        }

        @Override
        public Adapter caseGRPortInCompositionIRef(GRPortInCompositionIRef object) {
            return InstancerefAdapterFactory.this.createGRPortInCompositionIRefAdapter();
        }

        @Override
        public Adapter caseGAssemblyConnectorPrototypeRequesterIRef(GAssemblyConnectorPrototypeRequesterIRef object) {
            return InstancerefAdapterFactory.this.createGAssemblyConnectorPrototypeRequesterIRefAdapter();
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

    public Adapter createAssemblyConnectorPrototypeProviderAdapter() {
        return null;
    }

    public Adapter createAssemblyConnectorPrototypeRequesterAdapter() {
        return null;
    }

    public Adapter createDelegationConnectorPrototypeInnerPortAdapter() {
        return null;
    }

    public Adapter createServiceConnectorPrototypeApplicationPortAdapter() {
        return null;
    }

    public Adapter createServiceConnectorPrototypeServicePortAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGPPortInCompositionIRefAdapter() {
        return null;
    }

    public Adapter createGAssemblyConnectorPrototypeProviderIRefAdapter() {
        return null;
    }

    public Adapter createGRPortInCompositionIRefAdapter() {
        return null;
    }

    public Adapter createGAssemblyConnectorPrototypeRequesterIRefAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

