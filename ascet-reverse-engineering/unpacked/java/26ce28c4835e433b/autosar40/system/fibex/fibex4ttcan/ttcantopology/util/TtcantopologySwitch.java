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
package autosar40.system.fibex.fibex4ttcan.ttcantopology.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCluster;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanClusterContent;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationConnector;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationController;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerContent;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanPhysicalChannel;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCluster;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanClusterConditional;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanClusterContent;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationConnector;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationController;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationControllerConditional;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationControllerContent;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanPhysicalChannel;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
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
public class TtcantopologySwitch<T> {
    protected static TtcantopologyPackage modelPackage;

    public TtcantopologySwitch() {
        if (modelPackage == null) {
            modelPackage = TtcantopologyPackage.eINSTANCE;
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
                TtcanCluster ttcanCluster = (TtcanCluster)theEObject;
                T result = this.caseTtcanCluster(ttcanCluster);
                if (result == null) {
                    result = this.caseAbstractCanCluster(ttcanCluster);
                }
                if (result == null) {
                    result = this.caseCommunicationCluster(ttcanCluster);
                }
                if (result == null) {
                    result = this.caseFibexElement(ttcanCluster);
                }
                if (result == null) {
                    result = this.casePackageableElement(ttcanCluster);
                }
                if (result == null) {
                    result = this.caseCollectableElement(ttcanCluster);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ttcanCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ttcanCluster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ttcanCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ttcanCluster);
                }
                if (result == null) {
                    result = this.caseReferrable(ttcanCluster);
                }
                if (result == null) {
                    result = this.caseARObject(ttcanCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable(ttcanCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(ttcanCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                TtcanClusterConditional ttcanClusterConditional = (TtcanClusterConditional)theEObject;
                T result = this.caseTtcanClusterConditional(ttcanClusterConditional);
                if (result == null) {
                    result = this.caseTtcanClusterContent(ttcanClusterConditional);
                }
                if (result == null) {
                    result = this.caseAbstractCanClusterContent(ttcanClusterConditional);
                }
                if (result == null) {
                    result = this.caseCommunicationClusterContent(ttcanClusterConditional);
                }
                if (result == null) {
                    result = this.caseARObject(ttcanClusterConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(ttcanClusterConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                TtcanClusterContent ttcanClusterContent = (TtcanClusterContent)theEObject;
                T result = this.caseTtcanClusterContent(ttcanClusterContent);
                if (result == null) {
                    result = this.caseAbstractCanClusterContent(ttcanClusterContent);
                }
                if (result == null) {
                    result = this.caseCommunicationClusterContent(ttcanClusterContent);
                }
                if (result == null) {
                    result = this.caseARObject(ttcanClusterContent);
                }
                if (result == null) {
                    result = this.caseGARObject(ttcanClusterContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                TtcanCommunicationConnector ttcanCommunicationConnector = (TtcanCommunicationConnector)theEObject;
                T result = this.caseTtcanCommunicationConnector(ttcanCommunicationConnector);
                if (result == null) {
                    result = this.caseAbstractCanCommunicationConnector(ttcanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseCommunicationConnector(ttcanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ttcanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ttcanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ttcanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseReferrable(ttcanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseARObject(ttcanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(ttcanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(ttcanCommunicationConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                TtcanCommunicationController ttcanCommunicationController = (TtcanCommunicationController)theEObject;
                T result = this.caseTtcanCommunicationController(ttcanCommunicationController);
                if (result == null) {
                    result = this.caseAbstractCanCommunicationController(ttcanCommunicationController);
                }
                if (result == null) {
                    result = this.caseCommunicationController(ttcanCommunicationController);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ttcanCommunicationController);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ttcanCommunicationController);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ttcanCommunicationController);
                }
                if (result == null) {
                    result = this.caseReferrable(ttcanCommunicationController);
                }
                if (result == null) {
                    result = this.caseARObject(ttcanCommunicationController);
                }
                if (result == null) {
                    result = this.caseGReferrable(ttcanCommunicationController);
                }
                if (result == null) {
                    result = this.caseGARObject(ttcanCommunicationController);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                TtcanCommunicationControllerConditional ttcanCommunicationControllerConditional = (TtcanCommunicationControllerConditional)theEObject;
                T result = this.caseTtcanCommunicationControllerConditional(ttcanCommunicationControllerConditional);
                if (result == null) {
                    result = this.caseTtcanCommunicationControllerContent(ttcanCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseAbstractCanCommunicationControllerContent(ttcanCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseCommunicationControllerContent(ttcanCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseARObject(ttcanCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(ttcanCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                TtcanCommunicationControllerContent ttcanCommunicationControllerContent = (TtcanCommunicationControllerContent)theEObject;
                T result = this.caseTtcanCommunicationControllerContent(ttcanCommunicationControllerContent);
                if (result == null) {
                    result = this.caseAbstractCanCommunicationControllerContent(ttcanCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseCommunicationControllerContent(ttcanCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseARObject(ttcanCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseGARObject(ttcanCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                TtcanPhysicalChannel ttcanPhysicalChannel = (TtcanPhysicalChannel)theEObject;
                T result = this.caseTtcanPhysicalChannel(ttcanPhysicalChannel);
                if (result == null) {
                    result = this.caseAbstractCanPhysicalChannel(ttcanPhysicalChannel);
                }
                if (result == null) {
                    result = this.casePhysicalChannel(ttcanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ttcanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ttcanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ttcanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseReferrable(ttcanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseARObject(ttcanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGReferrable(ttcanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(ttcanPhysicalChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseTtcanCluster(TtcanCluster object) {
        return null;
    }

    public T caseTtcanClusterConditional(TtcanClusterConditional object) {
        return null;
    }

    public T caseTtcanClusterContent(TtcanClusterContent object) {
        return null;
    }

    public T caseTtcanCommunicationConnector(TtcanCommunicationConnector object) {
        return null;
    }

    public T caseTtcanCommunicationController(TtcanCommunicationController object) {
        return null;
    }

    public T caseTtcanCommunicationControllerConditional(TtcanCommunicationControllerConditional object) {
        return null;
    }

    public T caseTtcanCommunicationControllerContent(TtcanCommunicationControllerContent object) {
        return null;
    }

    public T caseTtcanPhysicalChannel(TtcanPhysicalChannel object) {
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

    public T caseAbstractCanCluster(AbstractCanCluster object) {
        return null;
    }

    public T caseCommunicationClusterContent(CommunicationClusterContent object) {
        return null;
    }

    public T caseAbstractCanClusterContent(AbstractCanClusterContent object) {
        return null;
    }

    public T caseCommunicationConnector(CommunicationConnector object) {
        return null;
    }

    public T caseAbstractCanCommunicationConnector(AbstractCanCommunicationConnector object) {
        return null;
    }

    public T caseCommunicationController(CommunicationController object) {
        return null;
    }

    public T caseAbstractCanCommunicationController(AbstractCanCommunicationController object) {
        return null;
    }

    public T caseCommunicationControllerContent(CommunicationControllerContent object) {
        return null;
    }

    public T caseAbstractCanCommunicationControllerContent(AbstractCanCommunicationControllerContent object) {
        return null;
    }

    public T casePhysicalChannel(PhysicalChannel object) {
        return null;
    }

    public T caseAbstractCanPhysicalChannel(AbstractCanPhysicalChannel object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

