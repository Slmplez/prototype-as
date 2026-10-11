/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core.model;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IStep;

public interface IFilteredStep
extends IStep {
    public boolean canStepWithFilters();

    public void stepWithFilters() throws DebugException;
}

