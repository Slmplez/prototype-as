/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.system.fibex.fibexcore.coretopology.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.coretopology.CommConnectorPort;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationClusterContent;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnectorRefConditional;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationControllerContent;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCycle;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.CycleCounter;
import autosar40.system.fibex.fibexcore.coretopology.CycleRepetition;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CoretopologySwitch<T> {
    protected static CoretopologyPackage modelPackage;

    public CoretopologySwitch() {
        if (modelPackage == null) {
            modelPackage = CoretopologyPackage.eINSTANCE;
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
                CommConnectorPort commConnectorPort = (CommConnectorPort)theEObject;
                T result = this.caseCommConnectorPort(commConnectorPort);
                if (result == null) {
                    result = this.caseIdentifiable(commConnectorPort);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(commConnectorPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(commConnectorPort);
                }
                if (result == null) {
                    result = this.caseReferrable(commConnectorPort);
                }
                if (result == null) {
                    result = this.caseARObject(commConnectorPort);
                }
                if (result == null) {
                    result = this.caseGReferrable(commConnectorPort);
                }
                if (result == null) {
                    result = this.caseGARObject(commConnectorPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CommunicationConnector communicationConnector = (CommunicationConnector)theEObject;
                T result = this.caseCommunicationConnector(communicationConnector);
                if (result == null) {
                    result = this.caseIdentifiable(communicationConnector);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(communicationConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationConnector);
                }
                if (result == null) {
                    result = this.caseReferrable(communicationConnector);
                }
                if (result == null) {
                    result = this.caseARObject(communicationConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(communicationConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                CommunicationController communicationController = (CommunicationController)theEObject;
                T result = this.caseCommunicationController(communicationController);
                if (result == null) {
                    result = this.caseIdentifiable(communicationController);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(communicationController);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationController);
                }
                if (result == null) {
                    result = this.caseReferrable(communicationController);
                }
                if (result == null) {
                    result = this.caseARObject(communicationController);
                }
                if (result == null) {
                    result = this.caseGReferrable(communicationController);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationController);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                PhysicalChannel physicalChannel = (PhysicalChannel)theEObject;
                T result = this.casePhysicalChannel(physicalChannel);
                if (result == null) {
                    result = this.caseIdentifiable(physicalChannel);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(physicalChannel);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(physicalChannel);
                }
                if (result == null) {
                    result = this.caseReferrable(physicalChannel);
                }
                if (result == null) {
                    result = this.caseARObject(physicalChannel);
                }
                if (result == null) {
                    result = this.caseGReferrable(physicalChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(physicalChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                CommunicationConnectorRefConditional communicationConnectorRefConditional = (CommunicationConnectorRefConditional)theEObject;
                T result = this.caseCommunicationConnectorRefConditional(communicationConnectorRefConditional);
                if (result == null) {
                    result = this.caseARObject(communicationConnectorRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationConnectorRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                CommunicationClusterContent communicationClusterContent = (CommunicationClusterContent)theEObject;
                T result = this.caseCommunicationClusterContent(communicationClusterContent);
                if (result == null) {
                    result = this.caseARObject(communicationClusterContent);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationClusterContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                CommunicationControllerContent communicationControllerContent = (CommunicationControllerContent)theEObject;
                T result = this.caseCommunicationControllerContent(communicationControllerContent);
                if (result == null) {
                    result = this.caseARObject(communicationControllerContent);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationControllerContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                CommunicationCluster communicationCluster = (CommunicationCluster)theEObject;
                T result = this.caseCommunicationCluster(communicationCluster);
                if (result == null) {
                    result = this.caseFibexElement(communicationCluster);
                }
                if (result == null) {
                    result = this.casePackageableElement(communicationCluster);
                }
                if (result == null) {
                    result = this.caseCollectableElement(communicationCluster);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(communicationCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(communicationCluster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(communicationCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationCluster);
                }
                if (result == null) {
                    result = this.caseReferrable(communicationCluster);
                }
                if (result == null) {
                    result = this.caseARObject(communicationCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable(communicationCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                CommunicationCycle communicationCycle = (CommunicationCycle)theEObject;
                T result = this.caseCommunicationCycle(communicationCycle);
                if (result == null) {
                    result = this.caseARObject(communicationCycle);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationCycle);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                CycleCounter cycleCounter = (CycleCounter)theEObject;
                T result = this.caseCycleCounter(cycleCounter);
                if (result == null) {
                    result = this.caseCommunicationCycle(cycleCounter);
                }
                if (result == null) {
                    result = this.caseARObject(cycleCounter);
                }
                if (result == null) {
                    result = this.caseGARObject(cycleCounter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                CycleRepetition cycleRepetition = (CycleRepetition)theEObject;
                T result = this.caseCycleRepetition(cycleRepetition);
                if (result == null) {
                    result = this.caseCommunicationCycle(cycleRepetition);
                }
                if (result == null) {
                    result = this.caseARObject(cycleRepetition);
                }
                if (result == null) {
                    result = this.caseGARObject(cycleRepetition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                EcuInstance ecuInstance = (EcuInstance)theEObject;
                T result = this.caseEcuInstance(ecuInstance);
                if (result == null) {
                    result = this.caseFibexElement(ecuInstance);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecuInstance);
                }
                if (result == null) {
                    result = this.caseCollectableElement(ecuInstance);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecuInstance);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuInstance);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecuInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuInstance);
                }
                if (result == null) {
                    result = this.caseReferrable(ecuInstance);
                }
                if (result == null) {
                    result = this.caseARObject(ecuInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecuInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCommConnectorPort(CommConnectorPort object) {
        return null;
    }

    public T caseCommunicationConnector(CommunicationConnector object) {
        return null;
    }

    public T caseCommunicationController(CommunicationController object) {
        return null;
    }

    public T casePhysicalChannel(PhysicalChannel object) {
        return null;
    }

    public T caseCommunicationConnectorRefConditional(CommunicationConnectorRefConditional object) {
        return null;
    }

    public T caseCommunicationClusterContent(CommunicationClusterContent object) {
        return null;
    }

    public T caseCommunicationControllerContent(CommunicationControllerContent object) {
        return null;
    }

    public T caseCommunicationCluster(CommunicationCluster object) {
        return null;
    }

    public T caseCommunicationCycle(CommunicationCycle object) {
        return null;
    }

    public T caseCycleCounter(CycleCounter object) {
        return null;
    }

    public T caseCycleRepetition(CycleRepetition object) {
        return null;
    }

    public T caseEcuInstance(EcuInstance object) {
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

    public T caseCollectableElement(CollectableElement object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseFibexElement(FibexElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

