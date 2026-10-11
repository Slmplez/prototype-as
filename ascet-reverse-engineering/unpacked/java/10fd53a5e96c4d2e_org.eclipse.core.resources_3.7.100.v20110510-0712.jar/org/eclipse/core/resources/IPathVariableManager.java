/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.resources;

import java.net.URI;
import org.eclipse.core.resources.IPathVariableChangeListener;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;

public interface IPathVariableManager {
    public URI convertToRelative(URI var1, boolean var2, String var3) throws CoreException;

    public void setValue(String var1, IPath var2) throws CoreException;

    public void setURIValue(String var1, URI var2) throws CoreException;

    public IPath getValue(String var1);

    public URI getURIValue(String var1);

    public String[] getPathVariableNames();

    public void addChangeListener(IPathVariableChangeListener var1);

    public void removeChangeListener(IPathVariableChangeListener var1);

    public URI resolveURI(URI var1);

    public IPath resolvePath(IPath var1);

    public boolean isDefined(String var1);

    public boolean isUserDefined(String var1);

    public IStatus validateName(String var1);

    public IStatus validateValue(IPath var1);

    public IStatus validateValue(URI var1);

    public URI getVariableRelativePathLocation(URI var1);

    public String convertToUserEditableFormat(String var1, boolean var2);

    public String convertFromUserEditableFormat(String var1, boolean var2);
}

