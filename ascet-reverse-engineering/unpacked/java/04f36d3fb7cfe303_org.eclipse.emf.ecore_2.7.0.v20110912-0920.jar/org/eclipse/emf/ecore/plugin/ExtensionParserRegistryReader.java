/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.emf.ecore.plugin;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.plugin.RegistryReader;
import org.eclipse.emf.ecore.resource.Resource;

class ExtensionParserRegistryReader
extends RegistryReader {
    static final String TAG_PARSER = "parser";
    static final String ATT_TYPE = "type";
    static final String ATT_CLASS = "class";

    public ExtensionParserRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "extension_parser");
    }

    protected boolean readElement(IConfigurationElement element, boolean add) {
        if (element.getName().equals(TAG_PARSER)) {
            String type = element.getAttribute(ATT_TYPE);
            if (type == null) {
                this.logMissingAttribute(element, ATT_TYPE);
            } else if (element.getAttribute(ATT_CLASS) == null) {
                this.logMissingAttribute(element, ATT_CLASS);
            } else {
                if (add) {
                    Object previous = Resource.Factory.Registry.INSTANCE.getExtensionToFactoryMap().put(type, new RegistryReader.ResourceFactoryDescriptor(element, ATT_CLASS));
                    if (previous instanceof RegistryReader.ResourceFactoryDescriptor) {
                        RegistryReader.ResourceFactoryDescriptor descriptor = (RegistryReader.ResourceFactoryDescriptor)previous;
                        EcorePlugin.INSTANCE.log("Both '" + descriptor.element.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register an extension parser for '" + type + "'");
                    }
                    return true;
                }
                Resource.Factory.Registry.INSTANCE.getExtensionToFactoryMap().remove(type);
                return true;
            }
        }
        return false;
    }
}

