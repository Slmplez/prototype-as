/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.communication;

import autosar21.system.communication.LinFrame;
import autosar21.system.communication.LinSchedulingTableEntry;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SporadicFrameSlot
extends LinSchedulingTableEntry {
    public EList<LinFrame> getSporadicFrames();
}

