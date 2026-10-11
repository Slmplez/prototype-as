/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.util;

public final class Tracing {
    public static final String SEPARATOR = " >>> ";

    public static final void printTrace(String component, String message) {
        StringBuffer buffer = new StringBuffer();
        if (component != null) {
            buffer.append(component);
        }
        if (component != null && message != null) {
            buffer.append(SEPARATOR);
        }
        if (message != null) {
            buffer.append(message);
        }
        System.out.println(buffer.toString());
    }

    private Tracing() {
    }
}

