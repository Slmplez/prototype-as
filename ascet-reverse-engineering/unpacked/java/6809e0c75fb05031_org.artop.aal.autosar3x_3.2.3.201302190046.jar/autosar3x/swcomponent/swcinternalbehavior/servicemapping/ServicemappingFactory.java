/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping;

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
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.ServicemappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ServicemappingFactory
extends EFactory {
    public static final ServicemappingFactory eINSTANCE = ServicemappingFactoryImpl.init();

    public RoleBasedPPortAssignment createRoleBasedPPortAssignment();

    public RoleBasedRPortAssignment createRoleBasedRPortAssignment();

    public SwcComMgrUserNeeds createSwcComMgrUserNeeds();

    public SwcDiagnosticCommunicationNeeds createSwcDiagnosticCommunicationNeeds();

    public SwcDiagnosticEventNeeds createSwcDiagnosticEventNeeds();

    public SwcEcuStateMgrUserNeeds createSwcEcuStateMgrUserNeeds();

    public SwcFunctionInhibitionNeeds createSwcFunctionInhibitionNeeds();

    public SwcNvBlockNeeds createSwcNvBlockNeeds();

    public SwcObdControlServiceNeeds createSwcObdControlServiceNeeds();

    public SwcObdInfoServiceNeeds createSwcObdInfoServiceNeeds();

    public SwcObdMonitorServiceNeeds createSwcObdMonitorServiceNeeds();

    public SwcObdPidServiceNeeds createSwcObdPidServiceNeeds();

    public SwcObdRatioServiceNeeds createSwcObdRatioServiceNeeds();

    public SwcSupervisedEntityNeeds createSwcSupervisedEntityNeeds();

    public ServicemappingPackage getServicemappingPackage();
}

