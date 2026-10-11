/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.builders;

import java.util.Arrays;
import java.util.HashSet;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.ModelEntry;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.builders.CompilerFlags;
import org.eclipse.pde.internal.core.builders.ManifestErrorReporter;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModel;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.util.CoreUtility;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.NodeList;

public class FeatureErrorReporter
extends ManifestErrorReporter {
    static HashSet attrs = new HashSet();
    static String[] attrNames = new String[]{"id", "version", "label", "provider-name", "image", "os", "ws", "arch", "nl", "colocation-affinity", "primary", "exclusive", "plugin", "application", "license-feature", "license-feature-version"};
    private IProgressMonitor fMonitor;

    public FeatureErrorReporter(IFile file) {
        super(file);
        if (attrs.isEmpty()) {
            attrs.addAll(Arrays.asList(attrNames));
        }
    }

    public void validateContent(IProgressMonitor monitor) {
        this.fMonitor = monitor;
        Element element = this.getDocumentRoot();
        if (element == null) {
            return;
        }
        String elementName = element.getNodeName();
        if (!"feature".equals(elementName)) {
            this.reportIllegalElement(element, 0);
        } else {
            this.validateFeatureAttributes(element);
            this.validateInstallHandler(element);
            this.validateDescription(element);
            this.validateLicense(element);
            this.validateCopyright(element);
            this.validateURLElement(element);
            this.validateIncludes(element);
            this.validateRequires(element);
            this.validatePlugins(element);
            this.validateData(element);
        }
    }

    private void validateData(Element parent) {
        NodeList list = this.getChildrenByName(parent, "data");
        int i = 0;
        while (i < list.getLength()) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element data = (Element)list.item(i);
            this.assertAttributeDefined(data, "id", 0);
            NamedNodeMap attributes = data.getAttributes();
            int j = 0;
            while (j < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(j);
                String name = attr.getName();
                if (!(name.equals("id") || name.equals("os") || name.equals("ws") || name.equals("nl") || name.equals("arch") || name.equals("download-size") || name.equals("install-size"))) {
                    this.reportUnknownAttribute(data, name, 0);
                }
                ++j;
            }
            ++i;
        }
    }

    private void validatePlugins(Element parent) {
        NodeList list = this.getChildrenByName(parent, "plugin");
        int i = 0;
        while (i < list.getLength()) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element plugin = (Element)list.item(i);
            this.assertAttributeDefined(plugin, "id", 0);
            this.assertAttributeDefined(plugin, "version", 0);
            NamedNodeMap attributes = plugin.getAttributes();
            boolean isFragment = plugin.getAttribute("fragment").equals("true");
            int j = 0;
            while (j < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(j);
                String name = attr.getName();
                if (name.equals("id")) {
                    this.validatePluginID(plugin, attr, isFragment);
                } else if (name.equals("version")) {
                    this.validateVersionAttribute(plugin, attr);
                    this.validateVersion(plugin, attr);
                } else if (name.equals("fragment") || name.equals("unpack")) {
                    this.validateBoolean(plugin, attr);
                } else if (!(name.equals("os") || name.equals("ws") || name.equals("nl") || name.equals("arch") || name.equals("download-size") || name.equals("install-size") || name.equals("filter"))) {
                    this.reportUnknownAttribute(plugin, name, 0);
                }
                ++j;
            }
            this.validateUnpack(plugin);
            ++i;
        }
    }

    private void validateRequires(Element parent) {
        NodeList list = this.getChildrenByName(parent, "requires");
        if (list.getLength() > 0) {
            this.validateImports((Element)list.item(0));
            this.reportExtraneousElements(list, 1);
        }
    }

    private void validateImports(Element parent) {
        NodeList list = this.getChildrenByName(parent, "import");
        int i = 0;
        while (i < list.getLength()) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element element = (Element)list.item(i);
            Attr plugin = element.getAttributeNode("plugin");
            Attr feature = element.getAttributeNode("feature");
            if (plugin == null && feature == null) {
                this.assertAttributeDefined(element, "plugin", 0);
            } else if (plugin != null && feature != null) {
                this.reportExclusiveAttributes(element, "plugin", "feature", 0);
            } else if (plugin != null) {
                this.validatePluginID(element, plugin, false);
            } else if (feature != null) {
                this.validateFeatureID(element, feature);
            }
            NamedNodeMap attributes = element.getAttributes();
            int j = 0;
            while (j < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(j);
                String name = attr.getName();
                if (name.equals("version")) {
                    this.validateVersionAttribute(element, attr);
                } else if (name.equals("match")) {
                    if (element.getAttributeNode("patch") != null) {
                        this.report(NLS.bind((String)PDECoreMessages.Builders_Feature_patchedMatch, (Object)attr.getValue()), this.getLine(element, attr.getValue()), 0, "fatal");
                    } else {
                        this.validateMatch(element, attr);
                    }
                } else if (name.equals("patch")) {
                    if ("true".equalsIgnoreCase(attr.getValue()) && feature == null) {
                        this.report(NLS.bind((String)PDECoreMessages.Builders_Feature_patchPlugin, (Object)attr.getValue()), this.getLine(element, attr.getValue()), 0, "fatal");
                    } else if ("true".equalsIgnoreCase(attr.getValue()) && element.getAttributeNode("version") == null) {
                        this.report(NLS.bind((String)PDECoreMessages.Builders_Feature_patchedVersion, (Object)attr.getValue()), this.getLine(element, attr.getValue()), 0, "fatal");
                    } else {
                        this.validateBoolean(element, attr);
                    }
                } else if (!(name.equals("plugin") || name.equals("feature") || name.equals("filter"))) {
                    this.reportUnknownAttribute(element, name, 0);
                }
                ++j;
            }
            ++i;
        }
    }

    private void validateIncludes(Element parent) {
        NodeList list = this.getChildrenByName(parent, "includes");
        int i = 0;
        while (i < list.getLength()) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element include = (Element)list.item(i);
            if (this.assertAttributeDefined(include, "id", 0) && this.assertAttributeDefined(include, "version", 0)) {
                this.validateFeatureID(include, include.getAttributeNode("id"));
            }
            NamedNodeMap attributes = include.getAttributes();
            int j = 0;
            while (j < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(j);
                String name = attr.getName();
                if (name.equals("version")) {
                    this.validateVersionAttribute(include, attr);
                } else if (name.equals("optional")) {
                    this.validateBoolean(include, attr);
                } else if (name.equals("search-location")) {
                    String value = include.getAttribute("search-location");
                    if (!(value.equals("root") || value.equals("self") || value.equals("both"))) {
                        this.reportIllegalAttributeValue(include, attr);
                    }
                } else if (!(name.equals("id") || name.equals("name") || name.equals("os") || name.equals("ws") || name.equals("nl") || name.equals("arch") || name.equals("filter"))) {
                    this.reportUnknownAttribute(include, name, 0);
                }
                ++j;
            }
            ++i;
        }
    }

    private void validateURLElement(Element parent) {
        NodeList list = this.getChildrenByName(parent, "url");
        if (list.getLength() > 0) {
            Element url = (Element)list.item(0);
            this.validateUpdateURL(url);
            this.validateDiscoveryURL(url);
            this.reportExtraneousElements(list, 1);
        }
    }

    private void validateUpdateURL(Element parent) {
        NodeList list = this.getChildrenByName(parent, "update");
        if (list.getLength() > 0) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element update = (Element)list.item(0);
            this.assertAttributeDefined(update, "url", 0);
            NamedNodeMap attributes = update.getAttributes();
            int i = 0;
            while (i < attributes.getLength()) {
                String name = attributes.item(i).getNodeName();
                if (name.equals("url")) {
                    this.validateURL(update, "url");
                } else if (!name.equals("label")) {
                    this.reportUnknownAttribute(update, name, 0);
                }
                ++i;
            }
            this.reportExtraneousElements(list, 1);
        }
    }

    private void validateDiscoveryURL(Element parent) {
        NodeList list = this.getChildrenByName(parent, "discovery");
        if (list.getLength() > 0) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element discovery = (Element)list.item(0);
            this.assertAttributeDefined(discovery, "url", 0);
            NamedNodeMap attributes = discovery.getAttributes();
            int i = 0;
            while (i < attributes.getLength()) {
                String name = attributes.item(i).getNodeName();
                if (name.equals("url")) {
                    this.validateURL(discovery, "url");
                } else if (name.equals("type")) {
                    String value = discovery.getAttribute("type");
                    if (!value.equals("web") && !value.equals("update")) {
                        this.reportIllegalAttributeValue(discovery, (Attr)attributes.item(i));
                    }
                    this.reportDeprecatedAttribute(discovery, discovery.getAttributeNode("type"));
                } else if (!name.equals("label")) {
                    this.reportUnknownAttribute(discovery, name, 0);
                }
                ++i;
            }
        }
    }

    private void validateCopyright(Element parent) {
        NodeList list = this.getChildrenByName(parent, "copyright");
        if (list.getLength() > 0) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element element = (Element)list.item(0);
            this.validateElementWithContent((Element)list.item(0), true);
            NamedNodeMap attributes = element.getAttributes();
            int i = 0;
            while (i < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(i);
                String name = attr.getName();
                if (name.equals("url")) {
                    this.validateURL(element, name);
                } else {
                    this.reportUnknownAttribute(element, name, 0);
                }
                ++i;
            }
            this.reportExtraneousElements(list, 1);
        }
    }

    private void validateLicense(Element parent) {
        NodeList list = this.getChildrenByName(parent, "license");
        if (list.getLength() > 0) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element element = (Element)list.item(0);
            this.validateElementWithContent((Element)list.item(0), true);
            NamedNodeMap attributes = element.getAttributes();
            int i = 0;
            while (i < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(i);
                String name = attr.getName();
                if (name.equals("url")) {
                    this.validateURL(element, name);
                } else {
                    this.reportUnknownAttribute(element, name, 0);
                }
                ++i;
            }
            this.reportExtraneousElements(list, 1);
        }
    }

    private void validateDescription(Element parent) {
        NodeList list = this.getChildrenByName(parent, "description");
        if (list.getLength() > 0) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element element = (Element)list.item(0);
            this.validateElementWithContent((Element)list.item(0), true);
            NamedNodeMap attributes = element.getAttributes();
            int i = 0;
            while (i < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(i);
                String name = attr.getName();
                if (name.equals("url")) {
                    this.validateURL(element, name);
                } else {
                    this.reportUnknownAttribute(element, name, 0);
                }
                ++i;
            }
            this.reportExtraneousElements(list, 1);
        }
    }

    private void validateInstallHandler(Element element) {
        NodeList elements = this.getChildrenByName(element, "install-handler");
        if (elements.getLength() > 0) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element handler = (Element)elements.item(0);
            NamedNodeMap attributes = handler.getAttributes();
            int i = 0;
            while (i < attributes.getLength()) {
                String name = attributes.item(i).getNodeName();
                if (!name.equals("library") && !name.equals("handler")) {
                    this.reportUnknownAttribute(handler, name, 0);
                }
                ++i;
            }
            this.reportExtraneousElements(elements, 1);
        }
    }

    private void validateFeatureAttributes(Element element) {
        if (this.fMonitor.isCanceled()) {
            return;
        }
        this.assertAttributeDefined(element, "id", 0);
        this.assertAttributeDefined(element, "version", 0);
        NamedNodeMap attributes = element.getAttributes();
        int i = 0;
        while (i < attributes.getLength()) {
            String name = attributes.item(i).getNodeName();
            if (!attrs.contains(name)) {
                this.reportUnknownAttribute(element, name, 0);
            } else if (name.equals("id")) {
                this.validatePluginID(element, (Attr)attributes.item(i));
            } else if (name.equals("primary") || name.equals("exclusive")) {
                this.validateBoolean(element, (Attr)attributes.item(i));
            } else if (name.equals("version")) {
                this.validateVersionAttribute(element, (Attr)attributes.item(i));
            }
            if (name.equals("primary")) {
                this.reportDeprecatedAttribute(element, (Attr)attributes.item(i));
            } else if (name.equals("plugin")) {
                this.validatePluginID(element, (Attr)attributes.item(i), false);
            }
            ++i;
        }
    }

    private void validatePluginID(Element element, Attr attr, boolean isFragment) {
        IPluginModelBase model;
        String id = attr.getValue();
        if (!this.validatePluginID(element, attr)) {
            return;
        }
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.f.unresolved-plugins");
        if (severity != 2 && ((model = PluginRegistry.findModel(id)) == null || !model.isEnabled() || isFragment && !model.isFragmentModel() || !isFragment && model.isFragmentModel())) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Feature_reference, (Object)id), this.getLine(element, attr.getName()), severity, "");
        }
    }

    private void validateFeatureID(Element element, Attr attr) {
        IFeatureModel[] models;
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.f.unresolved-features");
        if (severity != 2 && (models = PDECore.getDefault().getFeatureModelManager().findFeatureModels(attr.getValue())).length == 0) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Feature_freference, (Object)attr.getValue()), this.getLine(element, attr.getName()), severity, "");
        }
    }

    protected void reportExclusiveAttributes(Element element, String attName1, String attName2, int severity) {
        String message = NLS.bind((String)PDECoreMessages.Builders_Feature_exclusiveAttributes, (Object[])new String[]{attName1, attName2});
        this.report(message, this.getLine(element, attName2), severity, "");
    }

    private void validateUnpack(Element parent) {
        IBundlePluginModel bModel;
        IManifestHeader header;
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.f.unresolved-plugins");
        if (severity == 2) {
            return;
        }
        if (severity == 0) {
            severity = 1;
        }
        String unpack = parent.getAttribute("unpack");
        IPluginModelBase pModel = PluginRegistry.findModel(parent.getAttribute("id"));
        if (pModel == null) {
            return;
        }
        if (pModel instanceof IBundlePluginModel && (header = (bModel = (IBundlePluginModel)pModel).getBundleModel().getBundle().getManifestHeader("Eclipse-BundleShape")) != null) {
            String unpackValue;
            String value = header.getValue();
            String string = unpackValue = "true".equals(unpack) ? "jar" : "dir";
            if (value != null && !value.equalsIgnoreCase(unpackValue)) {
                String message = NLS.bind((String)PDECoreMessages.Builders_Feature_mismatchUnpackBundleShape, (Object[])new String[]{"unpack=" + unpack, parent.getAttribute("id"), "Eclipse-BundleShape: " + value});
                this.report(message, this.getLine(parent), severity, "");
            }
        }
        if ("true".equals(unpack) && !CoreUtility.guessUnpack(pModel.getBundleDescription())) {
            String message = NLS.bind((String)PDECoreMessages.Builders_Feature_missingUnpackFalse, (Object[])new String[]{parent.getAttribute("id"), "unpack=\"false\""});
            this.report(message, this.getLine(parent), severity, "");
        }
    }

    private void validateVersion(Element plugin, Attr attr) {
        String id = plugin.getAttribute("id");
        String version = plugin.getAttribute("version");
        if (id.trim().length() == 0 || version.trim().length() == 0 || version.equals("0.0.0")) {
            return;
        }
        ModelEntry entry = PluginRegistry.findEntry(id);
        if (entry != null) {
            IPluginModelBase[] allModels = entry.getActiveModels();
            int i = 0;
            while (i < allModels.length) {
                IPluginModelBase availablePlugin = allModels[i];
                if (id.equals(availablePlugin.getPluginBase().getId()) && version.equals(availablePlugin.getPluginBase().getVersion())) {
                    return;
                }
                ++i;
            }
        }
        this.report(NLS.bind((String)PDECoreMessages.Builders_Feature_mismatchPluginVersion, (Object[])new String[]{version, id}), this.getLine(plugin, attr.getName()), 1, "");
    }
}

