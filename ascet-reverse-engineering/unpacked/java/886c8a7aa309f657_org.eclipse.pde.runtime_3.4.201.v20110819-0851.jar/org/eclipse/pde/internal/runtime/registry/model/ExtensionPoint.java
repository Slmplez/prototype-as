/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.pde.internal.runtime.registry.model.Bundle;
import org.eclipse.pde.internal.runtime.registry.model.ModelObject;

public class ExtensionPoint
extends ModelObject {
    private String label;
    private String uniqueIdentifier;
    private String namespaceIdentifier;
    private Long contributor;
    private List extensions = new ArrayList();

    public void setLabel(String label) {
        this.label = label;
    }

    public void setUniqueIdentifier(String uniqueIdentifier) {
        this.uniqueIdentifier = uniqueIdentifier;
    }

    public void setNamespaceIdentifier(String namespaceIdentifier) {
        this.namespaceIdentifier = namespaceIdentifier;
    }

    public void setContributor(Long contributor) {
        this.contributor = contributor;
    }

    public void setExtensions(List extensions) {
        this.extensions = extensions;
    }

    public List getExtensions() {
        return this.extensions;
    }

    public String getLabel() {
        return this.label;
    }

    public String getUniqueIdentifier() {
        return this.uniqueIdentifier;
    }

    public String getNamespaceIdentifier() {
        return this.namespaceIdentifier;
    }

    public Long getContributorId() {
        return this.contributor;
    }

    public Bundle getContributor() {
        if (this.model == null || this.contributor == null) {
            return null;
        }
        return this.model.getBundle(this.contributor);
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.uniqueIdentifier == null ? 0 : this.uniqueIdentifier.hashCode());
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
        ExtensionPoint other = (ExtensionPoint)obj;
        return !(this.uniqueIdentifier == null ? other.uniqueIdentifier != null : !this.uniqueIdentifier.equals(other.uniqueIdentifier));
    }
}

