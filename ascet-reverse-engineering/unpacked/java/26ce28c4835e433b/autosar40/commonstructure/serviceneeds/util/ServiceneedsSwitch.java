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
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
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
                BswMgrNeeds bswMgrNeeds = (BswMgrNeeds)theEObject;
                T result = this.caseBswMgrNeeds(bswMgrNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(bswMgrNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(bswMgrNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(bswMgrNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(bswMgrNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(bswMgrNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(bswMgrNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(bswMgrNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(bswMgrNeeds);
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
                    result = this.caseMultilanguageReferrable(serviceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(serviceNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(serviceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(serviceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(serviceNeeds);
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
                ComMgrUserNeeds comMgrUserNeeds = (ComMgrUserNeeds)theEObject;
                T result = this.caseComMgrUserNeeds(comMgrUserNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(comMgrUserNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                CryptoServiceNeeds cryptoServiceNeeds = (CryptoServiceNeeds)theEObject;
                T result = this.caseCryptoServiceNeeds(cryptoServiceNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(cryptoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(cryptoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(cryptoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(cryptoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(cryptoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(cryptoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(cryptoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(cryptoServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                DiagEventDebounceAlgorithm diagEventDebounceAlgorithm = (DiagEventDebounceAlgorithm)theEObject;
                T result = this.caseDiagEventDebounceAlgorithm(diagEventDebounceAlgorithm);
                if (result == null) {
                    result = this.caseIdentifiable(diagEventDebounceAlgorithm);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(diagEventDebounceAlgorithm);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagEventDebounceAlgorithm);
                }
                if (result == null) {
                    result = this.caseReferrable(diagEventDebounceAlgorithm);
                }
                if (result == null) {
                    result = this.caseARObject(diagEventDebounceAlgorithm);
                }
                if (result == null) {
                    result = this.caseGReferrable(diagEventDebounceAlgorithm);
                }
                if (result == null) {
                    result = this.caseGARObject(diagEventDebounceAlgorithm);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                DiagEventDebounceCounterBased diagEventDebounceCounterBased = (DiagEventDebounceCounterBased)theEObject;
                T result = this.caseDiagEventDebounceCounterBased(diagEventDebounceCounterBased);
                if (result == null) {
                    result = this.caseDiagEventDebounceAlgorithm(diagEventDebounceCounterBased);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagEventDebounceCounterBased);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(diagEventDebounceCounterBased);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagEventDebounceCounterBased);
                }
                if (result == null) {
                    result = this.caseReferrable(diagEventDebounceCounterBased);
                }
                if (result == null) {
                    result = this.caseARObject(diagEventDebounceCounterBased);
                }
                if (result == null) {
                    result = this.caseGReferrable(diagEventDebounceCounterBased);
                }
                if (result == null) {
                    result = this.caseGARObject(diagEventDebounceCounterBased);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                DiagEventDebounceMonitorInternal diagEventDebounceMonitorInternal = (DiagEventDebounceMonitorInternal)theEObject;
                T result = this.caseDiagEventDebounceMonitorInternal(diagEventDebounceMonitorInternal);
                if (result == null) {
                    result = this.caseDiagEventDebounceAlgorithm(diagEventDebounceMonitorInternal);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagEventDebounceMonitorInternal);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(diagEventDebounceMonitorInternal);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagEventDebounceMonitorInternal);
                }
                if (result == null) {
                    result = this.caseReferrable(diagEventDebounceMonitorInternal);
                }
                if (result == null) {
                    result = this.caseARObject(diagEventDebounceMonitorInternal);
                }
                if (result == null) {
                    result = this.caseGReferrable(diagEventDebounceMonitorInternal);
                }
                if (result == null) {
                    result = this.caseGARObject(diagEventDebounceMonitorInternal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                DiagEventDebounceTimeBased diagEventDebounceTimeBased = (DiagEventDebounceTimeBased)theEObject;
                T result = this.caseDiagEventDebounceTimeBased(diagEventDebounceTimeBased);
                if (result == null) {
                    result = this.caseDiagEventDebounceAlgorithm(diagEventDebounceTimeBased);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagEventDebounceTimeBased);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(diagEventDebounceTimeBased);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagEventDebounceTimeBased);
                }
                if (result == null) {
                    result = this.caseReferrable(diagEventDebounceTimeBased);
                }
                if (result == null) {
                    result = this.caseARObject(diagEventDebounceTimeBased);
                }
                if (result == null) {
                    result = this.caseGReferrable(diagEventDebounceTimeBased);
                }
                if (result == null) {
                    result = this.caseGARObject(diagEventDebounceTimeBased);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                DiagnosticCapabilityElement diagnosticCapabilityElement = (DiagnosticCapabilityElement)theEObject;
                T result = this.caseDiagnosticCapabilityElement(diagnosticCapabilityElement);
                if (result == null) {
                    result = this.caseServiceNeeds(diagnosticCapabilityElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagnosticCapabilityElement);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(diagnosticCapabilityElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagnosticCapabilityElement);
                }
                if (result == null) {
                    result = this.caseReferrable(diagnosticCapabilityElement);
                }
                if (result == null) {
                    result = this.caseARObject(diagnosticCapabilityElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(diagnosticCapabilityElement);
                }
                if (result == null) {
                    result = this.caseGARObject(diagnosticCapabilityElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                DiagnosticCommunicationManagerNeeds diagnosticCommunicationManagerNeeds = (DiagnosticCommunicationManagerNeeds)theEObject;
                T result = this.caseDiagnosticCommunicationManagerNeeds(diagnosticCommunicationManagerNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCapabilityElement(diagnosticCommunicationManagerNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(diagnosticCommunicationManagerNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagnosticCommunicationManagerNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(diagnosticCommunicationManagerNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagnosticCommunicationManagerNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(diagnosticCommunicationManagerNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(diagnosticCommunicationManagerNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(diagnosticCommunicationManagerNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(diagnosticCommunicationManagerNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                DiagnosticEventManagerNeeds diagnosticEventManagerNeeds = (DiagnosticEventManagerNeeds)theEObject;
                T result = this.caseDiagnosticEventManagerNeeds(diagnosticEventManagerNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCapabilityElement(diagnosticEventManagerNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(diagnosticEventManagerNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagnosticEventManagerNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(diagnosticEventManagerNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagnosticEventManagerNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(diagnosticEventManagerNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(diagnosticEventManagerNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(diagnosticEventManagerNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(diagnosticEventManagerNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                DiagnosticEventNeeds diagnosticEventNeeds = (DiagnosticEventNeeds)theEObject;
                T result = this.caseDiagnosticEventNeeds(diagnosticEventNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCapabilityElement(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(diagnosticEventNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                FunctionInhibitionNeeds functionInhibitionNeeds = (FunctionInhibitionNeeds)theEObject;
                T result = this.caseFunctionInhibitionNeeds(functionInhibitionNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(functionInhibitionNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                DiagnosticIoControlNeeds diagnosticIoControlNeeds = (DiagnosticIoControlNeeds)theEObject;
                T result = this.caseDiagnosticIoControlNeeds(diagnosticIoControlNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCapabilityElement(diagnosticIoControlNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(diagnosticIoControlNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagnosticIoControlNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(diagnosticIoControlNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagnosticIoControlNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(diagnosticIoControlNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(diagnosticIoControlNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(diagnosticIoControlNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(diagnosticIoControlNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                DiagnosticRoutineNeeds diagnosticRoutineNeeds = (DiagnosticRoutineNeeds)theEObject;
                T result = this.caseDiagnosticRoutineNeeds(diagnosticRoutineNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCapabilityElement(diagnosticRoutineNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(diagnosticRoutineNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagnosticRoutineNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(diagnosticRoutineNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagnosticRoutineNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(diagnosticRoutineNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(diagnosticRoutineNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(diagnosticRoutineNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(diagnosticRoutineNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                DiagnosticValueNeeds diagnosticValueNeeds = (DiagnosticValueNeeds)theEObject;
                T result = this.caseDiagnosticValueNeeds(diagnosticValueNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCapabilityElement(diagnosticValueNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(diagnosticValueNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(diagnosticValueNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(diagnosticValueNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(diagnosticValueNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(diagnosticValueNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(diagnosticValueNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(diagnosticValueNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(diagnosticValueNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                DltUserNeeds dltUserNeeds = (DltUserNeeds)theEObject;
                T result = this.caseDltUserNeeds(dltUserNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(dltUserNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dltUserNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(dltUserNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dltUserNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(dltUserNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(dltUserNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(dltUserNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(dltUserNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                EcuStateMgrUserNeeds ecuStateMgrUserNeeds = (EcuStateMgrUserNeeds)theEObject;
                T result = this.caseEcuStateMgrUserNeeds(ecuStateMgrUserNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuStateMgrUserNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                ObdControlServiceNeeds obdControlServiceNeeds = (ObdControlServiceNeeds)theEObject;
                T result = this.caseObdControlServiceNeeds(obdControlServiceNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCapabilityElement(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(obdControlServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                ObdInfoServiceNeeds obdInfoServiceNeeds = (ObdInfoServiceNeeds)theEObject;
                T result = this.caseObdInfoServiceNeeds(obdInfoServiceNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCapabilityElement(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(obdInfoServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                ObdMonitorServiceNeeds obdMonitorServiceNeeds = (ObdMonitorServiceNeeds)theEObject;
                T result = this.caseObdMonitorServiceNeeds(obdMonitorServiceNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCapabilityElement(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(obdMonitorServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                ObdPidServiceNeeds obdPidServiceNeeds = (ObdPidServiceNeeds)theEObject;
                T result = this.caseObdPidServiceNeeds(obdPidServiceNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCapabilityElement(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(obdPidServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                ObdRatioServiceNeeds obdRatioServiceNeeds = (ObdRatioServiceNeeds)theEObject;
                T result = this.caseObdRatioServiceNeeds(obdRatioServiceNeeds);
                if (result == null) {
                    result = this.caseDiagnosticCapabilityElement(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseServiceNeeds(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(obdRatioServiceNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                RoleBasedDataAssignment roleBasedDataAssignment = (RoleBasedDataAssignment)theEObject;
                T result = this.caseRoleBasedDataAssignment(roleBasedDataAssignment);
                if (result == null) {
                    result = this.caseARObject(roleBasedDataAssignment);
                }
                if (result == null) {
                    result = this.caseGARObject(roleBasedDataAssignment);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 24: {
                ServiceDependency serviceDependency = (ServiceDependency)theEObject;
                T result = this.caseServiceDependency(serviceDependency);
                if (result == null) {
                    result = this.caseARObject(serviceDependency);
                }
                if (result == null) {
                    result = this.caseGARObject(serviceDependency);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                SupervisedEntityNeeds supervisedEntityNeeds = (SupervisedEntityNeeds)theEObject;
                T result = this.caseSupervisedEntityNeeds(supervisedEntityNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(supervisedEntityNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 26: {
                SyncTimeBaseMgrUserNeeds syncTimeBaseMgrUserNeeds = (SyncTimeBaseMgrUserNeeds)theEObject;
                T result = this.caseSyncTimeBaseMgrUserNeeds(syncTimeBaseMgrUserNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(syncTimeBaseMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(syncTimeBaseMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(syncTimeBaseMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(syncTimeBaseMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(syncTimeBaseMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(syncTimeBaseMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(syncTimeBaseMgrUserNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(syncTimeBaseMgrUserNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 27: {
                NvBlockNeeds nvBlockNeeds = (NvBlockNeeds)theEObject;
                T result = this.caseNvBlockNeeds(nvBlockNeeds);
                if (result == null) {
                    result = this.caseServiceNeeds(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseIdentifiable(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseReferrable(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseARObject(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseGReferrable(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.caseGARObject(nvBlockNeeds);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBswMgrNeeds(BswMgrNeeds object) {
        return null;
    }

    public T caseServiceNeeds(ServiceNeeds object) {
        return null;
    }

    public T caseComMgrUserNeeds(ComMgrUserNeeds object) {
        return null;
    }

    public T caseCryptoServiceNeeds(CryptoServiceNeeds object) {
        return null;
    }

    public T caseDiagEventDebounceAlgorithm(DiagEventDebounceAlgorithm object) {
        return null;
    }

    public T caseDiagEventDebounceCounterBased(DiagEventDebounceCounterBased object) {
        return null;
    }

    public T caseDiagEventDebounceMonitorInternal(DiagEventDebounceMonitorInternal object) {
        return null;
    }

    public T caseDiagEventDebounceTimeBased(DiagEventDebounceTimeBased object) {
        return null;
    }

    public T caseDiagnosticCapabilityElement(DiagnosticCapabilityElement object) {
        return null;
    }

    public T caseDiagnosticCommunicationManagerNeeds(DiagnosticCommunicationManagerNeeds object) {
        return null;
    }

    public T caseDiagnosticEventManagerNeeds(DiagnosticEventManagerNeeds object) {
        return null;
    }

    public T caseDiagnosticEventNeeds(DiagnosticEventNeeds object) {
        return null;
    }

    public T caseFunctionInhibitionNeeds(FunctionInhibitionNeeds object) {
        return null;
    }

    public T caseDiagnosticIoControlNeeds(DiagnosticIoControlNeeds object) {
        return null;
    }

    public T caseDiagnosticRoutineNeeds(DiagnosticRoutineNeeds object) {
        return null;
    }

    public T caseDiagnosticValueNeeds(DiagnosticValueNeeds object) {
        return null;
    }

    public T caseDltUserNeeds(DltUserNeeds object) {
        return null;
    }

    public T caseEcuStateMgrUserNeeds(EcuStateMgrUserNeeds object) {
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

    public T caseRoleBasedDataAssignment(RoleBasedDataAssignment object) {
        return null;
    }

    public T caseServiceDependency(ServiceDependency object) {
        return null;
    }

    public T caseSupervisedEntityNeeds(SupervisedEntityNeeds object) {
        return null;
    }

    public T caseSyncTimeBaseMgrUserNeeds(SyncTimeBaseMgrUserNeeds object) {
        return null;
    }

    public T caseNvBlockNeeds(NvBlockNeeds object) {
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

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
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

