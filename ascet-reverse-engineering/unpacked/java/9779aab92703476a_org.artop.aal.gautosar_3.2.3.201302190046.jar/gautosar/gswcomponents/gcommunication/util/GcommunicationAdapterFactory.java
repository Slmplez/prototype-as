/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gcommunication.util;

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
import gautosar.gswcomponents.gcommunication.GcommunicationPackage;
import gautosar.gswcomponents.gcommunication.util.GcommunicationSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GcommunicationAdapterFactory
extends AdapterFactoryImpl {
    protected static GcommunicationPackage modelPackage;
    protected GcommunicationSwitch<Adapter> modelSwitch = new GcommunicationSwitch<Adapter>(){

        @Override
        public Adapter caseGPPortComSpec(GPPortComSpec object) {
            return GcommunicationAdapterFactory.this.createGPPortComSpecAdapter();
        }

        @Override
        public Adapter caseGServerComSpec(GServerComSpec object) {
            return GcommunicationAdapterFactory.this.createGServerComSpecAdapter();
        }

        @Override
        public Adapter caseGSenderComSpec(GSenderComSpec object) {
            return GcommunicationAdapterFactory.this.createGSenderComSpecAdapter();
        }

        @Override
        public Adapter caseGQueuedSenderComSpec(GQueuedSenderComSpec object) {
            return GcommunicationAdapterFactory.this.createGQueuedSenderComSpecAdapter();
        }

        @Override
        public Adapter caseGNonqueuedSenderComSpec(GNonqueuedSenderComSpec object) {
            return GcommunicationAdapterFactory.this.createGNonqueuedSenderComSpecAdapter();
        }

        @Override
        public Adapter caseGRPortComSpec(GRPortComSpec object) {
            return GcommunicationAdapterFactory.this.createGRPortComSpecAdapter();
        }

        @Override
        public Adapter caseGClientComSpec(GClientComSpec object) {
            return GcommunicationAdapterFactory.this.createGClientComSpecAdapter();
        }

        @Override
        public Adapter caseGReceiverComSpec(GReceiverComSpec object) {
            return GcommunicationAdapterFactory.this.createGReceiverComSpecAdapter();
        }

        @Override
        public Adapter caseGQueuedReceiverComSpec(GQueuedReceiverComSpec object) {
            return GcommunicationAdapterFactory.this.createGQueuedReceiverComSpecAdapter();
        }

        @Override
        public Adapter caseGNonqueuedReceiverComSpec(GNonqueuedReceiverComSpec object) {
            return GcommunicationAdapterFactory.this.createGNonqueuedReceiverComSpecAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GcommunicationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GcommunicationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GcommunicationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GcommunicationPackage.eINSTANCE;
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

    public Adapter createGPPortComSpecAdapter() {
        return null;
    }

    public Adapter createGServerComSpecAdapter() {
        return null;
    }

    public Adapter createGSenderComSpecAdapter() {
        return null;
    }

    public Adapter createGQueuedSenderComSpecAdapter() {
        return null;
    }

    public Adapter createGNonqueuedSenderComSpecAdapter() {
        return null;
    }

    public Adapter createGRPortComSpecAdapter() {
        return null;
    }

    public Adapter createGClientComSpecAdapter() {
        return null;
    }

    public Adapter createGReceiverComSpecAdapter() {
        return null;
    }

    public Adapter createGQueuedReceiverComSpecAdapter() {
        return null;
    }

    public Adapter createGNonqueuedReceiverComSpecAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

