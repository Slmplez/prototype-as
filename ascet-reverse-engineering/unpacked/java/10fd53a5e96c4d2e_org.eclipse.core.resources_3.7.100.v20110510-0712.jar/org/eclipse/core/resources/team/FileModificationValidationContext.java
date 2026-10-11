/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources.team;

public class FileModificationValidationContext {
    public static final FileModificationValidationContext VALIDATE_PROMPT = new FileModificationValidationContext(null);
    private final Object shell;

    FileModificationValidationContext(Object shell) {
        this.shell = shell;
    }

    public Object getShell() {
        return this.shell;
    }
}

