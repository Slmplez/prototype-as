/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.internal;

import org.eclipse.emf.transaction.internal.EMFTransactionPlugin;

public class EMFTransactionDebugOptions {
    public static final String DEBUG = String.valueOf(EMFTransactionPlugin.getPluginId()) + "/debug";
    public static final String EXCEPTIONS_CATCHING = String.valueOf(DEBUG) + "/exceptions/catching";
    public static final String EXCEPTIONS_THROWING = String.valueOf(DEBUG) + "/exceptions/throwing";
    public static final String METHODS_ENTERING = String.valueOf(DEBUG) + "/methods/entering";
    public static final String METHODS_EXITING = String.valueOf(DEBUG) + "/methods/exiting";
    public static final String LOCKING = String.valueOf(DEBUG) + "/locking";
    public static final String TRANSACTIONS = String.valueOf(DEBUG) + "/transactions";

    private EMFTransactionDebugOptions() {
    }
}

