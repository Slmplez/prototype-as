/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.repository.spi;

import java.net.URI;
import org.eclipse.equinox.p2.repository.IRepositoryReference;

public class RepositoryReference
implements IRepositoryReference {
    private final URI location;
    private final int type;
    private final int options;
    private final String nickname;

    public RepositoryReference(URI location, String nickname, int type, int options) {
        this.location = location;
        this.type = type;
        this.options = options;
        this.nickname = nickname;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IRepositoryReference)) {
            return false;
        }
        IRepositoryReference other = (IRepositoryReference)obj;
        if (this.location == null ? other.getLocation() != null : !this.location.equals(other.getLocation())) {
            return false;
        }
        return this.type == other.getType();
    }

    public URI getLocation() {
        return this.location;
    }

    public int getType() {
        return this.type;
    }

    public int getOptions() {
        return this.options;
    }

    public String getNickname() {
        return this.nickname;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.location == null ? 0 : this.location.hashCode());
        result = 31 * result + this.type;
        return result;
    }
}

