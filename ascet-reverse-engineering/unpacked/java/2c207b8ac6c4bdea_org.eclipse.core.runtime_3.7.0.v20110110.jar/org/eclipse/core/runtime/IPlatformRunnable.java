/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

public interface IPlatformRunnable {
    public static final Integer EXIT_OK = new Integer(0);
    public static final Integer EXIT_RESTART = new Integer(23);
    public static final Integer EXIT_RELAUNCH = new Integer(24);

    public Object run(Object var1) throws Exception;
}

