/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources;

public final class FileInfoMatcherDescription {
    private String id;
    private Object arguments;

    public FileInfoMatcherDescription(String id, Object arguments) {
        this.id = id;
        this.arguments = arguments;
    }

    public Object getArguments() {
        return this.arguments;
    }

    public String getId() {
        return this.id;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.arguments == null ? 0 : this.arguments.hashCode());
        result = 31 * result + (this.id == null ? 0 : this.id.hashCode());
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
        FileInfoMatcherDescription other = (FileInfoMatcherDescription)obj;
        if (this.arguments == null ? other.arguments != null : !this.arguments.equals(other.arguments)) {
            return false;
        }
        return !(this.id == null ? other.id != null : !this.id.equals(other.id));
    }
}

