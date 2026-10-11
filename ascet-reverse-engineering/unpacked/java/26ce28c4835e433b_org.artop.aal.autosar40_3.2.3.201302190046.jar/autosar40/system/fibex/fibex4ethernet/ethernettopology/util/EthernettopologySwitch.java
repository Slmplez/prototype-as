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
package autosar40.system.fibex.fibex4ethernet.ethernettopology.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCluster;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetClusterConditional;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetClusterContent;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationConnector;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationController;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationControllerConditional;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationControllerContent;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetPhysicalChannel;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationClusterContent;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationControllerContent;
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
public class EthernettopologySwitch<T> {
    protected static EthernettopologyPackage modelPackage;

    public EthernettopologySwitch() {
        if (modelPackage == null) {
            modelPackage = EthernettopologyPackage.eINSTANCE;
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
                EthernetCluster ethernetCluster = (EthernetCluster)theEObject;
                T result = this.caseEthernetCluster(ethernetCluster);
                if (result == null) {
                    result = this.caseCommunicationCluster(ethernetCluster);
                }
                if (result == null) {
                    result = this.caseFibexElement(ethernetCluster);
                }
                if (result == null) {
                    result = this.casePackageableElement(ethernetCluster);
                }
                if (result == null) {
                    result = this.caseCollectableElement(ethernetCluster);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ethernetCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ethernetCluster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ethernetCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ethernetCluster);
                }
                if (result == null) {
                    result = this.caseReferrable(ethernetCluster);
                }
                if (result == null) {
                    result = this.caseARObject(ethernetCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable(ethernetCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(ethernetCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                EthernetClusterConditional ethernetClusterConditional = (EthernetClusterConditional)theEObject;
                T result = this.caseEthernetClusterConditional(ethernetClusterConditional);
                if (result == null) {
                    result = this.caseEthernetClusterContent(ethernetClusterConditional);
                }
                if (result == null) {
                    result = this.caseCommunicationClusterContent(ethernetClusterConditional);
                }
                if (result == null) {
                    result = this.caseARObject(ethernetClusterConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(ethernetClusterConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                EthernetClusterContent ethernetClusterContent = (EthernetClusterContent)theEObject;
                T result = this.caseEthernetClusterContent(ethernetClusterContent);
                if (result == null) {
                    result = this.caseCommunicationClusterContent(ethernetClusterContent);
                }
                if (result == null) {
                    result = this.caseARObject(ethernetClusterContent);
                }
                if (result == null) {
                    result = this.caseGARObject(ethernetClusterContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                EthernetCommunicationController ethernetCommunicationController = (EthernetCommunicationController)theEObject;
                T result = this.caseEthernetCommunicationController(ethernetCommunicationController);
                if (result == null) {
                    result = this.caseCommunicationController(ethernetCommunicationController);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ethernetCommunicationController);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ethernetCommunicationController);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ethernetCommunicationController);
                }
                if (result == null) {
                    result = this.caseReferrable(ethernetCommunicationController);
                }
                if (result == null) {
                    result = this.caseARObject(ethernetCommunicationController);
                }
                if (result == null) {
                    result = this.caseGReferrable(ethernetCommunicationController);
                }
                if (result == null) {
                    result = this.caseGARObject(ethernetCommunicationController);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                EthernetCommunicationControllerConditional ethernetCommunicationControllerConditional = (EthernetCommunicationControllerConditional)theEObject;
                T result = this.caseEthernetCommunicationControllerConditional(ethernetCommunicationControllerConditional);
                if (result == null) {
                    result = this.caseEthernetCommunicationControllerContent(ethernetCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseCommunicationControllerContent(ethernetCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseARObject(ethernetCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(ethernetCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                EthernetCommunicationControllerContent ethernetCommunicationControllerContent = (EthernetCommunicationControllerContent)theEObject;
                T result = this.caseEthernetCommunicationControllerContent(ethernetCommunicationControllerContent);
                if (result == null) {
                    result = this.caseCommunicationControllerContent(ethernetCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseARObject(ethernetCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseGARObject(ethernetCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                EthernetPhysicalChannel ethernetPhysicalChannel = (EthernetPhysicalChannel)theEObject;
                T result = this.caseEthernetPhysicalChannel(ethernetPhysicalChannel);
                if (result == null) {
                    result = this.casePhysicalChannel(ethernetPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ethernetPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ethernetPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ethernetPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseReferrable(ethernetPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseARObject(ethernetPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGReferrable(ethernetPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(ethernetPhysicalChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                EthernetCommunicationConnector ethernetCommunicationConnector = (EthernetCommunicationConnector)theEObject;
                T result = this.caseEthernetCommunicationConnector(ethernetCommunicationConnector);
                if (result == null) {
                    result = this.caseCommunicationConnector(ethernetCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ethernetCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ethernetCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ethernetCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseReferrable(ethernetCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseARObject(ethernetCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(ethernetCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(ethernetCommunicationConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseEthernetCluster(EthernetCluster object) {
        return null;
    }

    public T caseEthernetClusterConditional(EthernetClusterConditional object) {
        return null;
    }

    public T caseEthernetClusterContent(EthernetClusterContent object) {
        return null;
    }

    public T caseEthernetCommunicationController(EthernetCommunicationController object) {
        return null;
    }

    public T caseEthernetCommunicationControllerConditional(EthernetCommunicationControllerConditional object) {
        return null;
    }

    public T caseEthernetCommunicationControllerContent(EthernetCommunicationControllerContent object) {
        return null;
    }

    public T caseEthernetPhysicalChannel(EthernetPhysicalChannel object) {
        return null;
    }

    public T caseEthernetCommunicationConnector(EthernetCommunicationConnector object) {
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

    public T caseCommunicationCluster(CommunicationCluster object) {
        return null;
    }

    public T caseCommunicationClusterContent(CommunicationClusterContent object) {
        return null;
    }

    public T caseCommunicationController(CommunicationController object) {
        return null;
    }

    public T caseCommunicationControllerContent(CommunicationControllerContent object) {
        return null;
    }

    public T casePhysicalChannel(PhysicalChannel object) {
        return null;
    }

    public T caseCommunicationConnector(CommunicationConnector object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

