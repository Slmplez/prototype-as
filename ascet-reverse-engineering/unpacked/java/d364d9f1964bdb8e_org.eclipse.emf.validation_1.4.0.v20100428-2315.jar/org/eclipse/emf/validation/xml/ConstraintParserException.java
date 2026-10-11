/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.xml;

public class ConstraintParserException
extends Exception {
    private static final long serialVersionUID = -341693432752691706L;

    public ConstraintParserException(String message) {
        this(message, null);
    }

    public ConstraintParserException(String message, Throwable cause) {
        super(message, cause);
    }
}

