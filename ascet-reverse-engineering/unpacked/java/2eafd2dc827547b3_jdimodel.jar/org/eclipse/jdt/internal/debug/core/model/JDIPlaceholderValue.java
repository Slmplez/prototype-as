/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.core.model;

import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDINullValue;

public class JDIPlaceholderValue
extends JDINullValue {
    private String fMessage;

    public JDIPlaceholderValue(JDIDebugTarget target, String message) {
        super(target);
        this.fMessage = message;
    }

    public String getValueString() {
        return this.fMessage;
    }

    public String toString() {
        return this.fMessage;
    }

    public String getSignature() {
        return "Ljava/lang/String;";
    }
}

