/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.resources;

import java.net.URI;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IPath;

public interface IProjectDescription {
    public static final String DESCRIPTION_FILE_NAME = ".project";

    public IBuildConfiguration[] getBuildConfigReferences(String var1);

    public ICommand[] getBuildSpec();

    public String getComment();

    public IProject[] getDynamicReferences();

    public IPath getLocation();

    public URI getLocationURI();

    public String getName();

    public String[] getNatureIds();

    public IProject[] getReferencedProjects();

    public boolean hasNature(String var1);

    public ICommand newCommand();

    public void setActiveBuildConfig(String var1);

    public void setBuildConfigs(String[] var1);

    public void setBuildConfigReferences(String var1, IBuildConfiguration[] var2);

    public void setBuildSpec(ICommand[] var1);

    public void setComment(String var1);

    public void setDynamicReferences(IProject[] var1);

    public void setLocation(IPath var1);

    public void setLocationURI(URI var1);

    public void setName(String var1);

    public void setNatureIds(String[] var1);

    public void setReferencedProjects(IProject[] var1);
}

