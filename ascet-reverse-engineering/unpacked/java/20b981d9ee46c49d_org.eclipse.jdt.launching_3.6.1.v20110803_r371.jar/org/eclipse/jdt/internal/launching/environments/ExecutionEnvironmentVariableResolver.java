/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.IDynamicVariable
 *  org.eclipse.core.variables.IDynamicVariableResolver
 */
package org.eclipse.jdt.internal.launching.environments;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.IDynamicVariableResolver;
import org.eclipse.jdt.internal.launching.environments.EnvironmentMessages;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager;

public class ExecutionEnvironmentVariableResolver
implements IDynamicVariableResolver {
    public String resolveValue(IDynamicVariable variable, String argument) throws CoreException {
        if (argument == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.launching", EnvironmentMessages.ExecutionEnvironmentVariableResolver_0));
        }
        IExecutionEnvironmentsManager manager = JavaRuntime.getExecutionEnvironmentsManager();
        IExecutionEnvironment env = manager.getEnvironment(argument);
        if (env == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)EnvironmentMessages.ExecutionEnvironmentVariableResolver_1, (Object[])new String[]{argument})));
        }
        IPath path = JavaRuntime.newJREContainerPath(env);
        IVMInstall jre = JavaRuntime.getVMInstall(path);
        if (jre == null) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)EnvironmentMessages.ExecutionEnvironmentVariableResolver_2, (Object[])new String[]{argument})));
        }
        return jre.getInstallLocation().getAbsolutePath();
    }
}

