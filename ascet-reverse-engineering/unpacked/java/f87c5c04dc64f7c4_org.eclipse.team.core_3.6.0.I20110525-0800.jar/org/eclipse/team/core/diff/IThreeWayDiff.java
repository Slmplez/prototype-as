/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.team.core.diff;

import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.ITwoWayDiff;

public interface IThreeWayDiff
extends IDiff {
    public static final int OUTGOING = 256;
    public static final int INCOMING = 512;
    public static final int CONFLICTING = 768;
    public static final int DIRECTION_MASK = 768;

    public ITwoWayDiff getLocalChange();

    public ITwoWayDiff getRemoteChange();

    public int getDirection();
}

