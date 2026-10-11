/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.IDynamicVariable
 *  org.eclipse.core.variables.IDynamicVariableResolver
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.debug.internal.core.variables;

import java.io.File;
import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.IDynamicVariableResolver;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.debug.internal.core.variables.Messages;
import org.eclipse.osgi.util.NLS;

public final class WorkspaceResolver
implements IDynamicVariableResolver {
    public String resolveValue(IDynamicVariable variable, String argument) throws CoreException {
        File file;
        URI uri;
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        Object resource = argument == null ? root : root.findMember((IPath)new Path(argument));
        if (resource != null && resource.exists() && (uri = resource.getLocationURI()) != null && (file = EFS.getStore((URI)uri).toLocalFile(0, null)) != null) {
            return file.getAbsolutePath();
        }
        String expression = VariablesPlugin.getDefault().getStringVariableManager().generateVariableExpression(variable.getName(), argument);
        String message = NLS.bind((String)Messages.WorkspaceResolver_0, (Object)expression);
        throw new CoreException((IStatus)new Status(4, "org.eclipse.core.resources", 368, message, null));
    }
}

