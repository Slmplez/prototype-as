/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.transaction.internal;

public class EMFTransactionStatusCodes {
    public static final int TRANSACTION_ABORTED = 10;
    public static final int FACTORY_TYPE = 20;
    public static final int FACTORY_INITIALIZATION = 21;
    public static final int LISTENER_TYPE = 22;
    public static final int LISTENER_INITIALIZATION = 23;
    public static final int VALIDATION_FAILURE = 30;
    public static final int CONCURRENT_WRITE = 40;
    public static final int READ_ROLLED_BACK = 41;
    public static final int PRECOMMIT_INTERRUPTED = 42;
    public static final int PRECOMMIT_FAILED = 43;
    public static final int POSTCOMMIT_INTERRUPTED = 44;
    public static final int POSTCOMMIT_FAILED = 45;
    public static final int EXCEPTION_HANDLER_FAILED = 50;
    public static final int PRIVILEGED_RUNNABLE_FAILED = 51;
    public static final int LIFECYCLE_LISTENER_FAILED = 52;
    public static final int RELOAD_DURING_UNLOAD = 100;

    private EMFTransactionStatusCodes() {
    }
}

