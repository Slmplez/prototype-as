/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.engine;

public interface IProfileEvent {
    public static final int ADDED = 0;
    public static final int REMOVED = 1;
    public static final int CHANGED = 2;

    public int getReason();

    public String getProfileId();
}

