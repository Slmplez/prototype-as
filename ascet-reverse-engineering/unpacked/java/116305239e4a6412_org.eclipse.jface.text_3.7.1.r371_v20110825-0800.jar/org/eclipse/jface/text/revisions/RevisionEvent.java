/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.revisions;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.revisions.RevisionInformation;

public final class RevisionEvent {
    private final RevisionInformation fInformation;

    public RevisionEvent(RevisionInformation information) {
        Assert.isLegal((information != null ? 1 : 0) != 0);
        this.fInformation = information;
    }

    public RevisionInformation getRevisionInformation() {
        return this.fInformation;
    }
}

