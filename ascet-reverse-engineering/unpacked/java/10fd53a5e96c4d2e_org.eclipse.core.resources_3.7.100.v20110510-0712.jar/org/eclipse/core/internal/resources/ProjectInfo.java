/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.content.IContentTypeMatcher
 */
package org.eclipse.core.internal.resources;

import java.util.HashMap;
import org.eclipse.core.internal.events.BuildCommand;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IProjectNature;
import org.eclipse.core.runtime.content.IContentTypeMatcher;

public class ProjectInfo
extends ResourceInfo {
    protected ProjectDescription description = null;
    protected HashMap<String, IProjectNature> natures = null;
    protected Object propertyStore = null;
    protected IContentTypeMatcher matcher = null;

    public synchronized void discardNatures() {
        this.natures = null;
    }

    public synchronized void fixupAfterMove() {
        this.natures = null;
        this.propertyStore = null;
        if (this.description != null) {
            ICommand[] buildSpec = this.description.getBuildSpec(false);
            int i = 0;
            while (i < buildSpec.length) {
                ((BuildCommand)buildSpec[i]).setBuilders(null);
                ++i;
            }
        }
    }

    public ProjectDescription getDescription() {
        return this.description;
    }

    public IContentTypeMatcher getMatcher() {
        return this.matcher;
    }

    public IProjectNature getNature(String natureId) {
        HashMap<String, IProjectNature> temp = this.natures;
        if (temp == null) {
            return null;
        }
        return temp.get(natureId);
    }

    public Object getPropertyStore() {
        return this.propertyStore;
    }

    public void setDescription(ProjectDescription value) {
        if (this.description != null) {
            ICommand[] oldSpec = this.description.buildSpec;
            ICommand[] newSpec = value.buildSpec;
            value.buildSpec = oldSpec;
            value.setBuildSpec(newSpec);
        }
        this.description = value;
    }

    public void setMatcher(IContentTypeMatcher matcher) {
        this.matcher = matcher;
    }

    public synchronized void setNature(String natureId, IProjectNature value) {
        if (value == null) {
            if (this.natures == null) {
                return;
            }
            HashMap temp = (HashMap)this.natures.clone();
            temp.remove(natureId);
            this.natures = temp.isEmpty() ? null : temp;
        } else {
            HashMap<Object, Object> temp = this.natures;
            temp = temp == null ? new HashMap(5) : (HashMap)this.natures.clone();
            temp.put(natureId, value);
            this.natures = temp;
        }
    }

    public void setPropertyStore(Object value) {
        this.propertyStore = value;
    }
}

