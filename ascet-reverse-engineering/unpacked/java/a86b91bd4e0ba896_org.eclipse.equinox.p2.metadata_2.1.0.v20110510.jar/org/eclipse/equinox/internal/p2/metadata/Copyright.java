/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.net.URI;
import org.eclipse.equinox.p2.metadata.ICopyright;

public class Copyright
implements ICopyright {
    private final String body;
    private URI location;

    public Copyright(URI location, String body) {
        if (body == null) {
            throw new IllegalArgumentException("body cannot be null");
        }
        this.location = location;
        this.body = body;
    }

    public URI getLocation() {
        return this.location;
    }

    public String getBody() {
        return this.body;
    }
}

