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
package autosar3x.system.swmapping.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.swmapping.ComponentClustering;
import autosar3x.system.swmapping.ComponentSeparation;
import autosar3x.system.swmapping.EcuResourceEstimation;
import autosar3x.system.swmapping.MappingConstraint;
import autosar3x.system.swmapping.PncMapping;
import autosar3x.system.swmapping.SwcToEcuMapping;
import autosar3x.system.swmapping.SwcToEcuMappingConstraint;
import autosar3x.system.swmapping.SwcToImplMapping;
import autosar3x.system.swmapping.SwmappingPackage;
import autosar3x.system.swmapping.util.SwmappingSwitch;
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
        public Adapter caseComponentClustering(ComponentClustering object) {
            return SwmappingAdapterFactory.this.createComponentClusteringAdapter();
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
        public Adapter caseSwcToEcuMapping(SwcToEcuMapping object) {
            return SwmappingAdapterFactory.this.createSwcToEcuMappingAdapter();
        }

        @Override
        public Adapter casePncMapping(PncMapping object) {
            return SwmappingAdapterFactory.this.createPncMappingAdapter();
        }

        @Override
        public Adapter caseSwcToEcuMappingConstraint(SwcToEcuMappingConstraint object) {
            return SwmappingAdapterFactory.this.createSwcToEcuMappingConstraintAdapter();
        }

        @Override
        public Adapter caseSwcToImplMapping(SwcToImplMapping object) {
            return SwmappingAdapterFactory.this.createSwcToImplMappingAdapter();
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

    public Adapter createComponentClusteringAdapter() {
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

    public Adapter createSwcToEcuMappingAdapter() {
        return null;
    }

    public Adapter createPncMappingAdapter() {
        return null;
    }

    public Adapter createSwcToEcuMappingConstraintAdapter() {
        return null;
    }

    public Adapter createSwcToImplMappingAdapter() {
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

