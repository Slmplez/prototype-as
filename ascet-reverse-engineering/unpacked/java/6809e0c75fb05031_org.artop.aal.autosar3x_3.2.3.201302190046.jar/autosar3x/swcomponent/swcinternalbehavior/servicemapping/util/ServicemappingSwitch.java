/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
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
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ServicemappingSwitch<T> {
    protected static ServicemappingPackage modelPackage;

    public ServicemappingSwitch() {
        if (modelPackage == null) {
            modelPackage = ServicemappingPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                RoleBasedPPortAssignment roleBasedPPortAssignment = (RoleBasedPPortAssignment)theEObject;
                T result = this.caseRoleBasedPPortAssignment(roleBasedPPortAssignment);
                if (result == null) {
                    result = this.caseARObject(roleBasedPPortAssignment);
                }
                if (result == null) {
                    result = this.caseGARObject(roleBasedPPortAssignment);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                RoleBasedRPortAssignment roleBasedRPortAssignment = (RoleBasedRPortAssignment)theEObject;
                T result = this.caseRoleBasedRPortAssignment(roleBasedRPortAssignment);
                if (result == null) {
                    result = this.caseARObject(roleBasedRPortAssignment);
                }
                if (result == null) {
                    result = this.caseGARObject(roleBasedRPortAssignment);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwcComMgrUserNeeds swcComMgrUserNeeds = (SwcComMgrUserNeeds)theEObject;
                T result = this.caseSwcComMgrUserNeeds(swcComMgrUserNeeds);
                if (result == null) {
                    result = this.caseComMgrUserNeeds(swcComMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcComMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcComMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcComMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcComMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcComMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcComMgrUserNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SwcDiagnosticCommunicationNeeds swcDiagnosticCommunicationNeeds = (SwcDiagnosticCommunicationNeeds)theEObject;
                T result = this.caseSwcDiagnosticCommunicationNeeds(swcDiagnosticCommunicationNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCommunicationNeeds(swcDiagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcDiagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcDiagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcDiagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcDiagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcDiagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcDiagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SwcDiagnosticEventNeeds swcDiagnosticEventNeeds = (SwcDiagnosticEventNeeds)theEObject;
                T result = this.caseSwcDiagnosticEventNeeds(swcDiagnosticEventNeeds);
                if (result == null) {
                    result = this.caseDiagnosticEventNeeds(swcDiagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcDiagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcDiagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcDiagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcDiagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcDiagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcDiagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SwcEcuStateMgrUserNeeds swcEcuStateMgrUserNeeds = (SwcEcuStateMgrUserNeeds)theEObject;
                T result = this.caseSwcEcuStateMgrUserNeeds(swcEcuStateMgrUserNeeds);
                if (result == null) {
                    result = this.caseEcuStateMgrUserNeeds(swcEcuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcEcuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcEcuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcEcuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcEcuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcEcuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcEcuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SwcFunctionInhibitionNeeds swcFunctionInhibitionNeeds = (SwcFunctionInhibitionNeeds)theEObject;
                T result = this.caseSwcFunctionInhibitionNeeds(swcFunctionInhibitionNeeds);
                if (result == null) {
                    result = this.caseFunctionInhibitionNeeds(swcFunctionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcFunctionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcFunctionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcFunctionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcFunctionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcFunctionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcFunctionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                SwcNvBlockNeeds swcNvBlockNeeds = (SwcNvBlockNeeds)theEObject;
                T result = this.caseSwcNvBlockNeeds(swcNvBlockNeeds);
                if (result == null) {
                    result = this.caseNvBlockNeeds(swcNvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcNvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcNvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcNvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcNvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcNvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcNvBlockNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                SwcObdControlServiceNeeds swcObdControlServiceNeeds = (SwcObdControlServiceNeeds)theEObject;
                T result = this.caseSwcObdControlServiceNeeds(swcObdControlServiceNeeds);
                if (result == null) {
                    result = this.caseObdControlServiceNeeds(swcObdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcObdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcObdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcObdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcObdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcObdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcObdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                SwcObdInfoServiceNeeds swcObdInfoServiceNeeds = (SwcObdInfoServiceNeeds)theEObject;
                T result = this.caseSwcObdInfoServiceNeeds(swcObdInfoServiceNeeds);
                if (result == null) {
                    result = this.caseObdInfoServiceNeeds(swcObdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcObdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcObdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcObdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcObdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcObdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcObdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                SwcObdMonitorServiceNeeds swcObdMonitorServiceNeeds = (SwcObdMonitorServiceNeeds)theEObject;
                T result = this.caseSwcObdMonitorServiceNeeds(swcObdMonitorServiceNeeds);
                if (result == null) {
                    result = this.caseObdMonitorServiceNeeds(swcObdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcObdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcObdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcObdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcObdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcObdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcObdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                SwcObdPidServiceNeeds swcObdPidServiceNeeds = (SwcObdPidServiceNeeds)theEObject;
                T result = this.caseSwcObdPidServiceNeeds(swcObdPidServiceNeeds);
                if (result == null) {
                    result = this.caseObdPidServiceNeeds(swcObdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcObdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcObdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcObdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcObdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcObdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcObdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                SwcObdRatioServiceNeeds swcObdRatioServiceNeeds = (SwcObdRatioServiceNeeds)theEObject;
                T result = this.caseSwcObdRatioServiceNeeds(swcObdRatioServiceNeeds);
                if (result == null) {
                    result = this.caseObdRatioServiceNeeds(swcObdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcObdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcObdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcObdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcObdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcObdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcObdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                SwcSupervisedEntityNeeds swcSupervisedEntityNeeds = (SwcSupervisedEntityNeeds)theEObject;
                T result = this.caseSwcSupervisedEntityNeeds(swcSupervisedEntityNeeds);
                if (result == null) {
                    result = this.caseSupervisedEntityNeeds(swcSupervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(swcSupervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swcSupervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(swcSupervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swcSupervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swcSupervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(swcSupervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseRoleBasedPPortAssignment(RoleBasedPPortAssignment object) {
        return null;
    }

    public T caseRoleBasedRPortAssignment(RoleBasedRPortAssignment object) {
        return null;
    }

    public T caseSwcComMgrUserNeeds(SwcComMgrUserNeeds object) {
        return null;
    }

    public T caseSwcDiagnosticCommunicationNeeds(SwcDiagnosticCommunicationNeeds object) {
        return null;
    }

    public T caseSwcDiagnosticEventNeeds(SwcDiagnosticEventNeeds object) {
        return null;
    }

    public T caseSwcEcuStateMgrUserNeeds(SwcEcuStateMgrUserNeeds object) {
        return null;
    }

    public T caseSwcFunctionInhibitionNeeds(SwcFunctionInhibitionNeeds object) {
        return null;
    }

    public T caseSwcNvBlockNeeds(SwcNvBlockNeeds object) {
        return null;
    }

    public T caseSwcObdControlServiceNeeds(SwcObdControlServiceNeeds object) {
        return null;
    }

    public T caseSwcObdInfoServiceNeeds(SwcObdInfoServiceNeeds object) {
        return null;
    }

    public T caseSwcObdMonitorServiceNeeds(SwcObdMonitorServiceNeeds object) {
        return null;
    }

    public T caseSwcObdPidServiceNeeds(SwcObdPidServiceNeeds object) {
        return null;
    }

    public T caseSwcObdRatioServiceNeeds(SwcObdRatioServiceNeeds object) {
        return null;
    }

    public T caseSwcSupervisedEntityNeeds(SwcSupervisedEntityNeeds object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseServiceNeeds(ServiceNeeds object) {
        return null;
    }

    public T caseComMgrUserNeeds(ComMgrUserNeeds object) {
        return null;
    }

    public T caseDiagnosticCommunicationNeeds(DiagnosticCommunicationNeeds object) {
        return null;
    }

    public T caseDiagnosticEventNeeds(DiagnosticEventNeeds object) {
        return null;
    }

    public T caseEcuStateMgrUserNeeds(EcuStateMgrUserNeeds object) {
        return null;
    }

    public T caseFunctionInhibitionNeeds(FunctionInhibitionNeeds object) {
        return null;
    }

    public T caseNvBlockNeeds(NvBlockNeeds object) {
        return null;
    }

    public T caseObdControlServiceNeeds(ObdControlServiceNeeds object) {
        return null;
    }

    public T caseObdInfoServiceNeeds(ObdInfoServiceNeeds object) {
        return null;
    }

    public T caseObdMonitorServiceNeeds(ObdMonitorServiceNeeds object) {
        return null;
    }

    public T caseObdPidServiceNeeds(ObdPidServiceNeeds object) {
        return null;
    }

    public T caseObdRatioServiceNeeds(ObdRatioServiceNeeds object) {
        return null;
    }

    public T caseSupervisedEntityNeeds(SupervisedEntityNeeds object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

