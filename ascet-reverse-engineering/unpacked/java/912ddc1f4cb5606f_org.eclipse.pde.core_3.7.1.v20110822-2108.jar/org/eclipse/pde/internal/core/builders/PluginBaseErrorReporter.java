/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.builders;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.builders.CompilerFlags;
import org.eclipse.pde.internal.core.builders.ExtensionsErrorReporter;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public abstract class PluginBaseErrorReporter
extends ExtensionsErrorReporter {
    public PluginBaseErrorReporter(IFile file) {
        super(file);
    }

    public void validateContent(IProgressMonitor monitor) {
        Element element = this.getDocumentRoot();
        if (element == null) {
            return;
        }
        String elementName = element.getNodeName();
        if (!this.getRootElementName().equals(elementName)) {
            this.reportIllegalElement(element, 0);
        } else {
            this.validateTopLevelAttributes(element);
            NodeList children = element.getChildNodes();
            int i = 0;
            while (i < children.getLength()) {
                if (monitor.isCanceled()) break;
                Element child = (Element)children.item(i);
                String name = child.getNodeName();
                if (name.equals("extension")) {
                    this.validateExtension(child);
                } else if (name.equals("extension-point")) {
                    this.validateExtensionPoint(child);
                } else if (name.equals("runtime")) {
                    this.validateRuntime(child);
                } else if (name.equals("requires")) {
                    this.validateRequires(child);
                } else {
                    int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-element");
                    if (severity != 2) {
                        this.reportIllegalElement(element, severity);
                    }
                }
                ++i;
            }
        }
    }

    protected void validateTopLevelAttributes(Element element) {
        Attr attr;
        if (this.assertAttributeDefined(element, "id", 0)) {
            this.validatePluginID(element, element.getAttributeNode("id"));
        }
        if (this.assertAttributeDefined(element, "version", 0)) {
            this.validateVersionAttribute(element, element.getAttributeNode("version"));
        }
        if (this.assertAttributeDefined(element, "name", 0)) {
            this.validateTranslatableString(element, element.getAttributeNode("name"), true);
        }
        if ((attr = element.getAttributeNode("provider-name")) != null) {
            this.validateTranslatableString(element, attr, true);
        }
    }

    protected abstract String getRootElementName();

    protected void validateRequires(Element element) {
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-element");
        NodeList children = element.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Element child = (Element)children.item(i);
            if (child.getNodeName().equals("import")) {
                this.validateImport(child);
            } else if (severity != 2) {
                this.reportIllegalElement(child, severity);
            }
            ++i;
        }
    }

    protected void validateImport(Element element) {
        Attr attr;
        if (this.assertAttributeDefined(element, "plugin", 0)) {
            this.validatePluginIDRef(element, element.getAttributeNode("plugin"));
        }
        if ((attr = element.getAttributeNode("version")) != null) {
            this.validateVersionAttribute(element, attr);
        }
        if ((attr = element.getAttributeNode("match")) != null) {
            this.validateMatch(element, attr);
        }
        if ((attr = element.getAttributeNode("export")) != null) {
            this.validateBoolean(element, attr);
        }
        if ((attr = element.getAttributeNode("optional")) != null) {
            this.validateBoolean(element, attr);
        }
    }

    protected void validateRuntime(Element element) {
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-element");
        NodeList children = element.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Element child = (Element)children.item(i);
            if (child.getNodeName().equals("library")) {
                this.validateLibrary(child);
            } else if (severity != 2) {
                this.reportIllegalElement(child, severity);
            }
            ++i;
        }
    }

    protected void validateLibrary(Element element) {
        this.assertAttributeDefined(element, "name", 0);
        int unknownSev = CompilerFlags.getFlag(this.fProject, "compilers.p.unknown-element");
        int deprecatedSev = CompilerFlags.getFlag(this.fProject, "compilers.p.deprecated");
        NodeList children = element.getChildNodes();
        int i = 0;
        while (i < children.getLength()) {
            Element child = (Element)children.item(i);
            String elementName = child.getNodeName();
            if ("export".equals(elementName)) {
                this.assertAttributeDefined(child, "name", 0);
            } else if ("packages".equals(elementName)) {
                if (deprecatedSev != 2) {
                    this.reportDeprecatedElement(child, deprecatedSev);
                }
            } else if (unknownSev != 2) {
                this.reportIllegalElement(child, unknownSev);
            }
            ++i;
        }
    }

    protected void validatePluginIDRef(Element element, Attr attr) {
        IPluginModelBase model;
        if (!this.validatePluginID(element, attr)) {
            return;
        }
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.unresolved-import");
        if ("true".equals(element.getAttribute("optional")) && severity == 0) {
            severity = 1;
        }
        if (!(severity == 2 || (model = PluginRegistry.findModel(attr.getValue())) != null && model.isEnabled())) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_dependency, (Object)attr.getValue()), this.getLine(element, attr.getName()), severity, "fatal");
        }
    }

    private void reportDeprecatedElement(Element element, int severity) {
        this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_deprecated_3_0, (Object)element.getNodeName()), this.getLine(element), severity, "deprecation");
    }
}

