/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry.spi;

import org.eclipse.core.internal.registry.spi.ConfigurationElementAttribute;

public final class ConfigurationElementDescription {
    private String name;
    private ConfigurationElementAttribute[] attributes;
    private String value;
    private ConfigurationElementDescription[] children;

    public ConfigurationElementDescription(String name, ConfigurationElementAttribute[] attributes, String value, ConfigurationElementDescription[] children) {
        this.name = name;
        this.attributes = attributes;
        this.value = value;
        this.children = children;
    }

    public ConfigurationElementDescription(String name, ConfigurationElementAttribute attribute, String value, ConfigurationElementDescription[] children) {
        this.name = name;
        this.attributes = new ConfigurationElementAttribute[]{attribute};
        this.value = value;
        this.children = children;
    }

    public ConfigurationElementDescription[] getChildren() {
        return this.children;
    }

    public String getName() {
        return this.name;
    }

    public ConfigurationElementAttribute[] getAttributes() {
        return this.attributes;
    }

    public String getValue() {
        return this.value;
    }
}

