/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.debug.core;

import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.debug.core.ILaunchConfiguration;

public interface ILaunchConfigurationWorkingCopy
extends ILaunchConfiguration,
IAdaptable {
    public boolean isDirty();

    public ILaunchConfiguration doSave() throws CoreException;

    public void setAttribute(String var1, int var2);

    public void setAttribute(String var1, String var2);

    public void setAttribute(String var1, List var2);

    public void setAttribute(String var1, Map var2);

    public void setAttribute(String var1, Set var2);

    public void setAttribute(String var1, boolean var2);

    public ILaunchConfiguration getOriginal();

    public void rename(String var1);

    public void setContainer(IContainer var1);

    public void setAttributes(Map var1);

    public void setMappedResources(IResource[] var1);

    public void setModes(Set var1);

    public void setPreferredLaunchDelegate(Set var1, String var2);

    public void addModes(Set var1);

    public void removeModes(Set var1);

    public Object removeAttribute(String var1);

    public ILaunchConfigurationWorkingCopy getParent();
}

