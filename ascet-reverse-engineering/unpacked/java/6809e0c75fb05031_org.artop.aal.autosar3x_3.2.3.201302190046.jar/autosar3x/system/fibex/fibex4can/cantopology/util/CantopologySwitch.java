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
package autosar3x.system.fibex.fibex4can.cantopology.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import autosar3x.system.fibex.fibex4can.cantopology.CanCluster;
import autosar3x.system.fibex.fibex4can.cantopology.CanCommunicationConnector;
import autosar3x.system.fibex.fibex4can.cantopology.CanCommunicationController;
import autosar3x.system.fibex.fibex4can.cantopology.CanControllerConfiguration;
import autosar3x.system.fibex.fibex4can.cantopology.CanControllerConfigurationRequirements;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
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
            case 1: {
                CanCluster canCluster = (CanCluster)theEObject;
                T result = this.caseCanCluster(canCluster);
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
                    result = this.caseIdentifiable(canCluster);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(canCluster);
                }
                if (result == null) {
                    result = this.caseARObject(canCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)canCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(canCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                CanCommunicationConnector canCommunicationConnector = (CanCommunicationConnector)theEObject;
                T result = this.caseCanCommunicationConnector(canCommunicationConnector);
                if (result == null) {
                    result = this.caseCommunicationConnector(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseARObject(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)canCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(canCommunicationConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                CanCommunicationController canCommunicationController = (CanCommunicationController)theEObject;
                T result = this.caseCanCommunicationController(canCommunicationController);
                if (result == null) {
                    result = this.caseCommunicationController(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseARObject(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canCommunicationController);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)canCommunicationController);
                }
                if (result == null) {
                    result = this.caseGARObject(canCommunicationController);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
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
            case 5: {
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
        }
        return this.defaultCase(theEObject);
    }

    public T caseAbstractCanCommunicationControllerAttributes(AbstractCanCommunicationControllerAttributes object) {
        return null;
    }

    public T caseCanCluster(CanCluster object) {
        return null;
    }

    public T caseCanCommunicationConnector(CanCommunicationConnector object) {
        return null;
    }

    public T caseCanCommunicationController(CanCommunicationController object) {
        return null;
    }

    public T caseCanControllerConfiguration(CanControllerConfiguration object) {
        return null;
    }

    public T caseCanControllerConfigurationRequirements(CanControllerConfigurationRequirements object) {
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

    public T caseCommunicationCluster(CommunicationCluster object) {
        return null;
    }

    public T caseCommunicationConnector(CommunicationConnector object) {
        return null;
    }

    public T caseCommunicationController(CommunicationController object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

