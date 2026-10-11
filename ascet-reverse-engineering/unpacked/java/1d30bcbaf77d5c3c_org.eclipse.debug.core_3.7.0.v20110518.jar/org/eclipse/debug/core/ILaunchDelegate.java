/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core;

import java.util.List;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.model.ILaunchConfigurationDelegate;

public interface ILaunchDelegate {
    public String getId();

    public String getName();

    public String getDescription();

    public String getContributorName();

    public ILaunchConfigurationDelegate getDelegate() throws CoreException;

    public List getModes();

    public String getPluginIdentifier();

    public String getPerspectiveId(Set var1);
}

