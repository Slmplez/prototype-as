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
package autosar3x.swcomponent.swcinternalbehavior.servicemapping.util;

import autosar3x.commonstructure.serviceneeds.ComMgrUserNeeds;
import autosar3x.commonstructure.serviceneeds.DiagnosticCommunicationNeeds;
import autosar3x.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar3x.commonstructure.serviceneeds.EcuStateMgrUserNeeds;
import autosar3x.commonstructure.serviceneeds.FunctionInhibitionNeeds;
import autosar3x.commonstructure.serviceneeds.NvBlockNeeds;
import autosar3x.commonstructure.serviceneeds.ObdControlServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ObdInfoServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ObdMonitorServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ObdPidServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ObdRatioServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ServiceNeeds;
import autosar3x.commonstructure.serviceneeds.SupervisedEntityNeeds;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedRPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcComMgrUserNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcDiagnosticCommunicationNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcDiagnosticEventNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcEcuStateMgrUserNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcFunctionInhibitionNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcNvBlockNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdControlServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdInfoServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdMonitorServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdPidServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdRatioServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcSupervisedEntityNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.util.ServicemappingSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ServicemappingAdapterFactory
extends AdapterFactoryImpl {
    protected static ServicemappingPackage modelPackage;
    protected ServicemappingSwitch<Adapter> modelSwitch = new ServicemappingSwitch<Adapter>(){

        @Override
        public Adapter caseRoleBasedPPortAssignment(RoleBasedPPortAssignment object) {
            return ServicemappingAdapterFactory.this.createRoleBasedPPortAssignmentAdapter();
        }

        @Override
        public Adapter caseRoleBasedRPortAssignment(RoleBasedRPortAssignment object) {
            return ServicemappingAdapterFactory.this.createRoleBasedRPortAssignmentAdapter();
        }

        @Override
        public Adapter caseSwcComMgrUserNeeds(SwcComMgrUserNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcComMgrUserNeedsAdapter();
        }

        @Override
        public Adapter caseSwcDiagnosticCommunicationNeeds(SwcDiagnosticCommunicationNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcDiagnosticCommunicationNeedsAdapter();
        }

        @Override
        public Adapter caseSwcDiagnosticEventNeeds(SwcDiagnosticEventNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcDiagnosticEventNeedsAdapter();
        }

        @Override
        public Adapter caseSwcEcuStateMgrUserNeeds(SwcEcuStateMgrUserNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcEcuStateMgrUserNeedsAdapter();
        }

        @Override
        public Adapter caseSwcFunctionInhibitionNeeds(SwcFunctionInhibitionNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcFunctionInhibitionNeedsAdapter();
        }

        @Override
        public Adapter caseSwcNvBlockNeeds(SwcNvBlockNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcNvBlockNeedsAdapter();
        }

        @Override
        public Adapter caseSwcObdControlServiceNeeds(SwcObdControlServiceNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcObdControlServiceNeedsAdapter();
        }

        @Override
        public Adapter caseSwcObdInfoServiceNeeds(SwcObdInfoServiceNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcObdInfoServiceNeedsAdapter();
        }

        @Override
        public Adapter caseSwcObdMonitorServiceNeeds(SwcObdMonitorServiceNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcObdMonitorServiceNeedsAdapter();
        }

        @Override
        public Adapter caseSwcObdPidServiceNeeds(SwcObdPidServiceNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcObdPidServiceNeedsAdapter();
        }

        @Override
        public Adapter caseSwcObdRatioServiceNeeds(SwcObdRatioServiceNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcObdRatioServiceNeedsAdapter();
        }

        @Override
        public Adapter caseSwcSupervisedEntityNeeds(SwcSupervisedEntityNeeds object) {
            return ServicemappingAdapterFactory.this.createSwcSupervisedEntityNeedsAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ServicemappingAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ServicemappingAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ServicemappingAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ServicemappingAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ServicemappingAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseServiceNeeds(ServiceNeeds object) {
            return ServicemappingAdapterFactory.this.createServiceNeedsAdapter();
        }

        @Override
        public Adapter caseComMgrUserNeeds(ComMgrUserNeeds object) {
            return ServicemappingAdapterFactory.this.createComMgrUserNeedsAdapter();
        }

        @Override
        public Adapter caseDiagnosticCommunicationNeeds(DiagnosticCommunicationNeeds object) {
            return ServicemappingAdapterFactory.this.createDiagnosticCommunicationNeedsAdapter();
        }

        @Override
        public Adapter caseDiagnosticEventNeeds(DiagnosticEventNeeds object) {
            return ServicemappingAdapterFactory.this.createDiagnosticEventNeedsAdapter();
        }

        @Override
        public Adapter caseEcuStateMgrUserNeeds(EcuStateMgrUserNeeds object) {
            return ServicemappingAdapterFactory.this.createEcuStateMgrUserNeedsAdapter();
        }

        @Override
        public Adapter caseFunctionInhibitionNeeds(FunctionInhibitionNeeds object) {
            return ServicemappingAdapterFactory.this.createFunctionInhibitionNeedsAdapter();
        }

        @Override
        public Adapter caseNvBlockNeeds(NvBlockNeeds object) {
            return ServicemappingAdapterFactory.this.createNvBlockNeedsAdapter();
        }

        @Override
        public Adapter caseObdControlServiceNeeds(ObdControlServiceNeeds object) {
            return ServicemappingAdapterFactory.this.createObdControlServiceNeedsAdapter();
        }

        @Override
        public Adapter caseObdInfoServiceNeeds(ObdInfoServiceNeeds object) {
            return ServicemappingAdapterFactory.this.createObdInfoServiceNeedsAdapter();
        }

        @Override
        public Adapter caseObdMonitorServiceNeeds(ObdMonitorServiceNeeds object) {
            return ServicemappingAdapterFactory.this.createObdMonitorServiceNeedsAdapter();
        }

        @Override
        public Adapter caseObdPidServiceNeeds(ObdPidServiceNeeds object) {
            return ServicemappingAdapterFactory.this.createObdPidServiceNeedsAdapter();
        }

        @Override
        public Adapter caseObdRatioServiceNeeds(ObdRatioServiceNeeds object) {
            return ServicemappingAdapterFactory.this.createObdRatioServiceNeedsAdapter();
        }

        @Override
        public Adapter caseSupervisedEntityNeeds(SupervisedEntityNeeds object) {
            return ServicemappingAdapterFactory.this.createSupervisedEntityNeedsAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ServicemappingAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ServicemappingAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ServicemappingPackage.eINSTANCE;
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

    public Adapter createRoleBasedPPortAssignmentAdapter() {
        return null;
    }

    public Adapter createRoleBasedRPortAssignmentAdapter() {
        return null;
    }

    public Adapter createSwcComMgrUserNeedsAdapter() {
        return null;
    }

    public Adapter createSwcDiagnosticCommunicationNeedsAdapter() {
        return null;
    }

    public Adapter createSwcDiagnosticEventNeedsAdapter() {
        return null;
    }

    public Adapter createSwcEcuStateMgrUserNeedsAdapter() {
        return null;
    }

    public Adapter createSwcFunctionInhibitionNeedsAdapter() {
        return null;
    }

    public Adapter createSwcNvBlockNeedsAdapter() {
        return null;
    }

    public Adapter createSwcObdControlServiceNeedsAdapter() {
        return null;
    }

    public Adapter createSwcObdInfoServiceNeedsAdapter() {
        return null;
    }

    public Adapter createSwcObdMonitorServiceNeedsAdapter() {
        return null;
    }

    public Adapter createSwcObdPidServiceNeedsAdapter() {
        return null;
    }

    public Adapter createSwcObdRatioServiceNeedsAdapter() {
        return null;
    }

    public Adapter createSwcSupervisedEntityNeedsAdapter() {
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

    public Adapter createServiceNeedsAdapter() {
        return null;
    }

    public Adapter createComMgrUserNeedsAdapter() {
        return null;
    }

    public Adapter createDiagnosticCommunicationNeedsAdapter() {
        return null;
    }

    public Adapter createDiagnosticEventNeedsAdapter() {
        return null;
    }

    public Adapter createEcuStateMgrUserNeedsAdapter() {
        return null;
    }

    public Adapter createFunctionInhibitionNeedsAdapter() {
        return null;
    }

    public Adapter createNvBlockNeedsAdapter() {
        return null;
    }

    public Adapter createObdControlServiceNeedsAdapter() {
        return null;
    }

    public Adapter createObdInfoServiceNeedsAdapter() {
        return null;
    }

    public Adapter createObdMonitorServiceNeedsAdapter() {
        return null;
    }

    public Adapter createObdPidServiceNeedsAdapter() {
        return null;
    }

    public Adapter createObdRatioServiceNeedsAdapter() {
        return null;
    }

    public Adapter createSupervisedEntityNeedsAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

