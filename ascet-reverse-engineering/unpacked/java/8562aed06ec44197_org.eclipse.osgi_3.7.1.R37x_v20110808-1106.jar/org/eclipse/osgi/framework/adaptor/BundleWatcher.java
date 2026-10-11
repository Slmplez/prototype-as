/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.adaptor;

import org.osgi.framework.Bundle;

public interface BundleWatcher {
    public static final int START_INSTALLING = 1;
    public static final int END_INSTALLING = 2;
    public static final int START_ACTIVATION = 4;
    public static final int END_ACTIVATION = 8;
    public static final int START_DEACTIVATION = 16;
    public static final int END_DEACTIVATION = 32;
    public static final int START_UNINSTALLING = 64;
    public static final int END_UNINSTALLING = 128;

    public void watchBundle(Bundle var1, int var2);
}

