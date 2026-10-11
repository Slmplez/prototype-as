/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.templates;

import org.eclipse.core.runtime.Assert;

public class Template {
    private String fName;
    private String fDescription;
    private String fContextTypeId;
    private String fPattern;
    private final boolean fIsAutoInsertable;

    public Template() {
        this("", "", "", "", true);
    }

    public Template(Template template) {
        this(template.getName(), template.getDescription(), template.getContextTypeId(), template.getPattern(), template.isAutoInsertable());
    }

    public Template(String name, String description, String contextTypeId, String pattern) {
        this(name, description, contextTypeId, pattern, true);
    }

    public Template(String name, String description, String contextTypeId, String pattern, boolean isAutoInsertable) {
        Assert.isNotNull((Object)description);
        this.fDescription = description;
        this.fName = name;
        Assert.isNotNull((Object)contextTypeId);
        this.fContextTypeId = contextTypeId;
        this.fPattern = pattern;
        this.fIsAutoInsertable = isAutoInsertable;
    }

    public int hashCode() {
        return this.fName.hashCode() ^ this.fPattern.hashCode() ^ this.fContextTypeId.hashCode();
    }

    public void setDescription(String description) {
        Assert.isNotNull((Object)description);
        this.fDescription = description;
    }

    public String getDescription() {
        return this.fDescription;
    }

    public void setContextTypeId(String contextTypeId) {
        Assert.isNotNull((Object)contextTypeId);
        this.fContextTypeId = contextTypeId;
    }

    public String getContextTypeId() {
        return this.fContextTypeId;
    }

    public void setName(String name) {
        this.fName = name;
    }

    public String getName() {
        return this.fName;
    }

    public void setPattern(String pattern) {
        this.fPattern = pattern;
    }

    public String getPattern() {
        return this.fPattern;
    }

    public boolean matches(String prefix, String contextTypeId) {
        return this.fContextTypeId.equals(contextTypeId);
    }

    public boolean equals(Object o) {
        if (!(o instanceof Template)) {
            return false;
        }
        Template t = (Template)o;
        if (t == this) {
            return true;
        }
        return t.fName.equals(this.fName) && t.fPattern.equals(this.fPattern) && t.fContextTypeId.equals(this.fContextTypeId) && t.fDescription.equals(this.fDescription) && t.fIsAutoInsertable == this.fIsAutoInsertable;
    }

    public boolean isAutoInsertable() {
        return this.fIsAutoInsertable;
    }
}

