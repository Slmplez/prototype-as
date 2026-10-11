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
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CommunicationDirectionType;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationFactory;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.DcmIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.DiagPduType;
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
import autosar40.system.fibex.fibexcore.corecommunication.TransferPropertyEnum;
import autosar40.system.fibex.fibexcore.corecommunication.TriggerMode;
import autosar40.system.fibex.fibexcore.corecommunication.UserDefinedIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.UserDefinedPdu;
import autosar40.system.fibex.fibexcore.corecommunication.XcpPdu;
import autosar40.system.fibex.fibexcore.corecommunication.impl.DcmIPduImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.DynamicPartAlternativeImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.DynamicPartImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.FrameImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.FramePortImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.FrameTriggeringImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.IPduImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.IPduPortImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.IPduTimingImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.ISignalGroupImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.ISignalIPduGroupImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.ISignalIPduImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.ISignalIPduRefConditionalImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.ISignalImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.ISignalPortImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.ISignalPropsImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.ISignalToIPduMappingImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.ISignalTriggeringImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.ISignalTriggeringRefConditionalImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.MultiplexedIPduImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.NPduImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.NmPduImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.PduImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.PduToFrameMappingImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.PduTriggeringImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.PduTriggeringRefConditionalImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.PdurIPduGroupImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.SegmentPositionImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.SignalIPduCounterImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.SignalIPduReplicationImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.StaticPartImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.SystemSignalGroupImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.SystemSignalImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.UserDefinedIPduImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.UserDefinedPduImpl;
import autosar40.system.fibex.fibexcore.corecommunication.impl.XcpPduImpl;
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
            CorecommunicationFactory theCorecommunicationFactory = (CorecommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/system/f/fcore/cc");
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
                return this.createDcmIPdu();
            }
            case 1: {
                return this.createIPdu();
            }
            case 2: {
                return this.createPdu();
            }
            case 3: {
                return this.createDynamicPart();
            }
            case 5: {
                return this.createSegmentPosition();
            }
            case 6: {
                return this.createDynamicPartAlternative();
            }
            case 7: {
                return this.createISignalIPdu();
            }
            case 8: {
                return this.createISignalToIPduMapping();
            }
            case 9: {
                return this.createISignal();
            }
            case 10: {
                return this.createSystemSignal();
            }
            case 11: {
                return this.createSystemSignalGroup();
            }
            case 12: {
                return this.createISignalProps();
            }
            case 13: {
                return this.createISignalGroup();
            }
            case 14: {
                return this.createIPduTiming();
            }
            case 15: {
                return this.createSignalIPduReplication();
            }
            case 16: {
                return this.createSignalIPduCounter();
            }
            case 17: {
                return this.createFramePort();
            }
            case 18: {
                return this.createFrameTriggering();
            }
            case 19: {
                return this.createPduTriggeringRefConditional();
            }
            case 20: {
                return this.createPduTriggering();
            }
            case 21: {
                return this.createIPduPort();
            }
            case 22: {
                return this.createISignalTriggeringRefConditional();
            }
            case 23: {
                return this.createISignalTriggering();
            }
            case 24: {
                return this.createISignalPort();
            }
            case 25: {
                return this.createISignalIPduGroup();
            }
            case 26: {
                return this.createISignalIPduRefConditional();
            }
            case 27: {
                return this.createMultiplexedIPdu();
            }
            case 28: {
                return this.createStaticPart();
            }
            case 29: {
                return this.createNmPdu();
            }
            case 30: {
                return this.createNPdu();
            }
            case 31: {
                return this.createPdurIPduGroup();
            }
            case 32: {
                return this.createPduToFrameMapping();
            }
            case 33: {
                return this.createUserDefinedIPdu();
            }
            case 34: {
                return this.createUserDefinedPdu();
            }
            case 35: {
                return this.createXcpPdu();
            }
            case 36: {
                return this.createFrame();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 37: {
                return this.createCommunicationDirectionTypeFromString(eDataType, initialValue);
            }
            case 38: {
                return this.createDiagPduTypeFromString(eDataType, initialValue);
            }
            case 39: {
                return this.createTransferPropertyEnumFromString(eDataType, initialValue);
            }
            case 40: {
                return this.createTriggerModeFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 37: {
                return this.convertCommunicationDirectionTypeToString(eDataType, instanceValue);
            }
            case 38: {
                return this.convertDiagPduTypeToString(eDataType, instanceValue);
            }
            case 39: {
                return this.convertTransferPropertyEnumToString(eDataType, instanceValue);
            }
            case 40: {
                return this.convertTriggerModeToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
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

    public ISignalIPdu createISignalIPdu() {
        ISignalIPduImpl iSignalIPdu = new ISignalIPduImpl();
        return iSignalIPdu;
    }

    public ISignalToIPduMapping createISignalToIPduMapping() {
        ISignalToIPduMappingImpl iSignalToIPduMapping = new ISignalToIPduMappingImpl();
        return iSignalToIPduMapping;
    }

    public ISignal createISignal() {
        ISignalImpl iSignal = new ISignalImpl();
        return iSignal;
    }

    public SystemSignal createSystemSignal() {
        SystemSignalImpl systemSignal = new SystemSignalImpl();
        return systemSignal;
    }

    public SystemSignalGroup createSystemSignalGroup() {
        SystemSignalGroupImpl systemSignalGroup = new SystemSignalGroupImpl();
        return systemSignalGroup;
    }

    public ISignalProps createISignalProps() {
        ISignalPropsImpl iSignalProps = new ISignalPropsImpl();
        return iSignalProps;
    }

    public ISignalGroup createISignalGroup() {
        ISignalGroupImpl iSignalGroup = new ISignalGroupImpl();
        return iSignalGroup;
    }

    public IPduTiming createIPduTiming() {
        IPduTimingImpl iPduTiming = new IPduTimingImpl();
        return iPduTiming;
    }

    public SignalIPduReplication createSignalIPduReplication() {
        SignalIPduReplicationImpl signalIPduReplication = new SignalIPduReplicationImpl();
        return signalIPduReplication;
    }

    public SignalIPduCounter createSignalIPduCounter() {
        SignalIPduCounterImpl signalIPduCounter = new SignalIPduCounterImpl();
        return signalIPduCounter;
    }

    public FramePort createFramePort() {
        FramePortImpl framePort = new FramePortImpl();
        return framePort;
    }

    public FrameTriggering createFrameTriggering() {
        FrameTriggeringImpl frameTriggering = new FrameTriggeringImpl();
        return frameTriggering;
    }

    public PduTriggeringRefConditional createPduTriggeringRefConditional() {
        PduTriggeringRefConditionalImpl pduTriggeringRefConditional = new PduTriggeringRefConditionalImpl();
        return pduTriggeringRefConditional;
    }

    public PduTriggering createPduTriggering() {
        PduTriggeringImpl pduTriggering = new PduTriggeringImpl();
        return pduTriggering;
    }

    public IPduPort createIPduPort() {
        IPduPortImpl iPduPort = new IPduPortImpl();
        return iPduPort;
    }

    public ISignalTriggeringRefConditional createISignalTriggeringRefConditional() {
        ISignalTriggeringRefConditionalImpl iSignalTriggeringRefConditional = new ISignalTriggeringRefConditionalImpl();
        return iSignalTriggeringRefConditional;
    }

    public ISignalTriggering createISignalTriggering() {
        ISignalTriggeringImpl iSignalTriggering = new ISignalTriggeringImpl();
        return iSignalTriggering;
    }

    public ISignalPort createISignalPort() {
        ISignalPortImpl iSignalPort = new ISignalPortImpl();
        return iSignalPort;
    }

    public ISignalIPduGroup createISignalIPduGroup() {
        ISignalIPduGroupImpl iSignalIPduGroup = new ISignalIPduGroupImpl();
        return iSignalIPduGroup;
    }

    public ISignalIPduRefConditional createISignalIPduRefConditional() {
        ISignalIPduRefConditionalImpl iSignalIPduRefConditional = new ISignalIPduRefConditionalImpl();
        return iSignalIPduRefConditional;
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

    public PduToFrameMapping createPduToFrameMapping() {
        PduToFrameMappingImpl pduToFrameMapping = new PduToFrameMappingImpl();
        return pduToFrameMapping;
    }

    public UserDefinedIPdu createUserDefinedIPdu() {
        UserDefinedIPduImpl userDefinedIPdu = new UserDefinedIPduImpl();
        return userDefinedIPdu;
    }

    public UserDefinedPdu createUserDefinedPdu() {
        UserDefinedPduImpl userDefinedPdu = new UserDefinedPduImpl();
        return userDefinedPdu;
    }

    public XcpPdu createXcpPdu() {
        XcpPduImpl xcpPdu = new XcpPduImpl();
        return xcpPdu;
    }

    public Frame createFrame() {
        FrameImpl frame = new FrameImpl();
        return frame;
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

    public DiagPduType createDiagPduTypeFromString(EDataType eDataType, String initialValue) {
        DiagPduType result = DiagPduType.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertDiagPduTypeToString(EDataType eDataType, Object instanceValue) {
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

