/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.runnable;

import org.eclipse.osgi.service.runnable.ParameterizedRunnable;

public interface ApplicationLauncher {
    public void launch(ParameterizedRunnable var1, Object var2);

    public void shutdown();
}

