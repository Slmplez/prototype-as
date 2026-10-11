/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands;

import org.eclipse.core.commands.IParameterValues;
import org.eclipse.core.commands.ParameterValuesException;

public interface IParameter {
    public String getId();

    public String getName();

    public IParameterValues getValues() throws ParameterValuesException;

    public boolean isOptional();
}

