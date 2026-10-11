/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources;

import java.util.EventListener;
import org.eclipse.core.resources.IPathVariableChangeEvent;

public interface IPathVariableChangeListener
extends EventListener {
    public void pathVariableChanged(IPathVariableChangeEvent var1);
}

