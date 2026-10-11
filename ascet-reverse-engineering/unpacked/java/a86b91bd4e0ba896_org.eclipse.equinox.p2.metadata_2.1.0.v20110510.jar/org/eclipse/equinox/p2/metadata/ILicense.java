/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import java.net.URI;

public interface ILicense {
    public URI getLocation();

    public String getBody();

    public String getUUID();

    public boolean equals(Object var1);
}

