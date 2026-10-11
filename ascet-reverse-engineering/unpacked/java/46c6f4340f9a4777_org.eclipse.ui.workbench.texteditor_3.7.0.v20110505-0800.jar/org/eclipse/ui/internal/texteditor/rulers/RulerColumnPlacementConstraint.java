/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.ui.internal.texteditor.rulers;

import org.eclipse.core.runtime.Assert;

public final class RulerColumnPlacementConstraint {
    private final String fId;
    private final boolean fBefore;

    RulerColumnPlacementConstraint(String id, boolean before) {
        Assert.isLegal((id != null ? 1 : 0) != 0);
        this.fId = id;
        this.fBefore = before;
    }

    public String getId() {
        return this.fId;
    }

    public boolean isBefore() {
        return this.fBefore;
    }
}

