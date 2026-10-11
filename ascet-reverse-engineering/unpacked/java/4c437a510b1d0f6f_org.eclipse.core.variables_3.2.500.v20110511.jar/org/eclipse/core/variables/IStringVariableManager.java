/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.variables;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.IStringVariable;
import org.eclipse.core.variables.IValueVariable;
import org.eclipse.core.variables.IValueVariableListener;

public interface IStringVariableManager {
    public static final String EXTENSION_POINT_DYNAMIC_VARIABLES = "dynamicVariables";
    public static final String EXTENSION_POINT_VALUE_VARIABLES = "valueVariables";

    public IStringVariable[] getVariables();

    public IValueVariable[] getValueVariables();

    public IValueVariable getValueVariable(String var1);

    public IDynamicVariable[] getDynamicVariables();

    public IDynamicVariable getDynamicVariable(String var1);

    public String getContributingPluginId(IStringVariable var1);

    public String performStringSubstitution(String var1) throws CoreException;

    public String performStringSubstitution(String var1, boolean var2) throws CoreException;

    public void validateStringVariables(String var1) throws CoreException;

    public IValueVariable newValueVariable(String var1, String var2);

    public IValueVariable newValueVariable(String var1, String var2, boolean var3, String var4);

    public void addVariables(IValueVariable[] var1) throws CoreException;

    public void removeVariables(IValueVariable[] var1);

    public void addValueVariableListener(IValueVariableListener var1);

    public void removeValueVariableListener(IValueVariableListener var1);

    public String generateVariableExpression(String var1, String var2);
}

