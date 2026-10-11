/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.system.swmapping.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.swmapping.AggregatedStackUsage;
import autosar21.system.swmapping.BSWResourceEstimation;
import autosar21.system.swmapping.ComponentCluster;
import autosar21.system.swmapping.ComponentSeparation;
import autosar21.system.swmapping.EcuResourceEstimation;
import autosar21.system.swmapping.FreeTextMappingConstraint;
import autosar21.system.swmapping.MappingConstraint;
import autosar21.system.swmapping.RTERessourceEstimation;
import autosar21.system.swmapping.ResourceEstimationDetails;
import autosar21.system.swmapping.SwCompToEcuMapping;
import autosar21.system.swmapping.SwCompToImplMapping;
import autosar21.system.swmapping.SwmappingPackage;
import autosar21.system.swmapping.util.SwmappingSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SwmappingAdapterFactory
extends AdapterFactoryImpl {
    protected static SwmappingPackage modelPackage;
    protected SwmappingSwitch<Adapter> modelSwitch = new SwmappingSwitch<Adapter>(){

        @Override
        public Adapter caseAggregatedStackUsage(AggregatedStackUsage object) {
            return SwmappingAdapterFactory.this.createAggregatedStackUsageAdapter();
        }

        @Override
        public Adapter caseBSWResourceEstimation(BSWResourceEstimation object) {
            return SwmappingAdapterFactory.this.createBSWResourceEstimationAdapter();
        }

        @Override
        public Adapter caseResourceEstimationDetails(ResourceEstimationDetails object) {
            return SwmappingAdapterFactory.this.createResourceEstimationDetailsAdapter();
        }

        @Override
        public Adapter caseComponentCluster(ComponentCluster object) {
            return SwmappingAdapterFactory.this.createComponentClusterAdapter();
        }

        @Override
        public Adapter caseMappingConstraint(MappingConstraint object) {
            return SwmappingAdapterFactory.this.createMappingConstraintAdapter();
        }

        @Override
        public Adapter caseComponentSeparation(ComponentSeparation object) {
            return SwmappingAdapterFactory.this.createComponentSeparationAdapter();
        }

        @Override
        public Adapter caseEcuResourceEstimation(EcuResourceEstimation object) {
            return SwmappingAdapterFactory.this.createEcuResourceEstimationAdapter();
        }

        @Override
        public Adapter caseRTERessourceEstimation(RTERessourceEstimation object) {
            return SwmappingAdapterFactory.this.createRTERessourceEstimationAdapter();
        }

        @Override
        public Adapter caseFreeTextMappingConstraint(FreeTextMappingConstraint object) {
            return SwmappingAdapterFactory.this.createFreeTextMappingConstraintAdapter();
        }

        @Override
        public Adapter caseSwCompToImplMapping(SwCompToImplMapping object) {
            return SwmappingAdapterFactory.this.createSwCompToImplMappingAdapter();
        }

        @Override
        public Adapter caseSwCompToEcuMapping(SwCompToEcuMapping object) {
            return SwmappingAdapterFactory.this.createSwCompToEcuMappingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SwmappingAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SwmappingAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return SwmappingAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return SwmappingAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return SwmappingAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SwmappingAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SwmappingAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SwmappingPackage.eINSTANCE;
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

    public Adapter createAggregatedStackUsageAdapter() {
        return null;
    }

    public Adapter createBSWResourceEstimationAdapter() {
        return null;
    }

    public Adapter createResourceEstimationDetailsAdapter() {
        return null;
    }

    public Adapter createComponentClusterAdapter() {
        return null;
    }

    public Adapter createMappingConstraintAdapter() {
        return null;
    }

    public Adapter createComponentSeparationAdapter() {
        return null;
    }

    public Adapter createEcuResourceEstimationAdapter() {
        return null;
    }

    public Adapter createRTERessourceEstimationAdapter() {
        return null;
    }

    public Adapter createFreeTextMappingConstraintAdapter() {
        return null;
    }

    public Adapter createSwCompToImplMappingAdapter() {
        return null;
    }

    public Adapter createSwCompToEcuMappingAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

