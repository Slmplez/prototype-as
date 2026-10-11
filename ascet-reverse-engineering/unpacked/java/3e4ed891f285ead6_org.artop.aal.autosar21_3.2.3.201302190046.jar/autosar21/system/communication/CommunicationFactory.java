/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.communication;

import autosar21.system.communication.AbsolutelyScheduledTiming;
import autosar21.system.communication.ActiveCondition;
import autosar21.system.communication.CanFrame;
import autosar21.system.communication.CommunicationMatrixType;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.CyclicTiming;
import autosar21.system.communication.EventControlledTiming;
import autosar21.system.communication.EventTriggeredFrameSlot;
import autosar21.system.communication.FlexrayFrame;
import autosar21.system.communication.Frame;
import autosar21.system.communication.FreeTextCondition;
import autosar21.system.communication.GatewayType;
import autosar21.system.communication.LinFrame;
import autosar21.system.communication.LinSchedulingTable;
import autosar21.system.communication.LinSchedulingTableEntry;
import autosar21.system.communication.PDUGatewayEntry;
import autosar21.system.communication.PDUPrototype;
import autosar21.system.communication.RelativelyScheduledTiming;
import autosar21.system.communication.RequestControlledTiming;
import autosar21.system.communication.SendCondition;
import autosar21.system.communication.SignalGatewayEntry;
import autosar21.system.communication.SignalTrigger;
import autosar21.system.communication.SporadicFrameSlot;
import autosar21.system.communication.StartCondition;
import autosar21.system.communication.StopCondition;
import autosar21.system.communication.SystemStateTrigger;
import autosar21.system.communication.Timing;
import autosar21.system.communication.UnconditionalFrameSlot;
import autosar21.system.communication.impl.CommunicationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CommunicationFactory
extends EFactory {
    public static final CommunicationFactory eINSTANCE = CommunicationFactoryImpl.init();

    public PDUPrototype createPDUPrototype();

    public Timing createTiming();

    public FreeTextCondition createFreeTextCondition();

    public CommunicationMatrixType createCommunicationMatrixType();

    public LinSchedulingTable createLinSchedulingTable();

    public LinSchedulingTableEntry createLinSchedulingTableEntry();

    public Frame createFrame();

    public AbsolutelyScheduledTiming createAbsolutelyScheduledTiming();

    public ActiveCondition createActiveCondition();

    public SystemStateTrigger createSystemStateTrigger();

    public CanFrame createCanFrame();

    public CyclicTiming createCyclicTiming();

    public StopCondition createStopCondition();

    public SignalTrigger createSignalTrigger();

    public StartCondition createStartCondition();

    public EventControlledTiming createEventControlledTiming();

    public SendCondition createSendCondition();

    public EventTriggeredFrameSlot createEventTriggeredFrameSlot();

    public LinFrame createLinFrame();

    public FlexrayFrame createFlexrayFrame();

    public GatewayType createGatewayType();

    public PDUGatewayEntry createPDUGatewayEntry();

    public RelativelyScheduledTiming createRelativelyScheduledTiming();

    public RequestControlledTiming createRequestControlledTiming();

    public SignalGatewayEntry createSignalGatewayEntry();

    public SporadicFrameSlot createSporadicFrameSlot();

    public UnconditionalFrameSlot createUnconditionalFrameSlot();

    public CommunicationPackage getCommunicationPackage();
}

