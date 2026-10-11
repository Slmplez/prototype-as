/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

public class InvalidRegistryObjectException
extends RuntimeException {
    private static final long serialVersionUID = 1L;
    private static final String MESSAGE = "Invalid registry object";

    public InvalidRegistryObjectException() {
        super(MESSAGE);
    }
}

