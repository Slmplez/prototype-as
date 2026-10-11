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
package autosar21.system.communication.impl;

import autosar21.system.communication.AbsolutelyScheduledTiming;
import autosar21.system.communication.AbsolutelyScheduledTimingCycleRepetitionEnum;
import autosar21.system.communication.ActiveCondition;
import autosar21.system.communication.CanFrame;
import autosar21.system.communication.CommunicationFactory;
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
import autosar21.system.communication.PDUGatewayEntryActionOnTimeoutEnum;
import autosar21.system.communication.PDUPrototype;
import autosar21.system.communication.RelativelyScheduledTiming;
import autosar21.system.communication.RequestControlledTiming;
import autosar21.system.communication.SendCondition;
import autosar21.system.communication.SignalGatewayEntry;
import autosar21.system.communication.SignalGatewayEntryActionOnTimeoutEnum;
import autosar21.system.communication.SignalTrigger;
import autosar21.system.communication.SignalTriggerDataEventConditionEnum;
import autosar21.system.communication.SporadicFrameSlot;
import autosar21.system.communication.StartCondition;
import autosar21.system.communication.StopCondition;
import autosar21.system.communication.SystemStateTrigger;
import autosar21.system.communication.Timing;
import autosar21.system.communication.UnconditionalFrameSlot;
import autosar21.system.communication.impl.AbsolutelyScheduledTimingImpl;
import autosar21.system.communication.impl.ActiveConditionImpl;
import autosar21.system.communication.impl.CanFrameImpl;
import autosar21.system.communication.impl.CommunicationMatrixTypeImpl;
import autosar21.system.communication.impl.CyclicTimingImpl;
import autosar21.system.communication.impl.EventControlledTimingImpl;
import autosar21.system.communication.impl.EventTriggeredFrameSlotImpl;
import autosar21.system.communication.impl.FlexrayFrameImpl;
import autosar21.system.communication.impl.FrameImpl;
import autosar21.system.communication.impl.FreeTextConditionImpl;
import autosar21.system.communication.impl.GatewayTypeImpl;
import autosar21.system.communication.impl.LinFrameImpl;
import autosar21.system.communication.impl.LinSchedulingTableEntryImpl;
import autosar21.system.communication.impl.LinSchedulingTableImpl;
import autosar21.system.communication.impl.PDUGatewayEntryImpl;
import autosar21.system.communication.impl.PDUPrototypeImpl;
import autosar21.system.communication.impl.RelativelyScheduledTimingImpl;
import autosar21.system.communication.impl.RequestControlledTimingImpl;
import autosar21.system.communication.impl.SendConditionImpl;
import autosar21.system.communication.impl.SignalGatewayEntryImpl;
import autosar21.system.communication.impl.SignalTriggerImpl;
import autosar21.system.communication.impl.SporadicFrameSlotImpl;
import autosar21.system.communication.impl.StartConditionImpl;
import autosar21.system.communication.impl.StopConditionImpl;
import autosar21.system.communication.impl.SystemStateTriggerImpl;
import autosar21.system.communication.impl.TimingImpl;
import autosar21.system.communication.impl.UnconditionalFrameSlotImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class CommunicationFactoryImpl
extends EFactoryImpl
implements CommunicationFactory {
    public static CommunicationFactory init() {
        try {
            CommunicationFactory theCommunicationFactory = (CommunicationFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/c");
            if (theCommunicationFactory != null) {
                return theCommunicationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new CommunicationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createPDUPrototype();
            }
            case 1: {
                return this.createTiming();
            }
            case 2: {
                return this.createFreeTextCondition();
            }
            case 3: {
                return this.createCommunicationMatrixType();
            }
            case 4: {
                return this.createLinSchedulingTable();
            }
            case 5: {
                return this.createLinSchedulingTableEntry();
            }
            case 6: {
                return this.createFrame();
            }
            case 7: {
                return this.createAbsolutelyScheduledTiming();
            }
            case 8: {
                return this.createActiveCondition();
            }
            case 9: {
                return this.createSystemStateTrigger();
            }
            case 10: {
                return this.createCanFrame();
            }
            case 11: {
                return this.createCyclicTiming();
            }
            case 12: {
                return this.createStopCondition();
            }
            case 13: {
                return this.createSignalTrigger();
            }
            case 14: {
                return this.createStartCondition();
            }
            case 15: {
                return this.createEventControlledTiming();
            }
            case 16: {
                return this.createSendCondition();
            }
            case 17: {
                return this.createEventTriggeredFrameSlot();
            }
            case 18: {
                return this.createLinFrame();
            }
            case 19: {
                return this.createFlexrayFrame();
            }
            case 21: {
                return this.createGatewayType();
            }
            case 22: {
                return this.createPDUGatewayEntry();
            }
            case 23: {
                return this.createRelativelyScheduledTiming();
            }
            case 24: {
                return this.createRequestControlledTiming();
            }
            case 25: {
                return this.createSignalGatewayEntry();
            }
            case 26: {
                return this.createSporadicFrameSlot();
            }
            case 27: {
                return this.createUnconditionalFrameSlot();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 28: {
                return this.createAbsolutelyScheduledTimingCycleRepetitionEnumFromString(eDataType, initialValue);
            }
            case 29: {
                return this.createSignalTriggerDataEventConditionEnumFromString(eDataType, initialValue);
            }
            case 30: {
                return this.createPDUGatewayEntryActionOnTimeoutEnumFromString(eDataType, initialValue);
            }
            case 31: {
                return this.createSignalGatewayEntryActionOnTimeoutEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 28: {
                return this.convertAbsolutelyScheduledTimingCycleRepetitionEnumToString(eDataType, instanceValue);
            }
            case 29: {
                return this.convertSignalTriggerDataEventConditionEnumToString(eDataType, instanceValue);
            }
            case 30: {
                return this.convertPDUGatewayEntryActionOnTimeoutEnumToString(eDataType, instanceValue);
            }
            case 31: {
                return this.convertSignalGatewayEntryActionOnTimeoutEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public PDUPrototype createPDUPrototype() {
        PDUPrototypeImpl pduPrototype = new PDUPrototypeImpl();
        return pduPrototype;
    }

    public Timing createTiming() {
        TimingImpl timing = new TimingImpl();
        return timing;
    }

    public FreeTextCondition createFreeTextCondition() {
        FreeTextConditionImpl freeTextCondition = new FreeTextConditionImpl();
        return freeTextCondition;
    }

    public CommunicationMatrixType createCommunicationMatrixType() {
        CommunicationMatrixTypeImpl communicationMatrixType = new CommunicationMatrixTypeImpl();
        return communicationMatrixType;
    }

    public LinSchedulingTable createLinSchedulingTable() {
        LinSchedulingTableImpl linSchedulingTable = new LinSchedulingTableImpl();
        return linSchedulingTable;
    }

    public LinSchedulingTableEntry createLinSchedulingTableEntry() {
        LinSchedulingTableEntryImpl linSchedulingTableEntry = new LinSchedulingTableEntryImpl();
        return linSchedulingTableEntry;
    }

    public Frame createFrame() {
        FrameImpl frame = new FrameImpl();
        return frame;
    }

    public AbsolutelyScheduledTiming createAbsolutelyScheduledTiming() {
        AbsolutelyScheduledTimingImpl absolutelyScheduledTiming = new AbsolutelyScheduledTimingImpl();
        return absolutelyScheduledTiming;
    }

    public ActiveCondition createActiveCondition() {
        ActiveConditionImpl activeCondition = new ActiveConditionImpl();
        return activeCondition;
    }

    public SystemStateTrigger createSystemStateTrigger() {
        SystemStateTriggerImpl systemStateTrigger = new SystemStateTriggerImpl();
        return systemStateTrigger;
    }

    public CanFrame createCanFrame() {
        CanFrameImpl canFrame = new CanFrameImpl();
        return canFrame;
    }

    public CyclicTiming createCyclicTiming() {
        CyclicTimingImpl cyclicTiming = new CyclicTimingImpl();
        return cyclicTiming;
    }

    public StopCondition createStopCondition() {
        StopConditionImpl stopCondition = new StopConditionImpl();
        return stopCondition;
    }

    public SignalTrigger createSignalTrigger() {
        SignalTriggerImpl signalTrigger = new SignalTriggerImpl();
        return signalTrigger;
    }

    public StartCondition createStartCondition() {
        StartConditionImpl startCondition = new StartConditionImpl();
        return startCondition;
    }

    public EventControlledTiming createEventControlledTiming() {
        EventControlledTimingImpl eventControlledTiming = new EventControlledTimingImpl();
        return eventControlledTiming;
    }

    public SendCondition createSendCondition() {
        SendConditionImpl sendCondition = new SendConditionImpl();
        return sendCondition;
    }

    public EventTriggeredFrameSlot createEventTriggeredFrameSlot() {
        EventTriggeredFrameSlotImpl eventTriggeredFrameSlot = new EventTriggeredFrameSlotImpl();
        return eventTriggeredFrameSlot;
    }

    public LinFrame createLinFrame() {
        LinFrameImpl linFrame = new LinFrameImpl();
        return linFrame;
    }

    public FlexrayFrame createFlexrayFrame() {
        FlexrayFrameImpl flexrayFrame = new FlexrayFrameImpl();
        return flexrayFrame;
    }

    public GatewayType createGatewayType() {
        GatewayTypeImpl gatewayType = new GatewayTypeImpl();
        return gatewayType;
    }

    public PDUGatewayEntry createPDUGatewayEntry() {
        PDUGatewayEntryImpl pduGatewayEntry = new PDUGatewayEntryImpl();
        return pduGatewayEntry;
    }

    public RelativelyScheduledTiming createRelativelyScheduledTiming() {
        RelativelyScheduledTimingImpl relativelyScheduledTiming = new RelativelyScheduledTimingImpl();
        return relativelyScheduledTiming;
    }

    public RequestControlledTiming createRequestControlledTiming() {
        RequestControlledTimingImpl requestControlledTiming = new RequestControlledTimingImpl();
        return requestControlledTiming;
    }

    public SignalGatewayEntry createSignalGatewayEntry() {
        SignalGatewayEntryImpl signalGatewayEntry = new SignalGatewayEntryImpl();
        return signalGatewayEntry;
    }

    public SporadicFrameSlot createSporadicFrameSlot() {
        SporadicFrameSlotImpl sporadicFrameSlot = new SporadicFrameSlotImpl();
        return sporadicFrameSlot;
    }

    public UnconditionalFrameSlot createUnconditionalFrameSlot() {
        UnconditionalFrameSlotImpl unconditionalFrameSlot = new UnconditionalFrameSlotImpl();
        return unconditionalFrameSlot;
    }

    public AbsolutelyScheduledTimingCycleRepetitionEnum createAbsolutelyScheduledTimingCycleRepetitionEnumFromString(EDataType eDataType, String initialValue) {
        AbsolutelyScheduledTimingCycleRepetitionEnum result = AbsolutelyScheduledTimingCycleRepetitionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertAbsolutelyScheduledTimingCycleRepetitionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SignalTriggerDataEventConditionEnum createSignalTriggerDataEventConditionEnumFromString(EDataType eDataType, String initialValue) {
        SignalTriggerDataEventConditionEnum result = SignalTriggerDataEventConditionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSignalTriggerDataEventConditionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PDUGatewayEntryActionOnTimeoutEnum createPDUGatewayEntryActionOnTimeoutEnumFromString(EDataType eDataType, String initialValue) {
        PDUGatewayEntryActionOnTimeoutEnum result = PDUGatewayEntryActionOnTimeoutEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPDUGatewayEntryActionOnTimeoutEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public SignalGatewayEntryActionOnTimeoutEnum createSignalGatewayEntryActionOnTimeoutEnumFromString(EDataType eDataType, String initialValue) {
        SignalGatewayEntryActionOnTimeoutEnum result = SignalGatewayEntryActionOnTimeoutEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertSignalGatewayEntryActionOnTimeoutEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CommunicationPackage getCommunicationPackage() {
        return (CommunicationPackage)this.getEPackage();
    }

    @Deprecated
    public static CommunicationPackage getPackage() {
        return CommunicationPackage.eINSTANCE;
    }
}

