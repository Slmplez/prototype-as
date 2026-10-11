/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gcomposition.ginstancerefs.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeProviderIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeRequesterIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage;
import gautosar.gswcomponents.gcomposition.ginstancerefs.util.GinstancerefsSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GinstancerefsAdapterFactory
extends AdapterFactoryImpl {
    protected static GinstancerefsPackage modelPackage;
    protected GinstancerefsSwitch<Adapter> modelSwitch = new GinstancerefsSwitch<Adapter>(){

        @Override
        public Adapter caseGPPortInCompositionIRef(GPPortInCompositionIRef object) {
            return GinstancerefsAdapterFactory.this.createGPPortInCompositionIRefAdapter();
        }

        @Override
        public Adapter caseGRPortInCompositionIRef(GRPortInCompositionIRef object) {
            return GinstancerefsAdapterFactory.this.createGRPortInCompositionIRefAdapter();
        }

        @Override
        public Adapter caseGAssemblyConnectorPrototypeRequesterIRef(GAssemblyConnectorPrototypeRequesterIRef object) {
            return GinstancerefsAdapterFactory.this.createGAssemblyConnectorPrototypeRequesterIRefAdapter();
        }

        @Override
        public Adapter caseGAssemblyConnectorPrototypeProviderIRef(GAssemblyConnectorPrototypeProviderIRef object) {
            return GinstancerefsAdapterFactory.this.createGAssemblyConnectorPrototypeProviderIRefAdapter();
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

    public Adapter createGPPortInCompositionIRefAdapter() {
        return null;
    }

    public Adapter createGRPortInCompositionIRefAdapter() {
        return null;
    }

    public Adapter createGAssemblyConnectorPrototypeRequesterIRefAdapter() {
        return null;
    }

    public Adapter createGAssemblyConnectorPrototypeProviderIRefAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

