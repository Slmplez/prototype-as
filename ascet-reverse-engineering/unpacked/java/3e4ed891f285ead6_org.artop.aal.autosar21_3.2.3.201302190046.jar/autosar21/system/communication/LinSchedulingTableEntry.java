/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.communication.LinSchedulingTable;

public interface LinSchedulingTableEntry
extends ARObject {
    public LinSchedulingTable getLinSchedulingTable();

    public void setLinSchedulingTable(LinSchedulingTable var1);

    public Double getDelayToNextFrame();

    public void setDelayToNextFrame(Double var1);

    public void unsetDelayToNextFrame();

    public boolean isSetDelayToNextFrame();
}

