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
package autosar3x.commonstructure.serviceprocesstask.util;

import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar3x.commonstructure.serviceprocesstask.SwService;
import autosar3x.commonstructure.serviceprocesstask.SwServiceAccessedElementSet;
import autosar3x.commonstructure.serviceprocesstask.SwServiceArg;
import autosar3x.commonstructure.serviceprocesstask.SwServiceImpl;
import autosar3x.commonstructure.serviceprocesstask.SwServiceProps;
import autosar3x.commonstructure.serviceprocesstask.util.ServiceprocesstaskSwitch;
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

public class ServiceprocesstaskAdapterFactory
extends AdapterFactoryImpl {
    protected static ServiceprocesstaskPackage modelPackage;
    protected ServiceprocesstaskSwitch<Adapter> modelSwitch = new ServiceprocesstaskSwitch<Adapter>(){

        @Override
        public Adapter caseSwService(SwService object) {
            return ServiceprocesstaskAdapterFactory.this.createSwServiceAdapter();
        }

        @Override
        public Adapter caseSwServiceArg(SwServiceArg object) {
            return ServiceprocesstaskAdapterFactory.this.createSwServiceArgAdapter();
        }

        @Override
        public Adapter caseSwServiceProps(SwServiceProps object) {
            return ServiceprocesstaskAdapterFactory.this.createSwServicePropsAdapter();
        }

        @Override
        public Adapter caseSwServiceAccessedElementSet(SwServiceAccessedElementSet object) {
            return ServiceprocesstaskAdapterFactory.this.createSwServiceAccessedElementSetAdapter();
        }

        @Override
        public Adapter caseSwServiceImpl(SwServiceImpl object) {
            return ServiceprocesstaskAdapterFactory.this.createSwServiceImplAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ServiceprocesstaskAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ServiceprocesstaskAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ServiceprocesstaskAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ServiceprocesstaskAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ServiceprocesstaskAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return ServiceprocesstaskAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return ServiceprocesstaskAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return ServiceprocesstaskAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ServiceprocesstaskAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ServiceprocesstaskAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ServiceprocesstaskPackage.eINSTANCE;
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

    public Adapter createSwServiceAdapter() {
        return null;
    }

    public Adapter createSwServiceArgAdapter() {
        return null;
    }

    public Adapter createSwServicePropsAdapter() {
        return null;
    }

    public Adapter createSwServiceAccessedElementSetAdapter() {
        return null;
    }

    public Adapter createSwServiceImplAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

