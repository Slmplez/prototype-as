/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.ILog
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.core.runtime.content.IContentTypeManager
 */
package org.eclipse.core.internal.filebuffers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.filebuffers.IAnnotationModelFactory;
import org.eclipse.core.filebuffers.IDocumentFactory;
import org.eclipse.core.filebuffers.IDocumentSetupParticipant;
import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.core.internal.filebuffers.FileBuffersMessages;
import org.eclipse.core.internal.filebuffers.FileBuffersPlugin;
import org.eclipse.core.internal.filebuffers.NLSUtility;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeManager;

public class ExtensionsRegistry {
    protected static final String WILDCARD = "*";
    private Map fFactoryDescriptors = new HashMap();
    private Map fFactories = new HashMap();
    private Map fSetupParticipantDescriptors = new HashMap();
    private Map fSetupParticipants = new HashMap();
    private Map fAnnotationModelFactoryDescriptors = new HashMap();
    private Map fAnnotationModelFactories = new HashMap();
    protected IContentTypeManager fContentTypeManager = Platform.getContentTypeManager();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public ExtensionsRegistry() {
        this.initialize("documentCreation", "contentTypeId", true, this.fFactoryDescriptors);
        this.initialize("documentCreation", "fileNames", false, this.fFactoryDescriptors);
        this.initialize("documentCreation", "extensions", false, this.fFactoryDescriptors);
        this.initialize("documentSetup", "contentTypeId", true, this.fSetupParticipantDescriptors);
        this.initialize("documentSetup", "fileNames", false, this.fSetupParticipantDescriptors);
        this.initialize("documentSetup", "extensions", false, this.fSetupParticipantDescriptors);
        this.initialize("annotationModelCreation", "contentTypeId", true, this.fAnnotationModelFactoryDescriptors);
        this.initialize("annotationModelCreation", "fileNames", false, this.fAnnotationModelFactoryDescriptors);
        this.initialize("annotationModelCreation", "extensions", false, this.fAnnotationModelFactoryDescriptors);
    }

    private void read(String attributeName, IConfigurationElement element, Map map) {
        String value = element.getAttribute(attributeName);
        if (value != null) {
            StringTokenizer tokenizer = new StringTokenizer(value, ",");
            while (tokenizer.hasMoreTokens()) {
                String token = tokenizer.nextToken().trim();
                HashSet<IConfigurationElement> s = (HashSet<IConfigurationElement>)map.get(token);
                if (s == null) {
                    s = new HashSet<IConfigurationElement>();
                    map.put(token, s);
                }
                s.add(element);
            }
        }
    }

    private void readContentType(String attributeName, IConfigurationElement element, Map map) {
        String value = element.getAttribute(attributeName);
        if (value != null) {
            IContentType contentType = this.fContentTypeManager.getContentType(value);
            if (contentType == null) {
                this.log((IStatus)new Status(4, "org.eclipse.core.filebuffers", 0, NLSUtility.format(FileBuffersMessages.ExtensionsRegistry_error_contentTypeDoesNotExist, value), null));
                return;
            }
            ContentTypeAdapter adapter = new ContentTypeAdapter(contentType);
            HashSet<IConfigurationElement> s = (HashSet<IConfigurationElement>)map.get(adapter);
            if (s == null) {
                s = new HashSet<IConfigurationElement>();
                map.put(adapter, s);
            }
            s.add(element);
        }
    }

    private void log(IStatus status) {
        ILog log = FileBuffersPlugin.getDefault().getLog();
        log.log(status);
    }

    private void initialize(String extensionPointName, String childElementName, boolean isContentTypeId, Map descriptors) {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.core.filebuffers", extensionPointName);
        if (extensionPoint == null) {
            this.log((IStatus)new Status(4, "org.eclipse.core.filebuffers", 0, NLSUtility.format(FileBuffersMessages.ExtensionsRegistry_error_extensionPointNotFound, extensionPointName), null));
            return;
        }
        IConfigurationElement[] elements = extensionPoint.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            if (isContentTypeId) {
                this.readContentType(childElementName, elements[i], descriptors);
            } else {
                this.read(childElementName, elements[i], descriptors);
            }
            ++i;
        }
    }

    private Object getExtension(IConfigurationElement entry, Map extensions, Class extensionType) {
        Object extension = extensions.get(entry);
        if (extension != null) {
            return extension;
        }
        try {
            extension = entry.createExecutableExtension("class");
        }
        catch (CoreException x) {
            this.log(x.getStatus());
        }
        if (extensionType.isInstance(extension)) {
            extensions.put(entry, extension);
            return extension;
        }
        return null;
    }

    private IConfigurationElement selectConfigurationElement(Set set) {
        if (set != null && !set.isEmpty()) {
            Iterator e = set.iterator();
            return (IConfigurationElement)e.next();
        }
        return null;
    }

    protected IDocumentFactory getDocumentFactory(String nameOrExtension) {
        Set set = (Set)this.fFactoryDescriptors.get(nameOrExtension);
        if (set != null) {
            IConfigurationElement entry = this.selectConfigurationElement(set);
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.filebuffers.IDocumentFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return (IDocumentFactory)this.getExtension(entry, this.fFactories, clazz);
        }
        return null;
    }

    protected IDocumentFactory doGetDocumentFactory(IContentType[] contentTypes) {
        Set set = null;
        int i = 0;
        while (i < contentTypes.length && set == null) {
            set = (Set)this.fFactoryDescriptors.get(new ContentTypeAdapter(contentTypes[i++]));
        }
        if (set != null) {
            IConfigurationElement entry = this.selectConfigurationElement(set);
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.filebuffers.IDocumentFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return (IDocumentFactory)this.getExtension(entry, this.fFactories, clazz);
        }
        return null;
    }

    protected IDocumentFactory getDocumentFactory(IContentType[] contentTypes) {
        IDocumentFactory factory = this.doGetDocumentFactory(contentTypes);
        while (factory == null) {
            if ((contentTypes = this.computeBaseContentTypes(contentTypes)) == null) break;
            factory = this.doGetDocumentFactory(contentTypes);
        }
        return factory;
    }

    protected List getDocumentSetupParticipants(String nameOrExtension) {
        Set set = (Set)this.fSetupParticipantDescriptors.get(nameOrExtension);
        if (set == null) {
            return null;
        }
        ArrayList<Object> participants = new ArrayList<Object>();
        Iterator e = set.iterator();
        while (e.hasNext()) {
            Object participant;
            IConfigurationElement entry = (IConfigurationElement)e.next();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.core.filebuffers.IDocumentSetupParticipant");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((participant = this.getExtension(entry, this.fSetupParticipants, clazz)) == null) continue;
            participants.add(participant);
        }
        return participants;
    }

    private List doGetDocumentSetupParticipants(IContentType[] contentTypes) {
        HashSet resultSet = new HashSet();
        int i = 0;
        while (i < contentTypes.length) {
            Set set;
            if ((set = (Set)this.fSetupParticipantDescriptors.get(new ContentTypeAdapter(contentTypes[i++]))) == null) continue;
            resultSet.addAll(set);
        }
        ArrayList<Object> participants = new ArrayList<Object>();
        Iterator e = resultSet.iterator();
        while (e.hasNext()) {
            Object participant;
            IConfigurationElement entry = (IConfigurationElement)e.next();
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.core.filebuffers.IDocumentSetupParticipant");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((participant = this.getExtension(entry, this.fSetupParticipants, clazz)) == null) continue;
            participants.add(participant);
        }
        return participants.isEmpty() ? null : participants;
    }

    protected List getDocumentSetupParticipants(IContentType[] contentTypes) {
        List participants = this.doGetDocumentSetupParticipants(contentTypes);
        while (participants == null) {
            if ((contentTypes = this.computeBaseContentTypes(contentTypes)) == null) break;
            participants = this.doGetDocumentSetupParticipants(contentTypes);
        }
        return participants;
    }

    private IAnnotationModelFactory doGetAnnotationModelFactory(IContentType[] contentTypes) {
        Set set = null;
        int i = 0;
        while (i < contentTypes.length && set == null) {
            set = (Set)this.fAnnotationModelFactoryDescriptors.get(new ContentTypeAdapter(contentTypes[i++]));
        }
        if (set != null) {
            IConfigurationElement entry = this.selectConfigurationElement(set);
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.core.filebuffers.IAnnotationModelFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return (IAnnotationModelFactory)this.getExtension(entry, this.fAnnotationModelFactories, clazz);
        }
        return null;
    }

    protected IAnnotationModelFactory getAnnotationModelFactory(IContentType[] contentTypes) {
        IAnnotationModelFactory factory = this.doGetAnnotationModelFactory(contentTypes);
        while (factory == null) {
            if ((contentTypes = this.computeBaseContentTypes(contentTypes)) == null) break;
            factory = this.doGetAnnotationModelFactory(contentTypes);
        }
        return factory;
    }

    protected IAnnotationModelFactory getAnnotationModelFactory(String extension) {
        Set set = (Set)this.fAnnotationModelFactoryDescriptors.get(extension);
        if (set != null) {
            IConfigurationElement entry = this.selectConfigurationElement(set);
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.core.filebuffers.IAnnotationModelFactory");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            return (IAnnotationModelFactory)this.getExtension(entry, this.fAnnotationModelFactories, clazz);
        }
        return null;
    }

    protected IContentType[] findContentTypes(IPath location, LocationKind locationKind) {
        Assert.isLegal((locationKind != LocationKind.IFILE ? 1 : 0) != 0);
        return this.fContentTypeManager.findContentTypesFor(location.lastSegment());
    }

    private IContentType[] computeBaseContentTypes(IContentType[] contentTypes) {
        ArrayList<IContentType> baseTypes = new ArrayList<IContentType>();
        int i = 0;
        while (i < contentTypes.length) {
            IContentType baseType = contentTypes[i].getBaseType();
            if (baseType != null) {
                baseTypes.add(baseType);
            }
            ++i;
        }
        IContentType[] result = null;
        int size = baseTypes.size();
        if (size > 0) {
            result = new IContentType[size];
            baseTypes.toArray(result);
        }
        return result;
    }

    public IDocumentFactory getDocumentFactory(IPath location, LocationKind locationKind) {
        IDocumentFactory factory = this.getDocumentFactory(this.findContentTypes(location, locationKind));
        if (factory == null) {
            factory = this.getDocumentFactory(location.lastSegment());
        }
        if (factory == null) {
            factory = this.getDocumentFactory(location.getFileExtension());
        }
        if (factory == null) {
            factory = this.getDocumentFactory(WILDCARD);
        }
        return factory;
    }

    public IDocumentSetupParticipant[] getDocumentSetupParticipants(IPath location, LocationKind locationKind) {
        HashSet participants = new HashSet();
        List p = this.getDocumentSetupParticipants(this.findContentTypes(location, locationKind));
        if (p != null) {
            participants.addAll(p);
        }
        if ((p = this.getDocumentSetupParticipants(location.lastSegment())) != null) {
            participants.addAll(p);
        }
        if ((p = this.getDocumentSetupParticipants(location.getFileExtension())) != null) {
            participants.addAll(p);
        }
        if ((p = this.getDocumentSetupParticipants(WILDCARD)) != null) {
            participants.addAll(p);
        }
        IDocumentSetupParticipant[] result = new IDocumentSetupParticipant[participants.size()];
        participants.toArray(result);
        return result;
    }

    public IAnnotationModelFactory getAnnotationModelFactory(IPath location, LocationKind locationKind) {
        IAnnotationModelFactory factory = this.getAnnotationModelFactory(this.findContentTypes(location, locationKind));
        if (factory == null) {
            factory = this.getAnnotationModelFactory(location.lastSegment());
        }
        if (factory == null) {
            factory = this.getAnnotationModelFactory(location.getFileExtension());
        }
        if (factory == null) {
            factory = this.getAnnotationModelFactory(WILDCARD);
        }
        return factory;
    }

    private static class ContentTypeAdapter {
        private IContentType fContentType;

        public ContentTypeAdapter(IContentType contentType) {
            Assert.isNotNull((Object)contentType);
            this.fContentType = contentType;
        }

        public String getId() {
            return this.fContentType.getId();
        }

        public boolean equals(Object obj) {
            return obj instanceof ContentTypeAdapter && this.fContentType.getId().equals(((ContentTypeAdapter)obj).getId());
        }

        public int hashCode() {
            return this.fContentType.getId().hashCode();
        }
    }
}

