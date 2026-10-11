/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.commands;

import org.eclipse.debug.core.IRequest;

public interface IDebugCommandRequest
extends IRequest {
    public Object[] getElements();
}

