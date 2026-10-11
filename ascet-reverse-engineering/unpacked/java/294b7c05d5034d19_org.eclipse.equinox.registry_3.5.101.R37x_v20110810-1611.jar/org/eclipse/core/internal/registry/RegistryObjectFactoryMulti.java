/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import org.eclipse.core.internal.registry.ConfigurationElement;
import org.eclipse.core.internal.registry.ConfigurationElementMulti;
import org.eclipse.core.internal.registry.Extension;
import org.eclipse.core.internal.registry.ExtensionMulti;
import org.eclipse.core.internal.registry.ExtensionPoint;
import org.eclipse.core.internal.registry.ExtensionPointMulti;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.RegistryObjectFactory;

public class RegistryObjectFactoryMulti
extends RegistryObjectFactory {
    public RegistryObjectFactoryMulti(ExtensionRegistry registry) {
        super(registry);
    }

    public ExtensionPoint createExtensionPoint(boolean persist) {
        return new ExtensionPointMulti(this.registry, persist);
    }

    public ExtensionPoint createExtensionPoint(int self, int[] children, int dataOffset, boolean persist) {
        return new ExtensionPointMulti(self, children, dataOffset, this.registry, persist);
    }

    public Extension createExtension(boolean persist) {
        return new ExtensionMulti(this.registry, persist);
    }

    public Extension createExtension(int self, String simpleId, String namespace, int[] children, int extraData, boolean persist) {
        return new ExtensionMulti(self, simpleId, namespace, children, extraData, this.registry, persist);
    }

    public ConfigurationElement createConfigurationElement(boolean persist) {
        return new ConfigurationElementMulti(this.registry, persist);
    }

    public ConfigurationElement createConfigurationElement(int self, String contributorId, String name, String[] propertiesAndValue, int[] children, int extraDataOffset, int parent, byte parentType, boolean persist) {
        return new ConfigurationElementMulti(self, contributorId, name, propertiesAndValue, children, extraDataOffset, parent, parentType, this.registry, persist);
    }
}

