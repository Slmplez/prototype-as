/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.systemsignal;

import autosar21.system.systemsignal.ClusterSignal;
import autosar21.system.systemsignal.ClusterSignalReceiver;
import autosar21.system.systemsignal.ClusterSignalTransmitter;
import autosar21.system.systemsignal.SystemSignal;
import autosar21.system.systemsignal.SystemSignalGroup;
import autosar21.system.systemsignal.SystemsignalPackage;
import autosar21.system.systemsignal.impl.SystemsignalFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SystemsignalFactory
extends EFactory {
    public static final SystemsignalFactory eINSTANCE = SystemsignalFactoryImpl.init();

    public ClusterSignal createClusterSignal();

    public ClusterSignalTransmitter createClusterSignalTransmitter();

    public ClusterSignalReceiver createClusterSignalReceiver();

    public SystemSignalGroup createSystemSignalGroup();

    public SystemSignal createSystemSignal();

    public SystemsignalPackage getSystemsignalPackage();
}

