/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceiveErrorEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceivedEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataSendCompletedEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GSwcModeSwitchEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GTimingEvent
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents.util;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.swcinternalbehavior.rteevents.AsynchronousServerCallReturnsEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.BackgroundEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataReceiveErrorEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataReceivedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataSendCompletedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.DataWriteCompletedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.ExternalTriggerOccurredEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.InternalTriggerOccurredEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.ModeSwitchedAckEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.OperationInvokedEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RTEEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.SwcModeSwitchEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.TimingEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.WaitPoint;
import autosar40.swcomponent.swcinternalbehavior.rteevents.util.RteeventsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceiveErrorEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceivedEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataSendCompletedEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GSwcModeSwitchEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GTimingEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class RteeventsAdapterFactory
extends AdapterFactoryImpl {
    protected static RteeventsPackage modelPackage;
    protected RteeventsSwitch<Adapter> modelSwitch = new RteeventsSwitch<Adapter>(){

        @Override
        public Adapter caseBackgroundEvent(BackgroundEvent object) {
            return RteeventsAdapterFactory.this.createBackgroundEventAdapter();
        }

        @Override
        public Adapter caseDataWriteCompletedEvent(DataWriteCompletedEvent object) {
            return RteeventsAdapterFactory.this.createDataWriteCompletedEventAdapter();
        }

        @Override
        public Adapter caseExternalTriggerOccurredEvent(ExternalTriggerOccurredEvent object) {
            return RteeventsAdapterFactory.this.createExternalTriggerOccurredEventAdapter();
        }

        @Override
        public Adapter caseInternalTriggerOccurredEvent(InternalTriggerOccurredEvent object) {
            return RteeventsAdapterFactory.this.createInternalTriggerOccurredEventAdapter();
        }

        @Override
        public Adapter caseModeSwitchedAckEvent(ModeSwitchedAckEvent object) {
            return RteeventsAdapterFactory.this.createModeSwitchedAckEventAdapter();
        }

        @Override
        public Adapter caseAsynchronousServerCallReturnsEvent(AsynchronousServerCallReturnsEvent object) {
            return RteeventsAdapterFactory.this.createAsynchronousServerCallReturnsEventAdapter();
        }

        @Override
        public Adapter caseDataSendCompletedEvent(DataSendCompletedEvent object) {
            return RteeventsAdapterFactory.this.createDataSendCompletedEventAdapter();
        }

        @Override
        public Adapter caseDataReceivedEvent(DataReceivedEvent object) {
            return RteeventsAdapterFactory.this.createDataReceivedEventAdapter();
        }

        @Override
        public Adapter caseDataReceiveErrorEvent(DataReceiveErrorEvent object) {
            return RteeventsAdapterFactory.this.createDataReceiveErrorEventAdapter();
        }

        @Override
        public Adapter caseTimingEvent(TimingEvent object) {
            return RteeventsAdapterFactory.this.createTimingEventAdapter();
        }

        @Override
        public Adapter caseOperationInvokedEvent(OperationInvokedEvent object) {
            return RteeventsAdapterFactory.this.createOperationInvokedEventAdapter();
        }

        @Override
        public Adapter caseWaitPoint(WaitPoint object) {
            return RteeventsAdapterFactory.this.createWaitPointAdapter();
        }

        @Override
        public Adapter caseSwcModeSwitchEvent(SwcModeSwitchEvent object) {
            return RteeventsAdapterFactory.this.createSwcModeSwitchEventAdapter();
        }

        @Override
        public Adapter caseRTEEvent(RTEEvent object) {
            return RteeventsAdapterFactory.this.createRTEEventAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return RteeventsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return RteeventsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return RteeventsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return RteeventsAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return RteeventsAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return RteeventsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return RteeventsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return RteeventsAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return RteeventsAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpStructureElement(AtpStructureElement object) {
            return RteeventsAdapterFactory.this.createAtpStructureElementAdapter();
        }

        @Override
        public Adapter caseGRTEEvent(GRTEEvent object) {
            return RteeventsAdapterFactory.this.createGRTEEventAdapter();
        }

        @Override
        public Adapter caseGAsynchronousServerCallReturnsEvent(GAsynchronousServerCallReturnsEvent object) {
            return RteeventsAdapterFactory.this.createGAsynchronousServerCallReturnsEventAdapter();
        }

        @Override
        public Adapter caseGDataSendCompletedEvent(GDataSendCompletedEvent object) {
            return RteeventsAdapterFactory.this.createGDataSendCompletedEventAdapter();
        }

        @Override
        public Adapter caseGDataReceivedEvent(GDataReceivedEvent object) {
            return RteeventsAdapterFactory.this.createGDataReceivedEventAdapter();
        }

        @Override
        public Adapter caseGDataReceiveErrorEvent(GDataReceiveErrorEvent object) {
            return RteeventsAdapterFactory.this.createGDataReceiveErrorEventAdapter();
        }

        @Override
        public Adapter caseGTimingEvent(GTimingEvent object) {
            return RteeventsAdapterFactory.this.createGTimingEventAdapter();
        }

        @Override
        public Adapter caseGOperationInvokedEvent(GOperationInvokedEvent object) {
            return RteeventsAdapterFactory.this.createGOperationInvokedEventAdapter();
        }

        @Override
        public Adapter caseGWaitPoint(GWaitPoint object) {
            return RteeventsAdapterFactory.this.createGWaitPointAdapter();
        }

        @Override
        public Adapter caseGSwcModeSwitchEvent(GSwcModeSwitchEvent object) {
            return RteeventsAdapterFactory.this.createGSwcModeSwitchEventAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return RteeventsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public RteeventsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = RteeventsPackage.eINSTANCE;
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

    public Adapter createBackgroundEventAdapter() {
        return null;
    }

    public Adapter createDataWriteCompletedEventAdapter() {
        return null;
    }

    public Adapter createExternalTriggerOccurredEventAdapter() {
        return null;
    }

    public Adapter createInternalTriggerOccurredEventAdapter() {
        return null;
    }

    public Adapter createModeSwitchedAckEventAdapter() {
        return null;
    }

    public Adapter createAsynchronousServerCallReturnsEventAdapter() {
        return null;
    }

    public Adapter createDataSendCompletedEventAdapter() {
        return null;
    }

    public Adapter createDataReceivedEventAdapter() {
        return null;
    }

    public Adapter createDataReceiveErrorEventAdapter() {
        return null;
    }

    public Adapter createTimingEventAdapter() {
        return null;
    }

    public Adapter createOperationInvokedEventAdapter() {
        return null;
    }

    public Adapter createWaitPointAdapter() {
        return null;
    }

    public Adapter createSwcModeSwitchEventAdapter() {
        return null;
    }

    public Adapter createRTEEventAdapter() {
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

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createAtpClassifierAdapter() {
        return null;
    }

    public Adapter createAtpFeatureAdapter() {
        return null;
    }

    public Adapter createAtpStructureElementAdapter() {
        return null;
    }

    public Adapter createGRTEEventAdapter() {
        return null;
    }

    public Adapter createGAsynchronousServerCallReturnsEventAdapter() {
        return null;
    }

    public Adapter createGDataSendCompletedEventAdapter() {
        return null;
    }

    public Adapter createGDataReceivedEventAdapter() {
        return null;
    }

    public Adapter createGDataReceiveErrorEventAdapter() {
        return null;
    }

    public Adapter createGTimingEventAdapter() {
        return null;
    }

    public Adapter createGOperationInvokedEventAdapter() {
        return null;
    }

    public Adapter createGWaitPointAdapter() {
        return null;
    }

    public Adapter createGSwcModeSwitchEventAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

