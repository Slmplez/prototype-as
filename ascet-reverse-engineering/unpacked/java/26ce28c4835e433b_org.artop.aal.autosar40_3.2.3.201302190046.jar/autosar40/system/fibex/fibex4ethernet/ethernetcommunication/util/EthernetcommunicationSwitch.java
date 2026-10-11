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
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetFrame;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetFrameTriggering;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.LogicAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnection;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SocketConnectionIpduIdentifier;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.corecommunication.Frame;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
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
public class EthernetcommunicationSwitch<T> {
    protected static EthernetcommunicationPackage modelPackage;

    public EthernetcommunicationSwitch() {
        if (modelPackage == null) {
            modelPackage = EthernetcommunicationPackage.eINSTANCE;
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
                EthernetFrame ethernetFrame = (EthernetFrame)theEObject;
                T result = this.caseEthernetFrame(ethernetFrame);
                if (result == null) {
                    result = this.caseFrame(ethernetFrame);
                }
                if (result == null) {
                    result = this.caseFibexElement(ethernetFrame);
                }
                if (result == null) {
                    result = this.casePackageableElement(ethernetFrame);
                }
                if (result == null) {
                    result = this.caseCollectableElement(ethernetFrame);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ethernetFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ethernetFrame);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ethernetFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ethernetFrame);
                }
                if (result == null) {
                    result = this.caseReferrable(ethernetFrame);
                }
                if (result == null) {
                    result = this.caseARObject(ethernetFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable(ethernetFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(ethernetFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                EthernetFrameTriggering ethernetFrameTriggering = (EthernetFrameTriggering)theEObject;
                T result = this.caseEthernetFrameTriggering(ethernetFrameTriggering);
                if (result == null) {
                    result = this.caseFrameTriggering(ethernetFrameTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ethernetFrameTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ethernetFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ethernetFrameTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(ethernetFrameTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(ethernetFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(ethernetFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(ethernetFrameTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                LogicAddress logicAddress = (LogicAddress)theEObject;
                T result = this.caseLogicAddress(logicAddress);
                if (result == null) {
                    result = this.caseIdentifiable(logicAddress);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(logicAddress);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(logicAddress);
                }
                if (result == null) {
                    result = this.caseReferrable(logicAddress);
                }
                if (result == null) {
                    result = this.caseARObject(logicAddress);
                }
                if (result == null) {
                    result = this.caseGReferrable(logicAddress);
                }
                if (result == null) {
                    result = this.caseGARObject(logicAddress);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SoAdConfig soAdConfig = (SoAdConfig)theEObject;
                T result = this.caseSoAdConfig(soAdConfig);
                if (result == null) {
                    result = this.caseARObject(soAdConfig);
                }
                if (result == null) {
                    result = this.caseGARObject(soAdConfig);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SocketAddress socketAddress = (SocketAddress)theEObject;
                T result = this.caseSocketAddress(socketAddress);
                if (result == null) {
                    result = this.caseIdentifiable(socketAddress);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(socketAddress);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(socketAddress);
                }
                if (result == null) {
                    result = this.caseReferrable(socketAddress);
                }
                if (result == null) {
                    result = this.caseARObject(socketAddress);
                }
                if (result == null) {
                    result = this.caseGReferrable(socketAddress);
                }
                if (result == null) {
                    result = this.caseGARObject(socketAddress);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SocketConnection socketConnection = (SocketConnection)theEObject;
                T result = this.caseSocketConnection(socketConnection);
                if (result == null) {
                    result = this.caseARObject(socketConnection);
                }
                if (result == null) {
                    result = this.caseGARObject(socketConnection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SocketConnectionIpduIdentifier socketConnectionIpduIdentifier = (SocketConnectionIpduIdentifier)theEObject;
                T result = this.caseSocketConnectionIpduIdentifier(socketConnectionIpduIdentifier);
                if (result == null) {
                    result = this.caseARObject(socketConnectionIpduIdentifier);
                }
                if (result == null) {
                    result = this.caseGARObject(socketConnectionIpduIdentifier);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseEthernetFrame(EthernetFrame object) {
        return null;
    }

    public T caseEthernetFrameTriggering(EthernetFrameTriggering object) {
        return null;
    }

    public T caseLogicAddress(LogicAddress object) {
        return null;
    }

    public T caseSoAdConfig(SoAdConfig object) {
        return null;
    }

    public T caseSocketAddress(SocketAddress object) {
        return null;
    }

    public T caseSocketConnection(SocketConnection object) {
        return null;
    }

    public T caseSocketConnectionIpduIdentifier(SocketConnectionIpduIdentifier object) {
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

    public T caseFrame(Frame object) {
        return null;
    }

    public T caseFrameTriggering(FrameTriggering object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

