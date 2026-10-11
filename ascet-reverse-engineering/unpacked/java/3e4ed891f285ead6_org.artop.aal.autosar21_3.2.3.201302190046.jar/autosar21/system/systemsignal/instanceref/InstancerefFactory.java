/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.systemsignal.instanceref;

import autosar21.system.systemsignal.instanceref.ClusterSignalReceiverCommunicationPort;
import autosar21.system.systemsignal.instanceref.ClusterSignalTransmitterCommunicationPort;
import autosar21.system.systemsignal.instanceref.InstancerefPackage;
import autosar21.system.systemsignal.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public ClusterSignalReceiverCommunicationPort createClusterSignalReceiverCommunicationPort();

    public ClusterSignalTransmitterCommunicationPort createClusterSignalTransmitterCommunicationPort();

    public InstancerefPackage getInstancerefPackage();
}

