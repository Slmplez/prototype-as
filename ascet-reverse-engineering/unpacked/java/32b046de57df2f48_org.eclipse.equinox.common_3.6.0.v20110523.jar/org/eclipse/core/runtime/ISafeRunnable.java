/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

public interface ISafeRunnable {
    public void handleException(Throwable var1);

    public void run() throws Exception;
}

