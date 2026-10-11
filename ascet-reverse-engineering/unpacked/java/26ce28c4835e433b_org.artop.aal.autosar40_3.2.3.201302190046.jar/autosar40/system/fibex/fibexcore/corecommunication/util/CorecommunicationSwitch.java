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
package autosar40.system.fibex.fibexcore.corecommunication.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.DcmIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPartAlternative;
import autosar40.system.fibex.fibexcore.corecommunication.Frame;
import autosar40.system.fibex.fibexcore.corecommunication.FramePort;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.fibex.fibexcore.corecommunication.IPduPort;
import autosar40.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalGroup;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduGroup;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduRefConditional;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalPort;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalProps;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalTriggeringRefConditional;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.MultiplexedPart;
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import autosar40.system.fibex.fibexcore.corecommunication.NmPdu;
import autosar40.system.fibex.fibexcore.corecommunication.Pdu;
import autosar40.system.fibex.fibexcore.corecommunication.PduToFrameMapping;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggeringRefConditional;
import autosar40.system.fibex.fibexcore.corecommunication.PdurIPduGroup;
import autosar40.system.fibex.fibexcore.corecommunication.SegmentPosition;
import autosar40.system.fibex.fibexcore.corecommunication.SignalIPduCounter;
import autosar40.system.fibex.fibexcore.corecommunication.SignalIPduReplication;
import autosar40.system.fibex.fibexcore.corecommunication.StaticPart;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignalGroup;
import autosar40.system.fibex.fibexcore.corecommunication.UserDefinedIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.UserDefinedPdu;
import autosar40.system.fibex.fibexcore.corecommunication.XcpPdu;
import autosar40.system.fibex.fibexcore.coretopology.CommConnectorPort;
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
public class CorecommunicationSwitch<T> {
    protected static CorecommunicationPackage modelPackage;

    public CorecommunicationSwitch() {
        if (modelPackage == null) {
            modelPackage = CorecommunicationPackage.eINSTANCE;
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
                DcmIPdu dcmIPdu = (DcmIPdu)theEObject;
                T result = this.caseDcmIPdu(dcmIPdu);
                if (result == null) {
                    result = this.caseIPdu(dcmIPdu);
                }
                if (result == null) {
                    result = this.casePdu(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseFibexElement(dcmIPdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseCollectableElement(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseReferrable(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseARObject(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(dcmIPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                IPdu iPdu = (IPdu)theEObject;
                T result = this.caseIPdu(iPdu);
                if (result == null) {
                    result = this.casePdu(iPdu);
                }
                if (result == null) {
                    result = this.caseFibexElement(iPdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(iPdu);
                }
                if (result == null) {
                    result = this.caseCollectableElement(iPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(iPdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(iPdu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(iPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iPdu);
                }
                if (result == null) {
                    result = this.caseReferrable(iPdu);
                }
                if (result == null) {
                    result = this.caseARObject(iPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable(iPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(iPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Pdu pdu = (Pdu)theEObject;
                T result = this.casePdu(pdu);
                if (result == null) {
                    result = this.caseFibexElement(pdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(pdu);
                }
                if (result == null) {
                    result = this.caseCollectableElement(pdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(pdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(pdu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(pdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pdu);
                }
                if (result == null) {
                    result = this.caseReferrable(pdu);
                }
                if (result == null) {
                    result = this.caseARObject(pdu);
                }
                if (result == null) {
                    result = this.caseGReferrable(pdu);
                }
                if (result == null) {
                    result = this.caseGARObject(pdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                DynamicPart dynamicPart = (DynamicPart)theEObject;
                T result = this.caseDynamicPart(dynamicPart);
                if (result == null) {
                    result = this.caseMultiplexedPart(dynamicPart);
                }
                if (result == null) {
                    result = this.caseARObject(dynamicPart);
                }
                if (result == null) {
                    result = this.caseGARObject(dynamicPart);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                MultiplexedPart multiplexedPart = (MultiplexedPart)theEObject;
                T result = this.caseMultiplexedPart(multiplexedPart);
                if (result == null) {
                    result = this.caseARObject(multiplexedPart);
                }
                if (result == null) {
                    result = this.caseGARObject(multiplexedPart);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SegmentPosition segmentPosition = (SegmentPosition)theEObject;
                T result = this.caseSegmentPosition(segmentPosition);
                if (result == null) {
                    result = this.caseARObject(segmentPosition);
                }
                if (result == null) {
                    result = this.caseGARObject(segmentPosition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                DynamicPartAlternative dynamicPartAlternative = (DynamicPartAlternative)theEObject;
                T result = this.caseDynamicPartAlternative(dynamicPartAlternative);
                if (result == null) {
                    result = this.caseARObject(dynamicPartAlternative);
                }
                if (result == null) {
                    result = this.caseGARObject(dynamicPartAlternative);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                ISignalIPdu iSignalIPdu = (ISignalIPdu)theEObject;
                T result = this.caseISignalIPdu(iSignalIPdu);
                if (result == null) {
                    result = this.caseIPdu(iSignalIPdu);
                }
                if (result == null) {
                    result = this.casePdu(iSignalIPdu);
                }
                if (result == null) {
                    result = this.caseFibexElement(iSignalIPdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(iSignalIPdu);
                }
                if (result == null) {
                    result = this.caseCollectableElement(iSignalIPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(iSignalIPdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(iSignalIPdu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(iSignalIPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iSignalIPdu);
                }
                if (result == null) {
                    result = this.caseReferrable(iSignalIPdu);
                }
                if (result == null) {
                    result = this.caseARObject(iSignalIPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable(iSignalIPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalIPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ISignalToIPduMapping iSignalToIPduMapping = (ISignalToIPduMapping)theEObject;
                T result = this.caseISignalToIPduMapping(iSignalToIPduMapping);
                if (result == null) {
                    result = this.caseIdentifiable(iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.caseARObject(iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ISignal iSignal = (ISignal)theEObject;
                T result = this.caseISignal(iSignal);
                if (result == null) {
                    result = this.caseFibexElement(iSignal);
                }
                if (result == null) {
                    result = this.casePackageableElement(iSignal);
                }
                if (result == null) {
                    result = this.caseCollectableElement(iSignal);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(iSignal);
                }
                if (result == null) {
                    result = this.caseIdentifiable(iSignal);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(iSignal);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iSignal);
                }
                if (result == null) {
                    result = this.caseReferrable(iSignal);
                }
                if (result == null) {
                    result = this.caseARObject(iSignal);
                }
                if (result == null) {
                    result = this.caseGReferrable(iSignal);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                SystemSignal systemSignal = (SystemSignal)theEObject;
                T result = this.caseSystemSignal(systemSignal);
                if (result == null) {
                    result = this.caseARElement(systemSignal);
                }
                if (result == null) {
                    result = this.casePackageableElement(systemSignal);
                }
                if (result == null) {
                    result = this.caseCollectableElement(systemSignal);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(systemSignal);
                }
                if (result == null) {
                    result = this.caseIdentifiable(systemSignal);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(systemSignal);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemSignal);
                }
                if (result == null) {
                    result = this.caseReferrable(systemSignal);
                }
                if (result == null) {
                    result = this.caseARObject(systemSignal);
                }
                if (result == null) {
                    result = this.caseGReferrable(systemSignal);
                }
                if (result == null) {
                    result = this.caseGARObject(systemSignal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                SystemSignalGroup systemSignalGroup = (SystemSignalGroup)theEObject;
                T result = this.caseSystemSignalGroup(systemSignalGroup);
                if (result == null) {
                    result = this.caseARElement(systemSignalGroup);
                }
                if (result == null) {
                    result = this.casePackageableElement(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseCollectableElement(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseReferrable(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseARObject(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(systemSignalGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                ISignalProps iSignalProps = (ISignalProps)theEObject;
                T result = this.caseISignalProps(iSignalProps);
                if (result == null) {
                    result = this.caseARObject(iSignalProps);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalProps);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                ISignalGroup iSignalGroup = (ISignalGroup)theEObject;
                T result = this.caseISignalGroup(iSignalGroup);
                if (result == null) {
                    result = this.caseFibexElement(iSignalGroup);
                }
                if (result == null) {
                    result = this.casePackageableElement(iSignalGroup);
                }
                if (result == null) {
                    result = this.caseCollectableElement(iSignalGroup);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(iSignalGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(iSignalGroup);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(iSignalGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iSignalGroup);
                }
                if (result == null) {
                    result = this.caseReferrable(iSignalGroup);
                }
                if (result == null) {
                    result = this.caseARObject(iSignalGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable(iSignalGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                IPduTiming iPduTiming = (IPduTiming)theEObject;
                T result = this.caseIPduTiming(iPduTiming);
                if (result == null) {
                    result = this.caseARObject(iPduTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(iPduTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                SignalIPduReplication signalIPduReplication = (SignalIPduReplication)theEObject;
                T result = this.caseSignalIPduReplication(signalIPduReplication);
                if (result == null) {
                    result = this.caseARObject(signalIPduReplication);
                }
                if (result == null) {
                    result = this.caseGARObject(signalIPduReplication);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                SignalIPduCounter signalIPduCounter = (SignalIPduCounter)theEObject;
                T result = this.caseSignalIPduCounter(signalIPduCounter);
                if (result == null) {
                    result = this.caseARObject(signalIPduCounter);
                }
                if (result == null) {
                    result = this.caseGARObject(signalIPduCounter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                FramePort framePort = (FramePort)theEObject;
                T result = this.caseFramePort(framePort);
                if (result == null) {
                    result = this.caseCommConnectorPort(framePort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(framePort);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(framePort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(framePort);
                }
                if (result == null) {
                    result = this.caseReferrable(framePort);
                }
                if (result == null) {
                    result = this.caseARObject(framePort);
                }
                if (result == null) {
                    result = this.caseGReferrable(framePort);
                }
                if (result == null) {
                    result = this.caseGARObject(framePort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                FrameTriggering frameTriggering = (FrameTriggering)theEObject;
                T result = this.caseFrameTriggering(frameTriggering);
                if (result == null) {
                    result = this.caseIdentifiable(frameTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(frameTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(frameTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(frameTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(frameTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(frameTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(frameTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                PduTriggeringRefConditional pduTriggeringRefConditional = (PduTriggeringRefConditional)theEObject;
                T result = this.casePduTriggeringRefConditional(pduTriggeringRefConditional);
                if (result == null) {
                    result = this.caseARObject(pduTriggeringRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(pduTriggeringRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                PduTriggering pduTriggering = (PduTriggering)theEObject;
                T result = this.casePduTriggering(pduTriggering);
                if (result == null) {
                    result = this.caseIdentifiable(pduTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(pduTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pduTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(pduTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(pduTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(pduTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(pduTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                IPduPort iPduPort = (IPduPort)theEObject;
                T result = this.caseIPduPort(iPduPort);
                if (result == null) {
                    result = this.caseCommConnectorPort(iPduPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(iPduPort);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(iPduPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iPduPort);
                }
                if (result == null) {
                    result = this.caseReferrable(iPduPort);
                }
                if (result == null) {
                    result = this.caseARObject(iPduPort);
                }
                if (result == null) {
                    result = this.caseGReferrable(iPduPort);
                }
                if (result == null) {
                    result = this.caseGARObject(iPduPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                ISignalTriggeringRefConditional iSignalTriggeringRefConditional = (ISignalTriggeringRefConditional)theEObject;
                T result = this.caseISignalTriggeringRefConditional(iSignalTriggeringRefConditional);
                if (result == null) {
                    result = this.caseARObject(iSignalTriggeringRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalTriggeringRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                ISignalTriggering iSignalTriggering = (ISignalTriggering)theEObject;
                T result = this.caseISignalTriggering(iSignalTriggering);
                if (result == null) {
                    result = this.caseIdentifiable(iSignalTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(iSignalTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iSignalTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(iSignalTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(iSignalTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(iSignalTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 24: {
                ISignalPort iSignalPort = (ISignalPort)theEObject;
                T result = this.caseISignalPort(iSignalPort);
                if (result == null) {
                    result = this.caseCommConnectorPort(iSignalPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(iSignalPort);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(iSignalPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iSignalPort);
                }
                if (result == null) {
                    result = this.caseReferrable(iSignalPort);
                }
                if (result == null) {
                    result = this.caseARObject(iSignalPort);
                }
                if (result == null) {
                    result = this.caseGReferrable(iSignalPort);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                ISignalIPduGroup iSignalIPduGroup = (ISignalIPduGroup)theEObject;
                T result = this.caseISignalIPduGroup(iSignalIPduGroup);
                if (result == null) {
                    result = this.caseFibexElement(iSignalIPduGroup);
                }
                if (result == null) {
                    result = this.casePackageableElement(iSignalIPduGroup);
                }
                if (result == null) {
                    result = this.caseCollectableElement(iSignalIPduGroup);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(iSignalIPduGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(iSignalIPduGroup);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(iSignalIPduGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iSignalIPduGroup);
                }
                if (result == null) {
                    result = this.caseReferrable(iSignalIPduGroup);
                }
                if (result == null) {
                    result = this.caseARObject(iSignalIPduGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable(iSignalIPduGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalIPduGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 26: {
                ISignalIPduRefConditional iSignalIPduRefConditional = (ISignalIPduRefConditional)theEObject;
                T result = this.caseISignalIPduRefConditional(iSignalIPduRefConditional);
                if (result == null) {
                    result = this.caseARObject(iSignalIPduRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalIPduRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 27: {
                MultiplexedIPdu multiplexedIPdu = (MultiplexedIPdu)theEObject;
                T result = this.caseMultiplexedIPdu(multiplexedIPdu);
                if (result == null) {
                    result = this.caseIPdu(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.casePdu(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseFibexElement(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseCollectableElement(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseReferrable(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseARObject(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 28: {
                StaticPart staticPart = (StaticPart)theEObject;
                T result = this.caseStaticPart(staticPart);
                if (result == null) {
                    result = this.caseMultiplexedPart(staticPart);
                }
                if (result == null) {
                    result = this.caseARObject(staticPart);
                }
                if (result == null) {
                    result = this.caseGARObject(staticPart);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 29: {
                NmPdu nmPdu = (NmPdu)theEObject;
                T result = this.caseNmPdu(nmPdu);
                if (result == null) {
                    result = this.casePdu(nmPdu);
                }
                if (result == null) {
                    result = this.caseFibexElement(nmPdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(nmPdu);
                }
                if (result == null) {
                    result = this.caseCollectableElement(nmPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(nmPdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(nmPdu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(nmPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nmPdu);
                }
                if (result == null) {
                    result = this.caseReferrable(nmPdu);
                }
                if (result == null) {
                    result = this.caseARObject(nmPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable(nmPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(nmPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 30: {
                NPdu nPdu = (NPdu)theEObject;
                T result = this.caseNPdu(nPdu);
                if (result == null) {
                    result = this.caseIPdu(nPdu);
                }
                if (result == null) {
                    result = this.casePdu(nPdu);
                }
                if (result == null) {
                    result = this.caseFibexElement(nPdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(nPdu);
                }
                if (result == null) {
                    result = this.caseCollectableElement(nPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(nPdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(nPdu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(nPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nPdu);
                }
                if (result == null) {
                    result = this.caseReferrable(nPdu);
                }
                if (result == null) {
                    result = this.caseARObject(nPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable(nPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(nPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 31: {
                PdurIPduGroup pdurIPduGroup = (PdurIPduGroup)theEObject;
                T result = this.casePdurIPduGroup(pdurIPduGroup);
                if (result == null) {
                    result = this.caseFibexElement(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.casePackageableElement(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseCollectableElement(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseReferrable(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseARObject(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 32: {
                PduToFrameMapping pduToFrameMapping = (PduToFrameMapping)theEObject;
                T result = this.casePduToFrameMapping(pduToFrameMapping);
                if (result == null) {
                    result = this.caseIdentifiable(pduToFrameMapping);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(pduToFrameMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pduToFrameMapping);
                }
                if (result == null) {
                    result = this.caseReferrable(pduToFrameMapping);
                }
                if (result == null) {
                    result = this.caseARObject(pduToFrameMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable(pduToFrameMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(pduToFrameMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 33: {
                UserDefinedIPdu userDefinedIPdu = (UserDefinedIPdu)theEObject;
                T result = this.caseUserDefinedIPdu(userDefinedIPdu);
                if (result == null) {
                    result = this.caseIPdu(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.casePdu(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseFibexElement(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseCollectableElement(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseReferrable(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseARObject(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 34: {
                UserDefinedPdu userDefinedPdu = (UserDefinedPdu)theEObject;
                T result = this.caseUserDefinedPdu(userDefinedPdu);
                if (result == null) {
                    result = this.casePdu(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseFibexElement(userDefinedPdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseCollectableElement(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseReferrable(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseARObject(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(userDefinedPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 35: {
                XcpPdu xcpPdu = (XcpPdu)theEObject;
                T result = this.caseXcpPdu(xcpPdu);
                if (result == null) {
                    result = this.casePdu(xcpPdu);
                }
                if (result == null) {
                    result = this.caseFibexElement(xcpPdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(xcpPdu);
                }
                if (result == null) {
                    result = this.caseCollectableElement(xcpPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(xcpPdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(xcpPdu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(xcpPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(xcpPdu);
                }
                if (result == null) {
                    result = this.caseReferrable(xcpPdu);
                }
                if (result == null) {
                    result = this.caseARObject(xcpPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable(xcpPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(xcpPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 36: {
                Frame frame = (Frame)theEObject;
                T result = this.caseFrame(frame);
                if (result == null) {
                    result = this.caseFibexElement(frame);
                }
                if (result == null) {
                    result = this.casePackageableElement(frame);
                }
                if (result == null) {
                    result = this.caseCollectableElement(frame);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(frame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(frame);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(frame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(frame);
                }
                if (result == null) {
                    result = this.caseReferrable(frame);
                }
                if (result == null) {
                    result = this.caseARObject(frame);
                }
                if (result == null) {
                    result = this.caseGReferrable(frame);
                }
                if (result == null) {
                    result = this.caseGARObject(frame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseDcmIPdu(DcmIPdu object) {
        return null;
    }

    public T caseIPdu(IPdu object) {
        return null;
    }

    public T casePdu(Pdu object) {
        return null;
    }

    public T caseDynamicPart(DynamicPart object) {
        return null;
    }

    public T caseMultiplexedPart(MultiplexedPart object) {
        return null;
    }

    public T caseSegmentPosition(SegmentPosition object) {
        return null;
    }

    public T caseDynamicPartAlternative(DynamicPartAlternative object) {
        return null;
    }

    public T caseISignalIPdu(ISignalIPdu object) {
        return null;
    }

    public T caseISignalToIPduMapping(ISignalToIPduMapping object) {
        return null;
    }

    public T caseISignal(ISignal object) {
        return null;
    }

    public T caseSystemSignal(SystemSignal object) {
        return null;
    }

    public T caseSystemSignalGroup(SystemSignalGroup object) {
        return null;
    }

    public T caseISignalProps(ISignalProps object) {
        return null;
    }

    public T caseISignalGroup(ISignalGroup object) {
        return null;
    }

    public T caseIPduTiming(IPduTiming object) {
        return null;
    }

    public T caseSignalIPduReplication(SignalIPduReplication object) {
        return null;
    }

    public T caseSignalIPduCounter(SignalIPduCounter object) {
        return null;
    }

    public T caseFramePort(FramePort object) {
        return null;
    }

    public T caseFrameTriggering(FrameTriggering object) {
        return null;
    }

    public T casePduTriggeringRefConditional(PduTriggeringRefConditional object) {
        return null;
    }

    public T casePduTriggering(PduTriggering object) {
        return null;
    }

    public T caseIPduPort(IPduPort object) {
        return null;
    }

    public T caseISignalTriggeringRefConditional(ISignalTriggeringRefConditional object) {
        return null;
    }

    public T caseISignalTriggering(ISignalTriggering object) {
        return null;
    }

    public T caseISignalPort(ISignalPort object) {
        return null;
    }

    public T caseISignalIPduGroup(ISignalIPduGroup object) {
        return null;
    }

    public T caseISignalIPduRefConditional(ISignalIPduRefConditional object) {
        return null;
    }

    public T caseMultiplexedIPdu(MultiplexedIPdu object) {
        return null;
    }

    public T caseStaticPart(StaticPart object) {
        return null;
    }

    public T caseNmPdu(NmPdu object) {
        return null;
    }

    public T caseNPdu(NPdu object) {
        return null;
    }

    public T casePdurIPduGroup(PdurIPduGroup object) {
        return null;
    }

    public T casePduToFrameMapping(PduToFrameMapping object) {
        return null;
    }

    public T caseUserDefinedIPdu(UserDefinedIPdu object) {
        return null;
    }

    public T caseUserDefinedPdu(UserDefinedPdu object) {
        return null;
    }

    public T caseXcpPdu(XcpPdu object) {
        return null;
    }

    public T caseFrame(Frame object) {
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

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseCommConnectorPort(CommConnectorPort object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

