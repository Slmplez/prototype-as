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
package autosar40.system.fibex.fibex4can.cantopology.util;

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
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerContent;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanPhysicalChannel;
import autosar40.system.fibex.fibex4can.cantopology.CanCluster;
import autosar40.system.fibex.fibex4can.cantopology.CanClusterConditional;
import autosar40.system.fibex.fibex4can.cantopology.CanClusterContent;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationConnector;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationController;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationControllerConditional;
import autosar40.system.fibex.fibex4can.cantopology.CanCommunicationControllerContent;
import autosar40.system.fibex.fibex4can.cantopology.CanControllerConfiguration;
import autosar40.system.fibex.fibex4can.cantopology.CanControllerConfigurationRequirements;
import autosar40.system.fibex.fibex4can.cantopology.CanPhysicalChannel;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
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
public class CantopologySwitch<T> {
    protected static CantopologyPackage modelPackage;

    public CantopologySwitch() {
        if (modelPackage == null) {
            modelPackage = CantopologyPackage.eINSTANCE;
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
                AbstractCanCommunicationConnector abstractCanCommunicationConnector = (AbstractCanCommunicationConnector)theEObject;
                T result = this.caseAbstractCanCommunicationConnector(abstractCanCommunicationConnector);
                if (result == null) {
                    result = this.caseCommunicationConnector(abstractCanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseIdentifiable(abstractCanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(abstractCanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(abstractCanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseReferrable(abstractCanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseARObject(abstractCanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(abstractCanCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(abstractCanCommunicationConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AbstractCanCommunicationController abstractCanCommunicationController = (AbstractCanCommunicationController)theEObject;
                T result = this.caseAbstractCanCommunicationController(abstractCanCommunicationController);
                if (result == null) {
                    result = this.caseCommunicationController(abstractCanCommunicationController);
                }
                if (result == null) {
                    result = this.caseIdentifiable(abstractCanCommunicationController);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(abstractCanCommunicationController);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(abstractCanCommunicationController);
                }
                if (result == null) {
                    result = this.caseReferrable(abstractCanCommunicationController);
                }
                if (result == null) {
                    result = this.caseARObject(abstractCanCommunicationController);
                }
                if (result == null) {
                    result = this.caseGReferrable(abstractCanCommunicationController);
                }
                if (result == null) {
                    result = this.caseGARObject(abstractCanCommunicationController);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                AbstractCanCommunicationControllerAttributes abstractCanCommunicationControllerAttributes = (AbstractCanCommunicationControllerAttributes)theEObject;
                T result = this.caseAbstractCanCommunicationControllerAttributes(abstractCanCommunicationControllerAttributes);
                if (result == null) {
                    result = this.caseARObject(abstractCanCommunicationControllerAttributes);
                }
                if (result == null) {
                    result = this.caseGARObject(abstractCanCommunicationControllerAttributes);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                AbstractCanPhysicalChannel abstractCanPhysicalChannel = (AbstractCanPhysicalChannel)theEObject;
                T result = this.caseAbstractCanPhysicalChannel(abstractCanPhysicalChannel);
                if (result == null) {
                    result = this.casePhysicalChannel(abstractCanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseIdentifiable(abstractCanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(abstractCanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(abstractCanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseReferrable(abstractCanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseARObject(abstractCanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGReferrable(abstractCanPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(abstractCanPhysicalChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                CanCluster canCluster = (CanCluster)theEObject;
                T result = this.caseCanCluster(canCluster);
                if (result == null) {
                    result = this.caseAbstractCanCluster(canCluster);
                }
                if (result == null) {
                    result = this.caseCommunicationCluster(canCluster);
                }
                if (result == null) {
                    result = this.caseFibexElement(canCluster);
                }
                if (result == null) {
                    result = this.casePackageableElement(canCluster);
                }
                if (result == null) {
                    result = this.caseCollectableElement(canCluster);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(canCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canCluster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canCluster);
                }
                if (result == null) {
                    result = this.caseReferrable(canCluster);
                }
                if (result == null) {
                    result = this.caseARObject(canCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable(canCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(canCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                CanClusterConditional canClusterConditional = (CanClusterConditional)theEObject;
                T result = this.caseCanClusterConditional(canClusterConditional);
                if (result == null) {
                    result = this.caseCanClusterContent(canClusterConditional);
                }
                if (result == null) {
                    result = this.caseAbstractCanClusterContent(canClusterConditional);
                }
                if (result == null) {
                    result = this.caseCommunicationClusterContent(canClusterConditional);
                }
                if (result == null) {
                    result = this.caseARObject(canClusterConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(canClusterConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                CanClusterContent canClusterContent = (CanClusterContent)theEObject;
                T result = this.caseCanClusterContent(canClusterContent);
                if (result == null) {
                    result = this.caseAbstractCanClusterContent(canClusterContent);
                }
                if (result == null) {
                    result = this.caseCommunicationClusterContent(canClusterContent);
                }
                if (result == null) {
                    result = this.caseARObject(canClusterContent);
                }
                if (result == null) {
                    result = this.caseGARObject(canClusterContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                AbstractCanClusterContent abstractCanClusterContent = (AbstractCanClusterContent)theEObject;
                T result = this.caseAbstractCanClusterContent(abstractCanClusterContent);
                if (result == null) {
                    result = this.caseCommunicationClusterContent(abstractCanClusterContent);
                }
                if (result == null) {
                    result = this.caseARObject(abstractCanClusterContent);
                }
                if (result == null) {
                    result = this.caseGARObject(abstractCanClusterContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                CanCommunicationConnector canCommunicationConnector = (CanCommunicationConnector)theEObject;
                T result = this.caseCanCommunicationConnector(canCommunicationConnector);
                if (result == null) {
                    result = this.caseAbstractCanCommunicationConnector(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseCommunicationConnector(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseReferrable(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseARObject(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                CanCommunicationController canCommunicationController = (CanCommunicationController)theEObject;
                T result = this.caseCanCommunicationController(canCommunicationController);
                if (result == null) {
                    result = this.caseAbstractCanCommunicationController(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseCommunicationController(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseReferrable(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseARObject(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseGReferrable(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseGARObject(canCommunicationController);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                CanCommunicationControllerConditional canCommunicationControllerConditional = (CanCommunicationControllerConditional)theEObject;
                T result = this.caseCanCommunicationControllerConditional(canCommunicationControllerConditional);
                if (result == null) {
                    result = this.caseCanCommunicationControllerContent(canCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseAbstractCanCommunicationControllerContent(canCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseCommunicationControllerContent(canCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseARObject(canCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(canCommunicationControllerConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                CanCommunicationControllerContent canCommunicationControllerContent = (CanCommunicationControllerContent)theEObject;
                T result = this.caseCanCommunicationControllerContent(canCommunicationControllerContent);
                if (result == null) {
                    result = this.caseAbstractCanCommunicationControllerContent(canCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseCommunicationControllerContent(canCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseARObject(canCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseGARObject(canCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                AbstractCanCommunicationControllerContent abstractCanCommunicationControllerContent = (AbstractCanCommunicationControllerContent)theEObject;
                T result = this.caseAbstractCanCommunicationControllerContent(abstractCanCommunicationControllerContent);
                if (result == null) {
                    result = this.caseCommunicationControllerContent(abstractCanCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseARObject(abstractCanCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseGARObject(abstractCanCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                CanControllerConfiguration canControllerConfiguration = (CanControllerConfiguration)theEObject;
                T result = this.caseCanControllerConfiguration(canControllerConfiguration);
                if (result == null) {
                    result = this.caseAbstractCanCommunicationControllerAttributes(canControllerConfiguration);
                }
                if (result == null) {
                    result = this.caseARObject(canControllerConfiguration);
                }
                if (result == null) {
                    result = this.caseGARObject(canControllerConfiguration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                CanControllerConfigurationRequirements canControllerConfigurationRequirements = (CanControllerConfigurationRequirements)theEObject;
                T result = this.caseCanControllerConfigurationRequirements(canControllerConfigurationRequirements);
                if (result == null) {
                    result = this.caseAbstractCanCommunicationControllerAttributes(canControllerConfigurationRequirements);
                }
                if (result == null) {
                    result = this.caseARObject(canControllerConfigurationRequirements);
                }
                if (result == null) {
                    result = this.caseGARObject(canControllerConfigurationRequirements);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                CanPhysicalChannel canPhysicalChannel = (CanPhysicalChannel)theEObject;
                T result = this.caseCanPhysicalChannel(canPhysicalChannel);
                if (result == null) {
                    result = this.caseAbstractCanPhysicalChannel(canPhysicalChannel);
                }
                if (result == null) {
                    result = this.casePhysicalChannel(canPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseReferrable(canPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseARObject(canPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGReferrable(canPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(canPhysicalChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                AbstractCanCluster abstractCanCluster = (AbstractCanCluster)theEObject;
                T result = this.caseAbstractCanCluster(abstractCanCluster);
                if (result == null) {
                    result = this.caseCommunicationCluster(abstractCanCluster);
                }
                if (result == null) {
                    result = this.caseFibexElement(abstractCanCluster);
                }
                if (result == null) {
                    result = this.casePackageableElement(abstractCanCluster);
                }
                if (result == null) {
                    result = this.caseCollectableElement(abstractCanCluster);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(abstractCanCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(abstractCanCluster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(abstractCanCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(abstractCanCluster);
                }
                if (result == null) {
                    result = this.caseReferrable(abstractCanCluster);
                }
                if (result == null) {
                    result = this.caseARObject(abstractCanCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable(abstractCanCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(abstractCanCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAbstractCanCommunicationConnector(AbstractCanCommunicationConnector object) {
        return null;
    }

    public T caseAbstractCanCommunicationController(AbstractCanCommunicationController object) {
        return null;
    }

    public T caseAbstractCanCommunicationControllerAttributes(AbstractCanCommunicationControllerAttributes object) {
        return null;
    }

    public T caseAbstractCanPhysicalChannel(AbstractCanPhysicalChannel object) {
        return null;
    }

    public T caseCanCluster(CanCluster object) {
        return null;
    }

    public T caseCanClusterConditional(CanClusterConditional object) {
        return null;
    }

    public T caseCanClusterContent(CanClusterContent object) {
        return null;
    }

    public T caseAbstractCanClusterContent(AbstractCanClusterContent object) {
        return null;
    }

    public T caseCanCommunicationConnector(CanCommunicationConnector object) {
        return null;
    }

    public T caseCanCommunicationController(CanCommunicationController object) {
        return null;
    }

    public T caseCanCommunicationControllerConditional(CanCommunicationControllerConditional object) {
        return null;
    }

    public T caseCanCommunicationControllerContent(CanCommunicationControllerContent object) {
        return null;
    }

    public T caseAbstractCanCommunicationControllerContent(AbstractCanCommunicationControllerContent object) {
        return null;
    }

    public T caseCanControllerConfiguration(CanControllerConfiguration object) {
        return null;
    }

    public T caseCanControllerConfigurationRequirements(CanControllerConfigurationRequirements object) {
        return null;
    }

    public T caseCanPhysicalChannel(CanPhysicalChannel object) {
        return null;
    }

    public T caseAbstractCanCluster(AbstractCanCluster object) {
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

    public T caseCommunicationConnector(CommunicationConnector object) {
        return null;
    }

    public T caseCommunicationController(CommunicationController object) {
        return null;
    }

    public T casePhysicalChannel(PhysicalChannel object) {
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

    public T caseCommunicationControllerContent(CommunicationControllerContent object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

