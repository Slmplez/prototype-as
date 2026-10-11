/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.scoping;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.emf.scoping.IResourceScopeProvider;
import org.eclipse.sphinx.emf.scoping.ProjectResourceScopeProvider;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceScopeProviderRegistry {
    public static ResourceScopeProviderRegistry INSTANCE = new ResourceScopeProviderRegistry();
    private static final String EXTP_MODEL_SCOPE_PROVIDER = "org.eclipse.sphinx.emf.resourceScopeProviders";
    private static final String NODE_APPLICABLEFOR = "applicableFor";
    private static final String NODE_PROVIDER = "provider";
    private static final String ATTR_ID = "id";
    private static final String ATTR_CLASS = "class";
    private static final String ATTR_OVERRIDE = "override";
    private static final String ATTR_META_MODEL_DESCRIPTOR_ID_PATTERN = "metaModelDescriptorIdPattern";
    private Map<IMetaModelDescriptor, IResourceScopeProvider> fContributedResourceScopeProviders = new HashMap<IMetaModelDescriptor, IResourceScopeProvider>();
    private Map<IResourceScopeProvider, Collection<IMetaModelDescriptor>> fMetaModelDescriptorsForResourceScopeProviders = new HashMap<IResourceScopeProvider, Collection<IMetaModelDescriptor>>();
    private IResourceScopeProvider defaultResourceScopeProvider = null;

    private ResourceScopeProviderRegistry() {
        this.readContributedResourceScopeProviders();
        this.contributeDefaultResourceScopeProvider();
    }

    private void readContributedResourceScopeProviders() {
        IConfigurationElement[] configElements;
        IExtension extension;
        IExtension[] extensions = Platform.getExtensionRegistry().getExtensionPoint(EXTP_MODEL_SCOPE_PROVIDER).getExtensions();
        HashSet<String> overriddenIds = new HashSet<String>();
        IExtension[] iExtensionArray = extensions;
        int n = extensions.length;
        int n2 = 0;
        while (n2 < n) {
            extension = iExtensionArray[n2];
            configElements = extension.getConfigurationElements();
            overriddenIds.addAll(this.getOverriddenResourceScopeProviderIds(configElements));
            ++n2;
        }
        iExtensionArray = extensions;
        n = extensions.length;
        n2 = 0;
        while (n2 < n) {
            extension = iExtensionArray[n2];
            configElements = extension.getConfigurationElements();
            this.readContributedResourceScopeProviders(configElements, overriddenIds);
            ++n2;
        }
    }

    private void readContributedResourceScopeProviders(IConfigurationElement[] configElements, Set<String> overriddenIds) {
        IConfigurationElement[] iConfigurationElementArray = configElements;
        int n = configElements.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement configElement = iConfigurationElementArray[n2];
            try {
                String id = configElement.getAttribute(ATTR_ID);
                IResourceScopeProvider resourceScopeProvider = null;
                if (!overriddenIds.contains(id)) {
                    IConfigurationElement[] childrenConfigElements;
                    resourceScopeProvider = (IResourceScopeProvider)configElement.createExecutableExtension(ATTR_CLASS);
                    IConfigurationElement[] iConfigurationElementArray2 = childrenConfigElements = configElement.getChildren();
                    int n3 = childrenConfigElements.length;
                    int n4 = 0;
                    while (n4 < n3) {
                        IConfigurationElement childConfigElement = iConfigurationElementArray2[n4];
                        if (NODE_APPLICABLEFOR.equals(childConfigElement.getName())) {
                            String metaModelDescriptorIdPattern = childConfigElement.getAttribute(ATTR_META_MODEL_DESCRIPTOR_ID_PATTERN);
                            this.addResourceScopeProvider(metaModelDescriptorIdPattern, resourceScopeProvider);
                        }
                        ++n4;
                    }
                }
            }
            catch (Exception ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)ex);
            }
            ++n2;
        }
    }

    private void contributeDefaultResourceScopeProvider() {
        List<IMetaModelDescriptor> orphanMMDescriptors = MetaModelDescriptorRegistry.INSTANCE.getDescriptors(MetaModelDescriptorRegistry.ANY_MM);
        Set<IMetaModelDescriptor> alreadyRegisteredMMdescriptors = this.fContributedResourceScopeProviders.keySet();
        orphanMMDescriptors.removeAll(alreadyRegisteredMMdescriptors);
        this.addResourceScopeProvider(orphanMMDescriptors, this.getDefaultResourceScopeProvider());
    }

    private Set<String> getOverriddenResourceScopeProviderIds(IConfigurationElement[] configElements) {
        Assert.isNotNull((Object)configElements);
        HashSet<String> overriddenIds = new HashSet<String>();
        IConfigurationElement[] iConfigurationElementArray = configElements;
        int n = configElements.length;
        int n2 = 0;
        while (n2 < n) {
            String overriddenResourceScopePolicyId;
            IConfigurationElement configElement = iConfigurationElementArray[n2];
            if (NODE_PROVIDER.equals(configElement.getName()) && (overriddenResourceScopePolicyId = configElement.getAttribute(ATTR_OVERRIDE)) != null) {
                if (!overriddenIds.contains(overriddenResourceScopePolicyId)) {
                    overriddenIds.add(overriddenResourceScopePolicyId);
                } else {
                    PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException(NLS.bind((String)Messages.warning_multipleOverridesForSameResourceScopeProvider, (Object)overriddenResourceScopePolicyId)));
                }
            }
            ++n2;
        }
        return overriddenIds;
    }

    private void addResourceScopeProvider(String mmDescIdPattern, IResourceScopeProvider resourceScopeProvider) {
        Collection<IMetaModelDescriptor> matchingMMDescriptors = this.getMetaModelDescriptors(mmDescIdPattern);
        this.addResourceScopeProvider(matchingMMDescriptors, resourceScopeProvider);
    }

    private void addResourceScopeProvider(Collection<IMetaModelDescriptor> mmDescriptors, IResourceScopeProvider resourceScopeProvider) {
        for (IMetaModelDescriptor mmDescriptor : mmDescriptors) {
            if (this.fContributedResourceScopeProviders.get(mmDescriptor) == null) {
                this.fContributedResourceScopeProviders.put(mmDescriptor, resourceScopeProvider);
                Collection<IMetaModelDescriptor> mmDescriptorsOfResourceScopeProvider = this.fMetaModelDescriptorsForResourceScopeProviders.get(resourceScopeProvider);
                if (mmDescriptorsOfResourceScopeProvider == null) {
                    mmDescriptorsOfResourceScopeProvider = new HashSet<IMetaModelDescriptor>();
                    this.fMetaModelDescriptorsForResourceScopeProviders.put(resourceScopeProvider, mmDescriptorsOfResourceScopeProvider);
                }
                mmDescriptorsOfResourceScopeProvider.add(mmDescriptor);
                continue;
            }
            PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException(NLS.bind((String)Messages.warning_multipleResourceScopeProvidersContributedForSameMetaModelDescriptor, (Object)mmDescriptor.getIdentifier())));
        }
    }

    private Collection<IMetaModelDescriptor> getMetaModelDescriptors(String mmDescIdPattern) {
        HashSet<IMetaModelDescriptor> metaModelDescriptors = new HashSet<IMetaModelDescriptor>();
        if (".*".equals(mmDescIdPattern) || ".+".equals(mmDescIdPattern)) {
            metaModelDescriptors.add(MetaModelDescriptorRegistry.ANY_MM);
        }
        metaModelDescriptors.addAll(MetaModelDescriptorRegistry.INSTANCE.getDescriptors(mmDescIdPattern));
        return Collections.unmodifiableCollection(metaModelDescriptors);
    }

    public Collection<IMetaModelDescriptor> getMetaModelDescriptorsFor(IResourceScopeProvider resourceScopeProvider) {
        Collection<IMetaModelDescriptor> metaModelDescriptorsForProvider = this.fMetaModelDescriptorsForResourceScopeProviders.get(resourceScopeProvider);
        if (metaModelDescriptorsForProvider != null) {
            return Collections.unmodifiableCollection(metaModelDescriptorsForProvider);
        }
        return Collections.emptySet();
    }

    public IResourceScopeProvider getDefaultResourceScopeProvider() {
        if (this.defaultResourceScopeProvider == null) {
            this.defaultResourceScopeProvider = new ProjectResourceScopeProvider();
        }
        return this.defaultResourceScopeProvider;
    }

    public boolean isNotInAnyScope(IFile file) {
        if (file != null) {
            HashSet<IResourceScopeProvider> allResourceScopeProviders = new HashSet<IResourceScopeProvider>(this.fContributedResourceScopeProviders.values());
            for (IResourceScopeProvider provider : allResourceScopeProviders) {
                if (!provider.isApplicableTo(file)) continue;
                return false;
            }
        }
        return true;
    }

    public boolean hasApplicableFileExtension(IFile file) {
        if (file != null) {
            for (IResourceScopeProvider provider : this.fMetaModelDescriptorsForResourceScopeProviders.keySet()) {
                if (!provider.hasApplicableFileExtension(file)) continue;
                return true;
            }
        }
        return false;
    }

    public IResourceScopeProvider getResourceScopeProvider(IMetaModelDescriptor mmDescriptor) {
        if (mmDescriptor != null) {
            return this.fContributedResourceScopeProviders.get(mmDescriptor);
        }
        return null;
    }
}

