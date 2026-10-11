/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.serviceneeds;

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
import autosar3x.commonstructure.serviceneeds.impl.ServiceneedsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ServiceneedsFactory
extends EFactory {
    public static final ServiceneedsFactory eINSTANCE = ServiceneedsFactoryImpl.init();

    public ComMgrUserNeeds createComMgrUserNeeds();

    public ServiceNeeds createServiceNeeds();

    public DiagnosticCommunicationNeeds createDiagnosticCommunicationNeeds();

    public DiagnosticEventNeeds createDiagnosticEventNeeds();

    public EcuStateMgrUserNeeds createEcuStateMgrUserNeeds();

    public FunctionInhibitionNeeds createFunctionInhibitionNeeds();

    public NvBlockNeeds createNvBlockNeeds();

    public ObdControlServiceNeeds createObdControlServiceNeeds();

    public ObdInfoServiceNeeds createObdInfoServiceNeeds();

    public ObdMonitorServiceNeeds createObdMonitorServiceNeeds();

    public ObdPidServiceNeeds createObdPidServiceNeeds();

    public ObdRatioServiceNeeds createObdRatioServiceNeeds();

    public SupervisedEntityNeeds createSupervisedEntityNeeds();

    public ServiceneedsPackage getServiceneedsPackage();
}

