/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.transportprotocols;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;

public interface TpAddress
extends Identifiable {
    public PhysicalChannel getPhysicalChannel();

    public void setPhysicalChannel(PhysicalChannel var1);

    public Integer getTpAddress();

    public void setTpAddress(Integer var1);

    public void unsetTpAddress();

    public boolean isSetTpAddress();
}

