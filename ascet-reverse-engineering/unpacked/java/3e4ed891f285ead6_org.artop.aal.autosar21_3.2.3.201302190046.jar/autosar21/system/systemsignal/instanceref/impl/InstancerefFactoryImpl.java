/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar21.system.systemsignal.instanceref.impl;

import autosar21.system.systemsignal.instanceref.ClusterSignalReceiverCommunicationPort;
import autosar21.system.systemsignal.instanceref.ClusterSignalTransmitterCommunicationPort;
import autosar21.system.systemsignal.instanceref.InstancerefFactory;
import autosar21.system.systemsignal.instanceref.InstancerefPackage;
import autosar21.system.systemsignal.instanceref.impl.ClusterSignalReceiverCommunicationPortImpl;
import autosar21.system.systemsignal.instanceref.impl.ClusterSignalTransmitterCommunicationPortImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstancerefFactoryImpl
extends EFactoryImpl
implements InstancerefFactory {
    public static InstancerefFactory init() {
        try {
            InstancerefFactory theInstancerefFactory = (InstancerefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/ss/r");
            if (theInstancerefFactory != null) {
                return theInstancerefFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstancerefFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createClusterSignalReceiverCommunicationPort();
            }
            case 1: {
                return this.createClusterSignalTransmitterCommunicationPort();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ClusterSignalReceiverCommunicationPort createClusterSignalReceiverCommunicationPort() {
        ClusterSignalReceiverCommunicationPortImpl clusterSignalReceiverCommunicationPort = new ClusterSignalReceiverCommunicationPortImpl();
        return clusterSignalReceiverCommunicationPort;
    }

    public ClusterSignalTransmitterCommunicationPort createClusterSignalTransmitterCommunicationPort() {
        ClusterSignalTransmitterCommunicationPortImpl clusterSignalTransmitterCommunicationPort = new ClusterSignalTransmitterCommunicationPortImpl();
        return clusterSignalTransmitterCommunicationPort;
    }

    public InstancerefPackage getInstancerefPackage() {
        return (InstancerefPackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefPackage getPackage() {
        return InstancerefPackage.eINSTANCE;
    }
}

