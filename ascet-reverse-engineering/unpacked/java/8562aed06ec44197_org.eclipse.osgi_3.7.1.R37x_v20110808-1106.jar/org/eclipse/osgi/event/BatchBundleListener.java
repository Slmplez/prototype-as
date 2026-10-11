/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.event;

import org.osgi.framework.BundleListener;

public interface BatchBundleListener
extends BundleListener {
    public void batchBegin();

    public void batchEnd();
}

