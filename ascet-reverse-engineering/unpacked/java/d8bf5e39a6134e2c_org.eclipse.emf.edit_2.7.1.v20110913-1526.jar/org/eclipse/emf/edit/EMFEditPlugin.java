/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.EMFPlugin$EclipsePlugin
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.plugin.RegistryReader
 *  org.eclipse.emf.ecore.plugin.RegistryReader$PluginClassDescriptor
 */
package org.eclipse.emf.edit;

import java.util.ArrayList;
import java.util.Collection;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.plugin.RegistryReader;
import org.eclipse.emf.edit.provider.ComposedAdapterFactory;
import org.eclipse.emf.edit.provider.IChildCreationExtender;

public final class EMFEditPlugin
extends EMFPlugin {
    public static final EMFEditPlugin INSTANCE = new EMFEditPlugin();
    private static Implementation plugin;
    private static ComposedAdapterFactory.Descriptor.Registry.Impl composedAdapterFactoryDescriptorRegistry;
    private static IChildCreationExtender.Descriptor.Registry.Impl childCreationExtenderDescriptorRegistry;

    private EMFEditPlugin() {
        super(new ResourceLocator[0]);
    }

    public ResourceLocator getPluginResourceLocator() {
        return plugin;
    }

    public static ComposedAdapterFactory.Descriptor.Registry getComposedAdapterFactoryDescriptorRegistry() {
        if (composedAdapterFactoryDescriptorRegistry == null) {
            composedAdapterFactoryDescriptorRegistry = new ComposedAdapterFactory.Descriptor.Registry.Impl(null){
                private static final long serialVersionUID = 1L;

                @Override
                public ComposedAdapterFactory.Descriptor delegatedGetDescriptor(Collection<?> types) {
                    ArrayList<String> stringTypes = new ArrayList<String>(types.size());
                    for (Object key : types) {
                        if (key instanceof EPackage) {
                            stringTypes.add(((EPackage)key).getNsURI());
                            continue;
                        }
                        if (key instanceof Package) {
                            stringTypes.add(((Package)key).getName());
                            continue;
                        }
                        if (key instanceof Class) {
                            stringTypes.add(((Class)key).getName());
                            continue;
                        }
                        return null;
                    }
                    ComposedAdapterFactory.Descriptor descriptor = (ComposedAdapterFactory.Descriptor)this.get(stringTypes);
                    if (descriptor != null) {
                        this.put(types, descriptor);
                        return descriptor;
                    }
                    return super.delegatedGetDescriptor(types);
                }
            };
            if (INSTANCE.getPluginResourceLocator() instanceof EMFPlugin.EclipsePlugin) {
                RegistryReader registryReader = new RegistryReader(Platform.getExtensionRegistry(), INSTANCE.getSymbolicName(), "itemProviderAdapterFactories"){

                    protected boolean readElement(IConfigurationElement element, boolean add) {
                        if (element.getName().equals("factory")) {
                            String packageURI = element.getAttribute("uri");
                            String className = element.getAttribute("class");
                            String supportedTypes = element.getAttribute("supportedTypes");
                            if (packageURI == null) {
                                this.logMissingAttribute(element, "uri");
                            } else if (className == null) {
                                this.logMissingAttribute(element, "class");
                            } else if (supportedTypes == null) {
                                this.logMissingAttribute(element, "supportedTypes");
                            }
                            StringTokenizer stringTokenizer = new StringTokenizer(supportedTypes);
                            while (stringTokenizer.hasMoreTokens()) {
                                String supportedType = stringTokenizer.nextToken();
                                ArrayList<String> key = new ArrayList<String>();
                                key.add(packageURI);
                                key.add(supportedType);
                                if (add) {
                                    class PluginAdapterFactoryDescriptor
                                    extends RegistryReader.PluginClassDescriptor
                                    implements ComposedAdapterFactory.Descriptor {
                                        public PluginAdapterFactoryDescriptor(IConfigurationElement element, String attributeName) {
                                            super(element, attributeName);
                                        }

                                        public AdapterFactory createAdapterFactory() {
                                            return (AdapterFactory)this.createInstance();
                                        }
                                    }
                                    composedAdapterFactoryDescriptorRegistry.put(key, new PluginAdapterFactoryDescriptor(element, "class"));
                                    continue;
                                }
                                composedAdapterFactoryDescriptorRegistry.remove(key);
                            }
                            return true;
                        }
                        return false;
                    }
                };
                registryReader.readRegistry();
            }
        }
        return composedAdapterFactoryDescriptorRegistry;
    }

    public static IChildCreationExtender.Descriptor.Registry getChildCreationExtenderDescriptorRegistry() {
        if (childCreationExtenderDescriptorRegistry == null) {
            childCreationExtenderDescriptorRegistry = new IChildCreationExtender.Descriptor.Registry.Impl(null){
                private static final long serialVersionUID = 1L;

                @Override
                public Collection<IChildCreationExtender.Descriptor> delegatedGetDescriptors(String namespace) {
                    Collection<IChildCreationExtender.Descriptor> descriptors = (Collection<IChildCreationExtender.Descriptor>)this.get(namespace);
                    return descriptors != null ? descriptors : super.delegatedGetDescriptors(namespace);
                }
            };
            if (INSTANCE.getPluginResourceLocator() instanceof EMFPlugin.EclipsePlugin) {
                RegistryReader registryReader = new RegistryReader(Platform.getExtensionRegistry(), INSTANCE.getSymbolicName(), "childCreationExtenders"){

                    protected boolean readElement(IConfigurationElement element, boolean add) {
                        if (element.getName().equals("extender")) {
                            String packageURI = element.getAttribute("uri");
                            String className = element.getAttribute("class");
                            if (packageURI == null) {
                                this.logMissingAttribute(element, "uri");
                            } else if (className == null) {
                                this.logMissingAttribute(element, "class");
                            }
                            class PluginChildCreationExtenderDescriptor
                            extends RegistryReader.PluginClassDescriptor
                            implements IChildCreationExtender.Descriptor {
                                protected String contributor;

                                public PluginChildCreationExtenderDescriptor(IConfigurationElement element, String attributeName) {
                                    super(element, attributeName);
                                    this.contributor = element.getContributor().getName();
                                }

                                public IChildCreationExtender createChildCreationExtender() {
                                    return (IChildCreationExtender)this.createInstance();
                                }

                                public boolean matches(IConfigurationElement element) {
                                    return element.getContributor().getName().equals(this.contributor);
                                }
                            }
                            ArrayList<PluginChildCreationExtenderDescriptor> collection = (ArrayList<PluginChildCreationExtenderDescriptor>)childCreationExtenderDescriptorRegistry.get(packageURI);
                            if (add) {
                                if (collection == null) {
                                    collection = new ArrayList<PluginChildCreationExtenderDescriptor>();
                                    childCreationExtenderDescriptorRegistry.put(packageURI, collection);
                                }
                                collection.add(new PluginChildCreationExtenderDescriptor(element, "class"));
                            } else if (collection != null) {
                                for (IChildCreationExtender.Descriptor descriptor : collection) {
                                    if (!(descriptor instanceof PluginChildCreationExtenderDescriptor) || !((PluginChildCreationExtenderDescriptor)descriptor).matches(element)) continue;
                                    collection.remove(descriptor);
                                    break;
                                }
                            }
                            return true;
                        }
                        return false;
                    }
                };
                registryReader.readRegistry();
            }
        }
        return childCreationExtenderDescriptorRegistry;
    }

    public static Implementation getPlugin() {
        return plugin;
    }

    public static class Implementation
    extends EMFPlugin.EclipsePlugin {
        public Implementation() {
            plugin = this;
        }
    }
}

