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
package autosar40.commonstructure.serviceneeds.util;

import autosar40.commonstructure.serviceneeds.BswMgrNeeds;
import autosar40.commonstructure.serviceneeds.ComMgrUserNeeds;
import autosar40.commonstructure.serviceneeds.CryptoServiceNeeds;
import autosar40.commonstructure.serviceneeds.DiagEventDebounceAlgorithm;
import autosar40.commonstructure.serviceneeds.DiagEventDebounceCounterBased;
import autosar40.commonstructure.serviceneeds.DiagEventDebounceMonitorInternal;
import autosar40.commonstructure.serviceneeds.DiagEventDebounceTimeBased;
import autosar40.commonstructure.serviceneeds.DiagnosticCapabilityElement;
import autosar40.commonstructure.serviceneeds.DiagnosticCommunicationManagerNeeds;
import autosar40.commonstructure.serviceneeds.DiagnosticEventManagerNeeds;
import autosar40.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar40.commonstructure.serviceneeds.DiagnosticIoControlNeeds;
import autosar40.commonstructure.serviceneeds.DiagnosticRoutineNeeds;
import autosar40.commonstructure.serviceneeds.DiagnosticValueNeeds;
import autosar40.commonstructure.serviceneeds.DltUserNeeds;
import autosar40.commonstructure.serviceneeds.EcuStateMgrUserNeeds;
import autosar40.commonstructure.serviceneeds.FunctionInhibitionNeeds;
import autosar40.commonstructure.serviceneeds.NvBlockNeeds;
import autosar40.commonstructure.serviceneeds.ObdControlServiceNeeds;
import autosar40.commonstructure.serviceneeds.ObdInfoServiceNeeds;
import autosar40.commonstructure.serviceneeds.ObdMonitorServiceNeeds;
import autosar40.commonstructure.serviceneeds.ObdPidServiceNeeds;
import autosar40.commonstructure.serviceneeds.ObdRatioServiceNeeds;
import autosar40.commonstructure.serviceneeds.RoleBasedDataAssignment;
import autosar40.commonstructure.serviceneeds.ServiceDependency;
import autosar40.commonstructure.serviceneeds.ServiceNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.SupervisedEntityNeeds;
import autosar40.commonstructure.serviceneeds.SyncTimeBaseMgrUserNeeds;
import autosar40.commonstructure.serviceneeds.util.ServiceneedsSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ServiceneedsAdapterFactory
extends AdapterFactoryImpl {
    protected static ServiceneedsPackage modelPackage;
    protected ServiceneedsSwitch<Adapter> modelSwitch = new ServiceneedsSwitch<Adapter>(){

        @Override
        public Adapter caseBswMgrNeeds(BswMgrNeeds object) {
            return ServiceneedsAdapterFactory.this.createBswMgrNeedsAdapter();
        }

        @Override
        public Adapter caseServiceNeeds(ServiceNeeds object) {
            return ServiceneedsAdapterFactory.this.createServiceNeedsAdapter();
        }

        @Override
        public Adapter caseComMgrUserNeeds(ComMgrUserNeeds object) {
            return ServiceneedsAdapterFactory.this.createComMgrUserNeedsAdapter();
        }

        @Override
        public Adapter caseCryptoServiceNeeds(CryptoServiceNeeds object) {
            return ServiceneedsAdapterFactory.this.createCryptoServiceNeedsAdapter();
        }

        @Override
        public Adapter caseDiagEventDebounceAlgorithm(DiagEventDebounceAlgorithm object) {
            return ServiceneedsAdapterFactory.this.createDiagEventDebounceAlgorithmAdapter();
        }

        @Override
        public Adapter caseDiagEventDebounceCounterBased(DiagEventDebounceCounterBased object) {
            return ServiceneedsAdapterFactory.this.createDiagEventDebounceCounterBasedAdapter();
        }

        @Override
        public Adapter caseDiagEventDebounceMonitorInternal(DiagEventDebounceMonitorInternal object) {
            return ServiceneedsAdapterFactory.this.createDiagEventDebounceMonitorInternalAdapter();
        }

        @Override
        public Adapter caseDiagEventDebounceTimeBased(DiagEventDebounceTimeBased object) {
            return ServiceneedsAdapterFactory.this.createDiagEventDebounceTimeBasedAdapter();
        }

        @Override
        public Adapter caseDiagnosticCapabilityElement(DiagnosticCapabilityElement object) {
            return ServiceneedsAdapterFactory.this.createDiagnosticCapabilityElementAdapter();
        }

        @Override
        public Adapter caseDiagnosticCommunicationManagerNeeds(DiagnosticCommunicationManagerNeeds object) {
            return ServiceneedsAdapterFactory.this.createDiagnosticCommunicationManagerNeedsAdapter();
        }

        @Override
        public Adapter caseDiagnosticEventManagerNeeds(DiagnosticEventManagerNeeds object) {
            return ServiceneedsAdapterFactory.this.createDiagnosticEventManagerNeedsAdapter();
        }

        @Override
        public Adapter caseDiagnosticEventNeeds(DiagnosticEventNeeds object) {
            return ServiceneedsAdapterFactory.this.createDiagnosticEventNeedsAdapter();
        }

        @Override
        public Adapter caseFunctionInhibitionNeeds(FunctionInhibitionNeeds object) {
            return ServiceneedsAdapterFactory.this.createFunctionInhibitionNeedsAdapter();
        }

        @Override
        public Adapter caseDiagnosticIoControlNeeds(DiagnosticIoControlNeeds object) {
            return ServiceneedsAdapterFactory.this.createDiagnosticIoControlNeedsAdapter();
        }

        @Override
        public Adapter caseDiagnosticRoutineNeeds(DiagnosticRoutineNeeds object) {
            return ServiceneedsAdapterFactory.this.createDiagnosticRoutineNeedsAdapter();
        }

        @Override
        public Adapter caseDiagnosticValueNeeds(DiagnosticValueNeeds object) {
            return ServiceneedsAdapterFactory.this.createDiagnosticValueNeedsAdapter();
        }

        @Override
        public Adapter caseDltUserNeeds(DltUserNeeds object) {
            return ServiceneedsAdapterFactory.this.createDltUserNeedsAdapter();
        }

        @Override
        public Adapter caseEcuStateMgrUserNeeds(EcuStateMgrUserNeeds object) {
            return ServiceneedsAdapterFactory.this.createEcuStateMgrUserNeedsAdapter();
        }

        @Override
        public Adapter caseObdControlServiceNeeds(ObdControlServiceNeeds object) {
            return ServiceneedsAdapterFactory.this.createObdControlServiceNeedsAdapter();
        }

        @Override
        public Adapter caseObdInfoServiceNeeds(ObdInfoServiceNeeds object) {
            return ServiceneedsAdapterFactory.this.createObdInfoServiceNeedsAdapter();
        }

        @Override
        public Adapter caseObdMonitorServiceNeeds(ObdMonitorServiceNeeds object) {
            return ServiceneedsAdapterFactory.this.createObdMonitorServiceNeedsAdapter();
        }

        @Override
        public Adapter caseObdPidServiceNeeds(ObdPidServiceNeeds object) {
            return ServiceneedsAdapterFactory.this.createObdPidServiceNeedsAdapter();
        }

        @Override
        public Adapter caseObdRatioServiceNeeds(ObdRatioServiceNeeds object) {
            return ServiceneedsAdapterFactory.this.createObdRatioServiceNeedsAdapter();
        }

        @Override
        public Adapter caseRoleBasedDataAssignment(RoleBasedDataAssignment object) {
            return ServiceneedsAdapterFactory.this.createRoleBasedDataAssignmentAdapter();
        }

        @Override
        public Adapter caseServiceDependency(ServiceDependency object) {
            return ServiceneedsAdapterFactory.this.createServiceDependencyAdapter();
        }

        @Override
        public Adapter caseSupervisedEntityNeeds(SupervisedEntityNeeds object) {
            return ServiceneedsAdapterFactory.this.createSupervisedEntityNeedsAdapter();
        }

        @Override
        public Adapter caseSyncTimeBaseMgrUserNeeds(SyncTimeBaseMgrUserNeeds object) {
            return ServiceneedsAdapterFactory.this.createSyncTimeBaseMgrUserNeedsAdapter();
        }

        @Override
        public Adapter caseNvBlockNeeds(NvBlockNeeds object) {
            return ServiceneedsAdapterFactory.this.createNvBlockNeedsAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ServiceneedsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ServiceneedsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ServiceneedsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return ServiceneedsAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return ServiceneedsAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ServiceneedsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ServiceneedsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ServiceneedsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ServiceneedsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ServiceneedsPackage.eINSTANCE;
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

    public Adapter createBswMgrNeedsAdapter() {
        return null;
    }

    public Adapter createServiceNeedsAdapter() {
        return null;
    }

    public Adapter createComMgrUserNeedsAdapter() {
        return null;
    }

    public Adapter createCryptoServiceNeedsAdapter() {
        return null;
    }

    public Adapter createDiagEventDebounceAlgorithmAdapter() {
        return null;
    }

    public Adapter createDiagEventDebounceCounterBasedAdapter() {
        return null;
    }

    public Adapter createDiagEventDebounceMonitorInternalAdapter() {
        return null;
    }

    public Adapter createDiagEventDebounceTimeBasedAdapter() {
        return null;
    }

    public Adapter createDiagnosticCapabilityElementAdapter() {
        return null;
    }

    public Adapter createDiagnosticCommunicationManagerNeedsAdapter() {
        return null;
    }

    public Adapter createDiagnosticEventManagerNeedsAdapter() {
        return null;
    }

    public Adapter createDiagnosticEventNeedsAdapter() {
        return null;
    }

    public Adapter createFunctionInhibitionNeedsAdapter() {
        return null;
    }

    public Adapter createDiagnosticIoControlNeedsAdapter() {
        return null;
    }

    public Adapter createDiagnosticRoutineNeedsAdapter() {
        return null;
    }

    public Adapter createDiagnosticValueNeedsAdapter() {
        return null;
    }

    public Adapter createDltUserNeedsAdapter() {
        return null;
    }

    public Adapter createEcuStateMgrUserNeedsAdapter() {
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

    public Adapter createRoleBasedDataAssignmentAdapter() {
        return null;
    }

    public Adapter createServiceDependencyAdapter() {
        return null;
    }

    public Adapter createSupervisedEntityNeedsAdapter() {
        return null;
    }

    public Adapter createSyncTimeBaseMgrUserNeedsAdapter() {
        return null;
    }

    public Adapter createNvBlockNeedsAdapter() {
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

