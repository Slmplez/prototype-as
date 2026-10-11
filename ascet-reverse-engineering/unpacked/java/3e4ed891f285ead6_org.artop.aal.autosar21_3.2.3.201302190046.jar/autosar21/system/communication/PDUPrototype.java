/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.communication;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.communication.Frame;
import autosar21.system.pdustructure.PDUType;
import autosar21.system.systemsignal.ClusterSignal;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PDUPrototype
extends Identifiable {
    public Frame getFrame();

    public void setFrame(Frame var1);

    public EList<ClusterSignal> getIncludedClusterSignals();

    public PDUType getPduType();

    public void setPduType(PDUType var1);

    public Integer getStartPosition();

    public void setStartPosition(Integer var1);

    public void unsetStartPosition();

    public boolean isSetStartPosition();

    public Integer getUpdateIndicationBitPosition();

    public void setUpdateIndicationBitPosition(Integer var1);

    public void unsetUpdateIndicationBitPosition();

    public boolean isSetUpdateIndicationBitPosition();
}

