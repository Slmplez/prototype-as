/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.startlevel;

import org.osgi.framework.BundleReference;

public interface BundleStartLevel
extends BundleReference {
    public int getStartLevel();

    public void setStartLevel(int var1);

    public boolean isPersistentlyStarted();

    public boolean isActivationPolicyUsed();
}

