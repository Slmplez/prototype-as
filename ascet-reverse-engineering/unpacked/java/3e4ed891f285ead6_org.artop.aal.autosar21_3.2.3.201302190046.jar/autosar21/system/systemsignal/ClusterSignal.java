/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.systemsignal;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.communication.PDUPrototype;
import autosar21.system.pdustructure.SignalPosition;
import autosar21.system.systemsignal.ClusterSignalReceiver;
import autosar21.system.systemsignal.ClusterSignalTransmitter;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClusterSignal
extends Identifiable {
    public PDUPrototype getPDUPrototype();

    public void setPDUPrototype(PDUPrototype var1);

    public EList<ClusterSignalReceiver> getReceivers();

    public SignalPosition getSignalPosition();

    public void setSignalPosition(SignalPosition var1);

    public ClusterSignalTransmitter getTransmitter();

    public void setTransmitter(ClusterSignalTransmitter var1);

    public Integer getUpdateIndicationBitPosition();

    public void setUpdateIndicationBitPosition(Integer var1);

    public void unsetUpdateIndicationBitPosition();

    public boolean isSetUpdateIndicationBitPosition();
}

