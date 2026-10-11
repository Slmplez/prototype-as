/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.repository;

import java.net.URI;

public interface IRepositoryReference {
    public URI getLocation();

    public int getType();

    public int getOptions();

    public String getNickname();
}

