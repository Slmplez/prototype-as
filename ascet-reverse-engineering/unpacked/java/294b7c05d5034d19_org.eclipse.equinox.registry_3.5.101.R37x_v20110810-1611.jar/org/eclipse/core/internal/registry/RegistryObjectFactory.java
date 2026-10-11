/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.ConfigurationElement;
import org.eclipse.core.internal.registry.Contribution;
import org.eclipse.core.internal.registry.Extension;
import org.eclipse.core.internal.registry.ExtensionPoint;
import org.eclipse.core.internal.registry.ExtensionRegistry;

public class RegistryObjectFactory {
    protected ExtensionRegistry registry;

    public RegistryObjectFactory(ExtensionRegistry registry) {
        this.registry = registry;
    }

    public Contribution createContribution(String contributorId, boolean persist) {
        return new Contribution(contributorId, this.registry, persist);
    }

    public ExtensionPoint createExtensionPoint(boolean persist) {
        return new ExtensionPoint(this.registry, persist);
    }

    public ExtensionPoint createExtensionPoint(int self, int[] children, int dataOffset, boolean persist) {
        return new ExtensionPoint(self, children, dataOffset, this.registry, persist);
    }

    public Extension createExtension(boolean persist) {
        return new Extension(this.registry, persist);
    }

    public Extension createExtension(int self, String simpleId, String namespace, int[] children, int extraData, boolean persist) {
        return new Extension(self, simpleId, namespace, children, extraData, this.registry, persist);
    }

    public ConfigurationElement createConfigurationElement(boolean persist) {
        return new ConfigurationElement(this.registry, persist);
    }

    public ConfigurationElement createConfigurationElement(int self, String contributorId, String name, String[] propertiesAndValue, int[] children, int extraDataOffset, int parent, byte parentType, boolean persist) {
        return new ConfigurationElement(self, contributorId, name, propertiesAndValue, children, extraDataOffset, parent, parentType, this.registry, persist);
    }
}

