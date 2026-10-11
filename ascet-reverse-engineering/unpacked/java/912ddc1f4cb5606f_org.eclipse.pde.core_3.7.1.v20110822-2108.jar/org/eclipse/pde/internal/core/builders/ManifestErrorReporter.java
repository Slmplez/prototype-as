/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.builders;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.builders.CompilerFlags;
import org.eclipse.pde.internal.core.builders.ManifestErrorReporter;
import org.eclipse.pde.internal.core.builders.XMLErrorReporter;
import org.eclipse.pde.internal.core.util.IdUtil;
import org.eclipse.pde.internal.core.util.VersionUtil;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

public class ManifestErrorReporter
extends XMLErrorReporter {
    public ManifestErrorReporter(IFile file) {
        super(file);
    }

    protected void reportIllegalElement(Element element, int severity) {
        Node parent = element.getParentNode();
        if (parent == null || parent instanceof Document) {
            this.report(PDECoreMessages.Builders_Manifest_illegalRoot, this.getLine(element), severity, "fatal");
        } else {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_child, (Object[])new String[]{element.getNodeName(), parent.getNodeName()}), this.getLine(element), severity, 12289, element, null, "fatal");
        }
    }

    protected void reportMissingRequiredAttribute(Element element, String attName, int severity) {
        String message = NLS.bind((String)PDECoreMessages.Builders_Manifest_missingRequired, (Object[])new String[]{attName, element.getNodeName()});
        this.report(message, this.getLine(element), severity, "fatal");
    }

    protected boolean assertAttributeDefined(Element element, String attrName, int severity) {
        Attr attr = element.getAttributeNode(attrName);
        if (attr == null) {
            this.reportMissingRequiredAttribute(element, attrName, severity);
            return false;
        }
        return true;
    }

    protected void reportUnknownAttribute(Element element, String attName, int severity) {
        String message = NLS.bind((String)PDECoreMessages.Builders_Manifest_attribute, (Object)attName);
        this.report(message, this.getLine(element, attName), severity, 12289, element, attName, "");
    }

    protected void reportIllegalAttributeValue(Element element, Attr attr) {
        String message = NLS.bind((String)PDECoreMessages.Builders_Manifest_att_value, (Object[])new String[]{attr.getValue(), attr.getName()});
        this.report(message, this.getLine(element, attr.getName()), 0, "fatal");
    }

    protected void validateVersionAttribute(Element element, Attr attr) {
        IStatus status = VersionUtil.validateVersion(attr.getValue());
        if (status.getSeverity() != 0) {
            this.report(status.getMessage(), this.getLine(element, attr.getName()), 0, "fatal");
        }
    }

    protected void validateMatch(Element element, Attr attr) {
        String value = attr.getValue();
        if (!("perfect".equals(value) || "equivalent".equals(value) || "greaterOrEqual".equals(value) || "compatible".equals(value))) {
            this.reportIllegalAttributeValue(element, attr);
        }
    }

    protected void validateElementWithContent(Element element, boolean hasContent) {
        NodeList children = element.getChildNodes();
        boolean textFound = false;
        int i = 0;
        while (i < children.getLength()) {
            Node child = children.item(i);
            if (child instanceof Text) {
                textFound = ((Text)child).getNodeValue().trim().length() > 0;
            } else if (child instanceof Element) {
                this.reportIllegalElement((Element)child, 0);
            }
            ++i;
        }
        if (!textFound) {
            this.reportMissingElementContent(element);
        }
    }

    private void reportMissingElementContent(Element element) {
        this.report(NLS.bind((String)PDECoreMessages.Builders_Feature_empty, (Object)element.getNodeName()), this.getLine(element), 0, "fatal");
    }

    protected void reportExtraneousElements(NodeList elements, int maximum) {
        if (elements.getLength() > maximum) {
            int i = maximum;
            while (i < elements.getLength()) {
                Element element = (Element)elements.item(i);
                this.report(NLS.bind((String)PDECoreMessages.Builders_Feature_multiplicity, (Object)element.getNodeName()), this.getLine(element), 0, "fatal");
                ++i;
            }
        }
    }

    protected void validateURL(Element element, String attName) {
        String value = element.getAttribute(attName);
        try {
            if (!value.startsWith("http:") && !value.startsWith("file:")) {
                value = "file:" + value;
            }
            new URL(value);
        }
        catch (MalformedURLException malformedURLException) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Feature_badURL, (Object)attName), this.getLine(element, attName), 0, "fatal");
        }
    }

    protected boolean validatePluginID(Element element, Attr attr) {
        if (!IdUtil.isValidCompositeID3_0(attr.getValue())) {
            String message = NLS.bind((String)PDECoreMessages.Builders_Manifest_compositeID, (Object)attr.getValue(), (Object)attr.getName());
            this.report(message, this.getLine(element, attr.getName()), 1, "");
            return false;
        }
        return true;
    }

    protected void validateBoolean(Element element, Attr attr) {
        String value = attr.getValue();
        if (!value.equalsIgnoreCase("true") && !value.equalsIgnoreCase("false")) {
            this.reportIllegalAttributeValue(element, attr);
        }
    }

    protected NodeList getChildrenByName(Element element, String name) {
        class NodeListImpl
        implements NodeList {
            ArrayList nodes;
            final /* synthetic */ ManifestErrorReporter this$0;

            NodeListImpl(ManifestErrorReporter manifestErrorReporter) {
                this.this$0 = manifestErrorReporter;
                this.nodes = new ArrayList<E>();
            }

            public int getLength() {
                return this.nodes.size();
            }

            public Node item(int index) {
                return (Node)this.nodes.get(index);
            }

            protected void add(Node node) {
                this.nodes.add(node);
            }
        }
        NodeListImpl list = new NodeListImpl(this);
        NodeList allChildren = element.getChildNodes();
        int i = 0;
        while (i < allChildren.getLength()) {
            Node node = allChildren.item(i);
            if (name.equals(node.getNodeName())) {
                list.add(node);
            }
            ++i;
        }
        return list;
    }

    protected void reportDeprecatedAttribute(Element element, Attr attr) {
        int severity = CompilerFlags.getFlag(this.fProject, "compilers.p.deprecated");
        if (severity != 2) {
            this.report(NLS.bind((String)PDECoreMessages.Builders_Manifest_deprecated_attribute, (Object)attr.getName()), this.getLine(element, attr.getName()), severity, "deprecation");
        }
    }
}

