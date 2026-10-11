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
package autosar3x.system.fibex.fibex4can.cantopology.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import autosar3x.system.fibex.fibex4can.cantopology.CanCluster;
import autosar3x.system.fibex.fibex4can.cantopology.CanCommunicationConnector;
import autosar3x.system.fibex.fibex4can.cantopology.CanCommunicationController;
import autosar3x.system.fibex.fibex4can.cantopology.CanControllerConfiguration;
import autosar3x.system.fibex.fibex4can.cantopology.CanControllerConfigurationRequirements;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibex4can.cantopology.util.CantopologySwitch;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class CantopologyAdapterFactory
extends AdapterFactoryImpl {
    protected static CantopologyPackage modelPackage;
    protected CantopologySwitch<Adapter> modelSwitch = new CantopologySwitch<Adapter>(){

        @Override
        public Adapter caseAbstractCanCommunicationControllerAttributes(AbstractCanCommunicationControllerAttributes object) {
            return CantopologyAdapterFactory.this.createAbstractCanCommunicationControllerAttributesAdapter();
        }

        @Override
        public Adapter caseCanCluster(CanCluster object) {
            return CantopologyAdapterFactory.this.createCanClusterAdapter();
        }

        @Override
        public Adapter caseCanCommunicationConnector(CanCommunicationConnector object) {
            return CantopologyAdapterFactory.this.createCanCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseCanCommunicationController(CanCommunicationController object) {
            return CantopologyAdapterFactory.this.createCanCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseCanControllerConfiguration(CanControllerConfiguration object) {
            return CantopologyAdapterFactory.this.createCanControllerConfigurationAdapter();
        }

        @Override
        public Adapter caseCanControllerConfigurationRequirements(CanControllerConfigurationRequirements object) {
            return CantopologyAdapterFactory.this.createCanControllerConfigurationRequirementsAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return CantopologyAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CantopologyAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return CantopologyAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return CantopologyAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return CantopologyAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return CantopologyAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return CantopologyAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return CantopologyAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter caseCommunicationCluster(CommunicationCluster object) {
            return CantopologyAdapterFactory.this.createCommunicationClusterAdapter();
        }

        @Override
        public Adapter caseCommunicationConnector(CommunicationConnector object) {
            return CantopologyAdapterFactory.this.createCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseCommunicationController(CommunicationController object) {
            return CantopologyAdapterFactory.this.createCommunicationControllerAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return CantopologyAdapterFactory.this.createEObjectAdapter();
        }
    };

    public CantopologyAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = CantopologyPackage.eINSTANCE;
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

    public Adapter createAbstractCanCommunicationControllerAttributesAdapter() {
        return null;
    }

    public Adapter createCanClusterAdapter() {
        return null;
    }

    public Adapter createCanCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createCanCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createCanControllerConfigurationAdapter() {
        return null;
    }

    public Adapter createCanControllerConfigurationRequirementsAdapter() {
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

    public Adapter createFibexElementAdapter() {
        return null;
    }

    public Adapter createCommunicationClusterAdapter() {
        return null;
    }

    public Adapter createCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

