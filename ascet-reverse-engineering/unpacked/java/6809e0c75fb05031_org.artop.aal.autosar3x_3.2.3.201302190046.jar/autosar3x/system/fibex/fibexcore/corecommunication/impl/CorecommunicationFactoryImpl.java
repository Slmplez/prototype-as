/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.AbstractSignal;
import autosar3x.system.fibex.fibexcore.corecommunication.CommunicationDirectionType;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationFactory;
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
import autosar3x.system.fibex.fibexcore.corecommunication.TransferPropertyEnum;
import autosar3x.system.fibex.fibexcore.corecommunication.TriggerMode;
import autosar3x.system.fibex.fibexcore.corecommunication.UserDefinedIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.UserDefinedPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.AbstractSignalImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.DcmIPduImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.DynamicPartAlternativeImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.DynamicPartImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.FrameImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.FramePortImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.FrameTriggeringImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.IPduGroupImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.IPduImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.IPduPortImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.IPduTimingImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.IPduTriggeringImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.ISignalImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.ISignalToIPduMappingImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.ISignalTriggeringImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.MultiplexedIPduImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.NPduImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.NmPduImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.PduImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.PduToFrameMappingImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.PdurIPduGroupImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.SegmentPositionImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.SignalIPduImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.SignalPortImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.StaticPartImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.SystemSignalGroupImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.SystemSignalImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.UserDefinedIPduImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.UserDefinedPduImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CorecommunicationFactoryImpl
extends EFactoryImpl
implements CorecommunicationFactory {
    public static CorecommunicationFactory init() {
        try {
            CorecommunicationFactory theCorecommunicationFactory = (CorecommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc");
            if (theCorecommunicationFactory != null) {
                return theCorecommunicationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CorecommunicationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAbstractSignal();
            }
            case 1: {
                return this.createDcmIPdu();
            }
            case 2: {
                return this.createIPdu();
            }
            case 3: {
                return this.createPdu();
            }
            case 4: {
                return this.createDynamicPart();
            }
            case 6: {
                return this.createSegmentPosition();
            }
            case 7: {
                return this.createDynamicPartAlternative();
            }
            case 8: {
                return this.createSignalIPdu();
            }
            case 9: {
                return this.createISignalToIPduMapping();
            }
            case 10: {
                return this.createISignal();
            }
            case 11: {
                return this.createIPduTiming();
            }
            case 12: {
                return this.createFrame();
            }
            case 13: {
                return this.createPduToFrameMapping();
            }
            case 14: {
                return this.createFramePort();
            }
            case 15: {
                return this.createIPduGroup();
            }
            case 16: {
                return this.createIPduPort();
            }
            case 17: {
                return this.createIPduTriggering();
            }
            case 18: {
                return this.createISignalTriggering();
            }
            case 19: {
                return this.createSignalPort();
            }
            case 20: {
                return this.createMultiplexedIPdu();
            }
            case 21: {
                return this.createStaticPart();
            }
            case 22: {
                return this.createNmPdu();
            }
            case 23: {
                return this.createNPdu();
            }
            case 24: {
                return this.createPdurIPduGroup();
            }
            case 25: {
                return this.createSystemSignal();
            }
            case 26: {
                return this.createSystemSignalGroup();
            }
            case 27: {
                return this.createUserDefinedIPdu();
            }
            case 28: {
                return this.createUserDefinedPdu();
            }
            case 29: {
                return this.createFrameTriggering();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 30: {
                return this.createCommunicationDirectionTypeFromString(eDataType, initialValue);
            }
            case 31: {
                return this.createTransferPropertyEnumFromString(eDataType, initialValue);
            }
            case 32: {
                return this.createTriggerModeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 30: {
                return this.convertCommunicationDirectionTypeToString(eDataType, instanceValue);
            }
            case 31: {
                return this.convertTransferPropertyEnumToString(eDataType, instanceValue);
            }
            case 32: {
                return this.convertTriggerModeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public AbstractSignal createAbstractSignal() {
        AbstractSignalImpl abstractSignal = new AbstractSignalImpl();
        return abstractSignal;
    }

    public DcmIPdu createDcmIPdu() {
        DcmIPduImpl dcmIPdu = new DcmIPduImpl();
        return dcmIPdu;
    }

    public IPdu createIPdu() {
        IPduImpl iPdu = new IPduImpl();
        return iPdu;
    }

    public Pdu createPdu() {
        PduImpl pdu = new PduImpl();
        return pdu;
    }

    public DynamicPart createDynamicPart() {
        DynamicPartImpl dynamicPart = new DynamicPartImpl();
        return dynamicPart;
    }

    public SegmentPosition createSegmentPosition() {
        SegmentPositionImpl segmentPosition = new SegmentPositionImpl();
        return segmentPosition;
    }

    public DynamicPartAlternative createDynamicPartAlternative() {
        DynamicPartAlternativeImpl dynamicPartAlternative = new DynamicPartAlternativeImpl();
        return dynamicPartAlternative;
    }

    public SignalIPdu createSignalIPdu() {
        SignalIPduImpl signalIPdu = new SignalIPduImpl();
        return signalIPdu;
    }

    public ISignalToIPduMapping createISignalToIPduMapping() {
        ISignalToIPduMappingImpl iSignalToIPduMapping = new ISignalToIPduMappingImpl();
        return iSignalToIPduMapping;
    }

    public ISignal createISignal() {
        ISignalImpl iSignal = new ISignalImpl();
        return iSignal;
    }

    public IPduTiming createIPduTiming() {
        IPduTimingImpl iPduTiming = new IPduTimingImpl();
        return iPduTiming;
    }

    public Frame createFrame() {
        FrameImpl frame = new FrameImpl();
        return frame;
    }

    public PduToFrameMapping createPduToFrameMapping() {
        PduToFrameMappingImpl pduToFrameMapping = new PduToFrameMappingImpl();
        return pduToFrameMapping;
    }

    public FramePort createFramePort() {
        FramePortImpl framePort = new FramePortImpl();
        return framePort;
    }

    public IPduGroup createIPduGroup() {
        IPduGroupImpl iPduGroup = new IPduGroupImpl();
        return iPduGroup;
    }

    public IPduPort createIPduPort() {
        IPduPortImpl iPduPort = new IPduPortImpl();
        return iPduPort;
    }

    public IPduTriggering createIPduTriggering() {
        IPduTriggeringImpl iPduTriggering = new IPduTriggeringImpl();
        return iPduTriggering;
    }

    public ISignalTriggering createISignalTriggering() {
        ISignalTriggeringImpl iSignalTriggering = new ISignalTriggeringImpl();
        return iSignalTriggering;
    }

    public SignalPort createSignalPort() {
        SignalPortImpl signalPort = new SignalPortImpl();
        return signalPort;
    }

    public MultiplexedIPdu createMultiplexedIPdu() {
        MultiplexedIPduImpl multiplexedIPdu = new MultiplexedIPduImpl();
        return multiplexedIPdu;
    }

    public StaticPart createStaticPart() {
        StaticPartImpl staticPart = new StaticPartImpl();
        return staticPart;
    }

    public NmPdu createNmPdu() {
        NmPduImpl nmPdu = new NmPduImpl();
        return nmPdu;
    }

    public NPdu createNPdu() {
        NPduImpl nPdu = new NPduImpl();
        return nPdu;
    }

    public PdurIPduGroup createPdurIPduGroup() {
        PdurIPduGroupImpl pdurIPduGroup = new PdurIPduGroupImpl();
        return pdurIPduGroup;
    }

    public SystemSignal createSystemSignal() {
        SystemSignalImpl systemSignal = new SystemSignalImpl();
        return systemSignal;
    }

    public SystemSignalGroup createSystemSignalGroup() {
        SystemSignalGroupImpl systemSignalGroup = new SystemSignalGroupImpl();
        return systemSignalGroup;
    }

    public UserDefinedIPdu createUserDefinedIPdu() {
        UserDefinedIPduImpl userDefinedIPdu = new UserDefinedIPduImpl();
        return userDefinedIPdu;
    }

    public UserDefinedPdu createUserDefinedPdu() {
        UserDefinedPduImpl userDefinedPdu = new UserDefinedPduImpl();
        return userDefinedPdu;
    }

    public FrameTriggering createFrameTriggering() {
        FrameTriggeringImpl frameTriggering = new FrameTriggeringImpl();
        return frameTriggering;
    }

    public CommunicationDirectionType createCommunicationDirectionTypeFromString(EDataType eDataType, String initialValue) {
        CommunicationDirectionType result = CommunicationDirectionType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCommunicationDirectionTypeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TransferPropertyEnum createTransferPropertyEnumFromString(EDataType eDataType, String initialValue) {
        TransferPropertyEnum result = TransferPropertyEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTransferPropertyEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public TriggerMode createTriggerModeFromString(EDataType eDataType, String initialValue) {
        TriggerMode result = TriggerMode.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertTriggerModeToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CorecommunicationPackage getCorecommunicationPackage() {
        return (CorecommunicationPackage)this.getEPackage();
    }

    @Deprecated
    public static CorecommunicationPackage getPackage() {
        return CorecommunicationPackage.eINSTANCE;
    }
}

