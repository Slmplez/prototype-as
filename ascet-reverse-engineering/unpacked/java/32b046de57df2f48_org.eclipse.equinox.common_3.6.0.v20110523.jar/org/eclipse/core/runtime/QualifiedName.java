/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.Assert;

public final class QualifiedName {
    String qualifier = null;
    String localName = null;

    public QualifiedName(String qualifier, String localName) {
        Assert.isLegal(localName != null && localName.length() != 0);
        this.qualifier = qualifier;
        this.localName = localName;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof QualifiedName)) {
            return false;
        }
        QualifiedName qName = (QualifiedName)obj;
        if (this.qualifier == null && qName.getQualifier() != null) {
            return false;
        }
        if (this.qualifier != null && !this.qualifier.equals(qName.getQualifier())) {
            return false;
        }
        return this.localName.equals(qName.getLocalName());
    }

    public String getLocalName() {
        return this.localName;
    }

    public String getQualifier() {
        return this.qualifier;
    }

    public int hashCode() {
        return (this.qualifier == null ? 0 : this.qualifier.hashCode()) + this.localName.hashCode();
    }

    public String toString() {
        return String.valueOf(this.getQualifier() == null ? "" : String.valueOf(this.getQualifier()) + ':') + this.getLocalName();
    }
}

