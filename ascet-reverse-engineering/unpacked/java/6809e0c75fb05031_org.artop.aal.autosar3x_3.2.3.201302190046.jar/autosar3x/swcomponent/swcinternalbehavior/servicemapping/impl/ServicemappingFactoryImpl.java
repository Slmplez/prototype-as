/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl;

import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedRPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingFactory;
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
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.RoleBasedPPortAssignmentImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.RoleBasedRPortAssignmentImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcComMgrUserNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcDiagnosticCommunicationNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcDiagnosticEventNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcEcuStateMgrUserNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcFunctionInhibitionNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcNvBlockNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcObdControlServiceNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcObdInfoServiceNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcObdMonitorServiceNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcObdPidServiceNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcObdRatioServiceNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.SwcSupervisedEntityNeedsImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ServicemappingFactoryImpl
extends EFactoryImpl
implements ServicemappingFactory {
    public static ServicemappingFactory init() {
        try {
            ServicemappingFactory theServicemappingFactory = (ServicemappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/sib/sm");
            if (theServicemappingFactory != null) {
                return theServicemappingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ServicemappingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createRoleBasedPPortAssignment();
            }
            case 1: {
                return this.createRoleBasedRPortAssignment();
            }
            case 2: {
                return this.createSwcComMgrUserNeeds();
            }
            case 3: {
                return this.createSwcDiagnosticCommunicationNeeds();
            }
            case 4: {
                return this.createSwcDiagnosticEventNeeds();
            }
            case 5: {
                return this.createSwcEcuStateMgrUserNeeds();
            }
            case 6: {
                return this.createSwcFunctionInhibitionNeeds();
            }
            case 7: {
                return this.createSwcNvBlockNeeds();
            }
            case 8: {
                return this.createSwcObdControlServiceNeeds();
            }
            case 9: {
                return this.createSwcObdInfoServiceNeeds();
            }
            case 10: {
                return this.createSwcObdMonitorServiceNeeds();
            }
            case 11: {
                return this.createSwcObdPidServiceNeeds();
            }
            case 12: {
                return this.createSwcObdRatioServiceNeeds();
            }
            case 13: {
                return this.createSwcSupervisedEntityNeeds();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public RoleBasedPPortAssignment createRoleBasedPPortAssignment() {
        RoleBasedPPortAssignmentImpl roleBasedPPortAssignment = new RoleBasedPPortAssignmentImpl();
        return roleBasedPPortAssignment;
    }

    public RoleBasedRPortAssignment createRoleBasedRPortAssignment() {
        RoleBasedRPortAssignmentImpl roleBasedRPortAssignment = new RoleBasedRPortAssignmentImpl();
        return roleBasedRPortAssignment;
    }

    public SwcComMgrUserNeeds createSwcComMgrUserNeeds() {
        SwcComMgrUserNeedsImpl swcComMgrUserNeeds = new SwcComMgrUserNeedsImpl();
        return swcComMgrUserNeeds;
    }

    public SwcDiagnosticCommunicationNeeds createSwcDiagnosticCommunicationNeeds() {
        SwcDiagnosticCommunicationNeedsImpl swcDiagnosticCommunicationNeeds = new SwcDiagnosticCommunicationNeedsImpl();
        return swcDiagnosticCommunicationNeeds;
    }

    public SwcDiagnosticEventNeeds createSwcDiagnosticEventNeeds() {
        SwcDiagnosticEventNeedsImpl swcDiagnosticEventNeeds = new SwcDiagnosticEventNeedsImpl();
        return swcDiagnosticEventNeeds;
    }

    public SwcEcuStateMgrUserNeeds createSwcEcuStateMgrUserNeeds() {
        SwcEcuStateMgrUserNeedsImpl swcEcuStateMgrUserNeeds = new SwcEcuStateMgrUserNeedsImpl();
        return swcEcuStateMgrUserNeeds;
    }

    public SwcFunctionInhibitionNeeds createSwcFunctionInhibitionNeeds() {
        SwcFunctionInhibitionNeedsImpl swcFunctionInhibitionNeeds = new SwcFunctionInhibitionNeedsImpl();
        return swcFunctionInhibitionNeeds;
    }

    public SwcNvBlockNeeds createSwcNvBlockNeeds() {
        SwcNvBlockNeedsImpl swcNvBlockNeeds = new SwcNvBlockNeedsImpl();
        return swcNvBlockNeeds;
    }

    public SwcObdControlServiceNeeds createSwcObdControlServiceNeeds() {
        SwcObdControlServiceNeedsImpl swcObdControlServiceNeeds = new SwcObdControlServiceNeedsImpl();
        return swcObdControlServiceNeeds;
    }

    public SwcObdInfoServiceNeeds createSwcObdInfoServiceNeeds() {
        SwcObdInfoServiceNeedsImpl swcObdInfoServiceNeeds = new SwcObdInfoServiceNeedsImpl();
        return swcObdInfoServiceNeeds;
    }

    public SwcObdMonitorServiceNeeds createSwcObdMonitorServiceNeeds() {
        SwcObdMonitorServiceNeedsImpl swcObdMonitorServiceNeeds = new SwcObdMonitorServiceNeedsImpl();
        return swcObdMonitorServiceNeeds;
    }

    public SwcObdPidServiceNeeds createSwcObdPidServiceNeeds() {
        SwcObdPidServiceNeedsImpl swcObdPidServiceNeeds = new SwcObdPidServiceNeedsImpl();
        return swcObdPidServiceNeeds;
    }

    public SwcObdRatioServiceNeeds createSwcObdRatioServiceNeeds() {
        SwcObdRatioServiceNeedsImpl swcObdRatioServiceNeeds = new SwcObdRatioServiceNeedsImpl();
        return swcObdRatioServiceNeeds;
    }

    public SwcSupervisedEntityNeeds createSwcSupervisedEntityNeeds() {
        SwcSupervisedEntityNeedsImpl swcSupervisedEntityNeeds = new SwcSupervisedEntityNeedsImpl();
        return swcSupervisedEntityNeeds;
    }

    public ServicemappingPackage getServicemappingPackage() {
        return (ServicemappingPackage)this.getEPackage();
    }

    @Deprecated
    public static ServicemappingPackage getPackage() {
        return ServicemappingPackage.eINSTANCE;
    }
}

