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
package autosar40.system.swmapping.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.swmapping.ComponentClustering;
import autosar40.system.swmapping.ComponentSeparation;
import autosar40.system.swmapping.EcuPartition;
import autosar40.system.swmapping.EcuResourceEstimation;
import autosar40.system.swmapping.MappingConstraint;
import autosar40.system.swmapping.SwcToEcuMapping;
import autosar40.system.swmapping.SwcToEcuMappingConstraint;
import autosar40.system.swmapping.SwcToImplMapping;
import autosar40.system.swmapping.SwmappingPackage;
import autosar40.system.swmapping.util.SwmappingSwitch;
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
        public Adapter caseEcuPartition(EcuPartition object) {
            return SwmappingAdapterFactory.this.createEcuPartitionAdapter();
        }

        @Override
        public Adapter caseSwcToEcuMapping(SwcToEcuMapping object) {
            return SwmappingAdapterFactory.this.createSwcToEcuMappingAdapter();
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
        public Adapter caseEcuResourceEstimation(EcuResourceEstimation object) {
            return SwmappingAdapterFactory.this.createEcuResourceEstimationAdapter();
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
        public Adapter caseReferrable(Referrable object) {
            return SwmappingAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return SwmappingAdapterFactory.this.createMultilanguageReferrableAdapter();
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

    public Adapter createEcuPartitionAdapter() {
        return null;
    }

    public Adapter createSwcToEcuMappingAdapter() {
        return null;
    }

    public Adapter createSwcToEcuMappingConstraintAdapter() {
        return null;
    }

    public Adapter createSwcToImplMappingAdapter() {
        return null;
    }

    public Adapter createEcuResourceEstimationAdapter() {
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

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
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

