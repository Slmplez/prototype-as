/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.internal.core.commands;

import org.eclipse.debug.core.commands.IDebugCommandRequest;
import org.eclipse.debug.internal.core.commands.Request;

public class DebugCommandRequest
extends Request
implements IDebugCommandRequest {
    private Object[] fElements;

    public DebugCommandRequest(Object[] elements) {
        this.fElements = elements;
    }

    public Object[] getElements() {
        return this.fElements;
    }
}

