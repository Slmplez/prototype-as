/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.ecore.xmi.XMLResource$ResourceHandler
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.resource;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceHandlerRegistry {
    private static final String EXTPOINT_RESOURCE_HANDLERS = "resourceHandlers";
    private static final String ELEMENT_HANDLER = "handler";
    private static final String ATTR_NSURI_PATTERN = "nsURIPattern";
    private static final String ATTR_CLASS = "class";
    public static final ResourceHandlerRegistry INSTANCE = new ResourceHandlerRegistry();
    private List<ResourceHandlerDescriptor> resourceHandlerDescriptors;

    private void init() {
        this.resourceHandlerDescriptors = new ArrayList<ResourceHandlerDescriptor>();
        this.readRegistry();
    }

    private void readRegistry() {
        block5: {
            try {
                IConfigurationElement[] contributions;
                IExtensionRegistry registry = Platform.getExtensionRegistry();
                if (registry == null) break block5;
                String symbolicName = Activator.getPlugin().getSymbolicName();
                IConfigurationElement[] iConfigurationElementArray = contributions = registry.getConfigurationElementsFor(symbolicName, EXTPOINT_RESOURCE_HANDLERS);
                int n = contributions.length;
                int n2 = 0;
                while (n2 < n) {
                    IConfigurationElement contribution = iConfigurationElementArray[n2];
                    try {
                        this.readContribution(contribution);
                    }
                    catch (Exception ex) {
                        PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                    }
                    ++n2;
                }
            }
            catch (Exception ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
    }

    private void readContribution(IConfigurationElement contribution) {
        if (ELEMENT_HANDLER.equals(contribution.getName())) {
            this.resourceHandlerDescriptors.add(new ResourceHandlerDescriptor(contribution));
        }
    }

    protected List<ResourceHandlerDescriptor> getDescriptors() {
        if (this.resourceHandlerDescriptors == null) {
            this.init();
        }
        return this.resourceHandlerDescriptors;
    }

    public XMLResource.ResourceHandler getHandler(String nsURI) {
        for (ResourceHandlerDescriptor descriptor : this.getDescriptors()) {
            if (!descriptor.isHandlerFor(nsURI)) continue;
            return descriptor.createResourceHandler();
        }
        return null;
    }

    public void addHandlerType(String nsURIPattern, Class<? extends XMLResource.ResourceHandler> handlerType) {
        List<ResourceHandlerDescriptor> descriptors = this.getDescriptors();
        descriptors.add(new ResourceHandlerDescriptor(nsURIPattern, handlerType));
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class ResourceHandlerDescriptor {
        private IConfigurationElement configElement = null;
        private Class<? extends XMLResource.ResourceHandler> resourceHandlerType = null;
        private String nsURIPattern;

        protected ResourceHandlerDescriptor(IConfigurationElement aConfigElement) {
            Assert.isNotNull((Object)aConfigElement, (String)"ResourceHandlerRegistry.ResourceHandlerDescriptor objects cannot be null.");
            Assert.isLegal((boolean)ResourceHandlerRegistry.ELEMENT_HANDLER.equals(aConfigElement.getName()), (String)"ResourceHandlerRegistry.ResourceHandlerDescriptor objects must have the name \"handler\".");
            this.configElement = aConfigElement;
            this.nsURIPattern = this.configElement.getAttribute(ResourceHandlerRegistry.ATTR_NSURI_PATTERN);
        }

        public ResourceHandlerDescriptor(String nsURIPattern, Class<? extends XMLResource.ResourceHandler> handlerType) {
            Assert.isNotNull((Object)nsURIPattern);
            Assert.isNotNull(handlerType);
            this.nsURIPattern = nsURIPattern;
            this.resourceHandlerType = handlerType;
        }

        public XMLResource.ResourceHandler createResourceHandler() {
            try {
                if (this.configElement != null) {
                    return (XMLResource.ResourceHandler)this.configElement.createExecutableExtension(ResourceHandlerRegistry.ATTR_CLASS);
                }
                if (this.resourceHandlerType != null) {
                    return this.resourceHandlerType.newInstance();
                }
            }
            catch (Exception ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
            return null;
        }

        public boolean isHandlerFor(String nsURI) {
            Assert.isNotNull((Object)nsURI);
            return nsURI.matches(this.nsURIPattern);
        }
    }
}

