/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.system.communication.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.communication.instanceref.CommunicationMatrixTypeCommunicationCluster;
import autosar21.system.communication.instanceref.FrameReceiver;
import autosar21.system.communication.instanceref.FrameTransmitter;
import autosar21.system.communication.instanceref.FrameUsedPhysicalChannel;
import autosar21.system.communication.instanceref.GatewayTypeGatewayLocation;
import autosar21.system.communication.instanceref.InstancerefPackage;
import autosar21.system.communication.instanceref.PDUGatewayEntryDestinationPDU;
import autosar21.system.communication.instanceref.PDUGatewayEntrySourcePDU;
import autosar21.system.communication.instanceref.SignalGatewayEntryDestinationClusterSignal;
import autosar21.system.communication.instanceref.SignalGatewayEntrySourceClusterSignal;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefSwitch<T> {
    protected static InstancerefPackage modelPackage;

    public InstancerefSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
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
                CommunicationMatrixTypeCommunicationCluster communicationMatrixTypeCommunicationCluster = (CommunicationMatrixTypeCommunicationCluster)theEObject;
                T result = this.caseCommunicationMatrixTypeCommunicationCluster(communicationMatrixTypeCommunicationCluster);
                if (result == null) {
                    result = this.caseARObject(communicationMatrixTypeCommunicationCluster);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationMatrixTypeCommunicationCluster);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                FrameReceiver frameReceiver = (FrameReceiver)theEObject;
                T result = this.caseFrameReceiver(frameReceiver);
                if (result == null) {
                    result = this.caseARObject(frameReceiver);
                }
                if (result == null) {
                    result = this.caseGARObject(frameReceiver);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                FrameTransmitter frameTransmitter = (FrameTransmitter)theEObject;
                T result = this.caseFrameTransmitter(frameTransmitter);
                if (result == null) {
                    result = this.caseARObject(frameTransmitter);
                }
                if (result == null) {
                    result = this.caseGARObject(frameTransmitter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                FrameUsedPhysicalChannel frameUsedPhysicalChannel = (FrameUsedPhysicalChannel)theEObject;
                T result = this.caseFrameUsedPhysicalChannel(frameUsedPhysicalChannel);
                if (result == null) {
                    result = this.caseARObject(frameUsedPhysicalChannel);
                }
                if (result == null) {
                    result = this.caseGARObject(frameUsedPhysicalChannel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GatewayTypeGatewayLocation gatewayTypeGatewayLocation = (GatewayTypeGatewayLocation)theEObject;
                T result = this.caseGatewayTypeGatewayLocation(gatewayTypeGatewayLocation);
                if (result == null) {
                    result = this.caseARObject(gatewayTypeGatewayLocation);
                }
                if (result == null) {
                    result = this.caseGARObject(gatewayTypeGatewayLocation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                PDUGatewayEntryDestinationPDU pduGatewayEntryDestinationPDU = (PDUGatewayEntryDestinationPDU)theEObject;
                T result = this.casePDUGatewayEntryDestinationPDU(pduGatewayEntryDestinationPDU);
                if (result == null) {
                    result = this.caseARObject(pduGatewayEntryDestinationPDU);
                }
                if (result == null) {
                    result = this.caseGARObject(pduGatewayEntryDestinationPDU);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                PDUGatewayEntrySourcePDU pduGatewayEntrySourcePDU = (PDUGatewayEntrySourcePDU)theEObject;
                T result = this.casePDUGatewayEntrySourcePDU(pduGatewayEntrySourcePDU);
                if (result == null) {
                    result = this.caseARObject(pduGatewayEntrySourcePDU);
                }
                if (result == null) {
                    result = this.caseGARObject(pduGatewayEntrySourcePDU);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                SignalGatewayEntryDestinationClusterSignal signalGatewayEntryDestinationClusterSignal = (SignalGatewayEntryDestinationClusterSignal)theEObject;
                T result = this.caseSignalGatewayEntryDestinationClusterSignal(signalGatewayEntryDestinationClusterSignal);
                if (result == null) {
                    result = this.caseARObject(signalGatewayEntryDestinationClusterSignal);
                }
                if (result == null) {
                    result = this.caseGARObject(signalGatewayEntryDestinationClusterSignal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                SignalGatewayEntrySourceClusterSignal signalGatewayEntrySourceClusterSignal = (SignalGatewayEntrySourceClusterSignal)theEObject;
                T result = this.caseSignalGatewayEntrySourceClusterSignal(signalGatewayEntrySourceClusterSignal);
                if (result == null) {
                    result = this.caseARObject(signalGatewayEntrySourceClusterSignal);
                }
                if (result == null) {
                    result = this.caseGARObject(signalGatewayEntrySourceClusterSignal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCommunicationMatrixTypeCommunicationCluster(CommunicationMatrixTypeCommunicationCluster object) {
        return null;
    }

    public T caseFrameReceiver(FrameReceiver object) {
        return null;
    }

    public T caseFrameTransmitter(FrameTransmitter object) {
        return null;
    }

    public T caseFrameUsedPhysicalChannel(FrameUsedPhysicalChannel object) {
        return null;
    }

    public T caseGatewayTypeGatewayLocation(GatewayTypeGatewayLocation object) {
        return null;
    }

    public T casePDUGatewayEntryDestinationPDU(PDUGatewayEntryDestinationPDU object) {
        return null;
    }

    public T casePDUGatewayEntrySourcePDU(PDUGatewayEntrySourcePDU object) {
        return null;
    }

    public T caseSignalGatewayEntryDestinationClusterSignal(SignalGatewayEntryDestinationClusterSignal object) {
        return null;
    }

    public T caseSignalGatewayEntrySourceClusterSignal(SignalGatewayEntrySourceClusterSignal object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

