/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.engine;

import org.eclipse.equinox.internal.p2.engine.Phase;
import org.eclipse.equinox.internal.p2.engine.PhaseSet;
import org.eclipse.equinox.internal.p2.engine.phases.Sizing;
import org.eclipse.equinox.p2.engine.ISizingPhaseSet;

public class SizingPhaseSet
extends PhaseSet
implements ISizingPhaseSet {
    private static Sizing sizing;

    public SizingPhaseSet() {
        Phase[] phaseArray = new Phase[1];
        sizing = new Sizing(100);
        phaseArray[0] = sizing;
        super(phaseArray);
    }

    public long getDiskSize() {
        return sizing.getDiskSize();
    }

    public long getDownloadSize() {
        return sizing.getDownloadSize();
    }
}

