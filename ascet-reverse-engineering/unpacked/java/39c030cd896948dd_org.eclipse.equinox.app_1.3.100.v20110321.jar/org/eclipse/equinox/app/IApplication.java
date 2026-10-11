/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.app;

import org.eclipse.equinox.app.IApplicationContext;

public interface IApplication {
    public static final Integer EXIT_OK = new Integer(0);
    public static final Integer EXIT_RESTART = new Integer(23);
    public static final Integer EXIT_RELAUNCH = new Integer(24);

    public Object start(IApplicationContext var1) throws Exception;

    public void stop();
}

