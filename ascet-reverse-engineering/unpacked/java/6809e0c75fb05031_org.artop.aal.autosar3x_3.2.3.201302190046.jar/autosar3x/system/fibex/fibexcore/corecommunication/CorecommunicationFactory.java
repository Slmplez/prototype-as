/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.DcmIPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPart;
import autosar3x.system.fibex.fibexcore.corecommunication.DynamicPartAlternative;
import autosar3x.system.fibex.fibexcore.corecommunication.Frame;
import autosar3x.system.fibex.fibexcore.corecommunication.FramePort;
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
import autosar3x.system.fibex.fibexcore.corecommunication.impl.CorecommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CorecommunicationFactory
extends EFactory {
    public static final CorecommunicationFactory eINSTANCE = CorecommunicationFactoryImpl.init();

    public DcmIPdu createDcmIPdu();

    public DynamicPart createDynamicPart();

    public SegmentPosition createSegmentPosition();

    public DynamicPartAlternative createDynamicPartAlternative();

    public SignalIPdu createSignalIPdu();

    public ISignalToIPduMapping createISignalToIPduMapping();

    public ISignal createISignal();

    public IPduTiming createIPduTiming();

    public Frame createFrame();

    public PduToFrameMapping createPduToFrameMapping();

    public FramePort createFramePort();

    public IPduGroup createIPduGroup();

    public IPduPort createIPduPort();

    public IPduTriggering createIPduTriggering();

    public ISignalTriggering createISignalTriggering();

    public SignalPort createSignalPort();

    public MultiplexedIPdu createMultiplexedIPdu();

    public StaticPart createStaticPart();

    public NmPdu createNmPdu();

    public NPdu createNPdu();

    public PdurIPduGroup createPdurIPduGroup();

    public SystemSignal createSystemSignal();

    public SystemSignalGroup createSystemSignalGroup();

    public UserDefinedIPdu createUserDefinedIPdu();

    public UserDefinedPdu createUserDefinedPdu();

    public CorecommunicationPackage getCorecommunicationPackage();
}

