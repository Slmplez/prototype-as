/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.EventObject;
import org.eclipse.equinox.p2.engine.IProfileEvent;

public class ProfileEvent
extends EventObject
implements IProfileEvent {
    private static final long serialVersionUID = 3082402920617281765L;
    private int reason;

    public ProfileEvent(String profileId, int reason) {
        super(profileId);
        this.reason = reason;
    }

    public int getReason() {
        return this.reason;
    }

    public String getProfileId() {
        return (String)this.getSource();
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("ProfileEvent[");
        buffer.append(this.getProfileId());
        buffer.append("-->");
        switch (this.reason) {
            case 0: {
                buffer.append("ADDED");
                break;
            }
            case 1: {
                buffer.append("REMOVED");
                break;
            }
            case 2: {
                buffer.append("CHANGED");
            }
        }
        buffer.append("] ");
        return buffer.toString();
    }
}

