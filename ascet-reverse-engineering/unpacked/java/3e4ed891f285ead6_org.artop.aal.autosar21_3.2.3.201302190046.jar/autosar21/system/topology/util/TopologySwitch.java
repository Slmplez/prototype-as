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
package autosar21.system.topology.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.topology.CANBus;
import autosar21.system.topology.CANCommunicationPortInstance;
import autosar21.system.topology.CommunicationCluster;
import autosar21.system.topology.Connector;
import autosar21.system.topology.ECUCommunicationPortInstance;
import autosar21.system.topology.ECUInstance;
import autosar21.system.topology.FlexrayCluster;
import autosar21.system.topology.FlexrayCommunicationPortInstance;
import autosar21.system.topology.Hub;
import autosar21.system.topology.LINCommunicationPortInstance;
import autosar21.system.topology.LINSubBus;
import autosar21.system.topology.PhysicalChannel;
import autosar21.system.topology.PhysicalMediumSegment;
import autosar21.system.topology.SystemTopologyType;
import autosar21.system.topology.TopologyElement;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.UnspecifiedConnection;
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
public class TopologySwitch<T> {
    protected static TopologyPackage modelPackage;

    public TopologySwitch() {
        if (modelPackage == null) {
            modelPackage = TopologyPackage.eINSTANCE;
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
                CANBus canBus = (CANBus)theEObject;
                T result = this.caseCANBus(canBus);
                if (result == null) {
                    result = this.caseCommunicationCluster(canBus);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canBus);
                }
                if (result == null) {
                    result = this.caseARObject(canBus);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canBus);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)canBus);
                }
                if (result == null) {
                    result = this.caseGARObject(canBus);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CANCommunicationPortInstance canCommunicationPortInstance = (CANCommunicationPortInstance)theEObject;
                T result = this.caseCANCommunicationPortInstance(canCommunicationPortInstance);
                if (result == null) {
                    result = this.caseECUCommunicationPortInstance(canCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseARObject(canCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)canCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(canCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ECUCommunicationPortInstance ecuCommunicationPortInstance = (ECUCommunicationPortInstance)theEObject;
                T result = this.caseECUCommunicationPortInstance(ecuCommunicationPortInstance);
                if (result == null) {
                    result = this.caseIdentifiable(ecuCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseARObject(ecuCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)ecuCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Connector connector = (Connector)theEObject;
                T result = this.caseConnector(connector);
                if (result == null) {
                    result = this.caseIdentifiable(connector);
                }
                if (result == null) {
                    result = this.caseARObject(connector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(connector);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)connector);
                }
                if (result == null) {
                    result = this.caseGARObject(connector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ECUInstance ecuInstance = (ECUInstance)theEObject;
                T result = this.caseECUInstance(ecuInstance);
                if (result == null) {
                    result = this.caseTopologyElement(ecuInstance);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuInstance);
                }
                if (result == null) {
                    result = this.caseARObject(ecuInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)ecuInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                TopologyElement topologyElement = (TopologyElement)theEObject;
                T result = this.caseTopologyElement(topologyElement);
                if (result == null) {
                    result = this.caseIdentifiable(topologyElement);
                }
                if (result == null) {
                    result = this.caseARObject(topologyElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(topologyElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)topologyElement);
                }
                if (result == null) {
                    result = this.caseGARObject(topologyElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                FlexrayCluster flexrayCluster = (FlexrayCluster)theEObject;
                T result = this.caseFlexrayCluster(flexrayCluster);
                if (result == null) {
                    result = this.caseCommunicationCluster(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexrayCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                FlexrayCommunicationPortInstance flexrayCommunicationPortInstance = (FlexrayCommunicationPortInstance)theEObject;
                T result = this.caseFlexrayCommunicationPortInstance(flexrayCommunicationPortInstance);
                if (result == null) {
                    result = this.caseECUCommunicationPortInstance(flexrayCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexrayCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                Hub hub = (Hub)theEObject;
                T result = this.caseHub(hub);
                if (result == null) {
                    result = this.caseTopologyElement(hub);
                }
                if (result == null) {
                    result = this.caseIdentifiable(hub);
                }
                if (result == null) {
                    result = this.caseARObject(hub);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(hub);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)hub);
                }
                if (result == null) {
                    result = this.caseGARObject(hub);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                LINCommunicationPortInstance linCommunicationPortInstance = (LINCommunicationPortInstance)theEObject;
                T result = this.caseLINCommunicationPortInstance(linCommunicationPortInstance);
                if (result == null) {
                    result = this.caseECUCommunicationPortInstance(linCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseARObject(linCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.caseGARObject(linCommunicationPortInstance);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                LINSubBus linSubBus = (LINSubBus)theEObject;
                T result = this.caseLINSubBus(linSubBus);
                if (result == null) {
                    result = this.caseCommunicationCluster(linSubBus);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linSubBus);
                }
                if (result == null) {
                    result = this.caseARObject(linSubBus);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linSubBus);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linSubBus);
                }
                if (result == null) {
                    result = this.caseGARObject(linSubBus);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                PhysicalChannel physicalChannel = (PhysicalChannel)theEObject;
                T result = this.casePhysicalChannel(physicalChannel);
                if (result == null) {
                    result = this.caseIdentifiable(physicalChannel);
                }
                if (result == null) {
                    result = this.caseARObject(physicalChannel);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(physicalChannel);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)physicalChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(physicalChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                PhysicalMediumSegment physicalMediumSegment = (PhysicalMediumSegment)theEObject;
                T result = this.casePhysicalMediumSegment(physicalMediumSegment);
                if (result == null) {
                    result = this.caseARObject(physicalMediumSegment);
                }
                if (result == null) {
                    result = this.caseGARObject(physicalMediumSegment);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                SystemTopologyType systemTopologyType = (SystemTopologyType)theEObject;
                T result = this.caseSystemTopologyType(systemTopologyType);
                if (result == null) {
                    result = this.caseARElement(systemTopologyType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(systemTopologyType);
                }
                if (result == null) {
                    result = this.casePackageableElement(systemTopologyType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(systemTopologyType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(systemTopologyType);
                }
                if (result == null) {
                    result = this.caseARObject(systemTopologyType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemTopologyType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)systemTopologyType);
                }
                if (result == null) {
                    result = this.caseGARObject(systemTopologyType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                UnspecifiedConnection unspecifiedConnection = (UnspecifiedConnection)theEObject;
                T result = this.caseUnspecifiedConnection(unspecifiedConnection);
                if (result == null) {
                    result = this.caseCommunicationCluster(unspecifiedConnection);
                }
                if (result == null) {
                    result = this.caseIdentifiable(unspecifiedConnection);
                }
                if (result == null) {
                    result = this.caseARObject(unspecifiedConnection);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(unspecifiedConnection);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)unspecifiedConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(unspecifiedConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                CommunicationCluster communicationCluster = (CommunicationCluster)theEObject;
                T result = this.caseCommunicationCluster(communicationCluster);
                if (result == null) {
                    result = this.caseIdentifiable(communicationCluster);
                }
                if (result == null) {
                    result = this.caseARObject(communicationCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)communicationCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCANBus(CANBus object) {
        return null;
    }

    public T caseCANCommunicationPortInstance(CANCommunicationPortInstance object) {
        return null;
    }

    public T caseECUCommunicationPortInstance(ECUCommunicationPortInstance object) {
        return null;
    }

    public T caseConnector(Connector object) {
        return null;
    }

    public T caseECUInstance(ECUInstance object) {
        return null;
    }

    public T caseTopologyElement(TopologyElement object) {
        return null;
    }

    public T caseFlexrayCluster(FlexrayCluster object) {
        return null;
    }

    public T caseFlexrayCommunicationPortInstance(FlexrayCommunicationPortInstance object) {
        return null;
    }

    public T caseHub(Hub object) {
        return null;
    }

    public T caseLINCommunicationPortInstance(LINCommunicationPortInstance object) {
        return null;
    }

    public T caseLINSubBus(LINSubBus object) {
        return null;
    }

    public T casePhysicalChannel(PhysicalChannel object) {
        return null;
    }

    public T casePhysicalMediumSegment(PhysicalMediumSegment object) {
        return null;
    }

    public T caseSystemTopologyType(SystemTopologyType object) {
        return null;
    }

    public T caseUnspecifiedConnection(UnspecifiedConnection object) {
        return null;
    }

    public T caseCommunicationCluster(CommunicationCluster object) {
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

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseNonSplitableElement(NonSplitableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

