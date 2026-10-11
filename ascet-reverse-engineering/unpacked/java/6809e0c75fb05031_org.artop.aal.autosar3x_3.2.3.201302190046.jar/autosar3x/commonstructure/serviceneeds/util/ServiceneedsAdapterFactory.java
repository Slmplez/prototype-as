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
package autosar3x.commonstructure.serviceneeds.util;

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
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.SupervisedEntityNeeds;
import autosar3x.commonstructure.serviceneeds.util.ServiceneedsSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
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
        public Adapter caseComMgrUserNeeds(ComMgrUserNeeds object) {
            return ServiceneedsAdapterFactory.this.createComMgrUserNeedsAdapter();
        }

        @Override
        public Adapter caseServiceNeeds(ServiceNeeds object) {
            return ServiceneedsAdapterFactory.this.createServiceNeedsAdapter();
        }

        @Override
        public Adapter caseDiagnosticCommunicationNeeds(DiagnosticCommunicationNeeds object) {
            return ServiceneedsAdapterFactory.this.createDiagnosticCommunicationNeedsAdapter();
        }

        @Override
        public Adapter caseDiagnosticEventNeeds(DiagnosticEventNeeds object) {
            return ServiceneedsAdapterFactory.this.createDiagnosticEventNeedsAdapter();
        }

        @Override
        public Adapter caseEcuStateMgrUserNeeds(EcuStateMgrUserNeeds object) {
            return ServiceneedsAdapterFactory.this.createEcuStateMgrUserNeedsAdapter();
        }

        @Override
        public Adapter caseFunctionInhibitionNeeds(FunctionInhibitionNeeds object) {
            return ServiceneedsAdapterFactory.this.createFunctionInhibitionNeedsAdapter();
        }

        @Override
        public Adapter caseNvBlockNeeds(NvBlockNeeds object) {
            return ServiceneedsAdapterFactory.this.createNvBlockNeedsAdapter();
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
        public Adapter caseSupervisedEntityNeeds(SupervisedEntityNeeds object) {
            return ServiceneedsAdapterFactory.this.createSupervisedEntityNeedsAdapter();
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

    public Adapter createComMgrUserNeedsAdapter() {
        return null;
    }

    public Adapter createServiceNeedsAdapter() {
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

