/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginLibrary;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.ClasspathUtilCore;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.XMLPrintHandler;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelBase;
import org.osgi.framework.BundleException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class PDEAuxiliaryState {
    private static String CACHE_EXTENSION = ".pluginInfo";
    private static String ATTR_BUNDLE_ID = "bundleID";
    private static String ATTR_BUNDLE_STRUCTURE = "isBundle";
    private static String ATTR_CLASS = "class";
    private static String ATTR_EXPORTED = "exported";
    private static String ATTR_EXTENSIBLE_API = "hasExtensibleAPI";
    private static String ATTR_LOCALIZATION = "localization";
    private static String ATTR_NAME = "name";
    private static String ATTR_PATCH = "patch";
    private static String ATTR_PROJECT = "project";
    private static String ATTR_PROVIDER = "provider";
    private static String ATTR_BUNDLE_SOURCE = "bundleSource";
    private static String ELEMENT_BUNDLE = "bundle";
    private static String ELEMENT_LIB = "library";
    private static String ELEMENT_ROOT = "map";
    protected Map fPluginInfos;

    protected PDEAuxiliaryState() {
        this.fPluginInfos = new HashMap();
    }

    protected PDEAuxiliaryState(PDEAuxiliaryState state) {
        this.fPluginInfos = new HashMap(state.fPluginInfos);
    }

    private void createPluginInfo(Element element) {
        PluginInfo info = new PluginInfo();
        if (element.hasAttribute(ATTR_NAME)) {
            info.name = element.getAttribute(ATTR_NAME);
        }
        if (element.hasAttribute(ATTR_PROVIDER)) {
            info.providerName = element.getAttribute(ATTR_PROVIDER);
        }
        if (element.hasAttribute(ATTR_CLASS)) {
            info.className = element.getAttribute(ATTR_CLASS);
        }
        info.hasExtensibleAPI = "true".equals(element.getAttribute(ATTR_EXTENSIBLE_API));
        info.isPatchFragment = "true".equals(element.getAttribute(ATTR_PATCH));
        boolean bl = info.hasBundleStructure = !"false".equals(element.getAttribute(ATTR_BUNDLE_STRUCTURE));
        if (element.hasAttribute(ATTR_PROJECT)) {
            info.project = element.getAttribute(ATTR_PROJECT);
        }
        if (element.hasAttribute(ATTR_LOCALIZATION)) {
            info.localization = element.getAttribute(ATTR_LOCALIZATION);
        }
        if (element.hasAttribute(ATTR_BUNDLE_SOURCE)) {
            info.bundleSourceEntry = element.getAttribute(ATTR_BUNDLE_SOURCE);
        }
        NodeList libs = element.getChildNodes();
        ArrayList<String> list = new ArrayList<String>(libs.getLength());
        int i = 0;
        while (i < libs.getLength()) {
            if (libs.item(i).getNodeType() == 1) {
                Element lib = (Element)libs.item(i);
                list.add(lib.getAttribute(ATTR_NAME));
            }
            ++i;
        }
        info.libraries = list.toArray(new String[list.size()]);
        this.fPluginInfos.put(element.getAttribute(ATTR_BUNDLE_ID), info);
    }

    public String getClassName(long bundleID) {
        PluginInfo info = (PluginInfo)this.fPluginInfos.get(Long.toString(bundleID));
        return info == null ? null : info.className;
    }

    public boolean hasExtensibleAPI(long bundleID) {
        PluginInfo info = (PluginInfo)this.fPluginInfos.get(Long.toString(bundleID));
        return info == null ? false : info.hasExtensibleAPI;
    }

    public boolean isPatchFragment(long bundleID) {
        PluginInfo info = (PluginInfo)this.fPluginInfos.get(Long.toString(bundleID));
        return info == null ? false : info.isPatchFragment;
    }

    public boolean hasBundleStructure(long bundleID) {
        PluginInfo info = (PluginInfo)this.fPluginInfos.get(Long.toString(bundleID));
        return info == null ? false : info.hasBundleStructure;
    }

    public String getPluginName(long bundleID) {
        PluginInfo info = (PluginInfo)this.fPluginInfos.get(Long.toString(bundleID));
        return info == null ? null : info.name;
    }

    public String getProviderName(long bundleID) {
        PluginInfo info = (PluginInfo)this.fPluginInfos.get(Long.toString(bundleID));
        return info == null ? null : info.providerName;
    }

    public String[] getLibraryNames(long bundleID) {
        PluginInfo info = (PluginInfo)this.fPluginInfos.get(Long.toString(bundleID));
        return info == null ? new String[]{} : info.libraries;
    }

    public String getBundleLocalization(long bundleID) {
        PluginInfo info = (PluginInfo)this.fPluginInfos.get(Long.toString(bundleID));
        return info == null ? null : info.localization;
    }

    public String getProject(long bundleID) {
        PluginInfo info = (PluginInfo)this.fPluginInfos.get(Long.toString(bundleID));
        return info == null ? null : info.project;
    }

    public String getBundleSourceEntry(long bundleID) {
        PluginInfo info = (PluginInfo)this.fPluginInfos.get(Long.toString(bundleID));
        return info == null ? null : info.bundleSourceEntry;
    }

    protected void savePluginInfo(File dir) {
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            Document doc = factory.newDocumentBuilder().newDocument();
            Element root = doc.createElement(ELEMENT_ROOT);
            Iterator iter = this.fPluginInfos.keySet().iterator();
            while (iter.hasNext()) {
                String key = iter.next().toString();
                Element element = doc.createElement(ELEMENT_BUNDLE);
                element.setAttribute(ATTR_BUNDLE_ID, key);
                PluginInfo info = (PluginInfo)this.fPluginInfos.get(key);
                if (info.className != null) {
                    element.setAttribute(ATTR_CLASS, info.className);
                }
                if (info.providerName != null) {
                    element.setAttribute(ATTR_PROVIDER, info.providerName);
                }
                if (info.name != null) {
                    element.setAttribute(ATTR_NAME, info.name);
                }
                if (info.hasExtensibleAPI) {
                    element.setAttribute(ATTR_EXTENSIBLE_API, "true");
                }
                if (info.isPatchFragment) {
                    element.setAttribute(ATTR_PATCH, "true");
                }
                if (!info.hasBundleStructure) {
                    element.setAttribute(ATTR_BUNDLE_STRUCTURE, "false");
                }
                if (info.localization != null) {
                    element.setAttribute(ATTR_LOCALIZATION, info.localization);
                }
                if (info.bundleSourceEntry != null) {
                    element.setAttribute(ATTR_BUNDLE_SOURCE, info.bundleSourceEntry);
                }
                if (info.libraries != null) {
                    int i = 0;
                    while (i < info.libraries.length) {
                        Element lib = doc.createElement(ELEMENT_LIB);
                        lib.setAttribute(ATTR_NAME, info.libraries[i]);
                        element.appendChild(lib);
                        ++i;
                    }
                }
                root.appendChild(element);
            }
            doc.appendChild(root);
            XMLPrintHandler.writeFile(doc, new File(dir, CACHE_EXTENSION));
        }
        catch (Exception e) {
            PDECore.log(e);
        }
    }

    protected boolean readPluginInfoCache(File dir) {
        File file = new File(dir, CACHE_EXTENSION);
        if (file.exists() && file.isFile()) {
            try {
                DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
                DocumentBuilder documentBuilder = factory.newDocumentBuilder();
                documentBuilder.setErrorHandler(new DefaultHandler());
                Document doc = documentBuilder.parse(file);
                Element root = doc.getDocumentElement();
                if (root != null) {
                    NodeList list = root.getChildNodes();
                    int i = 0;
                    while (i < list.getLength()) {
                        if (list.item(i).getNodeType() == 1) {
                            this.createPluginInfo((Element)list.item(i));
                        }
                        ++i;
                    }
                }
                return true;
            }
            catch (SAXException e) {
                PDECore.log(e);
            }
            catch (IOException e) {
                PDECore.log(e);
            }
            catch (ParserConfigurationException e) {
                PDECore.log(e);
            }
        }
        return false;
    }

    protected boolean exists(File dir) {
        File file = new File(dir, CACHE_EXTENSION);
        return file.exists() && file.isFile();
    }

    public static void writePluginInfo(IPluginModelBase[] models, File destination) {
        try {
            DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            Document doc = builder.newDocument();
            Element root = doc.createElement(ELEMENT_ROOT);
            doc.appendChild(root);
            int i = 0;
            while (i < models.length) {
                IPluginBase plugin = models[i].getPluginBase();
                BundleDescription desc = models[i].getBundleDescription();
                if (desc != null) {
                    String bundleSourceEntry;
                    IBundleModel bundleModel;
                    String localization;
                    Element element = doc.createElement(ELEMENT_BUNDLE);
                    element.setAttribute(ATTR_BUNDLE_ID, Long.toString(desc.getBundleId()));
                    element.setAttribute(ATTR_PROJECT, models[i].getUnderlyingResource().getProject().getName());
                    if (plugin instanceof IPlugin && ((IPlugin)plugin).getClassName() != null) {
                        element.setAttribute(ATTR_CLASS, ((IPlugin)plugin).getClassName());
                    }
                    if (plugin.getProviderName() != null) {
                        element.setAttribute(ATTR_PROVIDER, plugin.getProviderName());
                    }
                    if (plugin.getName() != null) {
                        element.setAttribute(ATTR_NAME, plugin.getName());
                    }
                    if (ClasspathUtilCore.hasExtensibleAPI(models[i])) {
                        element.setAttribute(ATTR_EXTENSIBLE_API, "true");
                    } else if (ClasspathUtilCore.isPatchFragment(models[i])) {
                        element.setAttribute(ATTR_PATCH, "true");
                    }
                    if (!(models[i] instanceof IBundlePluginModelBase)) {
                        element.setAttribute(ATTR_BUNDLE_STRUCTURE, "false");
                    }
                    if (models[i] instanceof IBundlePluginModelBase && (localization = ((IBundlePluginModelBase)models[i]).getBundleLocalization()) != null) {
                        element.setAttribute(ATTR_LOCALIZATION, localization);
                    }
                    if (models[i] instanceof IBundlePluginModelBase && (bundleModel = ((IBundlePluginModelBase)models[i]).getBundleModel()) != null && (bundleSourceEntry = bundleModel.getBundle().getHeader("Eclipse-SourceBundle")) != null) {
                        element.setAttribute(ATTR_BUNDLE_SOURCE, bundleSourceEntry);
                    }
                    IPluginLibrary[] libraries = plugin.getLibraries();
                    int j = 0;
                    while (j < libraries.length) {
                        Element lib = doc.createElement(ELEMENT_LIB);
                        lib.setAttribute(ATTR_NAME, libraries[j].getName());
                        if (!libraries[j].isExported()) {
                            lib.setAttribute(ATTR_EXPORTED, "false");
                        }
                        element.appendChild(lib);
                        ++j;
                    }
                    root.appendChild(element);
                }
                ++i;
            }
            XMLPrintHandler.writeFile(doc, new File(destination, CACHE_EXTENSION));
        }
        catch (ParserConfigurationException parserConfigurationException) {
        }
        catch (FactoryConfigurationError factoryConfigurationError) {
        }
        catch (IOException iOException) {}
    }

    protected void addAuxiliaryData(BundleDescription desc, Dictionary manifest, boolean hasBundleStructure) {
        PluginInfo info = new PluginInfo();
        info.name = (String)manifest.get("Bundle-Name");
        info.providerName = (String)manifest.get("Bundle-Vendor");
        String className = (String)manifest.get("Plugin-Class");
        info.className = className != null ? className : (String)manifest.get("Bundle-Activator");
        info.libraries = this.getClasspath(manifest);
        info.hasExtensibleAPI = "true".equals(manifest.get("Eclipse-ExtensibleAPI"));
        info.isPatchFragment = "true".equals(manifest.get("Eclipse-PatchFragment"));
        info.localization = (String)manifest.get("Bundle-Localization");
        info.hasBundleStructure = hasBundleStructure;
        info.bundleSourceEntry = (String)manifest.get("Eclipse-SourceBundle");
        this.fPluginInfos.put(Long.toString(desc.getBundleId()), info);
    }

    protected String[] getClasspath(Dictionary manifest) {
        String fullClasspath = (String)manifest.get("Bundle-ClassPath");
        String[] result = new String[]{};
        try {
            if (fullClasspath != null) {
                ManifestElement[] classpathEntries = ManifestElement.parseHeader((String)"Bundle-ClassPath", (String)fullClasspath);
                result = new String[classpathEntries.length];
                int i = 0;
                while (i < classpathEntries.length) {
                    result[i] = classpathEntries[i].getValue();
                    ++i;
                }
            }
        }
        catch (BundleException bundleException) {}
        return result;
    }

    protected void clear() {
        this.fPluginInfos.clear();
    }

    class PluginInfo {
        String name;
        String providerName;
        String className;
        boolean hasExtensibleAPI;
        boolean isPatchFragment;
        boolean hasBundleStructure;
        String[] libraries;
        String project;
        String localization;
        String bundleSourceEntry;

        PluginInfo() {
        }
    }
}

