/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.system.communication.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
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
import autosar21.system.communication.GatewayEntry;
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
import autosar21.system.communication.util.CommunicationSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class CommunicationAdapterFactory
extends AdapterFactoryImpl {
    protected static CommunicationPackage modelPackage;
    protected CommunicationSwitch<Adapter> modelSwitch = new CommunicationSwitch<Adapter>(){

        @Override
        public Adapter casePDUPrototype(PDUPrototype object) {
            return CommunicationAdapterFactory.this.createPDUPrototypeAdapter();
        }

        @Override
        public Adapter caseTiming(Timing object) {
            return CommunicationAdapterFactory.this.createTimingAdapter();
        }

        @Override
        public Adapter caseFreeTextCondition(FreeTextCondition object) {
            return CommunicationAdapterFactory.this.createFreeTextConditionAdapter();
        }

        @Override
        public Adapter caseCommunicationMatrixType(CommunicationMatrixType object) {
            return CommunicationAdapterFactory.this.createCommunicationMatrixTypeAdapter();
        }

        @Override
        public Adapter caseLinSchedulingTable(LinSchedulingTable object) {
            return CommunicationAdapterFactory.this.createLinSchedulingTableAdapter();
        }

        @Override
        public Adapter caseLinSchedulingTableEntry(LinSchedulingTableEntry object) {
            return CommunicationAdapterFactory.this.createLinSchedulingTableEntryAdapter();
        }

        @Override
        public Adapter caseFrame(Frame object) {
            return CommunicationAdapterFactory.this.createFrameAdapter();
        }

        @Override
        public Adapter caseAbsolutelyScheduledTiming(AbsolutelyScheduledTiming object) {
            return CommunicationAdapterFactory.this.createAbsolutelyScheduledTimingAdapter();
        }

        @Override
        public Adapter caseActiveCondition(ActiveCondition object) {
            return CommunicationAdapterFactory.this.createActiveConditionAdapter();
        }

        @Override
        public Adapter caseSystemStateTrigger(SystemStateTrigger object) {
            return CommunicationAdapterFactory.this.createSystemStateTriggerAdapter();
        }

        @Override
        public Adapter caseCanFrame(CanFrame object) {
            return CommunicationAdapterFactory.this.createCanFrameAdapter();
        }

        @Override
        public Adapter caseCyclicTiming(CyclicTiming object) {
            return CommunicationAdapterFactory.this.createCyclicTimingAdapter();
        }

        @Override
        public Adapter caseStopCondition(StopCondition object) {
            return CommunicationAdapterFactory.this.createStopConditionAdapter();
        }

        @Override
        public Adapter caseSignalTrigger(SignalTrigger object) {
            return CommunicationAdapterFactory.this.createSignalTriggerAdapter();
        }

        @Override
        public Adapter caseStartCondition(StartCondition object) {
            return CommunicationAdapterFactory.this.createStartConditionAdapter();
        }

        @Override
        public Adapter caseEventControlledTiming(EventControlledTiming object) {
            return CommunicationAdapterFactory.this.createEventControlledTimingAdapter();
        }

        @Override
        public Adapter caseSendCondition(SendCondition object) {
            return CommunicationAdapterFactory.this.createSendConditionAdapter();
        }

        @Override
        public Adapter caseEventTriggeredFrameSlot(EventTriggeredFrameSlot object) {
            return CommunicationAdapterFactory.this.createEventTriggeredFrameSlotAdapter();
        }

        @Override
        public Adapter caseLinFrame(LinFrame object) {
            return CommunicationAdapterFactory.this.createLinFrameAdapter();
        }

        @Override
        public Adapter caseFlexrayFrame(FlexrayFrame object) {
            return CommunicationAdapterFactory.this.createFlexrayFrameAdapter();
        }

        @Override
        public Adapter caseGatewayEntry(GatewayEntry object) {
            return CommunicationAdapterFactory.this.createGatewayEntryAdapter();
        }

        @Override
        public Adapter caseGatewayType(GatewayType object) {
            return CommunicationAdapterFactory.this.createGatewayTypeAdapter();
        }

        @Override
        public Adapter casePDUGatewayEntry(PDUGatewayEntry object) {
            return CommunicationAdapterFactory.this.createPDUGatewayEntryAdapter();
        }

        @Override
        public Adapter caseRelativelyScheduledTiming(RelativelyScheduledTiming object) {
            return CommunicationAdapterFactory.this.createRelativelyScheduledTimingAdapter();
        }

        @Override
        public Adapter caseRequestControlledTiming(RequestControlledTiming object) {
            return CommunicationAdapterFactory.this.createRequestControlledTimingAdapter();
        }

        @Override
        public Adapter caseSignalGatewayEntry(SignalGatewayEntry object) {
            return CommunicationAdapterFactory.this.createSignalGatewayEntryAdapter();
        }

        @Override
        public Adapter caseSporadicFrameSlot(SporadicFrameSlot object) {
            return CommunicationAdapterFactory.this.createSporadicFrameSlotAdapter();
        }

        @Override
        public Adapter caseUnconditionalFrameSlot(UnconditionalFrameSlot object) {
            return CommunicationAdapterFactory.this.createUnconditionalFrameSlotAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return CommunicationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CommunicationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return CommunicationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return CommunicationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return CommunicationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return CommunicationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return CommunicationAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return CommunicationAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return CommunicationAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return CommunicationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public CommunicationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = CommunicationPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createPDUPrototypeAdapter() {
        return null;
    }

    public Adapter createTimingAdapter() {
        return null;
    }

    public Adapter createFreeTextConditionAdapter() {
        return null;
    }

    public Adapter createCommunicationMatrixTypeAdapter() {
        return null;
    }

    public Adapter createLinSchedulingTableAdapter() {
        return null;
    }

    public Adapter createLinSchedulingTableEntryAdapter() {
        return null;
    }

    public Adapter createFrameAdapter() {
        return null;
    }

    public Adapter createAbsolutelyScheduledTimingAdapter() {
        return null;
    }

    public Adapter createActiveConditionAdapter() {
        return null;
    }

    public Adapter createSystemStateTriggerAdapter() {
        return null;
    }

    public Adapter createCanFrameAdapter() {
        return null;
    }

    public Adapter createCyclicTimingAdapter() {
        return null;
    }

    public Adapter createStopConditionAdapter() {
        return null;
    }

    public Adapter createSignalTriggerAdapter() {
        return null;
    }

    public Adapter createStartConditionAdapter() {
        return null;
    }

    public Adapter createEventControlledTimingAdapter() {
        return null;
    }

    public Adapter createSendConditionAdapter() {
        return null;
    }

    public Adapter createEventTriggeredFrameSlotAdapter() {
        return null;
    }

    public Adapter createLinFrameAdapter() {
        return null;
    }

    public Adapter createFlexrayFrameAdapter() {
        return null;
    }

    public Adapter createGatewayEntryAdapter() {
        return null;
    }

    public Adapter createGatewayTypeAdapter() {
        return null;
    }

    public Adapter createPDUGatewayEntryAdapter() {
        return null;
    }

    public Adapter createRelativelyScheduledTimingAdapter() {
        return null;
    }

    public Adapter createRequestControlledTimingAdapter() {
        return null;
    }

    public Adapter createSignalGatewayEntryAdapter() {
        return null;
    }

    public Adapter createSporadicFrameSlotAdapter() {
        return null;
    }

    public Adapter createUnconditionalFrameSlotAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createNonSplitableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

