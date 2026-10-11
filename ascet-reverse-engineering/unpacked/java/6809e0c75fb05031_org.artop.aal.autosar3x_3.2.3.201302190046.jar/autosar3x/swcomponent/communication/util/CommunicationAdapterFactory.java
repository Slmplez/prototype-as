/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcommunication.GClientComSpec
 *  gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec
 *  gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec
 *  gautosar.gswcomponents.gcommunication.GPPortComSpec
 *  gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec
 *  gautosar.gswcomponents.gcommunication.GQueuedSenderComSpec
 *  gautosar.gswcomponents.gcommunication.GRPortComSpec
 *  gautosar.gswcomponents.gcommunication.GReceiverComSpec
 *  gautosar.gswcomponents.gcommunication.GSenderComSpec
 *  gautosar.gswcomponents.gcommunication.GServerComSpec
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.communication.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.communication.ClientComSpec;
import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.ModeSwitchComSpec;
import autosar3x.swcomponent.communication.ModeSwitchedAckRequest;
import autosar3x.swcomponent.communication.PPortComSpec;
import autosar3x.swcomponent.communication.ParameterProvideComSpec;
import autosar3x.swcomponent.communication.ParameterRequireComSpec;
import autosar3x.swcomponent.communication.QueuedReceiverComSpec;
import autosar3x.swcomponent.communication.QueuedSenderComSpec;
import autosar3x.swcomponent.communication.RPortComSpec;
import autosar3x.swcomponent.communication.ReceiverComSpec;
import autosar3x.swcomponent.communication.SenderComSpec;
import autosar3x.swcomponent.communication.ServerComSpec;
import autosar3x.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar3x.swcomponent.communication.UnqueuedReceiverComSpec;
import autosar3x.swcomponent.communication.UnqueuedSenderComSpec;
import autosar3x.swcomponent.communication.util.CommunicationSwitch;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.InitValueAssignment;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcommunication.GClientComSpec;
import gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec;
import gautosar.gswcomponents.gcommunication.GPPortComSpec;
import gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GQueuedSenderComSpec;
import gautosar.gswcomponents.gcommunication.GRPortComSpec;
import gautosar.gswcomponents.gcommunication.GReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GSenderComSpec;
import gautosar.gswcomponents.gcommunication.GServerComSpec;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class CommunicationAdapterFactory
extends AdapterFactoryImpl {
    protected static CommunicationPackage modelPackage;
    protected CommunicationSwitch<Adapter> modelSwitch = new CommunicationSwitch<Adapter>(){

        @Override
        public Adapter caseModeSwitchComSpec(ModeSwitchComSpec object) {
            return CommunicationAdapterFactory.this.createModeSwitchComSpecAdapter();
        }

        @Override
        public Adapter casePPortComSpec(PPortComSpec object) {
            return CommunicationAdapterFactory.this.createPPortComSpecAdapter();
        }

        @Override
        public Adapter caseModeSwitchedAckRequest(ModeSwitchedAckRequest object) {
            return CommunicationAdapterFactory.this.createModeSwitchedAckRequestAdapter();
        }

        @Override
        public Adapter caseParameterProvideComSpec(ParameterProvideComSpec object) {
            return CommunicationAdapterFactory.this.createParameterProvideComSpecAdapter();
        }

        @Override
        public Adapter caseParameterRequireComSpec(ParameterRequireComSpec object) {
            return CommunicationAdapterFactory.this.createParameterRequireComSpecAdapter();
        }

        @Override
        public Adapter caseSenderComSpec(SenderComSpec object) {
            return CommunicationAdapterFactory.this.createSenderComSpecAdapter();
        }

        @Override
        public Adapter caseTransmissionAcknowledgementRequest(TransmissionAcknowledgementRequest object) {
            return CommunicationAdapterFactory.this.createTransmissionAcknowledgementRequestAdapter();
        }

        @Override
        public Adapter caseUnqueuedSenderComSpec(UnqueuedSenderComSpec object) {
            return CommunicationAdapterFactory.this.createUnqueuedSenderComSpecAdapter();
        }

        @Override
        public Adapter caseQueuedSenderComSpec(QueuedSenderComSpec object) {
            return CommunicationAdapterFactory.this.createQueuedSenderComSpecAdapter();
        }

        @Override
        public Adapter caseServerComSpec(ServerComSpec object) {
            return CommunicationAdapterFactory.this.createServerComSpecAdapter();
        }

        @Override
        public Adapter caseReceiverComSpec(ReceiverComSpec object) {
            return CommunicationAdapterFactory.this.createReceiverComSpecAdapter();
        }

        @Override
        public Adapter caseUnqueuedReceiverComSpec(UnqueuedReceiverComSpec object) {
            return CommunicationAdapterFactory.this.createUnqueuedReceiverComSpecAdapter();
        }

        @Override
        public Adapter caseQueuedReceiverComSpec(QueuedReceiverComSpec object) {
            return CommunicationAdapterFactory.this.createQueuedReceiverComSpecAdapter();
        }

        @Override
        public Adapter caseClientComSpec(ClientComSpec object) {
            return CommunicationAdapterFactory.this.createClientComSpecAdapter();
        }

        @Override
        public Adapter caseRPortComSpec(RPortComSpec object) {
            return CommunicationAdapterFactory.this.createRPortComSpecAdapter();
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
        public Adapter caseGPPortComSpec(GPPortComSpec object) {
            return CommunicationAdapterFactory.this.createGPPortComSpecAdapter();
        }

        @Override
        public Adapter caseInitValueAssignment(InitValueAssignment object) {
            return CommunicationAdapterFactory.this.createInitValueAssignmentAdapter();
        }

        @Override
        public Adapter caseGRPortComSpec(GRPortComSpec object) {
            return CommunicationAdapterFactory.this.createGRPortComSpecAdapter();
        }

        @Override
        public Adapter caseGSenderComSpec(GSenderComSpec object) {
            return CommunicationAdapterFactory.this.createGSenderComSpecAdapter();
        }

        @Override
        public Adapter caseGNonqueuedSenderComSpec(GNonqueuedSenderComSpec object) {
            return CommunicationAdapterFactory.this.createGNonqueuedSenderComSpecAdapter();
        }

        @Override
        public Adapter caseGQueuedSenderComSpec(GQueuedSenderComSpec object) {
            return CommunicationAdapterFactory.this.createGQueuedSenderComSpecAdapter();
        }

        @Override
        public Adapter caseGServerComSpec(GServerComSpec object) {
            return CommunicationAdapterFactory.this.createGServerComSpecAdapter();
        }

        @Override
        public Adapter caseGReceiverComSpec(GReceiverComSpec object) {
            return CommunicationAdapterFactory.this.createGReceiverComSpecAdapter();
        }

        @Override
        public Adapter caseGNonqueuedReceiverComSpec(GNonqueuedReceiverComSpec object) {
            return CommunicationAdapterFactory.this.createGNonqueuedReceiverComSpecAdapter();
        }

        @Override
        public Adapter caseGQueuedReceiverComSpec(GQueuedReceiverComSpec object) {
            return CommunicationAdapterFactory.this.createGQueuedReceiverComSpecAdapter();
        }

        @Override
        public Adapter caseGClientComSpec(GClientComSpec object) {
            return CommunicationAdapterFactory.this.createGClientComSpecAdapter();
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

    public Adapter createModeSwitchComSpecAdapter() {
        return null;
    }

    public Adapter createPPortComSpecAdapter() {
        return null;
    }

    public Adapter createModeSwitchedAckRequestAdapter() {
        return null;
    }

    public Adapter createParameterProvideComSpecAdapter() {
        return null;
    }

    public Adapter createParameterRequireComSpecAdapter() {
        return null;
    }

    public Adapter createSenderComSpecAdapter() {
        return null;
    }

    public Adapter createTransmissionAcknowledgementRequestAdapter() {
        return null;
    }

    public Adapter createUnqueuedSenderComSpecAdapter() {
        return null;
    }

    public Adapter createQueuedSenderComSpecAdapter() {
        return null;
    }

    public Adapter createServerComSpecAdapter() {
        return null;
    }

    public Adapter createReceiverComSpecAdapter() {
        return null;
    }

    public Adapter createUnqueuedReceiverComSpecAdapter() {
        return null;
    }

    public Adapter createQueuedReceiverComSpecAdapter() {
        return null;
    }

    public Adapter createClientComSpecAdapter() {
        return null;
    }

    public Adapter createRPortComSpecAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGPPortComSpecAdapter() {
        return null;
    }

    public Adapter createInitValueAssignmentAdapter() {
        return null;
    }

    public Adapter createGRPortComSpecAdapter() {
        return null;
    }

    public Adapter createGSenderComSpecAdapter() {
        return null;
    }

    public Adapter createGNonqueuedSenderComSpecAdapter() {
        return null;
    }

    public Adapter createGQueuedSenderComSpecAdapter() {
        return null;
    }

    public Adapter createGServerComSpecAdapter() {
        return null;
    }

    public Adapter createGReceiverComSpecAdapter() {
        return null;
    }

    public Adapter createGNonqueuedReceiverComSpecAdapter() {
        return null;
    }

    public Adapter createGQueuedReceiverComSpecAdapter() {
        return null;
    }

    public Adapter createGClientComSpecAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

