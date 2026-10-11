/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.resources.IFilterMatcherDescriptor;
import org.eclipse.core.resources.filtermatchers.AbstractFileInfoMatcher;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;

public class FilterDescriptor
implements IFilterMatcherDescriptor {
    private String id;
    private String name;
    private String description;
    private String argumentType;
    private boolean isFirst = false;
    private IConfigurationElement element;

    public FilterDescriptor(IConfigurationElement element) throws CoreException {
        this(element, true);
    }

    public FilterDescriptor(IConfigurationElement element, boolean instantiateFactory) throws CoreException {
        this.id = element.getAttribute("id");
        this.name = element.getAttribute("name");
        this.description = element.getAttribute("description");
        this.argumentType = element.getAttribute("argumentType");
        if (this.argumentType == null) {
            this.argumentType = "none";
        }
        this.element = element;
        String ordering = element.getAttribute("ordering");
        if (ordering != null) {
            this.isFirst = ordering.equals("first");
        }
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public String getArgumentType() {
        return this.argumentType;
    }

    public AbstractFileInfoMatcher createFilter() {
        try {
            return (AbstractFileInfoMatcher)this.element.createExecutableExtension("class");
        }
        catch (CoreException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean isFirstOrdering() {
        return this.isFirst;
    }
}

