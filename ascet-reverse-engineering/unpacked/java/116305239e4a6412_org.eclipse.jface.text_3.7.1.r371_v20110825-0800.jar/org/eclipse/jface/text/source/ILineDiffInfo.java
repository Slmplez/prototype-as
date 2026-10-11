/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.source;

public interface ILineDiffInfo {
    public static final int UNCHANGED = 0;
    public static final int ADDED = 1;
    public static final int CHANGED = 2;

    public int getRemovedLinesBelow();

    public int getRemovedLinesAbove();

    public int getChangeType();

    public boolean hasChanges();

    public String[] getOriginalText();
}

