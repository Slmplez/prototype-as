/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry.spi;

public final class ConfigurationElementAttribute {
    private String name;
    private String value;

    public ConfigurationElementAttribute(String name, String value) {
        this.name = name;
        this.value = value;
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }
}

