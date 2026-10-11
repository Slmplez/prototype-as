/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.ParameterType;
import org.eclipse.core.commands.common.AbstractHandleObjectEvent;

public final class ParameterTypeEvent
extends AbstractHandleObjectEvent {
    private final ParameterType parameterType;

    ParameterTypeEvent(ParameterType parameterType, boolean definedChanged) {
        super(definedChanged);
        if (parameterType == null) {
            throw new NullPointerException();
        }
        this.parameterType = parameterType;
    }

    public final ParameterType getParameterType() {
        return this.parameterType;
    }
}

