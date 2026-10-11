/*
 * Decompiled with CFR 0.152.
 */
package autosar21.system.communication;

import autosar21.system.communication.LinFrame;
import autosar21.system.communication.LinSchedulingTableEntry;

public interface UnconditionalFrameSlot
extends LinSchedulingTableEntry {
    public LinFrame getUnconditionalFrame();

    public void setUnconditionalFrame(LinFrame var1);
}

