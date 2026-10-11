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
package autosar40.system.fibex.fibex4lin.lintopology.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4lin.lintopology.LinCluster;
import autosar40.system.fibex.fibex4lin.lintopology.LinClusterConditional;
import autosar40.system.fibex.fibex4lin.lintopology.LinClusterContent;
import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationConnector;
import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationController;
import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationControllerContent;
import autosar40.system.fibex.fibex4lin.lintopology.LinConfigurableFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LinMaster;
import autosar40.system.fibex.fibex4lin.lintopology.LinMasterConditional;
import autosar40.system.fibex.fibex4lin.lintopology.LinMasterContent;
import autosar40.system.fibex.fibex4lin.lintopology.LinOrderedConfigurableFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LinPhysicalChannel;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlave;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlaveConditional;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlaveContent;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
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
public class LintopologySwitch<T> {
    protected static LintopologyPackage modelPackage;

    public LintopologySwitch() {
        if (modelPackage == null) {
            modelPackage = LintopologyPackage.eINSTANCE;
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
                LinCluster linCluster = (LinCluster)theEObject;
                T result = this.caseLinCluster(linCluster);
                if (result == null) {
                    result = this.caseCommunicationCluster(linCluster);
                }
                if (result == null) {
                    result = this.caseFibexElement(linCluster);
                }
                if (result == null) {
                    result = this.casePackageableElement(linCluster);
                }
                if (result == null) {
                    result = this.caseCollectableElement(linCluster);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(linCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linCluster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linCluster);
                }
                if (result == null) {
                    result = this.caseReferrable(linCluster);
                }
                if (result == null) {
                    result = this.caseARObject(linCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable(linCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(linCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                LinClusterConditional linClusterConditional = (LinClusterConditional)theEObject;
                T result = this.caseLinClusterConditional(linClusterConditional);
                if (result == null) {
                    result = this.caseLinClusterContent(linClusterConditional);
                }
                if (result == null) {
                    result = this.caseCommunicationClusterContent(linClusterConditional);
                }
                if (result == null) {
                    result = this.caseARObject(linClusterConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(linClusterConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                LinClusterContent linClusterContent = (LinClusterContent)theEObject;
                T result = this.caseLinClusterContent(linClusterContent);
                if (result == null) {
                    result = this.caseCommunicationClusterContent(linClusterContent);
                }
                if (result == null) {
                    result = this.caseARObject(linClusterContent);
                }
                if (result == null) {
                    result = this.caseGARObject(linClusterContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                LinCommunicationConnector linCommunicationConnector = (LinCommunicationConnector)theEObject;
                T result = this.caseLinCommunicationConnector(linCommunicationConnector);
                if (result == null) {
                    result = this.caseCommunicationConnector(linCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseReferrable(linCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseARObject(linCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGReferrable(linCommunicationConnector);
                }
                if (result == null) {
                    result = this.caseGARObject(linCommunicationConnector);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                LinOrderedConfigurableFrame linOrderedConfigurableFrame = (LinOrderedConfigurableFrame)theEObject;
                T result = this.caseLinOrderedConfigurableFrame(linOrderedConfigurableFrame);
                if (result == null) {
                    result = this.caseARObject(linOrderedConfigurableFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(linOrderedConfigurableFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                LinConfigurableFrame linConfigurableFrame = (LinConfigurableFrame)theEObject;
                T result = this.caseLinConfigurableFrame(linConfigurableFrame);
                if (result == null) {
                    result = this.caseARObject(linConfigurableFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(linConfigurableFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                LinCommunicationController linCommunicationController = (LinCommunicationController)theEObject;
                T result = this.caseLinCommunicationController(linCommunicationController);
                if (result == null) {
                    result = this.caseCommunicationController(linCommunicationController);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linCommunicationController);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linCommunicationController);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linCommunicationController);
                }
                if (result == null) {
                    result = this.caseReferrable(linCommunicationController);
                }
                if (result == null) {
                    result = this.caseARObject(linCommunicationController);
                }
                if (result == null) {
                    result = this.caseGReferrable(linCommunicationController);
                }
                if (result == null) {
                    result = this.caseGARObject(linCommunicationController);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                LinMaster linMaster = (LinMaster)theEObject;
                T result = this.caseLinMaster(linMaster);
                if (result == null) {
                    result = this.caseLinCommunicationController(linMaster);
                }
                if (result == null) {
                    result = this.caseCommunicationController(linMaster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linMaster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linMaster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linMaster);
                }
                if (result == null) {
                    result = this.caseReferrable(linMaster);
                }
                if (result == null) {
                    result = this.caseARObject(linMaster);
                }
                if (result == null) {
                    result = this.caseGReferrable(linMaster);
                }
                if (result == null) {
                    result = this.caseGARObject(linMaster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                LinMasterConditional linMasterConditional = (LinMasterConditional)theEObject;
                T result = this.caseLinMasterConditional(linMasterConditional);
                if (result == null) {
                    result = this.caseLinMasterContent(linMasterConditional);
                }
                if (result == null) {
                    result = this.caseLinCommunicationControllerContent(linMasterConditional);
                }
                if (result == null) {
                    result = this.caseCommunicationControllerContent(linMasterConditional);
                }
                if (result == null) {
                    result = this.caseARObject(linMasterConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(linMasterConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                LinMasterContent linMasterContent = (LinMasterContent)theEObject;
                T result = this.caseLinMasterContent(linMasterContent);
                if (result == null) {
                    result = this.caseLinCommunicationControllerContent(linMasterContent);
                }
                if (result == null) {
                    result = this.caseCommunicationControllerContent(linMasterContent);
                }
                if (result == null) {
                    result = this.caseARObject(linMasterContent);
                }
                if (result == null) {
                    result = this.caseGARObject(linMasterContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                LinCommunicationControllerContent linCommunicationControllerContent = (LinCommunicationControllerContent)theEObject;
                T result = this.caseLinCommunicationControllerContent(linCommunicationControllerContent);
                if (result == null) {
                    result = this.caseCommunicationControllerContent(linCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseARObject(linCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.caseGARObject(linCommunicationControllerContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                LinPhysicalChannel linPhysicalChannel = (LinPhysicalChannel)theEObject;
                T result = this.caseLinPhysicalChannel(linPhysicalChannel);
                if (result == null) {
                    result = this.casePhysicalChannel(linPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseReferrable(linPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseARObject(linPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGReferrable(linPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(linPhysicalChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                LinSlaveContent linSlaveContent = (LinSlaveContent)theEObject;
                T result = this.caseLinSlaveContent(linSlaveContent);
                if (result == null) {
                    result = this.caseLinCommunicationControllerContent(linSlaveContent);
                }
                if (result == null) {
                    result = this.caseCommunicationControllerContent(linSlaveContent);
                }
                if (result == null) {
                    result = this.caseARObject(linSlaveContent);
                }
                if (result == null) {
                    result = this.caseGARObject(linSlaveContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                LinSlaveConditional linSlaveConditional = (LinSlaveConditional)theEObject;
                T result = this.caseLinSlaveConditional(linSlaveConditional);
                if (result == null) {
                    result = this.caseLinSlaveContent(linSlaveConditional);
                }
                if (result == null) {
                    result = this.caseLinCommunicationControllerContent(linSlaveConditional);
                }
                if (result == null) {
                    result = this.caseCommunicationControllerContent(linSlaveConditional);
                }
                if (result == null) {
                    result = this.caseARObject(linSlaveConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(linSlaveConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                LinSlave linSlave = (LinSlave)theEObject;
                T result = this.caseLinSlave(linSlave);
                if (result == null) {
                    result = this.caseLinCommunicationController(linSlave);
                }
                if (result == null) {
                    result = this.caseCommunicationController(linSlave);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linSlave);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linSlave);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linSlave);
                }
                if (result == null) {
                    result = this.caseReferrable(linSlave);
                }
                if (result == null) {
                    result = this.caseARObject(linSlave);
                }
                if (result == null) {
                    result = this.caseGReferrable(linSlave);
                }
                if (result == null) {
                    result = this.caseGARObject(linSlave);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseLinCluster(LinCluster object) {
        return null;
    }

    public T caseLinClusterConditional(LinClusterConditional object) {
        return null;
    }

    public T caseLinClusterContent(LinClusterContent object) {
        return null;
    }

    public T caseLinCommunicationConnector(LinCommunicationConnector object) {
        return null;
    }

    public T caseLinOrderedConfigurableFrame(LinOrderedConfigurableFrame object) {
        return null;
    }

    public T caseLinConfigurableFrame(LinConfigurableFrame object) {
        return null;
    }

    public T caseLinCommunicationController(LinCommunicationController object) {
        return null;
    }

    public T caseLinMaster(LinMaster object) {
        return null;
    }

    public T caseLinMasterConditional(LinMasterConditional object) {
        return null;
    }

    public T caseLinMasterContent(LinMasterContent object) {
        return null;
    }

    public T caseLinCommunicationControllerContent(LinCommunicationControllerContent object) {
        return null;
    }

    public T caseLinPhysicalChannel(LinPhysicalChannel object) {
        return null;
    }

    public T caseLinSlaveContent(LinSlaveContent object) {
        return null;
    }

    public T caseLinSlaveConditional(LinSlaveConditional object) {
        return null;
    }

    public T caseLinSlave(LinSlave object) {
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

