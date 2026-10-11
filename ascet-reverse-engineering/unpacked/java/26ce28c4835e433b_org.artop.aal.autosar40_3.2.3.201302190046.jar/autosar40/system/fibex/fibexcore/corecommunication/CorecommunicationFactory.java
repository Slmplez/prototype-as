/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.DcmIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar40.system.fibex.fibexcore.corecommunication.DynamicPartAlternative;
import autosar40.system.fibex.fibexcore.corecommunication.FramePort;
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
import autosar40.system.fibex.fibexcore.corecommunication.impl.CorecommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CorecommunicationFactory
extends EFactory {
    public static final CorecommunicationFactory eINSTANCE = CorecommunicationFactoryImpl.init();

    public DcmIPdu createDcmIPdu();

    public DynamicPart createDynamicPart();

    public SegmentPosition createSegmentPosition();

    public DynamicPartAlternative createDynamicPartAlternative();

    public ISignalIPdu createISignalIPdu();

    public ISignalToIPduMapping createISignalToIPduMapping();

    public ISignal createISignal();

    public SystemSignal createSystemSignal();

    public SystemSignalGroup createSystemSignalGroup();

    public ISignalProps createISignalProps();

    public ISignalGroup createISignalGroup();

    public IPduTiming createIPduTiming();

    public SignalIPduReplication createSignalIPduReplication();

    public SignalIPduCounter createSignalIPduCounter();

    public FramePort createFramePort();

    public PduTriggeringRefConditional createPduTriggeringRefConditional();

    public PduTriggering createPduTriggering();

    public IPduPort createIPduPort();

    public ISignalTriggeringRefConditional createISignalTriggeringRefConditional();

    public ISignalTriggering createISignalTriggering();

    public ISignalPort createISignalPort();

    public ISignalIPduGroup createISignalIPduGroup();

    public ISignalIPduRefConditional createISignalIPduRefConditional();

    public MultiplexedIPdu createMultiplexedIPdu();

    public StaticPart createStaticPart();

    public NmPdu createNmPdu();

    public NPdu createNPdu();

    public PdurIPduGroup createPdurIPduGroup();

    public PduToFrameMapping createPduToFrameMapping();

    public UserDefinedIPdu createUserDefinedIPdu();

    public UserDefinedPdu createUserDefinedPdu();

    public XcpPdu createXcpPdu();

    public CorecommunicationPackage getCorecommunicationPackage();
}

