/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;

public interface IProjectNature {
    public void configure() throws CoreException;

    public void deconfigure() throws CoreException;

    public IProject getProject();

    public void setProject(IProject var1);
}

