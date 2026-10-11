/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.transportprotocols;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;

public interface TpChannel
extends ARObject {
    public PhysicalChannel getPhysicalChannel();

    public void setPhysicalChannel(PhysicalChannel var1);
}

