/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.CommonPlugin
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.WrappedException
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.resource.URIConverter
 *  org.eclipse.emf.ecore.resource.impl.ExtensibleURIConverterImpl
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.xmi.XMIException
 *  org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain
 *  org.eclipse.emf.edit.provider.IWrapperItemProvider
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 *  org.eclipse.sphinx.platform.util.XMLRootElementHandler
 */
package org.eclipse.sphinx.emf.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.resource.impl.ExtensibleURIConverterImpl;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.provider.IWrapperItemProvider;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.edit.TransientItemProvider;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.resource.ExtendedResource;
import org.eclipse.sphinx.emf.resource.ExtendedResourceAdapterFactory;
import org.eclipse.sphinx.emf.resource.ScopingResourceSetImpl;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.sphinx.platform.util.XMLRootElementHandler;
import org.xml.sax.SAXException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class EcoreResourceUtil {
    private EcoreResourceUtil() {
    }

    public static URIConverter getURIConverter() {
        return EcoreResourceUtil.getURIConverter(null);
    }

    public static URIConverter getURIConverter(ResourceSet resourceSet) {
        Object uriConverter = resourceSet != null ? resourceSet.getURIConverter() : new ExtensibleURIConverterImpl();
        if (Platform.isRunning()) {
            IPath workspaceRootPath = ResourcesPlugin.getWorkspace().getRoot().getFullPath().addTrailingSeparator();
            URI workspaceRootURI = URI.createPlatformResourceURI((String)workspaceRootPath.toString(), (boolean)true);
            IPath workspaceRootLocation = ResourcesPlugin.getWorkspace().getRoot().getLocation().addTrailingSeparator();
            URI workspaceRootLocationURI = URI.createURI((String)workspaceRootLocation.toString(), (boolean)true);
            URI workspaceRootLocationFileURI = URI.createFileURI((String)workspaceRootLocation.toString());
            uriConverter.getURIMap().put(workspaceRootLocationURI, workspaceRootURI);
            uriConverter.getURIMap().put(workspaceRootLocationFileURI, workspaceRootURI);
        }
        return uriConverter;
    }

    public static URI convertToAbsoluteFileURI(URI uri) {
        URI convertedURI;
        Assert.isNotNull((Object)uri);
        if (!uri.isRelative() && uri.scheme().matches("[A-Z]")) {
            uri = URI.createFileURI((String)uri.toString());
        }
        if ((convertedURI = CommonPlugin.asLocalURI((URI)uri)).isRelative()) {
            uri = EcoreResourceUtil.getURIConverter().normalize(uri);
            convertedURI = CommonPlugin.asLocalURI((URI)uri);
        }
        return convertedURI;
    }

    public static URI convertToPlatformResourceURI(URI uri) {
        IFile file;
        Assert.isNotNull((Object)uri);
        if (uri.isPlatformResource()) {
            return uri;
        }
        if (uri.isFile() && Platform.isRunning() && (file = ResourcesPlugin.getWorkspace().getRoot().getFileForLocation((IPath)new Path(uri.toFileString()))) != null) {
            return URI.createPlatformResourceURI((String)file.getFullPath().toString(), (boolean)true);
        }
        return EcoreResourceUtil.getURIConverter().normalize(uri);
    }

    public static boolean exists(URI uri) {
        if (uri != null) {
            return EcoreResourceUtil.getURIConverter().exists(uri, null);
        }
        return false;
    }

    public static String getContentTypeId(URI uri) {
        if (uri != null) {
            try {
                Map contentDescription = EcoreResourceUtil.getURIConverter().contentDescription(uri, null);
                return (String)contentDescription.get("org.eclipse.emf.ecore:contentType");
            }
            catch (Exception ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
        }
        return null;
    }

    public static boolean isReadOnly(URI uri) {
        if (uri != null) {
            Map attributes = EcoreResourceUtil.getURIConverter().getAttributes(uri, null);
            Object readOnly = attributes.get("readOnly");
            return readOnly instanceof Boolean && (Boolean)readOnly != false;
        }
        return false;
    }

    /*
     * Loose catch block
     */
    private static XMLRootElementHandler readRootElement(URIConverter uriConverter, URI uri, XMLRootElementHandler handler, boolean useLexicalHandler) {
        block11: {
            if (handler == null) {
                handler = new XMLRootElementHandler();
            }
            if (EcoreResourceUtil.exists(uri)) {
                InputStream inputStream = null;
                try {
                    uriConverter = uriConverter != null ? uriConverter : new ExtensibleURIConverterImpl();
                    inputStream = uriConverter.createInputStream(uri);
                    handler.parseContents(inputStream, useLexicalHandler);
                }
                catch (SAXException sAXException) {
                    ExtendedPlatform.safeClose(inputStream);
                    break block11;
                }
                catch (IOException iOException) {
                    break block11;
                }
                catch (Exception ex) {
                    PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)ex);
                    {
                        catch (Throwable throwable) {
                            throw throwable;
                        }
                    }
                    ExtendedPlatform.safeClose(inputStream);
                    break block11;
                }
                {
                    finally {
                        ExtendedPlatform.safeClose(inputStream);
                    }
                }
                ExtendedPlatform.safeClose((InputStream)inputStream);
            }
        }
        return handler;
    }

    public static String readModelNamespace(Resource resource) {
        if (resource != null) {
            return EcoreResourceUtil.readModelNamespace(EcoreResourceUtil.getURIConverter(resource.getResourceSet()), resource.getURI());
        }
        return null;
    }

    public static String readModelNamespace(URIConverter uriConverter, URI uri) {
        XMLRootElementHandler handler = EcoreResourceUtil.readRootElement(uriConverter, uri, null, false);
        return handler.getRootElementNamespace();
    }

    public static String readTargetNamespace(Resource resource) {
        return EcoreResourceUtil.readTargetNamespace(resource, null);
    }

    public static String readTargetNamespace(Resource resource, String ... targetNamespaceExcludePatterns) {
        if (resource != null) {
            return EcoreResourceUtil.readTargetNamespace(EcoreResourceUtil.getURIConverter(resource.getResourceSet()), resource.getURI(), targetNamespaceExcludePatterns);
        }
        return null;
    }

    public static String readTargetNamespace(URIConverter uriConverter, URI uri) {
        return EcoreResourceUtil.readTargetNamespace(uriConverter, uri, null);
    }

    public static String readTargetNamespace(URIConverter uriConverter, URI uri, String ... targetNamespaceExcludePatterns) {
        XMLRootElementHandler handler = new XMLRootElementHandler();
        if (targetNamespaceExcludePatterns != null) {
            handler.setTargetNamespaceExcludePatterns(targetNamespaceExcludePatterns);
        }
        EcoreResourceUtil.readRootElement(uriConverter, uri, handler, false);
        return handler.getTargetNamespace();
    }

    public static Collection<String> readRootElementComments(Resource resource) {
        if (resource != null) {
            return EcoreResourceUtil.readRootElementComments(EcoreResourceUtil.getURIConverter(resource.getResourceSet()), resource.getURI());
        }
        return Collections.emptyList();
    }

    public static Collection<String> readRootElementComments(URIConverter uriConverter, URI uri) {
        XMLRootElementHandler handler = EcoreResourceUtil.readRootElement(uriConverter, uri, null, true);
        return handler.getRootElementComments();
    }

    public static Map<String, String> readSchemaLocationEntries(Resource resource) {
        if (resource != null) {
            return EcoreResourceUtil.readSchemaLocationEntries(EcoreResourceUtil.getURIConverter(resource.getResourceSet()), resource.getURI());
        }
        return Collections.emptyMap();
    }

    public static Map<String, String> readSchemaLocationEntries(URIConverter uriConverter, URI uri) {
        XMLRootElementHandler handler = EcoreResourceUtil.readRootElement(uriConverter, uri, null, false);
        String schemaLocation = handler.getSchemaLocation();
        HashMap<String, String> schemaLocationEntries = new HashMap<String, String>();
        if (schemaLocation != null) {
            String[] schemaLocationTokens = schemaLocation.split(" ");
            int i = 0;
            while (i + 1 < schemaLocationTokens.length) {
                schemaLocationEntries.put(schemaLocationTokens[i], schemaLocationTokens[i + 1]);
                i += 2;
            }
        }
        return schemaLocationEntries;
    }

    public static Map<?, ?> getDefaultLoadOptions() {
        HashMap<String, Boolean> options = new HashMap<String, Boolean>(1);
        options.put("RECORD_UNKNOWN_FEATURE", Boolean.TRUE);
        return options;
    }

    public static Map<?, ?> getDefaultSaveOptions() {
        return Collections.emptyMap();
    }

    public static EObject getModelRoot(Resource resource) {
        EList contents;
        if (resource != null && (contents = resource.getContents()).size() > 0) {
            return (EObject)resource.getContents().get(0);
        }
        return null;
    }

    public static EObject getModelRoot(ResourceSet resourceSet, URI uri) {
        return EcoreResourceUtil.loadModelRoot(resourceSet, uri, null, false);
    }

    public static EObject getModelRoot(ResourceSet resourceSet, URI uri, boolean loadOnDemand) {
        return EcoreResourceUtil.loadModelRoot(resourceSet, uri, null, loadOnDemand);
    }

    public static EObject getModelFragment(ResourceSet resourceSet, URI uri) {
        return EcoreResourceUtil.loadModelFragment(resourceSet, uri, false);
    }

    public static EObject getModelFragment(ResourceSet resourceSet, URI uri, boolean loadOnDemand) {
        return EcoreResourceUtil.loadModelFragment(resourceSet, uri, loadOnDemand);
    }

    public static EObject loadModelFragment(ResourceSet resourceSet, URI uri) {
        return EcoreResourceUtil.loadModelFragment(resourceSet, uri, true);
    }

    private static EObject loadModelFragment(ResourceSet resourceSet, URI uri, boolean loadOnDemand) {
        Assert.isNotNull((Object)resourceSet);
        Assert.isNotNull((Object)uri);
        if (uri.hasFragment()) {
            if (!uri.isPlatform()) {
                uri = EcoreResourceUtil.convertToPlatformResourceURI(uri);
            }
            return resourceSet.getEObject(uri, loadOnDemand);
        }
        return null;
    }

    public static EObject loadModelRoot(ResourceSet resourceSet, URI uri, Map<?, ?> options) {
        return EcoreResourceUtil.loadModelRoot(resourceSet, uri, options, true);
    }

    public static EObject loadModelRoot(ResourceSet resourceSet, File file, Map<?, ?> options) throws IOException {
        Assert.isNotNull((Object)file);
        return EcoreResourceUtil.loadModelRoot(resourceSet, URI.createFileURI((String)file.getPath()), options);
    }

    public static Resource getResource(Object object) {
        if (object instanceof Resource) {
            return (Resource)object;
        }
        if (object instanceof EObject) {
            return EcoreResourceUtil.getResource((EObject)object);
        }
        if (object instanceof IWrapperItemProvider) {
            return EcoreResourceUtil.getResource((IWrapperItemProvider)object);
        }
        if (object instanceof FeatureMap.Entry) {
            return EcoreResourceUtil.getResource((FeatureMap.Entry)object);
        }
        if (object instanceof TransientItemProvider) {
            return EcoreResourceUtil.getResource((TransientItemProvider)((Object)object));
        }
        return null;
    }

    public static Resource getResource(EObject eObject) {
        if (eObject != null) {
            return eObject.eResource();
        }
        return null;
    }

    public static Resource getResource(IWrapperItemProvider provider) {
        if (provider != null) {
            Object owner = provider.getOwner();
            if (owner instanceof EObject) {
                return ((EObject)owner).eResource();
            }
            Object unwrapped = AdapterFactoryEditingDomain.unwrap((Object)provider);
            return EcoreResourceUtil.getResource(unwrapped);
        }
        return null;
    }

    public static Resource getResource(FeatureMap.Entry entry) {
        Object unwrapped = AdapterFactoryEditingDomain.unwrap((Object)entry);
        return EcoreResourceUtil.getResource(unwrapped);
    }

    public static Resource getResource(TransientItemProvider provider) {
        Notifier target;
        if (provider != null && (target = provider.getTarget()) instanceof EObject) {
            return ((EObject)target).eResource();
        }
        return null;
    }

    public static EList<EObject> getResourceContents(Resource resource) {
        if (resource != null) {
            return resource.getContents();
        }
        return new BasicEList(0);
    }

    public static String getModelName(Notifier modelRoot) {
        EObject modelContent = null;
        if (modelRoot instanceof EObject) {
            modelContent = (EObject)modelRoot;
        }
        if (modelRoot instanceof Resource) {
            modelContent = EcoreResourceUtil.getModelRoot((Resource)modelRoot);
        }
        if (modelContent != null) {
            String modelPackageName = modelContent.eClass().getEPackage().getName();
            return String.valueOf(modelPackageName.substring(0, 1).toUpperCase()) + modelPackageName.substring(1);
        }
        return "";
    }

    public static boolean isResourceLoaded(ResourceSet resourceSet, URI uri) {
        if (resourceSet != null && uri != null) {
            Resource resource = resourceSet.getResource(uri, false);
            return resource != null && resource.isLoaded();
        }
        return false;
    }

    public static Resource addNewModelResource(ResourceSet resourceSet, URI uri, String contentTypeId, EObject modelRoot) {
        if (uri != null && modelRoot != null) {
            try {
                Resource resource;
                if (resourceSet == null) {
                    resourceSet = new ScopingResourceSetImpl();
                }
                if ((resource = resourceSet.getResource(uri, false)) != null) {
                    try {
                        EcoreResourceUtil.unloadResource(resource);
                    }
                    catch (Exception ex) {
                        PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                    }
                }
                if ((resource = resourceSet.createResource(uri, contentTypeId)) != null) {
                    resource.getContents().add((Object)modelRoot);
                }
                return resource;
            }
            catch (Exception ex) {
                throw new WrappedException(ex);
            }
        }
        return null;
    }

    public static void addModelResource(ResourceSet resourceSet, Resource resource) {
        if (resource != null) {
            if (resourceSet == null) {
                resourceSet = new ScopingResourceSetImpl();
            }
            if (resourceSet.getResource(resource.getURI(), false) == null) {
                resourceSet.getResources().add((Object)resource);
            }
        }
    }

    public static void saveNewModelResource(ResourceSet resourceSet, URI uri, String contentTypeId, EObject modelRoot, Map<?, ?> options) {
        Resource resource = EcoreResourceUtil.addNewModelResource(resourceSet, uri, contentTypeId, modelRoot);
        EcoreResourceUtil.saveModelResource(resource, options);
    }

    public static void saveModelResource(Resource resource, Map<?, ?> options) {
        if (resource != null) {
            try {
                resource.save(options);
            }
            catch (Exception ex) {
                Throwable cause = ex.getCause();
                Exception exception = cause instanceof Exception ? (Exception)cause : ex;
                URI uri = resource.getURI();
                resource.getErrors().add((Object)new XMIException(NLS.bind((String)Messages.error_problemOccurredWhenSavingResource, (Object)uri.toString()), exception, uri.toString(), 1, 1));
                throw new WrappedException(ex);
            }
        }
    }

    public static void unloadResource(Resource resource) {
        EcoreResourceUtil.unloadResource(resource, false);
    }

    public static void unloadResource(Resource resource, boolean memoryOptimized) {
        if (resource != null) {
            try {
                try {
                    ExtendedResource extendedResource;
                    if (memoryOptimized && (extendedResource = ExtendedResourceAdapterFactory.INSTANCE.adapt((Notifier)resource)) != null) {
                        Map<Object, Object> defaultLoadOptions = extendedResource.getDefaultLoadOptions();
                        defaultLoadOptions.put("UNLOAD_MEMORY_OPTIMIZED", Boolean.TRUE);
                    }
                    resource.unload();
                }
                catch (Exception ex) {
                    throw new WrappedException(ex);
                }
            }
            finally {
                ResourceSet resourceSet = resource.getResourceSet();
                if (resourceSet != null) {
                    resourceSet.getResources().remove((Object)resource);
                }
                resource.eAdapters().clear();
            }
        }
    }

    public static void unloadResource(ResourceSet resourceSet, URI uri) {
        EcoreResourceUtil.unloadResource(resourceSet, uri, false);
    }

    public static void unloadResource(ResourceSet resourceSet, URI uri, boolean memoryOptimized) {
        if (resourceSet != null && uri != null) {
            Resource resource = resourceSet.getResource(uri, false);
            EcoreResourceUtil.unloadResource(resource, memoryOptimized);
        }
    }

    public static void validate(URI uri, URL schemaURL) throws SAXException, IOException {
        Assert.isNotNull((Object)uri);
        SchemaFactory factory = SchemaFactory.newInstance("http://www.w3.org/2001/XMLSchema");
        Schema schema = factory.newSchema(schemaURL);
        Validator validator = schema.newValidator();
        InputStream stream = null;
        try {
            stream = URIConverter.INSTANCE.createInputStream(uri);
            StreamSource source = new StreamSource(stream);
            validator.validate(source);
        }
        finally {
            ExtendedPlatform.safeClose((InputStream)stream);
        }
    }

    private static Resource loadModelResource(ResourceSet resourceSet, URI uri, Map<?, ?> options, boolean loadOnDemand) {
        Resource resource;
        Assert.isNotNull((Object)uri);
        if (resourceSet == null) {
            resourceSet = new ScopingResourceSetImpl();
        }
        if (!uri.isPlatform()) {
            uri = EcoreResourceUtil.convertToPlatformResourceURI(uri);
        }
        if (((resource = resourceSet.getResource(uri, false)) == null || !resource.isLoaded()) && loadOnDemand && EcoreResourceUtil.exists(uri)) {
            if (resource == null) {
                String contentType = EcoreResourceUtil.getContentTypeId(uri);
                resource = resourceSet.createResource(uri, contentType);
            }
            if (resource != null) {
                try {
                    ArrayList creationErrors = new ArrayList(resource.getErrors());
                    ArrayList creationWarnings = new ArrayList(resource.getWarnings());
                    resource.load(options);
                    if (resource.getContents().isEmpty()) {
                        EcoreResourceUtil.unloadResource(resource, true);
                    }
                    resource.getErrors().addAll(creationErrors);
                    resource.getWarnings().addAll(creationWarnings);
                }
                catch (Exception ex) {
                    ArrayList loadErrors = new ArrayList(resource.getErrors());
                    ArrayList loadWarnings = new ArrayList(resource.getWarnings());
                    try {
                        EcoreResourceUtil.unloadResource(resource, true);
                    }
                    catch (Exception e) {
                        PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)e);
                    }
                    resource.getErrors().addAll(loadErrors);
                    resource.getWarnings().addAll(loadWarnings);
                    Throwable cause = ex.getCause();
                    Exception exception = cause instanceof Exception ? (Exception)cause : ex;
                    resource.getErrors().add((Object)new XMIException(NLS.bind((String)Messages.error_problemOccurredWhenLoadingResource, (Object)uri.toString()), exception, uri.toString(), 1, 1));
                    throw new WrappedException(ex);
                }
            }
        }
        return resource;
    }

    private static EObject loadModelRoot(ResourceSet resourceSet, URI uri, Map<?, ?> options, boolean loadOnDemand) {
        if (options == null) {
            options = EcoreResourceUtil.getDefaultLoadOptions();
        }
        Resource resource = EcoreResourceUtil.loadModelResource(resourceSet, uri, options, loadOnDemand);
        return EcoreResourceUtil.getModelRoot(resource);
    }
}

