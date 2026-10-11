/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata.expression;

public class ExpressionParseException
extends RuntimeException {
    private static final long serialVersionUID = 8432875384760577764L;

    public ExpressionParseException(String message) {
        super(message);
    }

    public ExpressionParseException(String expression, String message, int position) {
        super("Parse error in string \"" + expression + "\": " + message + " at position " + position);
    }
}

