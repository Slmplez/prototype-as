/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.IFileInfo
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.util.Iterator;
import java.util.LinkedList;
import org.eclipse.core.filesystem.IFileInfo;
import org.eclipse.core.internal.resources.FilterDescription;
import org.eclipse.core.internal.resources.FilterDescriptor;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFilterMatcherDescriptor;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.filtermatchers.AbstractFileInfoMatcher;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Filter {
    FilterDescription description;
    IProject project;
    AbstractFileInfoMatcher provider = null;

    public Filter(IProject project, FilterDescription description) {
        this.description = description;
        this.project = project;
    }

    public boolean match(IContainer parent, IFileInfo fileInfo) throws CoreException {
        if (this.provider == null) {
            IFilterMatcherDescriptor filterDescriptor = this.project.getWorkspace().getFilterMatcherDescriptor(this.getId());
            if (filterDescriptor != null) {
                this.provider = ((FilterDescriptor)filterDescriptor).createFilter();
            }
            if (this.provider == null) {
                String message = NLS.bind((String)Messages.filters_missingFilterType, (Object)this.getId());
                throw new CoreException((IStatus)new Status(4, "org.eclipse.core.resources", 2, message, (Throwable)new Error()));
            }
            try {
                this.provider.initialize(this.project, this.description.getFileInfoMatcherDescription().getArguments());
            }
            catch (CoreException e) {
                Policy.log(e.getStatus());
                this.provider = null;
            }
        }
        if (this.provider != null) {
            return this.provider.matches(parent, fileInfo);
        }
        return false;
    }

    public boolean isFirst() {
        IFilterMatcherDescriptor descriptor = this.project.getWorkspace().getFilterMatcherDescriptor(this.getId());
        if (descriptor != null) {
            return descriptor.isFirstOrdering();
        }
        return false;
    }

    public Object getArguments() {
        return this.description.getFileInfoMatcherDescription().getArguments();
    }

    public String getId() {
        return this.description.getFileInfoMatcherDescription().getId();
    }

    public int getType() {
        return this.description.getType();
    }

    public boolean isIncludeOnly() {
        return (this.getType() & 1) != 0;
    }

    public boolean appliesTo(IFileInfo info) {
        if (info.isDirectory()) {
            return (this.getType() & 8) != 0;
        }
        return (this.getType() & 4) != 0;
    }

    public static IFileInfo[] filter(IProject project, LinkedList<Filter> includeFilters, LinkedList<Filter> excludeFilters, IContainer parent, IFileInfo[] list) throws CoreException {
        IFileInfo[] result = Filter.filterIncludes(project, includeFilters, parent, list);
        return Filter.filterExcludes(project, excludeFilters, parent, result);
    }

    public static IFileInfo[] filterIncludes(IProject project, LinkedList<Filter> filters, IContainer parent, IFileInfo[] list) throws CoreException {
        if (filters.size() > 0) {
            IFileInfo[] result = new IFileInfo[list.length];
            int outputIndex = 0;
            int i = 0;
            while (i < list.length) {
                IFileInfo info = list[i];
                Iterator objIt = filters.iterator();
                boolean filtersWereApplicable = false;
                while (objIt.hasNext()) {
                    Filter filter = (Filter)objIt.next();
                    if (!filter.appliesTo(info)) continue;
                    filtersWereApplicable = true;
                    if (!filter.match(parent, info)) continue;
                    result[outputIndex++] = info;
                    break;
                }
                if (!filtersWereApplicable) {
                    result[outputIndex++] = info;
                }
                ++i;
            }
            if (outputIndex != result.length) {
                IFileInfo[] tmp = new IFileInfo[outputIndex];
                System.arraycopy(result, 0, tmp, 0, outputIndex);
                result = tmp;
            }
            return result;
        }
        return list;
    }

    public static IFileInfo[] filterExcludes(IProject project, LinkedList<Filter> filters, IContainer parent, IFileInfo[] list) throws CoreException {
        if (filters.size() > 0) {
            IFileInfo[] result = new IFileInfo[list.length];
            int outputIndex = 0;
            int i = 0;
            while (i < list.length) {
                IFileInfo info = list[i];
                Iterator objIt = filters.iterator();
                boolean shouldBeExcluded = false;
                while (objIt.hasNext()) {
                    Filter filter = (Filter)objIt.next();
                    if (!filter.appliesTo(info) || !filter.match(parent, info)) continue;
                    shouldBeExcluded = true;
                    break;
                }
                if (!shouldBeExcluded) {
                    result[outputIndex++] = info;
                }
                ++i;
            }
            if (outputIndex != result.length) {
                IFileInfo[] tmp = new IFileInfo[outputIndex];
                System.arraycopy(result, 0, tmp, 0, outputIndex);
                result = tmp;
            }
            return result;
        }
        return list;
    }
}

