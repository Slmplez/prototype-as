/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gcommunication;

import gautosar.gswcomponents.gcommunication.GcommunicationFactory;
import gautosar.gswcomponents.gcommunication.impl.GcommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GcommunicationPackage
extends EPackage {
    public static final String eNAME = "gcommunication";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/communication";
    public static final String eNS_PREFIX = "";
    public static final GcommunicationPackage eINSTANCE = GcommunicationPackageImpl.init();
    public static final int GP_PORT_COM_SPEC = 0;
    public static final int GP_PORT_COM_SPEC__GCHECKSUM = 0;
    public static final int GP_PORT_COM_SPEC__GTIMESTAMP = 1;
    public static final int GP_PORT_COM_SPEC_FEATURE_COUNT = 2;
    public static final int GSERVER_COM_SPEC = 1;
    public static final int GSERVER_COM_SPEC__GCHECKSUM = 0;
    public static final int GSERVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int GSERVER_COM_SPEC__GQUEUE_LENGTH = 2;
    public static final int GSERVER_COM_SPEC__GOPERATION = 3;
    public static final int GSERVER_COM_SPEC_FEATURE_COUNT = 4;
    public static final int GSENDER_COM_SPEC = 2;
    public static final int GSENDER_COM_SPEC__GCHECKSUM = 0;
    public static final int GSENDER_COM_SPEC__GTIMESTAMP = 1;
    public static final int GSENDER_COM_SPEC__GDATA_ELEMENT = 2;
    public static final int GSENDER_COM_SPEC_FEATURE_COUNT = 3;
    public static final int GQUEUED_SENDER_COM_SPEC = 3;
    public static final int GQUEUED_SENDER_COM_SPEC__GCHECKSUM = 0;
    public static final int GQUEUED_SENDER_COM_SPEC__GTIMESTAMP = 1;
    public static final int GQUEUED_SENDER_COM_SPEC__GDATA_ELEMENT = 2;
    public static final int GQUEUED_SENDER_COM_SPEC_FEATURE_COUNT = 3;
    public static final int GNONQUEUED_SENDER_COM_SPEC = 4;
    public static final int GNONQUEUED_SENDER_COM_SPEC__GCHECKSUM = 0;
    public static final int GNONQUEUED_SENDER_COM_SPEC__GTIMESTAMP = 1;
    public static final int GNONQUEUED_SENDER_COM_SPEC__GDATA_ELEMENT = 2;
    public static final int GNONQUEUED_SENDER_COM_SPEC__GINIT_VALUE = 3;
    public static final int GNONQUEUED_SENDER_COM_SPEC_FEATURE_COUNT = 4;
    public static final int GR_PORT_COM_SPEC = 5;
    public static final int GR_PORT_COM_SPEC__GCHECKSUM = 0;
    public static final int GR_PORT_COM_SPEC__GTIMESTAMP = 1;
    public static final int GR_PORT_COM_SPEC_FEATURE_COUNT = 2;
    public static final int GCLIENT_COM_SPEC = 6;
    public static final int GCLIENT_COM_SPEC__GCHECKSUM = 0;
    public static final int GCLIENT_COM_SPEC__GTIMESTAMP = 1;
    public static final int GCLIENT_COM_SPEC__GOPERATION = 2;
    public static final int GCLIENT_COM_SPEC_FEATURE_COUNT = 3;
    public static final int GRECEIVER_COM_SPEC = 7;
    public static final int GRECEIVER_COM_SPEC__GCHECKSUM = 0;
    public static final int GRECEIVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int GRECEIVER_COM_SPEC__GDATA_ELEMENT = 2;
    public static final int GRECEIVER_COM_SPEC_FEATURE_COUNT = 3;
    public static final int GQUEUED_RECEIVER_COM_SPEC = 8;
    public static final int GQUEUED_RECEIVER_COM_SPEC__GCHECKSUM = 0;
    public static final int GQUEUED_RECEIVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int GQUEUED_RECEIVER_COM_SPEC__GDATA_ELEMENT = 2;
    public static final int GQUEUED_RECEIVER_COM_SPEC__GQUEUE_LENGTH = 3;
    public static final int GQUEUED_RECEIVER_COM_SPEC_FEATURE_COUNT = 4;
    public static final int GNONQUEUED_RECEIVER_COM_SPEC = 9;
    public static final int GNONQUEUED_RECEIVER_COM_SPEC__GCHECKSUM = 0;
    public static final int GNONQUEUED_RECEIVER_COM_SPEC__GTIMESTAMP = 1;
    public static final int GNONQUEUED_RECEIVER_COM_SPEC__GDATA_ELEMENT = 2;
    public static final int GNONQUEUED_RECEIVER_COM_SPEC__GINIT_VALUE = 3;
    public static final int GNONQUEUED_RECEIVER_COM_SPEC_FEATURE_COUNT = 4;

    public EClass getGPPortComSpec();

    public EClass getGServerComSpec();

    public EAttribute getGServerComSpec_GQueueLength();

    public EReference getGServerComSpec_GOperation();

    public EClass getGSenderComSpec();

    public EReference getGSenderComSpec_GDataElement();

    public EClass getGQueuedSenderComSpec();

    public EClass getGNonqueuedSenderComSpec();

    public EReference getGNonqueuedSenderComSpec_GInitValue();

    public EClass getGRPortComSpec();

    public EClass getGClientComSpec();

    public EReference getGClientComSpec_GOperation();

    public EClass getGReceiverComSpec();

    public EReference getGReceiverComSpec_GDataElement();

    public EClass getGQueuedReceiverComSpec();

    public EAttribute getGQueuedReceiverComSpec_GQueueLength();

    public EClass getGNonqueuedReceiverComSpec();

    public EReference getGNonqueuedReceiverComSpec_GInitValue();

    public GcommunicationFactory getGcommunicationFactory();

    public static interface Literals {
        public static final EClass GP_PORT_COM_SPEC = eINSTANCE.getGPPortComSpec();
        public static final EClass GSERVER_COM_SPEC = eINSTANCE.getGServerComSpec();
        public static final EAttribute GSERVER_COM_SPEC__GQUEUE_LENGTH = eINSTANCE.getGServerComSpec_GQueueLength();
        public static final EReference GSERVER_COM_SPEC__GOPERATION = eINSTANCE.getGServerComSpec_GOperation();
        public static final EClass GSENDER_COM_SPEC = eINSTANCE.getGSenderComSpec();
        public static final EReference GSENDER_COM_SPEC__GDATA_ELEMENT = eINSTANCE.getGSenderComSpec_GDataElement();
        public static final EClass GQUEUED_SENDER_COM_SPEC = eINSTANCE.getGQueuedSenderComSpec();
        public static final EClass GNONQUEUED_SENDER_COM_SPEC = eINSTANCE.getGNonqueuedSenderComSpec();
        public static final EReference GNONQUEUED_SENDER_COM_SPEC__GINIT_VALUE = eINSTANCE.getGNonqueuedSenderComSpec_GInitValue();
        public static final EClass GR_PORT_COM_SPEC = eINSTANCE.getGRPortComSpec();
        public static final EClass GCLIENT_COM_SPEC = eINSTANCE.getGClientComSpec();
        public static final EReference GCLIENT_COM_SPEC__GOPERATION = eINSTANCE.getGClientComSpec_GOperation();
        public static final EClass GRECEIVER_COM_SPEC = eINSTANCE.getGReceiverComSpec();
        public static final EReference GRECEIVER_COM_SPEC__GDATA_ELEMENT = eINSTANCE.getGReceiverComSpec_GDataElement();
        public static final EClass GQUEUED_RECEIVER_COM_SPEC = eINSTANCE.getGQueuedReceiverComSpec();
        public static final EAttribute GQUEUED_RECEIVER_COM_SPEC__GQUEUE_LENGTH = eINSTANCE.getGQueuedReceiverComSpec_GQueueLength();
        public static final EClass GNONQUEUED_RECEIVER_COM_SPEC = eINSTANCE.getGNonqueuedReceiverComSpec();
        public static final EReference GNONQUEUED_RECEIVER_COM_SPEC__GINIT_VALUE = eINSTANCE.getGNonqueuedReceiverComSpec_GInitValue();
    }
}

