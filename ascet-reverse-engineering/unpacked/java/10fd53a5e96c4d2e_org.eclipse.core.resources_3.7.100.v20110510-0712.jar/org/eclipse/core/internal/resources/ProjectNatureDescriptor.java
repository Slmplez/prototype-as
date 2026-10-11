/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.util.ArrayList;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IProjectNatureDescriptor;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

public class ProjectNatureDescriptor
implements IProjectNatureDescriptor {
    protected String id;
    protected String label;
    protected String[] requiredNatures;
    protected String[] natureSets;
    protected String[] builderIds;
    protected String[] contentTypeIds;
    protected boolean allowLinking = true;
    protected boolean hasCycle = false;
    protected byte colour = 0;

    protected ProjectNatureDescriptor(IExtension natureExtension) throws CoreException {
        this.readExtension(natureExtension);
    }

    protected void fail() throws CoreException {
        this.fail(NLS.bind((String)Messages.natures_invalidDefinition, (Object)this.id));
    }

    protected void fail(String reason) throws CoreException {
        throw new ResourceException((IStatus)new Status(4, "org.eclipse.core.resources", 1, reason, null));
    }

    public String[] getBuilderIds() {
        return this.builderIds;
    }

    public String[] getContentTypeIds() {
        return this.contentTypeIds;
    }

    public String getNatureId() {
        return this.id;
    }

    public String getLabel() {
        return this.label;
    }

    public String[] getRequiredNatureIds() {
        return this.requiredNatures;
    }

    public String[] getNatureSetIds() {
        return this.natureSets;
    }

    public boolean isLinkingAllowed() {
        return this.allowLinking;
    }

    protected void readExtension(IExtension natureExtension) throws CoreException {
        this.id = natureExtension.getUniqueIdentifier();
        if (this.id == null) {
            this.fail(Messages.natures_missingIdentifier);
        }
        this.label = natureExtension.getLabel();
        IConfigurationElement[] elements = natureExtension.getConfigurationElements();
        int count = elements.length;
        ArrayList<String> requiredList = new ArrayList<String>(count);
        ArrayList<String> setList = new ArrayList<String>(count);
        ArrayList<String> builderList = new ArrayList<String>(count);
        ArrayList<String> contentTypeList = new ArrayList<String>(count);
        int i = 0;
        while (i < count) {
            String attribute;
            IConfigurationElement element = elements[i];
            String name = element.getName();
            if (name.equalsIgnoreCase("requires-nature")) {
                attribute = element.getAttribute("id");
                if (attribute == null) {
                    this.fail();
                }
                requiredList.add(attribute);
            } else if (name.equalsIgnoreCase("one-of-nature")) {
                attribute = element.getAttribute("id");
                if (attribute == null) {
                    this.fail();
                }
                setList.add(attribute);
            } else if (name.equalsIgnoreCase("builder")) {
                attribute = element.getAttribute("id");
                if (attribute == null) {
                    this.fail();
                }
                builderList.add(attribute);
            } else if (name.equalsIgnoreCase("content-type")) {
                attribute = element.getAttribute("id");
                if (attribute == null) {
                    this.fail();
                }
                contentTypeList.add(attribute);
            } else if (name.equalsIgnoreCase("options")) {
                attribute = element.getAttribute("allowLinking");
                this.allowLinking = !Boolean.FALSE.toString().equalsIgnoreCase(attribute);
            }
            ++i;
        }
        this.requiredNatures = requiredList.toArray(new String[requiredList.size()]);
        this.natureSets = setList.toArray(new String[setList.size()]);
        this.builderIds = builderList.toArray(new String[builderList.size()]);
        this.contentTypeIds = contentTypeList.toArray(new String[contentTypeList.size()]);
    }

    public String toString() {
        return "ProjectNatureDescriptor(" + this.id + ")";
    }
}

