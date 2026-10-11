/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gswcinternalbehavior.grteevents.util;

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
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.util.GrteeventsSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GrteeventsAdapterFactory
extends AdapterFactoryImpl {
    protected static GrteeventsPackage modelPackage;
    protected GrteeventsSwitch<Adapter> modelSwitch = new GrteeventsSwitch<Adapter>(){

        @Override
        public Adapter caseGRTEEvent(GRTEEvent object) {
            return GrteeventsAdapterFactory.this.createGRTEEventAdapter();
        }

        @Override
        public Adapter caseGDataReceivedEvent(GDataReceivedEvent object) {
            return GrteeventsAdapterFactory.this.createGDataReceivedEventAdapter();
        }

        @Override
        public Adapter caseGSwcModeSwitchEvent(GSwcModeSwitchEvent object) {
            return GrteeventsAdapterFactory.this.createGSwcModeSwitchEventAdapter();
        }

        @Override
        public Adapter caseGTimingEvent(GTimingEvent object) {
            return GrteeventsAdapterFactory.this.createGTimingEventAdapter();
        }

        @Override
        public Adapter caseGWaitPoint(GWaitPoint object) {
            return GrteeventsAdapterFactory.this.createGWaitPointAdapter();
        }

        @Override
        public Adapter caseGDataReceiveErrorEvent(GDataReceiveErrorEvent object) {
            return GrteeventsAdapterFactory.this.createGDataReceiveErrorEventAdapter();
        }

        @Override
        public Adapter caseGOperationInvokedEvent(GOperationInvokedEvent object) {
            return GrteeventsAdapterFactory.this.createGOperationInvokedEventAdapter();
        }

        @Override
        public Adapter caseGAsynchronousServerCallReturnsEvent(GAsynchronousServerCallReturnsEvent object) {
            return GrteeventsAdapterFactory.this.createGAsynchronousServerCallReturnsEventAdapter();
        }

        @Override
        public Adapter caseGDataSendCompletedEvent(GDataSendCompletedEvent object) {
            return GrteeventsAdapterFactory.this.createGDataSendCompletedEventAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GrteeventsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GrteeventsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GrteeventsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GrteeventsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GrteeventsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GrteeventsPackage.eINSTANCE;
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

    public Adapter createGRTEEventAdapter() {
        return null;
    }

    public Adapter createGDataReceivedEventAdapter() {
        return null;
    }

    public Adapter createGSwcModeSwitchEventAdapter() {
        return null;
    }

    public Adapter createGTimingEventAdapter() {
        return null;
    }

    public Adapter createGWaitPointAdapter() {
        return null;
    }

    public Adapter createGDataReceiveErrorEventAdapter() {
        return null;
    }

    public Adapter createGOperationInvokedEventAdapter() {
        return null;
    }

    public Adapter createGAsynchronousServerCallReturnsEventAdapter() {
        return null;
    }

    public Adapter createGDataSendCompletedEventAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

