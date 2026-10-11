/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.sphinx.platform.resources.syncing;

import org.eclipse.core.runtime.Assert;
import org.eclipse.sphinx.platform.resources.DefaultResourceChangeHandler;
import org.eclipse.sphinx.platform.resources.syncing.IResourceSyncRequest;
import org.eclipse.sphinx.platform.resources.syncing.IResourceSynchronizerDelegate;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractResourceSynchronizerDelegate<T extends IResourceSyncRequest>
extends DefaultResourceChangeHandler
implements IResourceSynchronizerDelegate<T> {
    protected T syncRequest;

    @Override
    public void setSyncRequest(T syncRequest) {
        Assert.isNotNull(syncRequest);
        this.syncRequest = syncRequest;
    }
}

