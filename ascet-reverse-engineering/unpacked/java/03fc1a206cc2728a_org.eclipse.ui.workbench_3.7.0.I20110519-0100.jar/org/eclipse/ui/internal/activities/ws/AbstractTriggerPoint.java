/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities.ws;

import org.eclipse.ui.activities.ITriggerPoint;

public abstract class AbstractTriggerPoint
implements ITriggerPoint {
    public boolean equals(Object obj) {
        if (obj instanceof ITriggerPoint) {
            return this.getId().equals(((ITriggerPoint)obj).getId());
        }
        return false;
    }

    public int hashCode() {
        return this.getId().hashCode();
    }
}

