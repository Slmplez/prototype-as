/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.BswMgrNeeds;
import autosar40.commonstructure.serviceneeds.ComMgrUserNeeds;
import autosar40.commonstructure.serviceneeds.CryptoServiceNeeds;
import autosar40.commonstructure.serviceneeds.DiagEventDebounceCounterBased;
import autosar40.commonstructure.serviceneeds.DiagEventDebounceMonitorInternal;
import autosar40.commonstructure.serviceneeds.DiagEventDebounceTimeBased;
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
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.SupervisedEntityNeeds;
import autosar40.commonstructure.serviceneeds.SyncTimeBaseMgrUserNeeds;
import autosar40.commonstructure.serviceneeds.impl.ServiceneedsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ServiceneedsFactory
extends EFactory {
    public static final ServiceneedsFactory eINSTANCE = ServiceneedsFactoryImpl.init();

    public BswMgrNeeds createBswMgrNeeds();

    public ComMgrUserNeeds createComMgrUserNeeds();

    public CryptoServiceNeeds createCryptoServiceNeeds();

    public DiagEventDebounceCounterBased createDiagEventDebounceCounterBased();

    public DiagEventDebounceMonitorInternal createDiagEventDebounceMonitorInternal();

    public DiagEventDebounceTimeBased createDiagEventDebounceTimeBased();

    public DiagnosticCommunicationManagerNeeds createDiagnosticCommunicationManagerNeeds();

    public DiagnosticEventManagerNeeds createDiagnosticEventManagerNeeds();

    public DiagnosticEventNeeds createDiagnosticEventNeeds();

    public FunctionInhibitionNeeds createFunctionInhibitionNeeds();

    public DiagnosticIoControlNeeds createDiagnosticIoControlNeeds();

    public DiagnosticRoutineNeeds createDiagnosticRoutineNeeds();

    public DiagnosticValueNeeds createDiagnosticValueNeeds();

    public DltUserNeeds createDltUserNeeds();

    public EcuStateMgrUserNeeds createEcuStateMgrUserNeeds();

    public ObdControlServiceNeeds createObdControlServiceNeeds();

    public ObdInfoServiceNeeds createObdInfoServiceNeeds();

    public ObdMonitorServiceNeeds createObdMonitorServiceNeeds();

    public ObdPidServiceNeeds createObdPidServiceNeeds();

    public ObdRatioServiceNeeds createObdRatioServiceNeeds();

    public RoleBasedDataAssignment createRoleBasedDataAssignment();

    public SupervisedEntityNeeds createSupervisedEntityNeeds();

    public SyncTimeBaseMgrUserNeeds createSyncTimeBaseMgrUserNeeds();

    public NvBlockNeeds createNvBlockNeeds();

    public ServiceneedsPackage getServiceneedsPackage();
}

