/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.swmapping.instanceref.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.swmapping.instanceref.ComponentClusteringClusteredComponent;
import autosar3x.system.swmapping.instanceref.ComponentSeparationSeparatedComponent;
import autosar3x.system.swmapping.instanceref.InstancerefPackage;
import autosar3x.system.swmapping.instanceref.PncMappingVfc;
import autosar3x.system.swmapping.instanceref.SwCompToEcuMappingComponent;
import autosar3x.system.swmapping.instanceref.SwCompToImplMappingComponent;
import autosar3x.system.swmapping.instanceref.SwcToEcuMappingConstraintComponent;
import autosar3x.system.swmapping.instanceref.util.InstancerefSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InstancerefAdapterFactory
extends AdapterFactoryImpl {
    protected static InstancerefPackage modelPackage;
    protected InstancerefSwitch<Adapter> modelSwitch = new InstancerefSwitch<Adapter>(){

        @Override
        public Adapter caseComponentSeparationSeparatedComponent(ComponentSeparationSeparatedComponent object) {
            return InstancerefAdapterFactory.this.createComponentSeparationSeparatedComponentAdapter();
        }

        @Override
        public Adapter casePncMappingVfc(PncMappingVfc object) {
            return InstancerefAdapterFactory.this.createPncMappingVfcAdapter();
        }

        @Override
        public Adapter caseSwCompToEcuMappingComponent(SwCompToEcuMappingComponent object) {
            return InstancerefAdapterFactory.this.createSwCompToEcuMappingComponentAdapter();
        }

        @Override
        public Adapter caseSwCompToImplMappingComponent(SwCompToImplMappingComponent object) {
            return InstancerefAdapterFactory.this.createSwCompToImplMappingComponentAdapter();
        }

        @Override
        public Adapter caseSwcToEcuMappingConstraintComponent(SwcToEcuMappingConstraintComponent object) {
            return InstancerefAdapterFactory.this.createSwcToEcuMappingConstraintComponentAdapter();
        }

        @Override
        public Adapter caseComponentClusteringClusteredComponent(ComponentClusteringClusteredComponent object) {
            return InstancerefAdapterFactory.this.createComponentClusteringClusteredComponentAdapter();
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

    public Adapter createComponentSeparationSeparatedComponentAdapter() {
        return null;
    }

    public Adapter createPncMappingVfcAdapter() {
        return null;
    }

    public Adapter createSwCompToEcuMappingComponentAdapter() {
        return null;
    }

    public Adapter createSwCompToImplMappingComponentAdapter() {
        return null;
    }

    public Adapter createSwcToEcuMappingConstraintComponentAdapter() {
        return null;
    }

    public Adapter createComponentClusteringClusteredComponentAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

