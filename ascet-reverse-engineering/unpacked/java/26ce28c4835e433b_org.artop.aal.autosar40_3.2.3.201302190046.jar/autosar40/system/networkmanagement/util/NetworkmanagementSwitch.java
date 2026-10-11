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
package autosar40.system.networkmanagement.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.networkmanagement.BusspecificNmEcu;
import autosar40.system.networkmanagement.CanNmCluster;
import autosar40.system.networkmanagement.CanNmClusterCoupling;
import autosar40.system.networkmanagement.CanNmEcu;
import autosar40.system.networkmanagement.CanNmNode;
import autosar40.system.networkmanagement.CanNmRangeConfig;
import autosar40.system.networkmanagement.FlexrayNmCluster;
import autosar40.system.networkmanagement.FlexrayNmClusterCoupling;
import autosar40.system.networkmanagement.FlexrayNmEcu;
import autosar40.system.networkmanagement.FlexrayNmNode;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.NmCluster;
import autosar40.system.networkmanagement.NmClusterCoupling;
import autosar40.system.networkmanagement.NmConfig;
import autosar40.system.networkmanagement.NmCoordinator;
import autosar40.system.networkmanagement.NmEcu;
import autosar40.system.networkmanagement.NmNode;
import autosar40.system.networkmanagement.UdpNmCluster;
import autosar40.system.networkmanagement.UdpNmClusterCoupling;
import autosar40.system.networkmanagement.UdpNmEcu;
import autosar40.system.networkmanagement.UdpNmNode;
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
public class NetworkmanagementSwitch<T> {
    protected static NetworkmanagementPackage modelPackage;

    public NetworkmanagementSwitch() {
        if (modelPackage == null) {
            modelPackage = NetworkmanagementPackage.eINSTANCE;
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
                BusspecificNmEcu busspecificNmEcu = (BusspecificNmEcu)theEObject;
                T result = this.caseBusspecificNmEcu(busspecificNmEcu);
                if (result == null) {
                    result = this.caseARObject(busspecificNmEcu);
                }
                if (result == null) {
                    result = this.caseGARObject(busspecificNmEcu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CanNmCluster canNmCluster = (CanNmCluster)theEObject;
                T result = this.caseCanNmCluster(canNmCluster);
                if (result == null) {
                    result = this.caseNmCluster(canNmCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canNmCluster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canNmCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canNmCluster);
                }
                if (result == null) {
                    result = this.caseReferrable(canNmCluster);
                }
                if (result == null) {
                    result = this.caseARObject(canNmCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable(canNmCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(canNmCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                NmCluster nmCluster = (NmCluster)theEObject;
                T result = this.caseNmCluster(nmCluster);
                if (result == null) {
                    result = this.caseIdentifiable(nmCluster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(nmCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nmCluster);
                }
                if (result == null) {
                    result = this.caseReferrable(nmCluster);
                }
                if (result == null) {
                    result = this.caseARObject(nmCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable(nmCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(nmCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                NmNode nmNode = (NmNode)theEObject;
                T result = this.caseNmNode(nmNode);
                if (result == null) {
                    result = this.caseIdentifiable(nmNode);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(nmNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nmNode);
                }
                if (result == null) {
                    result = this.caseReferrable(nmNode);
                }
                if (result == null) {
                    result = this.caseARObject(nmNode);
                }
                if (result == null) {
                    result = this.caseGReferrable(nmNode);
                }
                if (result == null) {
                    result = this.caseGARObject(nmNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                NmEcu nmEcu = (NmEcu)theEObject;
                T result = this.caseNmEcu(nmEcu);
                if (result == null) {
                    result = this.caseIdentifiable(nmEcu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(nmEcu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nmEcu);
                }
                if (result == null) {
                    result = this.caseReferrable(nmEcu);
                }
                if (result == null) {
                    result = this.caseARObject(nmEcu);
                }
                if (result == null) {
                    result = this.caseGReferrable(nmEcu);
                }
                if (result == null) {
                    result = this.caseGARObject(nmEcu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                NmCoordinator nmCoordinator = (NmCoordinator)theEObject;
                T result = this.caseNmCoordinator(nmCoordinator);
                if (result == null) {
                    result = this.caseARObject(nmCoordinator);
                }
                if (result == null) {
                    result = this.caseGARObject(nmCoordinator);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                CanNmClusterCoupling canNmClusterCoupling = (CanNmClusterCoupling)theEObject;
                T result = this.caseCanNmClusterCoupling(canNmClusterCoupling);
                if (result == null) {
                    result = this.caseNmClusterCoupling(canNmClusterCoupling);
                }
                if (result == null) {
                    result = this.caseARObject(canNmClusterCoupling);
                }
                if (result == null) {
                    result = this.caseGARObject(canNmClusterCoupling);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                NmClusterCoupling nmClusterCoupling = (NmClusterCoupling)theEObject;
                T result = this.caseNmClusterCoupling(nmClusterCoupling);
                if (result == null) {
                    result = this.caseARObject(nmClusterCoupling);
                }
                if (result == null) {
                    result = this.caseGARObject(nmClusterCoupling);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                CanNmEcu canNmEcu = (CanNmEcu)theEObject;
                T result = this.caseCanNmEcu(canNmEcu);
                if (result == null) {
                    result = this.caseBusspecificNmEcu(canNmEcu);
                }
                if (result == null) {
                    result = this.caseARObject(canNmEcu);
                }
                if (result == null) {
                    result = this.caseGARObject(canNmEcu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                CanNmNode canNmNode = (CanNmNode)theEObject;
                T result = this.caseCanNmNode(canNmNode);
                if (result == null) {
                    result = this.caseNmNode(canNmNode);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canNmNode);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canNmNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canNmNode);
                }
                if (result == null) {
                    result = this.caseReferrable(canNmNode);
                }
                if (result == null) {
                    result = this.caseARObject(canNmNode);
                }
                if (result == null) {
                    result = this.caseGReferrable(canNmNode);
                }
                if (result == null) {
                    result = this.caseGARObject(canNmNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                CanNmRangeConfig canNmRangeConfig = (CanNmRangeConfig)theEObject;
                T result = this.caseCanNmRangeConfig(canNmRangeConfig);
                if (result == null) {
                    result = this.caseARObject(canNmRangeConfig);
                }
                if (result == null) {
                    result = this.caseGARObject(canNmRangeConfig);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                FlexrayNmCluster flexrayNmCluster = (FlexrayNmCluster)theEObject;
                T result = this.caseFlexrayNmCluster(flexrayNmCluster);
                if (result == null) {
                    result = this.caseNmCluster(flexrayNmCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayNmCluster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayNmCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayNmCluster);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayNmCluster);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayNmCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayNmCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayNmCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                FlexrayNmClusterCoupling flexrayNmClusterCoupling = (FlexrayNmClusterCoupling)theEObject;
                T result = this.caseFlexrayNmClusterCoupling(flexrayNmClusterCoupling);
                if (result == null) {
                    result = this.caseNmClusterCoupling(flexrayNmClusterCoupling);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayNmClusterCoupling);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayNmClusterCoupling);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                FlexrayNmEcu flexrayNmEcu = (FlexrayNmEcu)theEObject;
                T result = this.caseFlexrayNmEcu(flexrayNmEcu);
                if (result == null) {
                    result = this.caseBusspecificNmEcu(flexrayNmEcu);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayNmEcu);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayNmEcu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                FlexrayNmNode flexrayNmNode = (FlexrayNmNode)theEObject;
                T result = this.caseFlexrayNmNode(flexrayNmNode);
                if (result == null) {
                    result = this.caseNmNode(flexrayNmNode);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayNmNode);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayNmNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayNmNode);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayNmNode);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayNmNode);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayNmNode);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayNmNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                NmConfig nmConfig = (NmConfig)theEObject;
                T result = this.caseNmConfig(nmConfig);
                if (result == null) {
                    result = this.caseFibexElement(nmConfig);
                }
                if (result == null) {
                    result = this.casePackageableElement(nmConfig);
                }
                if (result == null) {
                    result = this.caseCollectableElement(nmConfig);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(nmConfig);
                }
                if (result == null) {
                    result = this.caseIdentifiable(nmConfig);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(nmConfig);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nmConfig);
                }
                if (result == null) {
                    result = this.caseReferrable(nmConfig);
                }
                if (result == null) {
                    result = this.caseARObject(nmConfig);
                }
                if (result == null) {
                    result = this.caseGReferrable(nmConfig);
                }
                if (result == null) {
                    result = this.caseGARObject(nmConfig);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                UdpNmCluster udpNmCluster = (UdpNmCluster)theEObject;
                T result = this.caseUdpNmCluster(udpNmCluster);
                if (result == null) {
                    result = this.caseNmCluster(udpNmCluster);
                }
                if (result == null) {
                    result = this.caseIdentifiable(udpNmCluster);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(udpNmCluster);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(udpNmCluster);
                }
                if (result == null) {
                    result = this.caseReferrable(udpNmCluster);
                }
                if (result == null) {
                    result = this.caseARObject(udpNmCluster);
                }
                if (result == null) {
                    result = this.caseGReferrable(udpNmCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(udpNmCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                UdpNmClusterCoupling udpNmClusterCoupling = (UdpNmClusterCoupling)theEObject;
                T result = this.caseUdpNmClusterCoupling(udpNmClusterCoupling);
                if (result == null) {
                    result = this.caseNmClusterCoupling(udpNmClusterCoupling);
                }
                if (result == null) {
                    result = this.caseARObject(udpNmClusterCoupling);
                }
                if (result == null) {
                    result = this.caseGARObject(udpNmClusterCoupling);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                UdpNmEcu udpNmEcu = (UdpNmEcu)theEObject;
                T result = this.caseUdpNmEcu(udpNmEcu);
                if (result == null) {
                    result = this.caseBusspecificNmEcu(udpNmEcu);
                }
                if (result == null) {
                    result = this.caseARObject(udpNmEcu);
                }
                if (result == null) {
                    result = this.caseGARObject(udpNmEcu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                UdpNmNode udpNmNode = (UdpNmNode)theEObject;
                T result = this.caseUdpNmNode(udpNmNode);
                if (result == null) {
                    result = this.caseNmNode(udpNmNode);
                }
                if (result == null) {
                    result = this.caseIdentifiable(udpNmNode);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(udpNmNode);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(udpNmNode);
                }
                if (result == null) {
                    result = this.caseReferrable(udpNmNode);
                }
                if (result == null) {
                    result = this.caseARObject(udpNmNode);
                }
                if (result == null) {
                    result = this.caseGReferrable(udpNmNode);
                }
                if (result == null) {
                    result = this.caseGARObject(udpNmNode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBusspecificNmEcu(BusspecificNmEcu object) {
        return null;
    }

    public T caseCanNmCluster(CanNmCluster object) {
        return null;
    }

    public T caseNmCluster(NmCluster object) {
        return null;
    }

    public T caseNmNode(NmNode object) {
        return null;
    }

    public T caseNmEcu(NmEcu object) {
        return null;
    }

    public T caseNmCoordinator(NmCoordinator object) {
        return null;
    }

    public T caseCanNmClusterCoupling(CanNmClusterCoupling object) {
        return null;
    }

    public T caseNmClusterCoupling(NmClusterCoupling object) {
        return null;
    }

    public T caseCanNmEcu(CanNmEcu object) {
        return null;
    }

    public T caseCanNmNode(CanNmNode object) {
        return null;
    }

    public T caseCanNmRangeConfig(CanNmRangeConfig object) {
        return null;
    }

    public T caseFlexrayNmCluster(FlexrayNmCluster object) {
        return null;
    }

    public T caseFlexrayNmClusterCoupling(FlexrayNmClusterCoupling object) {
        return null;
    }

    public T caseFlexrayNmEcu(FlexrayNmEcu object) {
        return null;
    }

    public T caseFlexrayNmNode(FlexrayNmNode object) {
        return null;
    }

    public T caseNmConfig(NmConfig object) {
        return null;
    }

    public T caseUdpNmCluster(UdpNmCluster object) {
        return null;
    }

    public T caseUdpNmClusterCoupling(UdpNmClusterCoupling object) {
        return null;
    }

    public T caseUdpNmEcu(UdpNmEcu object) {
        return null;
    }

    public T caseUdpNmNode(UdpNmNode object) {
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

