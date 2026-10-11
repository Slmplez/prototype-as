/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.source;

public class Annotation {
    public static final String TYPE_UNKNOWN = "org.eclipse.text.annotation.unknown";
    private String fType;
    private boolean fIsPersistent = false;
    private boolean fMarkedAsDeleted = false;
    private String fText;

    protected Annotation() {
        this(null, false, null);
    }

    public Annotation(String type, boolean isPersistent, String text) {
        this.fType = type;
        this.fIsPersistent = isPersistent;
        this.fText = text;
    }

    public Annotation(boolean isPersistent) {
        this(null, isPersistent, null);
    }

    public boolean isPersistent() {
        return this.fIsPersistent;
    }

    public void setType(String type) {
        this.fType = type;
    }

    public String getType() {
        return this.fType == null ? TYPE_UNKNOWN : this.fType;
    }

    public void markDeleted(boolean deleted) {
        this.fMarkedAsDeleted = deleted;
    }

    public boolean isMarkedDeleted() {
        return this.fMarkedAsDeleted;
    }

    public void setText(String text) {
        this.fText = text;
    }

    public String getText() {
        return this.fText;
    }
}

