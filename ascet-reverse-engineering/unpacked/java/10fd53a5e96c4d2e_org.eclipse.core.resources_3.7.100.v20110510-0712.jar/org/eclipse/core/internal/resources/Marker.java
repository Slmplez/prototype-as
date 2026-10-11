/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.util.Map;
import org.eclipse.core.internal.resources.MarkerDelta;
import org.eclipse.core.internal.resources.MarkerInfo;
import org.eclipse.core.internal.resources.MarkerManager;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Marker
extends PlatformObject
implements IMarker {
    protected long id;
    protected IResource resource;

    Marker(IResource resource, long id) {
        Assert.isLegal((resource != null ? 1 : 0) != 0);
        this.resource = resource;
        this.id = id;
    }

    private void checkInfo(MarkerInfo info) throws CoreException {
        if (info == null) {
            String message = NLS.bind((String)Messages.resources_markerNotFound, (Object)Long.toString(this.id));
            throw new ResourceException(new ResourceStatus(376, this.resource.getFullPath(), message));
        }
    }

    @Override
    public void delete() throws CoreException {
        ISchedulingRule rule = this.getWorkspace().getRuleFactory().markerRule(this.resource);
        try {
            this.getWorkspace().prepareOperation(rule, null);
            this.getWorkspace().beginOperation(true);
            this.getWorkspace().getMarkerManager().removeMarker(this.getResource(), this.getId());
        }
        finally {
            this.getWorkspace().endOperation(rule, false, null);
        }
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof IMarker)) {
            return false;
        }
        IMarker other = (IMarker)object;
        return this.id == other.getId() && this.resource.equals(other.getResource());
    }

    @Override
    public boolean exists() {
        return this.getInfo() != null;
    }

    @Override
    public Object getAttribute(String attributeName) throws CoreException {
        Assert.isNotNull((Object)attributeName);
        MarkerInfo info = this.getInfo();
        this.checkInfo(info);
        return info.getAttribute(attributeName);
    }

    @Override
    public int getAttribute(String attributeName, int defaultValue) {
        Assert.isNotNull((Object)attributeName);
        MarkerInfo info = this.getInfo();
        if (info == null) {
            return defaultValue;
        }
        Object value = info.getAttribute(attributeName);
        if (value instanceof Integer) {
            return (Integer)value;
        }
        return defaultValue;
    }

    @Override
    public String getAttribute(String attributeName, String defaultValue) {
        Assert.isNotNull((Object)attributeName);
        MarkerInfo info = this.getInfo();
        if (info == null) {
            return defaultValue;
        }
        Object value = info.getAttribute(attributeName);
        if (value instanceof String) {
            return (String)value;
        }
        return defaultValue;
    }

    @Override
    public boolean getAttribute(String attributeName, boolean defaultValue) {
        Assert.isNotNull((Object)attributeName);
        MarkerInfo info = this.getInfo();
        if (info == null) {
            return defaultValue;
        }
        Object value = info.getAttribute(attributeName);
        if (value instanceof Boolean) {
            return (Boolean)value;
        }
        return defaultValue;
    }

    @Override
    public Map<String, Object> getAttributes() throws CoreException {
        MarkerInfo info = this.getInfo();
        this.checkInfo(info);
        return info.getAttributes();
    }

    @Override
    public Object[] getAttributes(String[] attributeNames) throws CoreException {
        Assert.isNotNull((Object)attributeNames);
        MarkerInfo info = this.getInfo();
        this.checkInfo(info);
        return info.getAttributes(attributeNames);
    }

    @Override
    public long getCreationTime() throws CoreException {
        MarkerInfo info = this.getInfo();
        this.checkInfo(info);
        return info.getCreationTime();
    }

    @Override
    public long getId() {
        return this.id;
    }

    protected MarkerInfo getInfo() {
        return this.getWorkspace().getMarkerManager().findMarkerInfo(this.resource, this.id);
    }

    @Override
    public IResource getResource() {
        return this.resource;
    }

    @Override
    public String getType() throws CoreException {
        MarkerInfo info = this.getInfo();
        this.checkInfo(info);
        return info.getType();
    }

    private Workspace getWorkspace() {
        return this.resource == null ? null : (Workspace)this.resource.getWorkspace();
    }

    public int hashCode() {
        return (int)this.id + this.resource.hashCode();
    }

    @Override
    public boolean isSubtypeOf(String type) throws CoreException {
        return this.getWorkspace().getMarkerManager().isSubtype(this.getType(), type);
    }

    @Override
    public void setAttribute(String attributeName, int value) throws CoreException {
        this.setAttribute(attributeName, new Integer(value));
    }

    @Override
    public void setAttribute(String attributeName, Object value) throws CoreException {
        Assert.isNotNull((Object)attributeName);
        Workspace workspace = this.getWorkspace();
        MarkerManager manager = workspace.getMarkerManager();
        try {
            workspace.prepareOperation(null, null);
            workspace.beginOperation(true);
            MarkerInfo markerInfo = this.getInfo();
            this.checkInfo(markerInfo);
            boolean needDelta = !manager.hasDelta(this.resource.getFullPath(), this.id);
            MarkerInfo oldInfo = needDelta ? (MarkerInfo)markerInfo.clone() : null;
            boolean validate = manager.isPersistentType(markerInfo.getType());
            markerInfo.setAttribute(attributeName, value, validate);
            if (manager.isPersistent(markerInfo)) {
                ((Resource)this.resource).getResourceInfo(false, true).set(4096);
            }
            if (needDelta) {
                MarkerDelta delta = new MarkerDelta(4, this.resource, oldInfo);
                manager.changedMarkers(this.resource, new MarkerDelta[]{delta});
            }
        }
        finally {
            workspace.endOperation(null, false, null);
        }
    }

    @Override
    public void setAttribute(String attributeName, boolean value) throws CoreException {
        this.setAttribute(attributeName, value ? Boolean.TRUE : Boolean.FALSE);
    }

    @Override
    public void setAttributes(String[] attributeNames, Object[] values) throws CoreException {
        Assert.isNotNull((Object)attributeNames);
        Assert.isNotNull((Object)values);
        Workspace workspace = this.getWorkspace();
        MarkerManager manager = workspace.getMarkerManager();
        try {
            workspace.prepareOperation(null, null);
            workspace.beginOperation(true);
            MarkerInfo markerInfo = this.getInfo();
            this.checkInfo(markerInfo);
            boolean needDelta = !manager.hasDelta(this.resource.getFullPath(), this.id);
            MarkerInfo oldInfo = needDelta ? (MarkerInfo)markerInfo.clone() : null;
            boolean validate = manager.isPersistentType(markerInfo.getType());
            markerInfo.setAttributes(attributeNames, values, validate);
            if (manager.isPersistent(markerInfo)) {
                ((Resource)this.resource).getResourceInfo(false, true).set(4096);
            }
            if (needDelta) {
                MarkerDelta delta = new MarkerDelta(4, this.resource, oldInfo);
                manager.changedMarkers(this.resource, new MarkerDelta[]{delta});
            }
        }
        finally {
            workspace.endOperation(null, false, null);
        }
    }

    @Override
    public void setAttributes(Map<String, ? extends Object> values) throws CoreException {
        Workspace workspace = this.getWorkspace();
        MarkerManager manager = workspace.getMarkerManager();
        try {
            workspace.prepareOperation(null, null);
            workspace.beginOperation(true);
            MarkerInfo markerInfo = this.getInfo();
            this.checkInfo(markerInfo);
            boolean needDelta = !manager.hasDelta(this.resource.getFullPath(), this.id);
            MarkerInfo oldInfo = needDelta ? (MarkerInfo)markerInfo.clone() : null;
            boolean validate = manager.isPersistentType(markerInfo.getType());
            markerInfo.setAttributes(values, validate);
            if (manager.isPersistent(markerInfo)) {
                ((Resource)this.resource).getResourceInfo(false, true).set(4096);
            }
            if (needDelta) {
                MarkerDelta delta = new MarkerDelta(4, this.resource, oldInfo);
                manager.changedMarkers(this.resource, new MarkerDelta[]{delta});
            }
        }
        finally {
            workspace.endOperation(null, false, null);
        }
    }
}

