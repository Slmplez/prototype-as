/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.content.ContentType
 *  org.eclipse.core.internal.content.ContentTypeHandler
 *  org.eclipse.core.internal.content.ContentTypeManager
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.content.IContentDescriber
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.resource.ContentHandler
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.xmi.impl.RootXMLContentHandlerImpl$Describer
 *  org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain
 *  org.eclipse.emf.edit.provider.IWrapperItemProvider
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 *  org.eclipse.sphinx.platform.util.ReflectUtil
 */
package org.eclipse.sphinx.emf.metamodel;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.eclipse.core.internal.content.ContentType;
import org.eclipse.core.internal.content.ContentTypeHandler;
import org.eclipse.core.internal.content.ContentTypeManager;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.content.IContentDescriber;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.resource.ContentHandler;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.xmi.impl.RootXMLContentHandlerImpl;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.provider.IWrapperItemProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.edit.TransientItemProvider;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.internal.metamodel.IFileMetaModelDescriptorCache;
import org.eclipse.sphinx.emf.metamodel.AbstractMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.ITargetMetaModelDescriptorProvider;
import org.eclipse.sphinx.emf.scoping.ResourceScopeProviderRegistry;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;
import org.eclipse.sphinx.emf.util.EcoreResourceUtil;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.sphinx.platform.util.ReflectUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MetaModelDescriptorRegistry
implements IAdaptable {
    public static final MetaModelDescriptorRegistry INSTANCE = new MetaModelDescriptorRegistry();
    public static final IMetaModelDescriptor ANY_MM = new AnyMetaModelDescriptor();
    public static final IMetaModelDescriptor NO_MM = new NoMetaModelDescriptor();
    private static final String EXTP_META_MODEL_DESCRIPTORS = "org.eclipse.sphinx.emf.metaModelDescriptors";
    private static final String NODE_DESCRIPTOR = "descriptor";
    private static final String NODE_TARGET_DESCRIPTOR = "targetDescriptorProvider";
    private static final String NODE_CONTENT_TYPE = "contentType";
    private static final String NODE_FILE_TYPE = "fileType";
    private static final String ATTR_ID = "id";
    private static final String ATTR_EXTENSION = "extension";
    private static final String ATTR_CLASS = "class";
    private static final String ATTR_OVERRIDE = "override";
    private static final Pattern OMG_XMI_NAMESPACE_PATTERN = Pattern.compile("http://(schema|www)\\.omg\\.org(/spec)?/XMI.*");
    private IExtensionRegistry fExtensionRegistry;
    private boolean isInitialized = false;
    private final Map<String, IMetaModelDescriptor> fMetaModelDescriptors = Collections.synchronizedMap(new LinkedHashMap());
    private final Map<String, ITargetMetaModelDescriptorProvider> fContentTypeIdToTargetMetaModelDescriptorProviders = new HashMap<String, ITargetMetaModelDescriptorProvider>();
    private final Map<String, ITargetMetaModelDescriptorProvider> fFileExtensionToTargetMetaModelDescriptorProviders = new HashMap<String, ITargetMetaModelDescriptorProvider>();
    private final Map<String, ITargetMetaModelDescriptorProvider> fAllTargetMetaModelDescriptorProviders = new HashMap<String, ITargetMetaModelDescriptorProvider>();
    private final FileMetaModelDescriptorCache fFileMetaModelDescriptorCache = new FileMetaModelDescriptorCache();
    private final Map<String, String> fContentTypeIdCache = new HashMap<String, String>();
    private final Map<EPackage, IMetaModelDescriptor> fPackageMetaModelDescriptorCache = new HashMap<EPackage, IMetaModelDescriptor>();

    private MetaModelDescriptorRegistry() {
    }

    private IExtensionRegistry getExtensionRegistry() {
        if (this.fExtensionRegistry == null) {
            this.fExtensionRegistry = Platform.getExtensionRegistry();
        }
        return this.fExtensionRegistry;
    }

    public void setExtensionRegistry(IExtensionRegistry extensionRegistry) {
        this.fExtensionRegistry = extensionRegistry;
        this.isInitialized = true;
        this.getMetaModelDescriptors().clear();
        this.getContentTypeIdToTargetMetaModelDescriptorProviders().clear();
        this.getFileExtensionToTargetMetaModelDescriptorProviders().clear();
        this.getAllTargetMetaModelDescriptorProviders().clear();
        this.isInitialized = false;
    }

    private void readContributedDescriptors() {
        IExtensionRegistry extensionRegistry = this.getExtensionRegistry();
        if (extensionRegistry != null) {
            IExtension[] extensions;
            IExtension[] iExtensionArray = extensions = extensionRegistry.getExtensionPoint(EXTP_META_MODEL_DESCRIPTORS).getExtensions();
            int n = extensions.length;
            int n2 = 0;
            while (n2 < n) {
                IConfigurationElement[] configElements;
                IExtension extension = iExtensionArray[n2];
                IConfigurationElement[] iConfigurationElementArray = configElements = extension.getConfigurationElements();
                int n3 = configElements.length;
                int n4 = 0;
                while (n4 < n3) {
                    block10: {
                        IConfigurationElement configElement = iConfigurationElementArray[n4];
                        try {
                            if (!NODE_DESCRIPTOR.equals(configElement.getName())) break block10;
                            String id = configElement.getAttribute(ATTR_ID);
                            IMetaModelDescriptor mmDescriptor = null;
                            try {
                                String className = configElement.getAttribute(ATTR_CLASS);
                                Class clazz = Platform.getBundle((String)configElement.getContributor().getName()).loadClass(className);
                                mmDescriptor = (IMetaModelDescriptor)ReflectUtil.getFieldValue((Object)clazz, (String)"INSTANCE");
                            }
                            catch (ClassNotFoundException e) {
                                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)e);
                            }
                            catch (IllegalAccessException e) {
                                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)e);
                            }
                            catch (NoSuchFieldException noSuchFieldEx) {
                                PlatformLogUtil.logAsInfo((Plugin)Activator.getPlugin(), (Object)noSuchFieldEx);
                                mmDescriptor = (IMetaModelDescriptor)configElement.createExecutableExtension(ATTR_CLASS);
                            }
                            if (!id.equals(mmDescriptor.getIdentifier())) {
                                throw new RuntimeException(NLS.bind((String)Messages.error_mmDescriptorIdentifierNotEqual, (Object)id, (Object)mmDescriptor.getIdentifier()));
                            }
                            this.addDescriptor(mmDescriptor);
                        }
                        catch (Exception ex) {
                            PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)ex);
                        }
                    }
                    ++n4;
                }
                ++n2;
            }
        }
    }

    protected IMetaModelDescriptor createDescriptor(EPackage ePackage) {
        Assert.isNotNull((Object)ePackage);
        String ePackageClassName = ePackage.getClass().getName();
        String id = ePackageClassName.substring(0, ePackageClassName.lastIndexOf("."));
        if (id.endsWith(".impl") || id.endsWith(".util")) {
            id = id.substring(0, id.lastIndexOf("."));
        }
        return new DefaultMetaModelDescriptor(id, ePackage.getNsURI(), ePackage.getName());
    }

    public void addDescriptor(IMetaModelDescriptor mmDescriptor) {
        if (mmDescriptor != null && !mmDescriptor.equals(ANY_MM) && !mmDescriptor.equals(NO_MM)) {
            String id = mmDescriptor.getIdentifier();
            if (id == null) {
                PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException(NLS.bind((String)Messages.warning_mmDescriptorHasNoIdentifier, (Object)mmDescriptor.getName())));
            }
            if (this.getMetaModelDescriptors().containsKey(id)) {
                PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException(NLS.bind((String)Messages.warning_mmDescriptorIdentifierNotUnique, (Object)id)));
            }
            this.getMetaModelDescriptors().put(id, mmDescriptor);
        }
    }

    private void readContributedTargetMetaModelDescriptorProviders() {
        IExtensionRegistry extensionRegistry = this.getExtensionRegistry();
        if (extensionRegistry != null) {
            IConfigurationElement[] configElements;
            IExtension extension;
            IExtension[] extensions;
            HashSet<String> overriddenIds = new HashSet<String>();
            IExtension[] iExtensionArray = extensions = extensionRegistry.getExtensionPoint(EXTP_META_MODEL_DESCRIPTORS).getExtensions();
            int n = extensions.length;
            int n2 = 0;
            while (n2 < n) {
                extension = iExtensionArray[n2];
                configElements = extension.getConfigurationElements();
                overriddenIds.addAll(this.getOverriddenTargetMetaModelDescriptorProviderIds(configElements));
                ++n2;
            }
            iExtensionArray = extensions;
            n = extensions.length;
            n2 = 0;
            while (n2 < n) {
                extension = iExtensionArray[n2];
                configElements = extension.getConfigurationElements();
                this.readContributedTargetMetaModelDescriptorProviders(configElements, overriddenIds);
                ++n2;
            }
        }
    }

    private void readContributedTargetMetaModelDescriptorProviders(IConfigurationElement[] configElements, Set<String> overriddenIds) {
        Assert.isNotNull((Object)configElements);
        Assert.isNotNull(overriddenIds);
        IConfigurationElement[] iConfigurationElementArray = configElements;
        int n = configElements.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement configElement = iConfigurationElementArray[n2];
            try {
                ITargetMetaModelDescriptorProvider provider;
                String id;
                if (NODE_TARGET_DESCRIPTOR.equals(configElement.getName()) && !overriddenIds.contains(id = configElement.getAttribute(ATTR_ID)) && this.addTargetDescriptorProvider(id, provider = (ITargetMetaModelDescriptorProvider)configElement.createExecutableExtension(ATTR_CLASS))) {
                    IConfigurationElement[] iConfigurationElementArray2 = configElement.getChildren();
                    int n3 = iConfigurationElementArray2.length;
                    int n4 = 0;
                    while (n4 < n3) {
                        IConfigurationElement childConfigElement = iConfigurationElementArray2[n4];
                        if (NODE_CONTENT_TYPE.equals(childConfigElement.getName())) {
                            String contenTypeId = childConfigElement.getAttribute(ATTR_ID);
                            this.addTargetDescriptorProviderForContentTypeId(contenTypeId, provider);
                        } else if (NODE_FILE_TYPE.equals(childConfigElement.getName())) {
                            String fileExtension = childConfigElement.getAttribute(ATTR_EXTENSION);
                            this.addTargetDescriptorProviderForFileExtension(fileExtension, provider);
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

    private Set<String> getOverriddenTargetMetaModelDescriptorProviderIds(IConfigurationElement[] configElements) {
        Assert.isNotNull((Object)configElements);
        HashSet<String> overriddenIds = new HashSet<String>();
        IConfigurationElement[] iConfigurationElementArray = configElements;
        int n = configElements.length;
        int n2 = 0;
        while (n2 < n) {
            String overriddenTargetMetaModelDescriptorId;
            IConfigurationElement configElement = iConfigurationElementArray[n2];
            if (NODE_TARGET_DESCRIPTOR.equals(configElement.getName()) && (overriddenTargetMetaModelDescriptorId = configElement.getAttribute(ATTR_OVERRIDE)) != null) {
                if (!overriddenIds.contains(overriddenTargetMetaModelDescriptorId)) {
                    overriddenIds.add(overriddenTargetMetaModelDescriptorId);
                } else {
                    PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException(NLS.bind((String)Messages.warning_multipleTargetMetaModelDescriptorProvidersOverride, (Object)overriddenTargetMetaModelDescriptorId)));
                }
            }
            ++n2;
        }
        return overriddenIds;
    }

    private boolean addTargetDescriptorProvider(String id, ITargetMetaModelDescriptorProvider targetMetaModelDescriptorProvider) {
        Assert.isNotNull((Object)targetMetaModelDescriptorProvider);
        if (id == null) {
            PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException(Messages.warning_targetMetaModelDescriptorProviderWithoutId));
            return false;
        }
        if (this.getAllTargetMetaModelDescriptorProviders().containsKey(id)) {
            PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException(NLS.bind((String)Messages.warning_targetMetaModelDescriptorProviderIdNotUnique, (Object)id)));
            return false;
        }
        this.getAllTargetMetaModelDescriptorProviders().put(id, targetMetaModelDescriptorProvider);
        return true;
    }

    private void addTargetDescriptorProviderForFileExtension(String fileExtension, ITargetMetaModelDescriptorProvider targetMetaModelDescriptorProvider) {
        Assert.isNotNull((Object)targetMetaModelDescriptorProvider);
        Assert.isLegal((boolean)this.getAllTargetMetaModelDescriptorProviders().containsValue(targetMetaModelDescriptorProvider));
        if (fileExtension == null) {
            PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException(NLS.bind((String)Messages.warning_fileExtensionForTargetMetaModelDescriptorProviderMustNotBeNull, (Object)fileExtension)));
        }
        if (this.getFileExtensionToTargetMetaModelDescriptorProviders().containsKey(fileExtension)) {
            PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException(NLS.bind((String)Messages.warning_fileExtensionForTargetMetaModelDescriptorProviderNotUnique, (Object)fileExtension)));
        }
        this.getFileExtensionToTargetMetaModelDescriptorProviders().put(fileExtension, targetMetaModelDescriptorProvider);
    }

    private void addTargetDescriptorProviderForContentTypeId(String contentTypeId, ITargetMetaModelDescriptorProvider targetMetaModelDescriptorProvider) {
        Assert.isNotNull((Object)targetMetaModelDescriptorProvider);
        Assert.isLegal((boolean)this.getAllTargetMetaModelDescriptorProviders().containsValue(targetMetaModelDescriptorProvider));
        if (contentTypeId == null) {
            PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException(NLS.bind((String)Messages.warning_contentTypeIdForTargetMetaModelDescriptorProviderMustNotBeNull, (Object)contentTypeId)));
        }
        if (this.getContentTypeIdToTargetMetaModelDescriptorProviders().containsKey(contentTypeId)) {
            PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)new RuntimeException(NLS.bind((String)Messages.warning_contentTypeIdForTargetMetaModelDescriptorProviderNotUnique, (Object)contentTypeId)));
        }
        this.getContentTypeIdToTargetMetaModelDescriptorProviders().put(contentTypeId, targetMetaModelDescriptorProvider);
    }

    public Object getAdapter(Class adapterType) {
        if (adapterType.equals(IFileMetaModelDescriptorCache.class)) {
            return this.fFileMetaModelDescriptorCache;
        }
        return null;
    }

    public List<IMetaModelDescriptor> getResolvedDescriptors(IMetaModelDescriptor mmDescriptor) {
        ArrayList<IMetaModelDescriptor> resolvedDescriptors = new ArrayList<IMetaModelDescriptor>();
        for (IMetaModelDescriptor descriptor : this.getDescriptors(mmDescriptor)) {
            if (descriptor.getRootEPackage() == null) continue;
            resolvedDescriptors.add(descriptor);
        }
        return resolvedDescriptors;
    }

    public IMetaModelDescriptor getDescriptor(Object object) {
        if (object instanceof String) {
            return this.getDescriptor((String)object);
        }
        if (object instanceof URI) {
            return this.getDescriptor((URI)object);
        }
        if (object instanceof IFile) {
            return this.getDescriptor((IFile)object);
        }
        if (object instanceof Resource) {
            return this.getDescriptor((Resource)object);
        }
        if (object instanceof EObject) {
            return this.getDescriptor((EObject)object);
        }
        if (object instanceof IWrapperItemProvider) {
            return this.getDescriptor((IWrapperItemProvider)object);
        }
        if (object instanceof FeatureMap.Entry) {
            return this.getDescriptor((FeatureMap.Entry)object);
        }
        if (object instanceof TransientItemProvider) {
            return this.getDescriptor((TransientItemProvider)((Object)object));
        }
        if (object instanceof EClass) {
            return this.getDescriptor((EClass)object);
        }
        if (object instanceof EPackage) {
            return this.getDescriptor((EPackage)object);
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public <T extends IMetaModelDescriptor> List<T> getDescriptors(T mmDescriptor, boolean sorted) {
        ArrayList<IMetaModelDescriptor> descriptors = new ArrayList<IMetaModelDescriptor>();
        if (mmDescriptor != null) {
            Map<String, IMetaModelDescriptor> map = this.getMetaModelDescriptors();
            synchronized (map) {
                for (IMetaModelDescriptor descriptor : this.getMetaModelDescriptors().values()) {
                    if (mmDescriptor != ANY_MM && !mmDescriptor.getClass().isInstance(descriptor)) continue;
                    IMetaModelDescriptor desc = descriptor;
                    descriptors.add(desc);
                }
            }
        }
        if (sorted) {
            Collections.sort(descriptors, new Comparator<T>(){

                @Override
                public int compare(IMetaModelDescriptor mmd1, IMetaModelDescriptor mmd2) {
                    String label1 = String.format("%1s (%2s)", mmd1.getName(), mmd1.getNamespace());
                    String label2 = String.format("%1s (%2s)", mmd2.getName(), mmd2.getNamespace());
                    return label1.compareTo(label2);
                }
            });
        }
        return descriptors;
    }

    public <T extends IMetaModelDescriptor> List<T> getDescriptors(T mmDescriptor) {
        return this.getDescriptors(mmDescriptor, false);
    }

    public IMetaModelDescriptor getDescriptor(String identifier) {
        if (ANY_MM.getIdentifier().equals(identifier)) {
            return ANY_MM;
        }
        return this.getMetaModelDescriptors().get(identifier);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public List<IMetaModelDescriptor> getDescriptors(String idPattern) {
        if (ANY_MM.getIdentifier().equals(idPattern)) {
            return Collections.singletonList(ANY_MM);
        }
        ArrayList<IMetaModelDescriptor> mmDescriptors = new ArrayList<IMetaModelDescriptor>();
        if (idPattern != null) {
            Pattern pattern = Pattern.compile(idPattern);
            Map<String, IMetaModelDescriptor> map = this.getMetaModelDescriptors();
            synchronized (map) {
                for (Map.Entry<String, IMetaModelDescriptor> entry : this.getMetaModelDescriptors().entrySet()) {
                    if (!pattern.matcher(entry.getKey()).matches()) continue;
                    mmDescriptors.add(entry.getValue());
                }
            }
        }
        return mmDescriptors;
    }

    @Deprecated
    public <T extends IMetaModelDescriptor> T getDescriptor(T mmDescriptor, final int ordinal) {
        return this.getDescriptor(mmDescriptor, new IDescriptorFilter(){

            public boolean accept(IMetaModelDescriptor descriptor) {
                return descriptor.getOrdinal() == ordinal;
            }
        });
    }

    public <T extends IMetaModelDescriptor> T getDescriptor(T mmDescriptor, final String name) {
        return this.getDescriptor(mmDescriptor, new IDescriptorFilter(){

            public boolean accept(IMetaModelDescriptor descriptor) {
                return descriptor.getName().equals(name);
            }
        });
    }

    public IMetaModelDescriptor getDescriptor(Resource resource) {
        String namespace;
        IMetaModelDescriptor mmDescriptor;
        EObject modelRoot = EcoreResourceUtil.getModelRoot(resource);
        if (modelRoot != null && (mmDescriptor = this.getDescriptor(modelRoot)) != null) {
            return mmDescriptor;
        }
        IFile file = EcorePlatformUtil.getFile(resource);
        if (file != null) {
            return this.getDescriptor(file);
        }
        if (resource != null && (namespace = EcoreResourceUtil.readModelNamespace(resource)) != null) {
            try {
                return this.getDescriptor(new URI(namespace));
            }
            catch (URISyntaxException uRISyntaxException) {}
        }
        return null;
    }

    public IMetaModelDescriptor getDescriptor(IFile file) {
        if (file != null) {
            if (this.fFileMetaModelDescriptorCache.hasDescriptor(file)) {
                return this.fFileMetaModelDescriptorCache.getDescriptor(file);
            }
            try {
                IMetaModelDescriptor mmDescriptor = null;
                final String contentTypeId = this.fastGetContentTypeId(file);
                if (contentTypeId != null) {
                    mmDescriptor = this.getDescriptor(ANY_MM, new IDescriptorFilter(){

                        public boolean accept(IMetaModelDescriptor descriptor) {
                            if (descriptor.getContentTypeIds().contains(contentTypeId)) {
                                return true;
                            }
                            return descriptor.getCompatibleContentTypeIds().contains(contentTypeId);
                        }
                    });
                }
                if (file.isAccessible()) {
                    this.fFileMetaModelDescriptorCache.addDescriptor(file, mmDescriptor);
                }
                return mmDescriptor;
            }
            catch (Exception exception) {}
        }
        return null;
    }

    private String fastGetContentTypeId(IFile file) throws CoreException {
        block7: {
            if (ExtendedPlatform.hasCachedContentTypeId((IFile)file)) {
                return ExtendedPlatform.getContentTypeId((IFile)file);
            }
            try {
                if (ResourceScopeProviderRegistry.INSTANCE.isNotInAnyScope(file)) break block7;
                String namespace = EcorePlatformUtil.readModelNamespace(file);
                IMetaModelDescriptor mmDescriptor = null;
                if (namespace != null) {
                    mmDescriptor = this.getDescriptor(new URI(namespace));
                }
                if (mmDescriptor != null) {
                    String contentTypeId = this.getContentTypeIdFromDescriber(namespace, file.getFileExtension());
                    if (contentTypeId != null) {
                        ExtendedPlatform.setCachedContentTypeId((IFile)file, (String)contentTypeId);
                        return contentTypeId;
                    }
                    break block7;
                }
                if (namespace == null || OMG_XMI_NAMESPACE_PATTERN.matcher(namespace).matches()) break block7;
                ExtendedPlatform.setCachedContentTypeId((IFile)file, (String)"org.eclipse.sphinx.platform.nonModelXMLFile");
                return "org.eclipse.sphinx.platform.nonModelXMLFile";
            }
            catch (Exception exception) {
                return null;
            }
        }
        return ExtendedPlatform.getContentTypeId((IFile)file);
    }

    private String getContentTypeIdFromDescriber(String namespace, String extension) {
        String key = String.valueOf(namespace) + "@" + extension;
        if (this.fContentTypeIdCache.containsKey(key)) {
            return this.fContentTypeIdCache.get(key);
        }
        ArrayList<String> contentTypeIdCandidates = new ArrayList<String>(2);
        IContentType[] iContentTypeArray = ContentTypeManager.getInstance().getAllContentTypes();
        int n = iContentTypeArray.length;
        int n2 = 0;
        while (n2 < n) {
            IContentType contentType = iContentTypeArray[n2];
            try {
                if (Arrays.asList(contentType.getFileSpecs(8)).contains(extension)) {
                    ContentHandler contentHandler;
                    Boolean matching;
                    IContentDescriber describer = null;
                    if (contentType instanceof ContentType) {
                        describer = ((ContentType)contentType).getDescriber();
                    } else if (contentType instanceof ContentTypeHandler) {
                        describer = ((ContentTypeHandler)contentType).getTarget().getDescriber();
                    }
                    if (describer instanceof RootXMLContentHandlerImpl.Describer && (matching = (Boolean)ReflectUtil.invokeInvisibleMethod((Object)(contentHandler = (ContentHandler)ReflectUtil.getInvisibleFieldValue((Object)describer, (String)"contentHandler")), (String)"isMatchingNamespace", (Object[])new Object[]{namespace})).booleanValue()) {
                        contentTypeIdCandidates.add(contentType.getId());
                        String contentHandlerNamespace = (String)ReflectUtil.getInvisibleFieldValue((Object)contentHandler, (String)"namespace");
                        if (contentHandlerNamespace == null && namespace == null || contentHandlerNamespace != null && namespace != null && contentHandlerNamespace.length() == namespace.length()) {
                            break;
                        }
                    }
                }
            }
            catch (Exception ex) {
                PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)ex);
            }
            ++n2;
        }
        String contentTypeId = null;
        if (contentTypeIdCandidates.size() > 1) {
            Collections.sort(contentTypeIdCandidates);
            contentTypeId = (String)contentTypeIdCandidates.get(contentTypeIdCandidates.size() - 1);
        } else if (contentTypeIdCandidates.size() == 1) {
            contentTypeId = (String)contentTypeIdCandidates.get(0);
        }
        this.fContentTypeIdCache.put(key, contentTypeId);
        return contentTypeId;
    }

    public IMetaModelDescriptor getOldDescriptor(Resource resource) {
        IFile file = EcorePlatformUtil.getFile(resource);
        return this.getOldDescriptor(file);
    }

    public IMetaModelDescriptor getOldDescriptor(IFile file) {
        return this.fFileMetaModelDescriptorCache.getOldDescriptor(file);
    }

    public IMetaModelDescriptor getDescriptor(EObject eObject) {
        if (eObject != null) {
            IMetaModelDescriptor oldDescriptor;
            IMetaModelDescriptor descriptor = this.getDescriptor(eObject.eClass());
            if (descriptor != (oldDescriptor = this.getOldDescriptor(eObject.eResource()))) {
                return descriptor;
            }
            IFile file = EcorePlatformUtil.getFile(eObject.eResource());
            return this.getDescriptor(file);
        }
        return null;
    }

    public IMetaModelDescriptor getDescriptor(EClass eClass) {
        if (eClass != null) {
            return this.getDescriptor(eClass.getEPackage());
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IMetaModelDescriptor getDescriptor(EPackage ePackage) {
        if (ePackage != null) {
            Map<EPackage, IMetaModelDescriptor> map = this.fPackageMetaModelDescriptorCache;
            synchronized (map) {
                IMetaModelDescriptor mmDescriptor = this.fPackageMetaModelDescriptorCache.get(ePackage);
                if (mmDescriptor == null) {
                    try {
                        mmDescriptor = this.getDescriptor(new URI(ePackage.getNsURI()));
                        if (mmDescriptor != null) {
                            this.fPackageMetaModelDescriptorCache.put(ePackage, mmDescriptor);
                        } else {
                            this.fPackageMetaModelDescriptorCache.put(ePackage, NO_MM);
                        }
                    }
                    catch (URISyntaxException ex) {
                        PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                    }
                }
                return mmDescriptor != NO_MM ? mmDescriptor : null;
            }
        }
        return null;
    }

    public IMetaModelDescriptor getDescriptor(IWrapperItemProvider wrapperItemProvider) {
        if (wrapperItemProvider != null) {
            Object unwrapped = AdapterFactoryEditingDomain.unwrap((Object)wrapperItemProvider);
            IMetaModelDescriptor mmDescriptor = this.getDescriptor(unwrapped);
            if (mmDescriptor != null) {
                return mmDescriptor;
            }
            return this.getDescriptor(wrapperItemProvider.getOwner());
        }
        return null;
    }

    public IMetaModelDescriptor getDescriptor(FeatureMap.Entry entry) {
        Object unwrapped = AdapterFactoryEditingDomain.unwrap((Object)entry);
        return this.getDescriptor(unwrapped);
    }

    public IMetaModelDescriptor getDescriptor(TransientItemProvider transientItemProvider) {
        if (transientItemProvider != null) {
            Notifier target = transientItemProvider.getTarget();
            return this.getDescriptor(target);
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IMetaModelDescriptor getDescriptor(URI namespaceURI) {
        if (namespaceURI != null) {
            Map<String, IMetaModelDescriptor> map = this.getMetaModelDescriptors();
            synchronized (map) {
                EPackage ePackage;
                final String namespaceURIString = namespaceURI.toString();
                IMetaModelDescriptor mmDescriptor = this.getDescriptor(ANY_MM, new IDescriptorFilter(){

                    public boolean accept(IMetaModelDescriptor mmDescriptor) {
                        if (namespaceURIString.equals(mmDescriptor.getNamespace())) {
                            return true;
                        }
                        if (mmDescriptor.matchesEPackageNsURIPattern(namespaceURIString)) {
                            return true;
                        }
                        for (URI compatibleNamepaceURI : mmDescriptor.getCompatibleNamespaceURIs()) {
                            if (!namespaceURIString.equals(compatibleNamepaceURI.toString())) continue;
                            return true;
                        }
                        for (IMetaModelDescriptor compatibleResourceVersionDescriptor : mmDescriptor.getCompatibleResourceVersionDescriptors()) {
                            if (namespaceURIString.equals(compatibleResourceVersionDescriptor.getNamespace())) {
                                return true;
                            }
                            if (!compatibleResourceVersionDescriptor.matchesEPackageNsURIPattern(namespaceURIString)) continue;
                            return true;
                        }
                        return false;
                    }
                });
                if (mmDescriptor == null && (ePackage = EPackage.Registry.INSTANCE.getEPackage(namespaceURIString)) != null) {
                    mmDescriptor = this.createDescriptor(ePackage);
                    this.addDescriptor(mmDescriptor);
                }
                return mmDescriptor;
            }
        }
        return null;
    }

    @Deprecated
    public IMetaModelDescriptor getDescriptor(final Class<?> clazz) {
        if (clazz != null) {
            IMetaModelDescriptor descriptor = this.getDescriptor(ANY_MM, new IDescriptorFilter(){

                public boolean accept(IMetaModelDescriptor descriptor) {
                    for (EPackage ePackage : descriptor.getEPackages()) {
                        if (!clazz.getName().startsWith(ePackage.getClass().getName())) continue;
                        return true;
                    }
                    return false;
                }
            });
            return descriptor;
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private <T extends IMetaModelDescriptor> T getDescriptor(T mmDescriptor, IDescriptorFilter filter) {
        List<T> descriptors = this.getDescriptors(mmDescriptor);
        int i = descriptors.size() - 1;
        while (i >= 0) {
            T descriptor = descriptors.get(i);
            if (filter.accept(descriptor)) {
                if (i < descriptors.size() - 1) {
                    Map<String, IMetaModelDescriptor> map = this.getMetaModelDescriptors();
                    synchronized (map) {
                        this.getMetaModelDescriptors().remove(descriptor.getIdentifier());
                        this.getMetaModelDescriptors().put(descriptor.getIdentifier(), descriptor);
                    }
                }
                return descriptor;
            }
            --i;
        }
        return null;
    }

    public IMetaModelDescriptor getTargetDescriptor(IFile file) {
        ITargetMetaModelDescriptorProvider provider = this.getTargetMetaModelDescriptorProvider(file);
        if (provider != null) {
            return provider.getDescriptor(file);
        }
        return null;
    }

    public IMetaModelDescriptor getTargetDescriptor(Resource resource) {
        ITargetMetaModelDescriptorProvider provider = this.getTargetMetaModelDescriptorProvider(resource);
        if (provider != null) {
            return provider.getDescriptor(resource);
        }
        return null;
    }

    @Deprecated
    public Collection<String> getFileExtensionsAssociatedWithTargetDescriptors() {
        HashSet<String> extensions = new HashSet<String>(2);
        extensions.addAll(this.getFileExtensionToTargetMetaModelDescriptorProviders().keySet());
        for (String contentTypeId : this.getContentTypeIdToTargetMetaModelDescriptorProviders().keySet()) {
            extensions.addAll(ExtendedPlatform.getContentTypeFileExtensions((String)contentTypeId));
        }
        return Collections.unmodifiableCollection(extensions);
    }

    public boolean isContentTypeOfTargetDescriptorsApplicable(IFile file) {
        if (file == null) {
            return false;
        }
        String extension = file.getFileExtension();
        if (extension == null) {
            return false;
        }
        if (this.getFileExtensionToTargetMetaModelDescriptorProviders().keySet().contains(extension)) {
            return true;
        }
        for (String contentTypeId : this.getContentTypeIdToTargetMetaModelDescriptorProviders().keySet()) {
            if (!ExtendedPlatform.isContentTypeApplicable((String)contentTypeId, (IFile)file)) continue;
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private ITargetMetaModelDescriptorProvider getTargetMetaModelDescriptorProvider(IFile file) {
        block3: {
            try {
                ITargetMetaModelDescriptorProvider provider = null;
                if (file == null) return provider;
                String fileExtension = file.getFileExtension();
                provider = this.getFileExtensionToTargetMetaModelDescriptorProviders().get(fileExtension);
                if (provider != null) return provider;
                if (file.isSynchronized(1)) break block3;
                return null;
            }
            catch (CoreException coreException) {
                return null;
            }
        }
        String contentTypeId = this.fastGetContentTypeId(file);
        return this.getContentTypeIdToTargetMetaModelDescriptorProviders().get(contentTypeId);
    }

    private ITargetMetaModelDescriptorProvider getTargetMetaModelDescriptorProvider(Resource resource) {
        IFile file = EcorePlatformUtil.getFile(resource);
        return this.getTargetMetaModelDescriptorProvider(file);
    }

    public IMetaModelDescriptor getEffectiveDescriptor(IFile file) {
        IMetaModelDescriptor descriptor = this.getTargetDescriptor(file);
        if (descriptor == null) {
            descriptor = this.getDescriptor(file);
        }
        return descriptor;
    }

    public IMetaModelDescriptor getEffectiveDescriptor(Resource resource) {
        IMetaModelDescriptor descriptor = this.getTargetDescriptor(resource);
        if (descriptor == null) {
            descriptor = this.getDescriptor(resource);
        }
        return descriptor;
    }

    public IMetaModelDescriptor getResourceVersionDescriptor(Resource resource) {
        try {
            IMetaModelDescriptor mmDescriptor;
            String resourceNamespace = EcoreResourceUtil.readModelNamespace(resource);
            if (resourceNamespace != null && (mmDescriptor = this.getDescriptor(new URI(resourceNamespace))) != null) {
                if (resourceNamespace.equals(mmDescriptor.getNamespace())) {
                    return mmDescriptor;
                }
                if (mmDescriptor.matchesEPackageNsURIPattern(resourceNamespace)) {
                    return mmDescriptor;
                }
                for (IMetaModelDescriptor compatibleResourceVersionDescriptor : mmDescriptor.getCompatibleResourceVersionDescriptors()) {
                    if (resourceNamespace.equals(compatibleResourceVersionDescriptor.getNamespace())) {
                        return compatibleResourceVersionDescriptor;
                    }
                    if (!compatibleResourceVersionDescriptor.matchesEPackageNsURIPattern(resourceNamespace)) continue;
                    return compatibleResourceVersionDescriptor;
                }
            }
        }
        catch (URISyntaxException ex) {
            PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
        }
        return null;
    }

    private synchronized void lazyInitialization() {
        if (!this.isInitialized) {
            this.isInitialized = true;
            this.readContributedDescriptors();
            this.readContributedTargetMetaModelDescriptorProviders();
        }
    }

    private Map<String, IMetaModelDescriptor> getMetaModelDescriptors() {
        this.lazyInitialization();
        return this.fMetaModelDescriptors;
    }

    private Map<String, ITargetMetaModelDescriptorProvider> getContentTypeIdToTargetMetaModelDescriptorProviders() {
        this.lazyInitialization();
        return this.fContentTypeIdToTargetMetaModelDescriptorProviders;
    }

    private Map<String, ITargetMetaModelDescriptorProvider> getFileExtensionToTargetMetaModelDescriptorProviders() {
        this.lazyInitialization();
        return this.fFileExtensionToTargetMetaModelDescriptorProviders;
    }

    private Map<String, ITargetMetaModelDescriptorProvider> getAllTargetMetaModelDescriptorProviders() {
        this.lazyInitialization();
        return this.fAllTargetMetaModelDescriptorProviders;
    }

    private static final class AnyMetaModelDescriptor
    extends DefaultMetaModelDescriptor {
        public AnyMetaModelDescriptor() {
            super("org.eclipse.sphinx.emf.metamodel.any", "http://any.mm", "Any metamodel");
        }
    }

    private static class DefaultMetaModelDescriptor
    extends AbstractMetaModelDescriptor {
        protected DefaultMetaModelDescriptor(String identifier, String namespace, String name) {
            super(identifier, namespace, name);
        }

        public String getDefaultContentTypeId() {
            return "";
        }
    }

    private class FileMetaModelDescriptorCache
    implements IFileMetaModelDescriptorCache {
        private Map<IFile, IMetaModelDescriptor> fFileMetaModelDescriptors = Collections.synchronizedMap(new HashMap());
        private Map<IFile, IMetaModelDescriptor> fOldFileMetaModelDescriptors = Collections.synchronizedMap(new HashMap());

        private FileMetaModelDescriptorCache() {
        }

        public void addDescriptor(IFile file, IMetaModelDescriptor mmDescriptor) {
            if (file != null) {
                this.fFileMetaModelDescriptors.put(file, mmDescriptor != null ? mmDescriptor : NO_MM);
            }
        }

        boolean hasDescriptor(IFile file) {
            if (file != null) {
                return this.fFileMetaModelDescriptors.containsKey(file);
            }
            return false;
        }

        IMetaModelDescriptor getDescriptor(IFile file) {
            if (file != null) {
                IMetaModelDescriptor mmDescriptor = this.fFileMetaModelDescriptors.get(file);
                return mmDescriptor != NO_MM ? mmDescriptor : null;
            }
            return null;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void moveDescriptor(IFile oldFile, IFile newFile) {
            if (oldFile != null && newFile != null) {
                Map<IFile, IMetaModelDescriptor> map = this.fFileMetaModelDescriptors;
                synchronized (map) {
                    IMetaModelDescriptor mmDescriptor = this.fFileMetaModelDescriptors.remove(oldFile);
                    if (mmDescriptor != null && !mmDescriptor.equals(NO_MM)) {
                        this.fOldFileMetaModelDescriptors.put(oldFile, mmDescriptor);
                    }
                }
                ExtendedPlatform.removeCachedContentTypeId((IFile)newFile);
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void removeDescriptor(IFile file) {
            if (file != null) {
                Map<IFile, IMetaModelDescriptor> map = this.fFileMetaModelDescriptors;
                synchronized (map) {
                    IMetaModelDescriptor removedMMDescriptor = this.fFileMetaModelDescriptors.remove(file);
                    if (removedMMDescriptor != null && !removedMMDescriptor.equals(NO_MM)) {
                        this.fOldFileMetaModelDescriptors.put(file, removedMMDescriptor);
                    }
                }
                ExtendedPlatform.removeCachedContentTypeId((IFile)file);
            }
        }

        IMetaModelDescriptor getOldDescriptor(IFile file) {
            if (file != null) {
                return this.fOldFileMetaModelDescriptors.get(file);
            }
            return null;
        }

        public void clearOldDescriptors() {
            this.fOldFileMetaModelDescriptors.clear();
        }
    }

    private static interface IDescriptorFilter {
        public boolean accept(IMetaModelDescriptor var1);
    }

    private static final class NoMetaModelDescriptor
    extends DefaultMetaModelDescriptor {
        public NoMetaModelDescriptor() {
            super("org.eclipse.sphinx.emf.metamodel.no", "http://no.mm", "No metamodel");
        }
    }
}

