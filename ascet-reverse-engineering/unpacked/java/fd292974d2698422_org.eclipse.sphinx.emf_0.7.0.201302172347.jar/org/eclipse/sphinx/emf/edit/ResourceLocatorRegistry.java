/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.common.util.WrappedException
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.edit;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

public class ResourceLocatorRegistry {
    public static final ResourceLocatorRegistry INSTANCE = new ResourceLocatorRegistry();
    private static final String EXTPOINT_RESOURCE_LOCATOR = "resourceLocators";
    private static final String ELEMENT_LOCATOR = "locator";
    private static final String ATT_MM_PACKAGES_NSURI_PATTERN = "mmEPackagesNsURIPattern";
    private static final String ATT_CLASS = "class";
    private Map<String, ResourceLocator> contributedResourcesLocators = new HashMap<String, ResourceLocator>();

    private ResourceLocatorRegistry() {
        this.readRegistry();
    }

    public ResourceLocator getResourceLocator(String metaModelTargetNsURI) {
        Assert.isNotNull((Object)metaModelTargetNsURI);
        for (String key : this.contributedResourcesLocators.keySet()) {
            if (!metaModelTargetNsURI.matches(key)) continue;
            return this.contributedResourcesLocators.get(key);
        }
        return null;
    }

    private void readRegistry() {
        block5: {
            try {
                IConfigurationElement[] contributions;
                IExtensionRegistry registry = Platform.getExtensionRegistry();
                if (registry == null) break block5;
                String symbolicName = Activator.getPlugin().getSymbolicName();
                IConfigurationElement[] iConfigurationElementArray = contributions = registry.getConfigurationElementsFor(symbolicName, EXTPOINT_RESOURCE_LOCATOR);
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

    private void readContribution(IConfigurationElement element) {
        if (ELEMENT_LOCATOR.equals(element.getName())) {
            Object instance = null;
            String mmNsURIPattern = element.getAttribute(ATT_MM_PACKAGES_NSURI_PATTERN);
            if (this.contributedResourcesLocators.containsKey(mmNsURIPattern)) {
                String message = NLS.bind((String)Messages.warning_mmNsURIPatternNotUnique, (Object)mmNsURIPattern);
                PlatformLogUtil.logAsWarning((Plugin)Activator.getDefault(), (Object)new RuntimeException(message));
            }
            try {
                Class javaClass = Platform.getBundle((String)element.getDeclaringExtension().getContributor().getName()).loadClass(element.getAttribute(ATT_CLASS));
                Field field = javaClass.getField("INSTANCE");
                instance = field.get(null);
                this.contributedResourcesLocators.put(mmNsURIPattern, (ResourceLocator)instance);
            }
            catch (ClassNotFoundException e) {
                throw new WrappedException((Exception)e);
            }
            catch (IllegalAccessException e) {
                throw new WrappedException((Exception)e);
            }
            catch (NoSuchFieldException e) {
                try {
                    instance = element.createExecutableExtension(ATT_CLASS);
                    this.contributedResourcesLocators.put(mmNsURIPattern, (ResourceLocator)instance);
                }
                catch (CoreException ex) {
                    PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)((Object)ex));
                }
                PlatformLogUtil.logAsInfo((Plugin)Activator.getPlugin(), (Object)e);
            }
        }
    }
}

