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
package autosar3x.system.fibex.fibexcore.coretopology.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.coretopology.CommConnectorPort;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
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
                    result = this.caseARObject(commConnectorPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(commConnectorPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)commConnectorPort);
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
                CommunicationCluster communicationCluster = (CommunicationCluster)theEObject;
                T result = this.caseCommunicationCluster(communicationCluster);
                if (result == null) {
                    result = this.caseFibexElement(communicationCluster);
                }
                if (result == null) {
                    result = this.casePackageableElement(communicationCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(communicationCluster);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(communicationCluster);
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
            case 2: {
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
            case 3: {
                CommunicationConnector communicationConnector = (CommunicationConnector)theEObject;
                T result = this.caseCommunicationConnector(communicationConnector);
                if (result == null) {
                    result = this.caseIdentifiable(communicationConnector);
                }
                if (result == null) {
                    result = this.caseARObject(communicationConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)communicationConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                CommunicationController communicationController = (CommunicationController)theEObject;
                T result = this.caseCommunicationController(communicationController);
                if (result == null) {
                    result = this.caseIdentifiable(communicationController);
                }
                if (result == null) {
                    result = this.caseARObject(communicationController);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationController);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)communicationController);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationController);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                EcuInstance ecuInstance = (EcuInstance)theEObject;
                T result = this.caseEcuInstance(ecuInstance);
                if (result == null) {
                    result = this.caseFibexElement(ecuInstance);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecuInstance);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuInstance);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecuInstance);
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
        }
        return this.defaultCase(theEObject);
    }

    public T caseCommConnectorPort(CommConnectorPort object) {
        return null;
    }

    public T caseCommunicationCluster(CommunicationCluster object) {
        return null;
    }

    public T casePhysicalChannel(PhysicalChannel object) {
        return null;
    }

    public T caseCommunicationConnector(CommunicationConnector object) {
        return null;
    }

    public T caseCommunicationController(CommunicationController object) {
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

    public T caseFibexElement(FibexElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

