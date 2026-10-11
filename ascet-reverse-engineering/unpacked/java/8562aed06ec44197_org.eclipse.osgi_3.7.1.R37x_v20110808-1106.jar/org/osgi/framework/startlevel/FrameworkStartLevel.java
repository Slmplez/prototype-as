/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.startlevel;

import org.osgi.framework.BundleReference;
import org.osgi.framework.FrameworkListener;

public interface FrameworkStartLevel
extends BundleReference {
    public int getStartLevel();

    public void setStartLevel(int var1, FrameworkListener[] var2);

    public int getInitialBundleStartLevel();

    public void setInitialBundleStartLevel(int var1);
}

