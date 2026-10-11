/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.workspace.internal;

public class EMFWorkspaceStatusCodes {
    public static final int EXECUTE_INTERRUPTED = 20;
    public static final int EXECUTE_ROLLED_BACK = 21;
    public static final int UNDO_INTERRUPTED = 22;
    public static final int UNDO_ROLLED_BACK = 23;
    public static final int REDO_INTERRUPTED = 24;
    public static final int REDO_ROLLED_BACK = 25;
    public static final int UNDO_RECOVERY_FAILED = 30;
    public static final int REDO_RECOVERY_FAILED = 31;
    public static final int ROLLBACK_FAILED = 32;
    public static final int PRECOMMIT_FAILED = 43;
    public static final int EXCEPTION_HANDLER_FAILED = 50;

    private EMFWorkspaceStatusCodes() {
    }
}

