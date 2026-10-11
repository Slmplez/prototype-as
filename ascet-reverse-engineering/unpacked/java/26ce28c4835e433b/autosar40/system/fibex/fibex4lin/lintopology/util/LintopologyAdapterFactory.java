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
package autosar40.system.fibex.fibex4lin.lintopology.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4lin.lintopology.LinCluster;
import autosar40.system.fibex.fibex4lin.lintopology.LinClusterConditional;
import autosar40.system.fibex.fibex4lin.lintopology.LinClusterContent;
import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationConnector;
import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationController;
import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationControllerContent;
import autosar40.system.fibex.fibex4lin.lintopology.LinConfigurableFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LinMaster;
import autosar40.system.fibex.fibex4lin.lintopology.LinMasterConditional;
import autosar40.system.fibex.fibex4lin.lintopology.LinMasterContent;
import autosar40.system.fibex.fibex4lin.lintopology.LinOrderedConfigurableFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LinPhysicalChannel;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlave;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlaveConditional;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlaveContent;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibex4lin.lintopology.util.LintopologySwitch;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationClusterContent;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationControllerContent;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class LintopologyAdapterFactory
extends AdapterFactoryImpl {
    protected static LintopologyPackage modelPackage;
    protected LintopologySwitch<Adapter> modelSwitch = new LintopologySwitch<Adapter>(){

        @Override
        public Adapter caseLinCluster(LinCluster object) {
            return LintopologyAdapterFactory.this.createLinClusterAdapter();
        }

        @Override
        public Adapter caseLinClusterConditional(LinClusterConditional object) {
            return LintopologyAdapterFactory.this.createLinClusterConditionalAdapter();
        }

        @Override
        public Adapter caseLinClusterContent(LinClusterContent object) {
            return LintopologyAdapterFactory.this.createLinClusterContentAdapter();
        }

        @Override
        public Adapter caseLinCommunicationConnector(LinCommunicationConnector object) {
            return LintopologyAdapterFactory.this.createLinCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseLinOrderedConfigurableFrame(LinOrderedConfigurableFrame object) {
            return LintopologyAdapterFactory.this.createLinOrderedConfigurableFrameAdapter();
        }

        @Override
        public Adapter caseLinConfigurableFrame(LinConfigurableFrame object) {
            return LintopologyAdapterFactory.this.createLinConfigurableFrameAdapter();
        }

        @Override
        public Adapter caseLinCommunicationController(LinCommunicationController object) {
            return LintopologyAdapterFactory.this.createLinCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseLinMaster(LinMaster object) {
            return LintopologyAdapterFactory.this.createLinMasterAdapter();
        }

        @Override
        public Adapter caseLinMasterConditional(LinMasterConditional object) {
            return LintopologyAdapterFactory.this.createLinMasterConditionalAdapter();
        }

        @Override
        public Adapter caseLinMasterContent(LinMasterContent object) {
            return LintopologyAdapterFactory.this.createLinMasterContentAdapter();
        }

        @Override
        public Adapter caseLinCommunicationControllerContent(LinCommunicationControllerContent object) {
            return LintopologyAdapterFactory.this.createLinCommunicationControllerContentAdapter();
        }

        @Override
        public Adapter caseLinPhysicalChannel(LinPhysicalChannel object) {
            return LintopologyAdapterFactory.this.createLinPhysicalChannelAdapter();
        }

        @Override
        public Adapter caseLinSlaveContent(LinSlaveContent object) {
            return LintopologyAdapterFactory.this.createLinSlaveContentAdapter();
        }

        @Override
        public Adapter caseLinSlaveConditional(LinSlaveConditional object) {
            return LintopologyAdapterFactory.this.createLinSlaveConditionalAdapter();
        }

        @Override
        public Adapter caseLinSlave(LinSlave object) {
            return LintopologyAdapterFactory.this.createLinSlaveAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return LintopologyAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return LintopologyAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return LintopologyAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return LintopologyAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return LintopologyAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return LintopologyAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return LintopologyAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return LintopologyAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return LintopologyAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return LintopologyAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseFibexElement(FibexElement object) {
            return LintopologyAdapterFactory.this.createFibexElementAdapter();
        }

        @Override
        public Adapter caseCommunicationCluster(CommunicationCluster object) {
            return LintopologyAdapterFactory.this.createCommunicationClusterAdapter();
        }

        @Override
        public Adapter caseCommunicationClusterContent(CommunicationClusterContent object) {
            return LintopologyAdapterFactory.this.createCommunicationClusterContentAdapter();
        }

        @Override
        public Adapter caseCommunicationConnector(CommunicationConnector object) {
            return LintopologyAdapterFactory.this.createCommunicationConnectorAdapter();
        }

        @Override
        public Adapter caseCommunicationController(CommunicationController object) {
            return LintopologyAdapterFactory.this.createCommunicationControllerAdapter();
        }

        @Override
        public Adapter caseCommunicationControllerContent(CommunicationControllerContent object) {
            return LintopologyAdapterFactory.this.createCommunicationControllerContentAdapter();
        }

        @Override
        public Adapter casePhysicalChannel(PhysicalChannel object) {
            return LintopologyAdapterFactory.this.createPhysicalChannelAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return LintopologyAdapterFactory.this.createEObjectAdapter();
        }
    };

    public LintopologyAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = LintopologyPackage.eINSTANCE;
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

    public Adapter createLinClusterAdapter() {
        return null;
    }

    public Adapter createLinClusterConditionalAdapter() {
        return null;
    }

    public Adapter createLinClusterContentAdapter() {
        return null;
    }

    public Adapter createLinCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createLinOrderedConfigurableFrameAdapter() {
        return null;
    }

    public Adapter createLinConfigurableFrameAdapter() {
        return null;
    }

    public Adapter createLinCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createLinMasterAdapter() {
        return null;
    }

    public Adapter createLinMasterConditionalAdapter() {
        return null;
    }

    public Adapter createLinMasterContentAdapter() {
        return null;
    }

    public Adapter createLinCommunicationControllerContentAdapter() {
        return null;
    }

    public Adapter createLinPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createLinSlaveContentAdapter() {
        return null;
    }

    public Adapter createLinSlaveConditionalAdapter() {
        return null;
    }

    public Adapter createLinSlaveAdapter() {
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

    public Adapter createCollectableElementAdapter() {
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

    public Adapter createCommunicationClusterContentAdapter() {
        return null;
    }

    public Adapter createCommunicationConnectorAdapter() {
        return null;
    }

    public Adapter createCommunicationControllerAdapter() {
        return null;
    }

    public Adapter createCommunicationControllerContentAdapter() {
        return null;
    }

    public Adapter createPhysicalChannelAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

