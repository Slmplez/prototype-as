/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.core.internal.variables;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.variables.IStringVariable;

public abstract class StringVariable
implements IStringVariable {
    private String fName;
    private String fDescription;
    private IConfigurationElement fConfigurationElement;

    public StringVariable(String name, String description, IConfigurationElement configurationElement) {
        this.fName = name;
        this.fDescription = description;
        this.fConfigurationElement = configurationElement;
    }

    public String getName() {
        return this.fName;
    }

    public String getDescription() {
        return this.fDescription;
    }

    protected IConfigurationElement getConfigurationElement() {
        return this.fConfigurationElement;
    }

    public void setDescription(String description) {
        this.fDescription = description;
    }
}

