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

class ProtocolParserRegistryReader
extends RegistryReader {
    static final String TAG_PARSER = "parser";
    static final String ATT_PROTOCOLNAME = "protocolName";
    static final String ATT_CLASS = "class";

    public ProtocolParserRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "protocol_parser");
    }

    protected boolean readElement(IConfigurationElement element, boolean add) {
        if (element.getName().equals(TAG_PARSER)) {
            String protocolName = element.getAttribute(ATT_PROTOCOLNAME);
            if (protocolName == null) {
                this.logMissingAttribute(element, ATT_PROTOCOLNAME);
            } else if (element.getAttribute(ATT_CLASS) == null) {
                this.logMissingAttribute(element, ATT_CLASS);
            } else {
                if (add) {
                    Object previous = Resource.Factory.Registry.INSTANCE.getProtocolToFactoryMap().put(protocolName, new RegistryReader.ResourceFactoryDescriptor(element, ATT_CLASS));
                    if (previous instanceof RegistryReader.ResourceFactoryDescriptor) {
                        RegistryReader.ResourceFactoryDescriptor descriptor = (RegistryReader.ResourceFactoryDescriptor)previous;
                        EcorePlugin.INSTANCE.log("Both '" + descriptor.element.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register a protocol parser for '" + protocolName + "'");
                    }
                    return true;
                }
                Resource.Factory.Registry.INSTANCE.getProtocolToFactoryMap().remove(protocolName);
                return true;
            }
        }
        return false;
    }
}

