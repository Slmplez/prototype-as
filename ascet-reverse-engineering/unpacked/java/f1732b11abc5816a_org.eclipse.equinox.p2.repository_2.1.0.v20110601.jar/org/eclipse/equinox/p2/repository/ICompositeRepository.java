/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.repository;

import java.net.URI;
import java.util.List;
import org.eclipse.equinox.p2.repository.IRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ICompositeRepository<T>
extends IRepository<T> {
    public void addChild(URI var1);

    public List<URI> getChildren();

    public void removeAllChildren();

    public void removeChild(URI var1);
}

