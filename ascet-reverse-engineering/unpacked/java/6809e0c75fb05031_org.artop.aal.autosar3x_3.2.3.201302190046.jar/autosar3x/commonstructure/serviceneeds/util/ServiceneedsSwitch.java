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
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ServiceneedsSwitch<T> {
    protected static ServiceneedsPackage modelPackage;

    public ServiceneedsSwitch() {
        if (modelPackage == null) {
            modelPackage = ServiceneedsPackage.eINSTANCE;
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
                ComMgrUserNeeds comMgrUserNeeds = (ComMgrUserNeeds)theEObject;
                T result = this.caseComMgrUserNeeds(comMgrUserNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ServiceNeeds serviceNeeds = (ServiceNeeds)theEObject;
                T result = this.caseServiceNeeds(serviceNeeds);
                if (result == null) {
                    result = this.caseIdentifiable(serviceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(serviceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(serviceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)serviceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(serviceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                DiagnosticCommunicationNeeds diagnosticCommunicationNeeds = (DiagnosticCommunicationNeeds)theEObject;
                T result = this.caseDiagnosticCommunicationNeeds(diagnosticCommunicationNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(diagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(diagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)diagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(diagnosticCommunicationNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                DiagnosticEventNeeds diagnosticEventNeeds = (DiagnosticEventNeeds)theEObject;
                T result = this.caseDiagnosticEventNeeds(diagnosticEventNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                EcuStateMgrUserNeeds ecuStateMgrUserNeeds = (EcuStateMgrUserNeeds)theEObject;
                T result = this.caseEcuStateMgrUserNeeds(ecuStateMgrUserNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                FunctionInhibitionNeeds functionInhibitionNeeds = (FunctionInhibitionNeeds)theEObject;
                T result = this.caseFunctionInhibitionNeeds(functionInhibitionNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                NvBlockNeeds nvBlockNeeds = (NvBlockNeeds)theEObject;
                T result = this.caseNvBlockNeeds(nvBlockNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                ObdControlServiceNeeds obdControlServiceNeeds = (ObdControlServiceNeeds)theEObject;
                T result = this.caseObdControlServiceNeeds(obdControlServiceNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ObdInfoServiceNeeds obdInfoServiceNeeds = (ObdInfoServiceNeeds)theEObject;
                T result = this.caseObdInfoServiceNeeds(obdInfoServiceNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ObdMonitorServiceNeeds obdMonitorServiceNeeds = (ObdMonitorServiceNeeds)theEObject;
                T result = this.caseObdMonitorServiceNeeds(obdMonitorServiceNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                ObdPidServiceNeeds obdPidServiceNeeds = (ObdPidServiceNeeds)theEObject;
                T result = this.caseObdPidServiceNeeds(obdPidServiceNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                ObdRatioServiceNeeds obdRatioServiceNeeds = (ObdRatioServiceNeeds)theEObject;
                T result = this.caseObdRatioServiceNeeds(obdRatioServiceNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                SupervisedEntityNeeds supervisedEntityNeeds = (SupervisedEntityNeeds)theEObject;
                T result = this.caseSupervisedEntityNeeds(supervisedEntityNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseComMgrUserNeeds(ComMgrUserNeeds object) {
        return null;
    }

    public T caseServiceNeeds(ServiceNeeds object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

