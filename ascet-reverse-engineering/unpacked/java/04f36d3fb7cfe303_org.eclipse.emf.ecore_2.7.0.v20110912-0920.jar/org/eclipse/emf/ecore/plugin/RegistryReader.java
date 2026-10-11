/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.WrappedException
 */
package org.eclipse.emf.ecore.plugin;

import java.lang.reflect.Field;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;

public abstract class RegistryReader {
    protected static final String TAG_DESCRIPTION = "description";
    protected IExtensionRegistry pluginRegistry;
    String pluginID;
    String extensionPointID;
    String qualifiedExtensionPointID;

    public RegistryReader(IExtensionRegistry pluginRegistry, String pluginID, String extensionPointID) {
        this.pluginRegistry = pluginRegistry;
        this.pluginID = pluginID;
        this.extensionPointID = extensionPointID;
        this.qualifiedExtensionPointID = String.valueOf(pluginID) + "." + extensionPointID;
    }

    protected boolean readElement(IConfigurationElement element) {
        return false;
    }

    protected boolean readElement(IConfigurationElement element, boolean add) {
        return add && this.readElement(element);
    }

    public void readRegistry() {
        IExtensionPoint point = this.pluginRegistry.getExtensionPoint(this.pluginID, this.extensionPointID);
        if (point != null) {
            IConfigurationElement[] elements = point.getConfigurationElements();
            int i = 0;
            while (i < elements.length) {
                this.internalReadElement(elements[i], true);
                ++i;
            }
        }
        this.pluginRegistry.addRegistryChangeListener(new IRegistryChangeListener(){

            public void registryChanged(IRegistryChangeEvent event) {
                IExtensionDelta[] deltas = event.getExtensionDeltas();
                int i = 0;
                while (i < deltas.length) {
                    IExtensionDelta delta = deltas[i];
                    if (delta.getExtensionPoint().getUniqueIdentifier().equals(RegistryReader.this.qualifiedExtensionPointID)) {
                        boolean add = delta.getKind() == 1;
                        IExtension extension = delta.getExtension();
                        IConfigurationElement[] configurationElement = extension.getConfigurationElements();
                        int j = 0;
                        while (j < configurationElement.length) {
                            RegistryReader.this.internalReadElement(configurationElement[j], add);
                            ++j;
                        }
                    }
                    ++i;
                }
            }
        });
    }

    private void internalReadElement(IConfigurationElement element, boolean add) {
        boolean recognized = this.readElement(element, add);
        if (recognized) {
            IConfigurationElement[] children = element.getChildren();
            int i = 0;
            while (i < children.length) {
                this.internalReadElement(children[i], add);
                ++i;
            }
        } else {
            this.logError(element, "Error processing extension: " + element);
        }
    }

    protected void logError(IConfigurationElement element, String text) {
        IExtension extension = element.getDeclaringExtension();
        System.err.println("Plugin " + extension.getContributor().getName() + ", extension " + extension.getExtensionPointUniqueIdentifier());
        System.err.println(text);
    }

    protected void logMissingAttribute(IConfigurationElement element, String attributeName) {
        this.logError(element, "The required attribute '" + attributeName + "' not defined");
    }

    static class EFactoryDescriptor
    extends PluginClassDescriptor
    implements EPackage.Descriptor {
        protected EPackage.Descriptor overridenDescriptor;

        public EFactoryDescriptor(IConfigurationElement element, String attributeName, EPackage.Descriptor overridenDescriptor) {
            super(element, attributeName);
            this.overridenDescriptor = overridenDescriptor;
        }

        public EPackage getEPackage() {
            return this.overridenDescriptor.getEPackage();
        }

        public EFactory getEFactory() {
            try {
                Class javaClass = Platform.getBundle((String)this.element.getDeclaringExtension().getContributor().getName()).loadClass(this.element.getAttribute(this.attributeName));
                return (EFactory)javaClass.newInstance();
            }
            catch (ClassNotFoundException e) {
                throw new WrappedException((Exception)e);
            }
            catch (IllegalAccessException e) {
                throw new WrappedException((Exception)e);
            }
            catch (InstantiationException e) {
                throw new WrappedException((Exception)e);
            }
        }

        public EPackage.Descriptor getOverridenDescriptor() {
            return this.overridenDescriptor;
        }
    }

    static class EPackageDescriptor
    extends PluginClassDescriptor
    implements EPackage.Descriptor {
        public EPackageDescriptor(IConfigurationElement element, String attributeName) {
            super(element, attributeName);
        }

        public EPackage getEPackage() {
            try {
                Class javaClass = Platform.getBundle((String)this.element.getDeclaringExtension().getContributor().getName()).loadClass(this.element.getAttribute(this.attributeName));
                Field field = javaClass.getField("eINSTANCE");
                Object result = field.get(null);
                return (EPackage)result;
            }
            catch (ClassNotFoundException e) {
                throw new WrappedException((Exception)e);
            }
            catch (IllegalAccessException e) {
                throw new WrappedException((Exception)e);
            }
            catch (NoSuchFieldException e) {
                throw new WrappedException((Exception)e);
            }
        }

        public EFactory getEFactory() {
            return null;
        }

        static class Dynamic
        extends EPackageDescriptor {
            protected static ResourceSet resourceSet = new ResourceSetImpl(){
                protected Set<URI> uris = new HashSet<URI>();

                protected Resource delegatedGetResource(URI uri, boolean loadOnDemand) {
                    try {
                        Resource resource = this.uris.add(uri) ? super.delegatedGetResource(uri, loadOnDemand) : null;
                        return resource;
                    }
                    finally {
                        this.uris.remove(uri);
                    }
                }
            };

            public Dynamic(IConfigurationElement element, String attributeName) {
                super(element, attributeName);
            }

            public EPackage getEPackage() {
                try {
                    String location = this.element.getAttribute(this.attributeName);
                    if (location != null) {
                        URI locationURI = URI.createURI((String)location);
                        if (locationURI.isRelative()) {
                            String fragment = locationURI.fragment();
                            locationURI = URI.createPlatformPluginURI((String)(String.valueOf(this.element.getDeclaringExtension().getContributor().getName()) + "/" + locationURI.trimFragment().toString()), (boolean)true);
                            if (fragment != null) {
                                locationURI = locationURI.appendFragment(fragment);
                            }
                        }
                        if (!locationURI.hasFragment()) {
                            locationURI = locationURI.appendFragment("/");
                        }
                        return (EPackage)resourceSet.getEObject(locationURI, true);
                    }
                    throw new RuntimeException("No location attribute was specified.");
                }
                catch (Exception e) {
                    throw new WrappedException(e);
                }
            }
        }
    }

    public static class PluginClassDescriptor {
        protected IConfigurationElement element;
        protected String attributeName;

        public PluginClassDescriptor(IConfigurationElement element, String attributeName) {
            this.element = element;
            this.attributeName = attributeName;
        }

        public Object createInstance() {
            try {
                return this.element.createExecutableExtension(this.attributeName);
            }
            catch (CoreException e) {
                throw new WrappedException((Exception)((Object)e));
            }
        }
    }

    static class ResourceFactoryDescriptor
    extends PluginClassDescriptor
    implements Resource.Factory.Descriptor {
        protected Resource.Factory factoryInstance;

        public ResourceFactoryDescriptor(IConfigurationElement e, String attrName) {
            super(e, attrName);
        }

        public Resource.Factory createFactory() {
            if (this.factoryInstance == null) {
                this.factoryInstance = (Resource.Factory)this.createInstance();
            }
            return this.factoryInstance;
        }
    }
}

