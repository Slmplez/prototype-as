/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.resources;

import java.net.URI;
import java.net.URISyntaxException;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LinkDescription
implements Comparable<LinkDescription> {
    public static final URI VIRTUAL_LOCATION = LinkDescription.getVirtualLocation();
    private URI localLocation;
    private IPath path;
    private int type;

    private static URI getVirtualLocation() {
        try {
            return new URI("virtual:/virtual");
        }
        catch (URISyntaxException uRISyntaxException) {
            return null;
        }
    }

    public LinkDescription() {
        this.path = Path.EMPTY;
        this.type = -1;
    }

    public LinkDescription(IResource linkedResource, URI location) {
        Assert.isNotNull((Object)linkedResource);
        Assert.isNotNull((Object)location);
        this.type = linkedResource.getType();
        this.path = linkedResource.getProjectRelativePath();
        this.localLocation = location;
    }

    public boolean equals(Object o) {
        if (o.getClass() != LinkDescription.class) {
            return false;
        }
        LinkDescription other = (LinkDescription)o;
        return this.localLocation.equals(other.localLocation) && this.path.equals((Object)other.path) && this.type == other.type;
    }

    public URI getLocationURI() {
        return this.localLocation;
    }

    public IPath getProjectRelativePath() {
        return this.path;
    }

    public int getType() {
        return this.type;
    }

    public boolean isGroup() {
        return this.localLocation.equals(VIRTUAL_LOCATION);
    }

    public int hashCode() {
        return this.type + this.path.hashCode() + this.localLocation.hashCode();
    }

    public void setLocationURI(URI location) {
        this.localLocation = location;
    }

    public void setPath(IPath path) {
        this.path = path;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public int compareTo(LinkDescription that) {
        IPath path1 = this.getProjectRelativePath();
        IPath path2 = that.getProjectRelativePath();
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
}

