/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.core.resources.filtermatchers;

import org.eclipse.core.internal.resources.FilterDescriptor;
import org.eclipse.core.resources.FileInfoMatcherDescription;
import org.eclipse.core.resources.IFilterMatcherDescriptor;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.filtermatchers.AbstractFileInfoMatcher;
import org.eclipse.core.runtime.CoreException;

public abstract class CompoundFileInfoMatcher
extends AbstractFileInfoMatcher {
    protected AbstractFileInfoMatcher[] matchers;

    private AbstractFileInfoMatcher instantiate(IProject project, FileInfoMatcherDescription filter) throws CoreException {
        IFilterMatcherDescriptor desc = project.getWorkspace().getFilterMatcherDescriptor(filter.getId());
        if (desc != null) {
            AbstractFileInfoMatcher matcher = ((FilterDescriptor)desc).createFilter();
            matcher.initialize(project, filter.getArguments());
            return matcher;
        }
        return null;
    }

    public final void initialize(IProject project, Object arguments) throws CoreException {
        FileInfoMatcherDescription[] filters = (FileInfoMatcherDescription[])arguments;
        this.matchers = new AbstractFileInfoMatcher[filters != null ? filters.length : 0];
        int i = 0;
        while (i < this.matchers.length) {
            this.matchers[i] = this.instantiate(project, filters[i]);
            ++i;
        }
    }
}

