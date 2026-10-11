/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.repository;

public class RepositoryPreferences {
    public static int getConnectionRetryCount() {
        return 1;
    }

    public static long getConnectionMsRetryDelay() {
        return 200L;
    }

    public static int getLoginRetryCount() {
        return 4;
    }
}

