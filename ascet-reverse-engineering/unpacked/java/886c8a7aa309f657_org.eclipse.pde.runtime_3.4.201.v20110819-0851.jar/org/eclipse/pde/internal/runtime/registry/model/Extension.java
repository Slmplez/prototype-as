/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import org.eclipse.pde.internal.runtime.registry.model.Bundle;
import org.eclipse.pde.internal.runtime.registry.model.ConfigurationElement;
import org.eclipse.pde.internal.runtime.registry.model.ExtensionPoint;
import org.eclipse.pde.internal.runtime.registry.model.ModelObject;

public class Extension
extends ModelObject {
    private String namespaceIdentifier;
    private String label;
    private String extensionPointUniqueIdentifier;
    private ConfigurationElement[] configurationElements = new ConfigurationElement[0];
    private Long contributor;

    public void setNamespaceIdentifier(String namespaceIdentifier) {
        this.namespaceIdentifier = namespaceIdentifier;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setExtensionPointUniqueIdentifier(String extensionPointUniqueIdentifier) {
        this.extensionPointUniqueIdentifier = extensionPointUniqueIdentifier;
    }

    public void setConfigurationElements(ConfigurationElement[] configurationElements) {
        if (configurationElements == null) {
            throw new IllegalArgumentException();
        }
        this.configurationElements = configurationElements;
    }

    public void setContributor(Long contributor) {
        this.contributor = contributor;
    }

    public ConfigurationElement[] getConfigurationElements() {
        return this.configurationElements;
    }

    public String getExtensionPointUniqueIdentifier() {
        return this.extensionPointUniqueIdentifier;
    }

    public String getLabel() {
        return this.label;
    }

    public String getNamespaceIdentifier() {
        return this.namespaceIdentifier;
    }

    public Long getContributorId() {
        return this.contributor;
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
        Extension other = (Extension)obj;
        if (this.contributor == null ? other.contributor != null : !this.contributor.equals(other.contributor)) {
            return false;
        }
        if (this.extensionPointUniqueIdentifier == null ? other.extensionPointUniqueIdentifier != null : !this.extensionPointUniqueIdentifier.equals(other.extensionPointUniqueIdentifier)) {
            return false;
        }
        if (this.label == null ? other.label != null : !this.label.equals(other.label)) {
            return false;
        }
        return !(this.namespaceIdentifier == null ? other.namespaceIdentifier != null : !this.namespaceIdentifier.equals(other.namespaceIdentifier));
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.contributor == null ? 0 : this.contributor.hashCode());
        result = 31 * result + (this.extensionPointUniqueIdentifier == null ? 0 : this.extensionPointUniqueIdentifier.hashCode());
        result = 31 * result + (this.label == null ? 0 : this.label.hashCode());
        result = 31 * result + (this.namespaceIdentifier == null ? 0 : this.namespaceIdentifier.hashCode());
        return result;
    }

    public ExtensionPoint getExtensionPoint() {
        if (this.model == null) {
            return null;
        }
        return this.model.getExtensionPoint(this.extensionPointUniqueIdentifier);
    }

    public Bundle getContributor() {
        if (this.model == null || this.contributor == null) {
            return null;
        }
        return this.model.getBundle(this.contributor);
    }
}

