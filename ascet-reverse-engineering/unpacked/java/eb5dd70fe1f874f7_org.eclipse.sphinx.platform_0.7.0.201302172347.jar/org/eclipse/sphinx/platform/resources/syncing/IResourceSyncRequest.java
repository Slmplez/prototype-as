/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.platform.resources.syncing;

public interface IResourceSyncRequest {
    public void init();

    public boolean canPerform();

    public void perform();

    public void dispose();
}

