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
package autosar3x.system.fibex.fibexcore.corecommunication.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.corecommunication.AbstractSignal;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.DcmIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPartAlternative;
import autosar3x.system.fibex.fibexcore.corecommunication.Frame;
import autosar3x.system.fibex.fibexcore.corecommunication.FramePort;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.IPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduGroup;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduPort;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignal;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.MultiplexedIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.MultiplexedPart;
import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.NmPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.Pdu;
import autosar3x.system.fibex.fibexcore.corecommunication.PduToFrameMapping;
import autosar3x.system.fibex.fibexcore.corecommunication.PdurIPduGroup;
import autosar3x.system.fibex.fibexcore.corecommunication.SegmentPosition;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalPort;
import autosar3x.system.fibex.fibexcore.corecommunication.StaticPart;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignalGroup;
import autosar3x.system.fibex.fibexcore.corecommunication.UserDefinedIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.UserDefinedPdu;
import autosar3x.system.fibex.fibexcore.coretopology.CommConnectorPort;
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
                AbstractSignal abstractSignal = (AbstractSignal)theEObject;
                T result = this.caseAbstractSignal(abstractSignal);
                if (result == null) {
                    result = this.caseARElement(abstractSignal);
                }
                if (result == null) {
                    result = this.casePackageableElement(abstractSignal);
                }
                if (result == null) {
                    result = this.caseIdentifiable(abstractSignal);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(abstractSignal);
                }
                if (result == null) {
                    result = this.caseARObject(abstractSignal);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(abstractSignal);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)abstractSignal);
                }
                if (result == null) {
                    result = this.caseGARObject(abstractSignal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
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
                    result = this.caseIdentifiable(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseARObject(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(dcmIPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)dcmIPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(dcmIPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
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
                    result = this.caseIdentifiable(iPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(iPdu);
                }
                if (result == null) {
                    result = this.caseARObject(iPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)iPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(iPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Pdu pdu = (Pdu)theEObject;
                T result = this.casePdu(pdu);
                if (result == null) {
                    result = this.caseFibexElement(pdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(pdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(pdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(pdu);
                }
                if (result == null) {
                    result = this.caseARObject(pdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pdu);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)pdu);
                }
                if (result == null) {
                    result = this.caseGARObject(pdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
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
            case 5: {
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
            case 6: {
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
            case 7: {
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
            case 8: {
                SignalIPdu signalIPdu = (SignalIPdu)theEObject;
                T result = this.caseSignalIPdu(signalIPdu);
                if (result == null) {
                    result = this.caseIPdu(signalIPdu);
                }
                if (result == null) {
                    result = this.casePdu(signalIPdu);
                }
                if (result == null) {
                    result = this.caseFibexElement(signalIPdu);
                }
                if (result == null) {
                    result = this.casePackageableElement(signalIPdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(signalIPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(signalIPdu);
                }
                if (result == null) {
                    result = this.caseARObject(signalIPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(signalIPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)signalIPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(signalIPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ISignalToIPduMapping iSignalToIPduMapping = (ISignalToIPduMapping)theEObject;
                T result = this.caseISignalToIPduMapping(iSignalToIPduMapping);
                if (result == null) {
                    result = this.caseIdentifiable(iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.caseARObject(iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalToIPduMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                ISignal iSignal = (ISignal)theEObject;
                T result = this.caseISignal(iSignal);
                if (result == null) {
                    result = this.caseFibexElement(iSignal);
                }
                if (result == null) {
                    result = this.casePackageableElement(iSignal);
                }
                if (result == null) {
                    result = this.caseIdentifiable(iSignal);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(iSignal);
                }
                if (result == null) {
                    result = this.caseARObject(iSignal);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iSignal);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)iSignal);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
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
            case 12: {
                Frame frame = (Frame)theEObject;
                T result = this.caseFrame(frame);
                if (result == null) {
                    result = this.caseFibexElement(frame);
                }
                if (result == null) {
                    result = this.casePackageableElement(frame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(frame);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(frame);
                }
                if (result == null) {
                    result = this.caseARObject(frame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(frame);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)frame);
                }
                if (result == null) {
                    result = this.caseGARObject(frame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                PduToFrameMapping pduToFrameMapping = (PduToFrameMapping)theEObject;
                T result = this.casePduToFrameMapping(pduToFrameMapping);
                if (result == null) {
                    result = this.caseIdentifiable(pduToFrameMapping);
                }
                if (result == null) {
                    result = this.caseARObject(pduToFrameMapping);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pduToFrameMapping);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)pduToFrameMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(pduToFrameMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                FramePort framePort = (FramePort)theEObject;
                T result = this.caseFramePort(framePort);
                if (result == null) {
                    result = this.caseCommConnectorPort(framePort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(framePort);
                }
                if (result == null) {
                    result = this.caseARObject(framePort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(framePort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)framePort);
                }
                if (result == null) {
                    result = this.caseGARObject(framePort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                IPduGroup iPduGroup = (IPduGroup)theEObject;
                T result = this.caseIPduGroup(iPduGroup);
                if (result == null) {
                    result = this.caseFibexElement(iPduGroup);
                }
                if (result == null) {
                    result = this.casePackageableElement(iPduGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(iPduGroup);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(iPduGroup);
                }
                if (result == null) {
                    result = this.caseARObject(iPduGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iPduGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)iPduGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(iPduGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                IPduPort iPduPort = (IPduPort)theEObject;
                T result = this.caseIPduPort(iPduPort);
                if (result == null) {
                    result = this.caseCommConnectorPort(iPduPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(iPduPort);
                }
                if (result == null) {
                    result = this.caseARObject(iPduPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iPduPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)iPduPort);
                }
                if (result == null) {
                    result = this.caseGARObject(iPduPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                IPduTriggering iPduTriggering = (IPduTriggering)theEObject;
                T result = this.caseIPduTriggering(iPduTriggering);
                if (result == null) {
                    result = this.caseIdentifiable(iPduTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(iPduTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iPduTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)iPduTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(iPduTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                ISignalTriggering iSignalTriggering = (ISignalTriggering)theEObject;
                T result = this.caseISignalTriggering(iSignalTriggering);
                if (result == null) {
                    result = this.caseIdentifiable(iSignalTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(iSignalTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(iSignalTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)iSignalTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(iSignalTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                SignalPort signalPort = (SignalPort)theEObject;
                T result = this.caseSignalPort(signalPort);
                if (result == null) {
                    result = this.caseCommConnectorPort(signalPort);
                }
                if (result == null) {
                    result = this.caseIdentifiable(signalPort);
                }
                if (result == null) {
                    result = this.caseARObject(signalPort);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(signalPort);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)signalPort);
                }
                if (result == null) {
                    result = this.caseGARObject(signalPort);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
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
                    result = this.caseIdentifiable(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseARObject(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)multiplexedIPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(multiplexedIPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
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
            case 22: {
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
                    result = this.caseIdentifiable(nmPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(nmPdu);
                }
                if (result == null) {
                    result = this.caseARObject(nmPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nmPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)nmPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(nmPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
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
                    result = this.caseIdentifiable(nPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(nPdu);
                }
                if (result == null) {
                    result = this.caseARObject(nPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(nPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)nPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(nPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 24: {
                PdurIPduGroup pdurIPduGroup = (PdurIPduGroup)theEObject;
                T result = this.casePdurIPduGroup(pdurIPduGroup);
                if (result == null) {
                    result = this.caseFibexElement(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.casePackageableElement(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseARObject(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)pdurIPduGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(pdurIPduGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                SystemSignal systemSignal = (SystemSignal)theEObject;
                T result = this.caseSystemSignal(systemSignal);
                if (result == null) {
                    result = this.caseAbstractSignal(systemSignal);
                }
                if (result == null) {
                    result = this.caseARElement(systemSignal);
                }
                if (result == null) {
                    result = this.casePackageableElement(systemSignal);
                }
                if (result == null) {
                    result = this.caseIdentifiable(systemSignal);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(systemSignal);
                }
                if (result == null) {
                    result = this.caseARObject(systemSignal);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemSignal);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)systemSignal);
                }
                if (result == null) {
                    result = this.caseGARObject(systemSignal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 26: {
                SystemSignalGroup systemSignalGroup = (SystemSignalGroup)theEObject;
                T result = this.caseSystemSignalGroup(systemSignalGroup);
                if (result == null) {
                    result = this.caseAbstractSignal(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseARElement(systemSignalGroup);
                }
                if (result == null) {
                    result = this.casePackageableElement(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseIdentifiable(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseARObject(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)systemSignalGroup);
                }
                if (result == null) {
                    result = this.caseGARObject(systemSignalGroup);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 27: {
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
                    result = this.caseIdentifiable(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseARObject(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)userDefinedIPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(userDefinedIPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 28: {
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
                    result = this.caseIdentifiable(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseARObject(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)userDefinedPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(userDefinedPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 29: {
                FrameTriggering frameTriggering = (FrameTriggering)theEObject;
                T result = this.caseFrameTriggering(frameTriggering);
                if (result == null) {
                    result = this.caseIdentifiable(frameTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(frameTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(frameTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)frameTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(frameTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAbstractSignal(AbstractSignal object) {
        return null;
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

    public T caseSignalIPdu(SignalIPdu object) {
        return null;
    }

    public T caseISignalToIPduMapping(ISignalToIPduMapping object) {
        return null;
    }

    public T caseISignal(ISignal object) {
        return null;
    }

    public T caseIPduTiming(IPduTiming object) {
        return null;
    }

    public T caseFrame(Frame object) {
        return null;
    }

    public T casePduToFrameMapping(PduToFrameMapping object) {
        return null;
    }

    public T caseFramePort(FramePort object) {
        return null;
    }

    public T caseIPduGroup(IPduGroup object) {
        return null;
    }

    public T caseIPduPort(IPduPort object) {
        return null;
    }

    public T caseIPduTriggering(IPduTriggering object) {
        return null;
    }

    public T caseISignalTriggering(ISignalTriggering object) {
        return null;
    }

    public T caseSignalPort(SignalPort object) {
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

    public T caseSystemSignal(SystemSignal object) {
        return null;
    }

    public T caseSystemSignalGroup(SystemSignalGroup object) {
        return null;
    }

    public T caseUserDefinedIPdu(UserDefinedIPdu object) {
        return null;
    }

    public T caseUserDefinedPdu(UserDefinedPdu object) {
        return null;
    }

    public T caseFrameTriggering(FrameTriggering object) {
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

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseFibexElement(FibexElement object) {
        return null;
    }

    public T caseCommConnectorPort(CommConnectorPort object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

