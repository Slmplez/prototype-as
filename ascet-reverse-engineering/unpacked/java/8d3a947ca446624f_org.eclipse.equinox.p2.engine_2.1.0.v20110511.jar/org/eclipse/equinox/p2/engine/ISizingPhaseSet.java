/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.engine;

import org.eclipse.equinox.p2.engine.IPhaseSet;

public interface ISizingPhaseSet
extends IPhaseSet {
    public long getDiskSize();

    public long getDownloadSize();
}

