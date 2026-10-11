/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.core.internal.resources;

import java.util.LinkedList;
import org.eclipse.core.internal.resources.Container;
import org.eclipse.core.resources.FileInfoMatcherDescription;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceFilterDescription;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FilterDescription
implements IResourceFilterDescription,
Comparable<FilterDescription> {
    private long id;
    private int type;
    private FileInfoMatcherDescription matcherDescription;
    private IResource resource;

    public FilterDescription() {
        this.type = -1;
    }

    public FilterDescription(IResource resource, int type, FileInfoMatcherDescription matcherDescription) {
        Assert.isNotNull((Object)resource);
        this.type = type;
        this.matcherDescription = matcherDescription;
        this.resource = resource;
    }

    public boolean isInheritable() {
        return (this.getType() & 0x10) != 0;
    }

    public static LinkedList<FilterDescription> copy(LinkedList<FilterDescription> originalDescriptions, IResource resource) {
        LinkedList<FilterDescription> copy = new LinkedList<FilterDescription>();
        for (FilterDescription desc : originalDescriptions) {
            FilterDescription newDesc = new FilterDescription(resource, desc.getType(), desc.getFileInfoMatcherDescription());
            copy.add(newDesc);
        }
        return copy;
    }

    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Override
    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setResource(IResource resource) {
        this.resource = resource;
    }

    @Override
    public IResource getResource() {
        return this.resource;
    }

    @Override
    public FileInfoMatcherDescription getFileInfoMatcherDescription() {
        return this.matcherDescription;
    }

    public void setFileInfoMatcherDescription(FileInfoMatcherDescription matcherDescription) {
        this.matcherDescription = matcherDescription;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (int)(this.id ^ this.id >>> 32);
        return result;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        FilterDescription other = (FilterDescription)obj;
        return this.id == other.id;
    }

    @Override
    public int compareTo(FilterDescription that) {
        IPath path1 = this.getResource().getProjectRelativePath();
        IPath path2 = that.getResource().getProjectRelativePath();
        int count1 = path1.segmentCount();
        int compare = count1 - path2.segmentCount();
        if (compare != 0) {
            return compare;
        }
        int i = 0;
        while (i < count1) {
            compare = path1.segment(i).compareTo(path2.segment(i));
            if (compare != 0) {
                return compare;
            }
            ++i;
        }
        return 0;
    }

    @Override
    public void delete(int updateFlags, IProgressMonitor monitor) throws CoreException {
        ((Container)this.getResource()).removeFilter(this, updateFlags, monitor);
    }
}

