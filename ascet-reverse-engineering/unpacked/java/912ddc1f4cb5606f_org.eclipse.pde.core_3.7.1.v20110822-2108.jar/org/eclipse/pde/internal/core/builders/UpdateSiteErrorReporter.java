/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.pde.internal.core.builders;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.pde.internal.core.builders.ManifestErrorReporter;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.NodeList;

public class UpdateSiteErrorReporter
extends ManifestErrorReporter {
    private IProgressMonitor fMonitor;

    public UpdateSiteErrorReporter(IFile file) {
        super(file);
    }

    public void validateContent(IProgressMonitor monitor) {
        this.fMonitor = monitor;
        Element root = this.getDocumentRoot();
        if (root == null) {
            return;
        }
        String elementName = root.getNodeName();
        if (!"site".equals(elementName)) {
            this.reportIllegalElement(root, 0);
        } else {
            NamedNodeMap attributes = root.getAttributes();
            int i = 0;
            while (i < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(i);
                String name = attr.getName();
                if (!(name.equals("type") || name.equals("url") || name.equals("mirrorsURL") || name.equals("digestURL") || name.equals("pack200") || name.equals("availableLocales") || name.equals("associateSitesURL"))) {
                    this.reportUnknownAttribute(root, name, 0);
                }
                ++i;
            }
            this.validateDescription(root);
            this.validateFeatures(root);
            this.validateCategoryDefinitions(root);
            this.validateArchives(root);
        }
    }

    private void validateArchives(Element root) {
        NodeList list = this.getChildrenByName(root, "archive");
        int i = 0;
        while (i < list.getLength()) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element element = (Element)list.item(i);
            this.assertAttributeDefined(element, "path", 0);
            this.assertAttributeDefined(element, "url", 0);
            NamedNodeMap attributes = element.getAttributes();
            int j = 0;
            while (j < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(j);
                String name = attr.getName();
                if (name.equals("url")) {
                    this.validateURL(element, "url");
                } else if (!name.equals("path")) {
                    this.reportUnknownAttribute(element, name, 0);
                }
                ++j;
            }
            ++i;
        }
    }

    private void validateCategoryDefinitions(Element root) {
        NodeList list = this.getChildrenByName(root, "category-def");
        int i = 0;
        while (i < list.getLength()) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element element = (Element)list.item(i);
            this.assertAttributeDefined(element, "name", 0);
            this.assertAttributeDefined(element, "label", 0);
            NamedNodeMap attributes = element.getAttributes();
            int j = 0;
            while (j < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(j);
                String name = attr.getName();
                if (!name.equals("name") && !name.equals("label")) {
                    this.reportUnknownAttribute(element, name, 0);
                }
                ++j;
            }
            this.validateDescription(element);
            ++i;
        }
    }

    private void validateCategories(Element root) {
        NodeList list = this.getChildrenByName(root, "category");
        int i = 0;
        while (i < list.getLength()) {
            if (this.fMonitor.isCanceled()) {
                return;
            }
            Element element = (Element)list.item(i);
            this.assertAttributeDefined(element, "name", 0);
            NamedNodeMap attributes = element.getAttributes();
            int j = 0;
            while (j < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(j);
                String name = attr.getName();
                if (!name.equals("name")) {
                    this.reportUnknownAttribute(element, name, 0);
                }
                ++j;
            }
            ++i;
        }
    }

    private void validateFeatures(Element parent) {
        NodeList list = this.getChildrenByName(parent, "feature");
        int i = 0;
        while (i < list.getLength()) {
            Element element = (Element)list.item(i);
            this.assertAttributeDefined(element, "url", 0);
            NamedNodeMap attributes = element.getAttributes();
            int j = 0;
            while (j < attributes.getLength()) {
                Attr attr = (Attr)attributes.item(j);
                String name = attr.getName();
                if (name.equals("url")) {
                    this.validateURL(element, "url");
                } else if (name.equals("patch")) {
                    this.validateBoolean(element, attr);
                } else if (name.equals("version")) {
                    this.validateVersionAttribute(element, attr);
                } else if (!(name.equals("type") || name.equals("id") || name.equals("os") || name.equals("ws") || name.equals("nl") || name.equals("arch"))) {
                    this.reportUnknownAttribute(element, name, 0);
                }
                ++j;
            }
            this.validateCategories(element);
            ++i;
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
            if (element.getAttributeNode("url") != null) {
                this.validateURL(element, "url");
            }
            this.reportExtraneousElements(list, 1);
        }
    }
}

