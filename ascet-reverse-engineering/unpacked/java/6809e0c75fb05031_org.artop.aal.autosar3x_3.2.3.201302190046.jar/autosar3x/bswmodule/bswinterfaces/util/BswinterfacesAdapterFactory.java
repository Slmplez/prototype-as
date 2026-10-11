/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.bswmodule.bswinterfaces.util;

import autosar3x.bswmodule.bswinterfaces.BswModuleDependency;
import autosar3x.bswmodule.bswinterfaces.BswModuleEntry;
import autosar3x.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar3x.bswmodule.bswinterfaces.util.BswinterfacesSwitch;
import autosar3x.commonstructure.serviceprocesstask.SwService;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class BswinterfacesAdapterFactory
extends AdapterFactoryImpl {
    protected static BswinterfacesPackage modelPackage;
    protected BswinterfacesSwitch<Adapter> modelSwitch = new BswinterfacesSwitch<Adapter>(){

        @Override
        public Adapter caseBswModuleDependency(BswModuleDependency object) {
            return BswinterfacesAdapterFactory.this.createBswModuleDependencyAdapter();
        }

        @Override
        public Adapter caseBswModuleEntry(BswModuleEntry object) {
            return BswinterfacesAdapterFactory.this.createBswModuleEntryAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return BswinterfacesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return BswinterfacesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return BswinterfacesAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return BswinterfacesAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return BswinterfacesAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return BswinterfacesAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return BswinterfacesAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return BswinterfacesAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseSwService(SwService object) {
            return BswinterfacesAdapterFactory.this.createSwServiceAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return BswinterfacesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public BswinterfacesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = BswinterfacesPackage.eINSTANCE;
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

    public Adapter createBswModuleDependencyAdapter() {
        return null;
    }

    public Adapter createBswModuleEntryAdapter() {
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

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createSwServiceAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

