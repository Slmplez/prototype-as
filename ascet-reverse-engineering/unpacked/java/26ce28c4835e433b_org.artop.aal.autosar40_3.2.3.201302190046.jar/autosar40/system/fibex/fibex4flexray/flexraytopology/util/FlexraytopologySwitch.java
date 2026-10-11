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
package autosar40.system.fibex.fibex4flexray.flexraytopology.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayClusterConditional;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayClusterContent;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationConnector;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerConditional;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerContent;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
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
public class FlexraytopologySwitch<T> {
    protected static FlexraytopologyPackage modelPackage;

    public FlexraytopologySwitch() {
        if (modelPackage == null) {
            modelPackage = FlexraytopologyPackage.eINSTANCE;
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
                FlexrayCluster flexrayCluster = (FlexrayCluster)theEObject;
                T result = this.caseFlexrayCluster(flexrayCluster);
                if (result == null) {
                    result = this.caseCommunicationCluster(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseFibexElement(flexrayCluster);
                }
                if (result == null) {
                    result = this.casePackageableElement(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseCollectableElement(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                FlexrayClusterConditional flexrayClusterConditional = (FlexrayClusterConditional)theEObject;
                T result = this.caseFlexrayClusterConditional(flexrayClusterConditional);
                if (result == null) {
                    result = this.caseFlexrayClusterContent(flexrayClusterConditional);
                }
                if (result == null) {
                    result = this.caseCommunicationClusterContent(flexrayClusterConditional);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayClusterConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayClusterConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                FlexrayClusterContent flexrayClusterContent = (FlexrayClusterContent)theEObject;
                T result = this.caseFlexrayClusterContent(flexrayClusterContent);
                if (result == null) {
                    result = this.caseCommunicationClusterContent(flexrayClusterContent);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayClusterContent);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayClusterContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                FlexrayCommunicationConnector flexrayCommunicationConnector = (FlexrayCommunicationConnector)theEObject;
                T result = this.caseFlexrayCommunicationConnector(flexrayCommunicationConnector);
                if (result == null) {
                    result = this.caseCommunicationConnector(flexrayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayCommunicationConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                FlexrayCommunicationController flexrayCommunicationController = (FlexrayCommunicationController)theEObject;
                T result = this.caseFlexrayCommunicationController(flexrayCommunicationController);
                if (result == null) {
                    result = this.caseCommunicationController(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayCommunicationController);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                FlexrayCommunicationControllerConditional flexrayCommunicationControllerConditional = (FlexrayCommunicationControllerConditional)theEObject;
                T result = this.caseFlexrayCommunicationControllerConditional(flexrayCommunicationControllerConditional);
                if (result == null) {
                    result = this.caseFlexrayCommunicationControllerContent(flexrayCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseCommunicationControllerContent(flexrayCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                FlexrayCommunicationControllerContent flexrayCommunicationControllerContent = (FlexrayCommunicationControllerContent)theEObject;
                T result = this.caseFlexrayCommunicationControllerContent(flexrayCommunicationControllerContent);
                if (result == null) {
                    result = this.caseCommunicationControllerContent(flexrayCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                FlexrayFifoConfiguration flexrayFifoConfiguration = (FlexrayFifoConfiguration)theEObject;
                T result = this.caseFlexrayFifoConfiguration(flexrayFifoConfiguration);
                if (result == null) {
                    result = this.caseARObject(flexrayFifoConfiguration);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayFifoConfiguration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                FlexrayPhysicalChannel flexrayPhysicalChannel = (FlexrayPhysicalChannel)theEObject;
                T result = this.caseFlexrayPhysicalChannel(flexrayPhysicalChannel);
                if (result == null) {
                    result = this.casePhysicalChannel(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayPhysicalChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                FlexrayFifoRange flexrayFifoRange = (FlexrayFifoRange)theEObject;
                T result = this.caseFlexrayFifoRange(flexrayFifoRange);
                if (result == null) {
                    result = this.caseARObject(flexrayFifoRange);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayFifoRange);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseFlexrayCluster(FlexrayCluster object) {
        return null;
    }

    public T caseFlexrayClusterConditional(FlexrayClusterConditional object) {
        return null;
    }

    public T caseFlexrayClusterContent(FlexrayClusterContent object) {
        return null;
    }

    public T caseFlexrayCommunicationConnector(FlexrayCommunicationConnector object) {
        return null;
    }

    public T caseFlexrayCommunicationController(FlexrayCommunicationController object) {
        return null;
    }

    public T caseFlexrayCommunicationControllerConditional(FlexrayCommunicationControllerConditional object) {
        return null;
    }

    public T caseFlexrayCommunicationControllerContent(FlexrayCommunicationControllerContent object) {
        return null;
    }

    public T caseFlexrayFifoConfiguration(FlexrayFifoConfiguration object) {
        return null;
    }

    public T caseFlexrayPhysicalChannel(FlexrayPhysicalChannel object) {
        return null;
    }

    public T caseFlexrayFifoRange(FlexrayFifoRange object) {
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

    public T caseCommunicationConnector(CommunicationConnector object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

