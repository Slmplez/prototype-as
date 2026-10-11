/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.communication;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.communication.CommunicationMatrixType;
import autosar21.system.communication.PDUPrototype;
import autosar21.system.communication.Timing;
import autosar21.system.communication.instanceref.FrameReceiver;
import autosar21.system.communication.instanceref.FrameTransmitter;
import autosar21.system.communication.instanceref.FrameUsedPhysicalChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Frame
extends Identifiable {
    public CommunicationMatrixType getCommunicationMatrixType();

    public void setCommunicationMatrixType(CommunicationMatrixType var1);

    public Integer getFrameID();

    public void setFrameID(Integer var1);

    public void unsetFrameID();

    public boolean isSetFrameID();

    public Integer getFrameLength();

    public void setFrameLength(Integer var1);

    public void unsetFrameLength();

    public boolean isSetFrameLength();

    public EList<Timing> getFrameTimings();

    public Double getMinimumDelayTime();

    public void setMinimumDelayTime(Double var1);

    public void unsetMinimumDelayTime();

    public boolean isSetMinimumDelayTime();

    public EList<PDUPrototype> getPduPrototypes();

    public EList<FrameReceiver> getReceivers();

    public FrameTransmitter getTransmitter();

    public void setTransmitter(FrameTransmitter var1);

    public FrameUsedPhysicalChannel getUsedPhysicalChannel();

    public void setUsedPhysicalChannel(FrameUsedPhysicalChannel var1);
}

