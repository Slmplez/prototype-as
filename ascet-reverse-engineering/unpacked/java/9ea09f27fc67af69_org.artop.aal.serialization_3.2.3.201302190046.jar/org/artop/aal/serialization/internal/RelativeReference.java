/*
 * Decompiled with CFR 0.152.
 */
package org.artop.aal.serialization.internal;

public class RelativeReference {
    protected String base;
    protected String value;
    protected String prefix;
    protected Boolean isDefault = Boolean.FALSE;

    public String getBase() {
        return this.base;
    }

    public void setBase(String base) {
        this.base = base;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Boolean getIsDefault() {
        return this.isDefault;
    }

    public void setIsDefault(Boolean isDefault) {
        this.isDefault = isDefault;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }
}

