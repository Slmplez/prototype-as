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
package autosar21.system.systemsignal.impl;

import autosar21.system.systemsignal.ClusterSignal;
import autosar21.system.systemsignal.ClusterSignalReceiver;
import autosar21.system.systemsignal.ClusterSignalTransmitter;
import autosar21.system.systemsignal.SystemSignal;
import autosar21.system.systemsignal.SystemSignalGroup;
import autosar21.system.systemsignal.SystemsignalFactory;
import autosar21.system.systemsignal.SystemsignalPackage;
import autosar21.system.systemsignal.impl.ClusterSignalImpl;
import autosar21.system.systemsignal.impl.ClusterSignalReceiverImpl;
import autosar21.system.systemsignal.impl.ClusterSignalTransmitterImpl;
import autosar21.system.systemsignal.impl.SystemSignalGroupImpl;
import autosar21.system.systemsignal.impl.SystemSignalImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SystemsignalFactoryImpl
extends EFactoryImpl
implements SystemsignalFactory {
    public static SystemsignalFactory init() {
        try {
            SystemsignalFactory theSystemsignalFactory = (SystemsignalFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/s/ss");
            if (theSystemsignalFactory != null) {
                return theSystemsignalFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SystemsignalFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createClusterSignal();
            }
            case 1: {
                return this.createClusterSignalTransmitter();
            }
            case 2: {
                return this.createClusterSignalReceiver();
            }
            case 3: {
                return this.createSystemSignalGroup();
            }
            case 4: {
                return this.createSystemSignal();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ClusterSignal createClusterSignal() {
        ClusterSignalImpl clusterSignal = new ClusterSignalImpl();
        return clusterSignal;
    }

    public ClusterSignalTransmitter createClusterSignalTransmitter() {
        ClusterSignalTransmitterImpl clusterSignalTransmitter = new ClusterSignalTransmitterImpl();
        return clusterSignalTransmitter;
    }

    public ClusterSignalReceiver createClusterSignalReceiver() {
        ClusterSignalReceiverImpl clusterSignalReceiver = new ClusterSignalReceiverImpl();
        return clusterSignalReceiver;
    }

    public SystemSignalGroup createSystemSignalGroup() {
        SystemSignalGroupImpl systemSignalGroup = new SystemSignalGroupImpl();
        return systemSignalGroup;
    }

    public SystemSignal createSystemSignal() {
        SystemSignalImpl systemSignal = new SystemSignalImpl();
        return systemSignal;
    }

    public SystemsignalPackage getSystemsignalPackage() {
        return (SystemsignalPackage)this.getEPackage();
    }

    @Deprecated
    public static SystemsignalPackage getPackage() {
        return SystemsignalPackage.eINSTANCE;
    }
}

