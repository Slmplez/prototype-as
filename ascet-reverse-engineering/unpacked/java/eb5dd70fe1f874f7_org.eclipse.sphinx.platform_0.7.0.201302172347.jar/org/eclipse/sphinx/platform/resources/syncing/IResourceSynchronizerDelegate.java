/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.platform.resources.syncing;

import org.eclipse.sphinx.platform.resources.IResourceChangeHandler;
import org.eclipse.sphinx.platform.resources.syncing.IResourceSyncRequest;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IResourceSynchronizerDelegate<T extends IResourceSyncRequest>
extends IResourceChangeHandler {
    public void setSyncRequest(T var1);
}

