/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.provisional.p2.repository;

import java.net.URI;
import java.util.EventObject;

public class RepositoryEvent
extends EventObject {
    private static final long serialVersionUID = 3082402920617281765L;
    public static final int ADDED = 0;
    public static final int REMOVED = 1;
    public static final int CHANGED = 2;
    public static final int DISCOVERED = 4;
    public static final int ENABLEMENT = 8;
    private final int kind;
    private final int type;
    private boolean isEnabled;
    private String nickname;

    public static RepositoryEvent newDiscoveryEvent(URI location, String nickname, int repositoryType, boolean enabled) {
        RepositoryEvent event = new RepositoryEvent(location, repositoryType, 4, enabled);
        event.nickname = nickname;
        return event;
    }

    public RepositoryEvent(URI location, int repositoryType, int kind, boolean enabled) {
        super(location);
        this.kind = kind;
        this.type = repositoryType;
        this.isEnabled = enabled;
    }

    public int getKind() {
        return this.kind;
    }

    public String getRepositoryNickname() {
        return this.nickname;
    }

    public URI getRepositoryLocation() {
        return (URI)this.getSource();
    }

    public int getRepositoryType() {
        return this.type;
    }

    public boolean isRepositoryEnabled() {
        return this.isEnabled;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("RepositoryEvent[");
        switch (this.kind) {
            case 0: {
                buffer.append("ADDED ");
                break;
            }
            case 2: {
                buffer.append("CHANGED ");
                break;
            }
            case 4: {
                buffer.append("DISCOVERED ");
                break;
            }
            case 8: {
                buffer.append("ENABLED ");
                break;
            }
            case 1: {
                buffer.append("REMOVED ");
            }
        }
        if (this.type == 1) {
            buffer.append("Artifact ");
        } else {
            buffer.append("Metadata ");
        }
        buffer.append(this.getSource().toString());
        if (this.nickname != null) {
            buffer.append("Nickname: " + this.nickname);
        }
        buffer.append(" Enabled: " + Boolean.toString(this.isEnabled));
        buffer.append("] ");
        return buffer.toString();
    }
}

