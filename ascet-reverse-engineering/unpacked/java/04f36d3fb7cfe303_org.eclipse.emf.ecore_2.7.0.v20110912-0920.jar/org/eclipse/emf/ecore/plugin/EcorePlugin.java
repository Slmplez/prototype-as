/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.EMFPlugin$EclipsePlugin
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.common.util.WrappedException
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.emf.ecore.plugin;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageRegistryImpl;
import org.eclipse.emf.ecore.plugin.ContentHandlerRegistryReader;
import org.eclipse.emf.ecore.plugin.ContentParserRegistryReader;
import org.eclipse.emf.ecore.plugin.DynamicPackageRegistryReader;
import org.eclipse.emf.ecore.plugin.ExtensionParserRegistryReader;
import org.eclipse.emf.ecore.plugin.FactoryOverrideRegistryReader;
import org.eclipse.emf.ecore.plugin.GeneratedPackageRegistryReader;
import org.eclipse.emf.ecore.plugin.InvocationDelegateFactoryRegistryReader;
import org.eclipse.emf.ecore.plugin.ProtocolParserRegistryReader;
import org.eclipse.emf.ecore.plugin.QueryDelegateFactoryRegistryReader;
import org.eclipse.emf.ecore.plugin.RegistryReader;
import org.eclipse.emf.ecore.plugin.SettingDelegateFactoryRegistryReader;
import org.eclipse.emf.ecore.plugin.URIMappingRegistryReader;
import org.eclipse.emf.ecore.plugin.ValidationDelegateRegistryReader;
import org.osgi.framework.BundleContext;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcorePlugin
extends EMFPlugin {
    public static final EcorePlugin INSTANCE = new EcorePlugin();
    private static Pattern bundleSymbolNamePattern;
    private static byte[] NO_BYTES;
    private static Map<String, URI> platformResourceMap;
    private static Map<String, URI> ePackageNsURIToGenModelLocationMap;
    private static EPackage.Registry defaultRegistryImplementation;
    private static Implementation plugin;
    private static IWorkspaceRoot workspaceRoot;
    public static final String DYNAMIC_PACKAGE_PPID = "dynamic_package";
    public static final String GENERATED_PACKAGE_PPID = "generated_package";
    public static final String FACTORY_OVERRIDE_PPID = "factory_override";
    public static final String EXTENSION_PARSER_PPID = "extension_parser";
    public static final String PROTOCOL_PARSER_PPID = "protocol_parser";
    public static final String CONTENT_PARSER_PPID = "content_parser";
    public static final String CONTENT_HANDLER_PPID = "content_handler";
    public static final String SCHEME_PARSER_PPID = "scheme_parser";
    public static final String URI_MAPPING_PPID = "uri_mapping";
    public static final String PACKAGE_REGISTRY_IMPLEMENTATION_PPID = "package_registry_implementation";
    public static final String VALIDATION_DELEGATE_PPID = "validation_delegate";
    public static final String SETTING_DELEGATE_PPID = "setting_delegate";
    public static final String INVOCATION_DELEGATE_PPID = "invocation_delegate";
    public static final String QUERY_DELEGATE_PPID = "query_delegate";

    static {
        NO_BYTES = new byte[0];
    }

    private EcorePlugin() {
        super(new ResourceLocator[0]);
    }

    public ResourceLocator getPluginResourceLocator() {
        return plugin;
    }

    public static Map<String, URI> getPlatformResourceMap() {
        if (platformResourceMap == null) {
            platformResourceMap = new HashMap<String, URI>();
        }
        return platformResourceMap;
    }

    public static URI resolvePlatformResourcePath(String platformResourcePath) {
        if (platformResourceMap != null) {
            int index = platformResourcePath.indexOf("/", 1);
            String rootContainerName = platformResourcePath.substring(1, index);
            String relativeName = platformResourcePath.substring(index + 1);
            URI rootContainerLocation = EcorePlugin.getPlatformResourceMap().get(rootContainerName);
            if (rootContainerLocation != null) {
                return URI.createURI((String)relativeName).resolve(rootContainerLocation);
            }
        }
        return null;
    }

    public static String[] handlePlatformResourceOptions(String[] arguments) {
        EcorePlugin.getPlatformResourceMap();
        int i = 0;
        while (i < arguments.length) {
            if (arguments[i].equalsIgnoreCase("-platformResource")) {
                int start = i;
                while (++i < arguments.length && !arguments[i].startsWith("-")) {
                    URI uri;
                    String rootContainerName = arguments[i];
                    if (++i >= arguments.length) continue;
                    String rootContainerLocation = arguments[i];
                    File file = new File(rootContainerLocation);
                    if (file.isDirectory() || !file.exists() && file.getParent() != null && file.getParentFile().isDirectory()) {
                        try {
                            file = file.getCanonicalFile();
                        }
                        catch (IOException exception) {
                            throw new WrappedException((Exception)exception);
                        }
                        uri = URI.createFileURI((String)(String.valueOf(file.toString()) + "/"));
                    } else {
                        uri = URI.createURI((String)rootContainerLocation);
                    }
                    platformResourceMap.put(rootContainerName, uri);
                }
                String[] remainingArguments = new String[arguments.length - (i - start)];
                System.arraycopy(arguments, 0, remainingArguments, 0, start);
                System.arraycopy(arguments, i, remainingArguments, start, arguments.length - i);
                return remainingArguments;
            }
            ++i;
        }
        return arguments;
    }

    public static Map<String, URI> getEPackageNsURIToGenModelLocationMap() {
        if (ePackageNsURIToGenModelLocationMap == null) {
            ePackageNsURIToGenModelLocationMap = new HashMap<String, URI>();
        }
        return ePackageNsURIToGenModelLocationMap;
    }

    public static Map<URI, URI> computePlatformResourceToPlatformPluginMap(Collection<URI> uris) {
        HashMap<URI, URI> result = new HashMap<URI, URI>();
        IWorkspaceRoot root = EcorePlugin.getWorkspaceRoot();
        if (root != null) {
            for (URI uri : uris) {
                String pluginID;
                if (!uri.isPlatformPlugin() || root.getProject(pluginID = uri.segment(1)).isOpen()) continue;
                result.put(URI.createPlatformResourceURI((String)(String.valueOf(pluginID) + "/"), (boolean)false), URI.createPlatformPluginURI((String)(String.valueOf(pluginID) + "/"), (boolean)false));
            }
        }
        return result;
    }

    public static Map<URI, URI> computePlatformPluginToPlatformResourceMap() {
        IProject[] projects;
        HashMap<URI, URI> result = new HashMap<URI, URI>();
        IWorkspaceRoot root = EcorePlugin.getWorkspaceRoot();
        if (root != null && (projects = root.getProjects()) != null) {
            String pluginID = null;
            class Handler
            extends DefaultHandler {
                public String pluginID;

                Handler() {
                }

                public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
                    if ("".equals(uri) && "plugin".equals(localName)) {
                        this.pluginID = attributes.getValue("id");
                    }
                    throw new SAXException("Done");
                }
            }
            Handler handler = new Handler();
            SAXParserFactory parserFactory = SAXParserFactory.newInstance();
            parserFactory.setNamespaceAware(true);
            SAXParser parser = null;
            try {
                parser = parserFactory.newSAXParser();
            }
            catch (Exception exception) {
                INSTANCE.log(exception);
            }
            if (bundleSymbolNamePattern == null) {
                bundleSymbolNamePattern = Pattern.compile("^\\s*Bundle-SymbolicName\\s*:\\s*([^\\s;]*)\\s*(;.*)?$", 8);
            }
            byte[] bytes = NO_BYTES;
            int i = 0;
            int size = projects.length;
            while (i < size) {
                IProject project = projects[i];
                if (project.isOpen()) {
                    block29: {
                        IFile plugin;
                        pluginID = null;
                        IFile manifest = project.getFile("META-INF/MANIFEST.MF");
                        if (manifest.exists()) {
                            InputStream inputStream = null;
                            try {
                                try {
                                    inputStream = manifest.getContents();
                                    int available = inputStream.available();
                                    if (bytes.length < available) {
                                        bytes = new byte[available];
                                    }
                                    inputStream.read(bytes);
                                    String contents = new String(bytes, "UTF-8");
                                    Matcher matcher = bundleSymbolNamePattern.matcher(contents);
                                    if (matcher.find()) {
                                        pluginID = matcher.group(1);
                                    }
                                }
                                catch (Exception exception) {
                                    INSTANCE.log(exception);
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        }
                                        catch (IOException exception2) {
                                            INSTANCE.log(exception2);
                                        }
                                    }
                                    break block29;
                                }
                            }
                            catch (Throwable throwable) {
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    }
                                    catch (IOException exception) {
                                        INSTANCE.log(exception);
                                    }
                                }
                                throw throwable;
                            }
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                }
                                catch (IOException exception) {
                                    INSTANCE.log(exception);
                                }
                            }
                        } else if (parser != null && (plugin = project.getFile("plugin.xml")).exists()) {
                            try {
                                parser.parse(new InputSource(plugin.getContents()), (DefaultHandler)handler);
                            }
                            catch (Exception exception) {
                                if (handler.pluginID != null) {
                                    pluginID = handler.pluginID;
                                }
                                INSTANCE.log(exception);
                            }
                        }
                    }
                    if (pluginID != null) {
                        URI platformPluginURI = URI.createPlatformPluginURI((String)(String.valueOf(pluginID) + "/"), (boolean)false);
                        URI platformResourceURI = URI.createPlatformResourceURI((String)(String.valueOf(project.getName()) + "/"), (boolean)true);
                        result.put(platformPluginURI, platformResourceURI);
                    }
                }
                ++i;
            }
        }
        return result;
    }

    public static Map<URI, URI> computePlatformURIMap() {
        HashMap<URI, URI> result = new HashMap<URI, URI>();
        result.putAll(EcorePlugin.computePlatformPluginToPlatformResourceMap());
        result.putAll(EcorePlugin.computePlatformResourceToPlatformPluginMap(new HashSet<URI>(EcorePlugin.getEPackageNsURIToGenModelLocationMap().values())));
        return result;
    }

    public static EPackage.Registry getDefaultRegistryImplementation() {
        return defaultRegistryImplementation;
    }

    public static Implementation getPlugin() {
        return plugin;
    }

    public static IWorkspaceRoot getWorkspaceRoot() {
        return workspaceRoot;
    }

    public static class Implementation
    extends EMFPlugin.EclipsePlugin {
        public Implementation() {
            plugin = this;
        }

        public void start(BundleContext context) throws Exception {
            super.start(context);
            if (IS_RESOURCES_BUNDLE_AVAILABLE && System.getProperty("org.eclipse.emf.ecore.plugin.EcorePlugin.doNotLoadResourcesPlugin") == null) {
                workspaceRoot = ResourcesPlugin.getWorkspace().getRoot();
            }
            new RegistryReader(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), EcorePlugin.PACKAGE_REGISTRY_IMPLEMENTATION_PPID){
                IConfigurationElement previous;

                protected boolean readElement(IConfigurationElement element) {
                    if (element.getName().equals("registry")) {
                        String implementationClass = element.getAttribute("class");
                        if (implementationClass == null) {
                            this.logMissingAttribute(element, "class");
                        } else {
                            if (defaultRegistryImplementation != null) {
                                if (this.previous != null) {
                                    Implementation.this.log("Both '" + this.previous.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register a package registry implementation");
                                }
                                if (defaultRegistryImplementation instanceof EPackageRegistryImpl.Delegator) {
                                    return false;
                                }
                            }
                            try {
                                defaultRegistryImplementation = (EPackage.Registry)element.createExecutableExtension("class");
                                this.previous = element;
                            }
                            catch (CoreException exception) {
                                Implementation.this.log((Object)exception);
                            }
                            return true;
                        }
                    }
                    return false;
                }
            }.readRegistry();
            new GeneratedPackageRegistryReader(EcorePlugin.getEPackageNsURIToGenModelLocationMap()).readRegistry();
            new DynamicPackageRegistryReader().readRegistry();
            new FactoryOverrideRegistryReader().readRegistry();
            new ExtensionParserRegistryReader().readRegistry();
            new ProtocolParserRegistryReader().readRegistry();
            new ContentParserRegistryReader().readRegistry();
            new ContentHandlerRegistryReader().readRegistry();
            new URIMappingRegistryReader().readRegistry();
            new ValidationDelegateRegistryReader().readRegistry();
            new SettingDelegateFactoryRegistryReader().readRegistry();
            new InvocationDelegateFactoryRegistryReader().readRegistry();
            new QueryDelegateFactoryRegistryReader().readRegistry();
        }
    }
}

