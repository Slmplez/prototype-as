/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.dynamic;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.help.HelpSystem;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.dynamic.DocumentProcessor;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.eclipse.help.internal.extension.ContentExtension;
import org.eclipse.help.internal.extension.ContentExtensionManager;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

public class ExtensionResolver {
    private static final String ELEMENT_BODY = "body";
    private static final String ATTRIBUTE_ID = "id";
    private DocumentProcessor processor;
    private DocumentReader reader;
    private String locale;
    private ContentExtensionManager manager;

    public ExtensionResolver(DocumentProcessor processor, DocumentReader reader, String locale) {
        this.processor = processor;
        this.reader = reader;
        this.locale = locale;
    }

    public Node[] resolveExtension(String path, int type) {
        if (this.manager == null) {
            this.manager = HelpPlugin.getContentExtensionManager();
        }
        ContentExtension[] extensions = this.manager.getExtensions(path, type, this.locale);
        ArrayList<Node> list = new ArrayList<Node>();
        int i = 0;
        while (i < extensions.length) {
            String content = extensions[i].getContent();
            try {
                Node[] nodes = this.getContent(content);
                int j = 0;
                while (j < nodes.length) {
                    list.add(nodes[j]);
                    ++j;
                }
            }
            catch (Throwable throwable) {}
            ++i;
        }
        return list.toArray(new Node[list.size()]);
    }

    private Node[] getContent(String content) throws IOException, SAXException, ParserConfigurationException {
        int bundleEnd;
        String bundleId = null;
        String relativePath = null;
        String nodeId = null;
        int bundleStart = 0;
        if (content.charAt(0) == '/') {
            bundleStart = 1;
        }
        if ((bundleEnd = content.indexOf(47, bundleStart + 1)) > bundleStart) {
            bundleId = content.substring(bundleStart, bundleEnd);
            int pathStart = bundleEnd + 1;
            int pathEnd = content.indexOf(35, pathStart + 1);
            if (pathEnd == -1) {
                String secondLastToken;
                int lastSlash = content.lastIndexOf(47);
                int secondLastSlash = content.lastIndexOf(47, lastSlash - 1);
                pathEnd = secondLastSlash != -1 && lastSlash > secondLastSlash ? ((secondLastToken = content.substring(secondLastSlash + 1, lastSlash)).indexOf(46) != -1 ? lastSlash : content.length()) : content.length();
            }
            relativePath = content.substring(pathStart, pathEnd);
            if (pathEnd < content.length()) {
                nodeId = content.substring(pathEnd + 1);
            }
        }
        if (bundleId != null && relativePath != null) {
            return this.getContent(bundleId, relativePath, nodeId);
        }
        return null;
    }

    private Node[] getContent(String bundleId, String relativePath, String nodeId) throws IOException, SAXException, ParserConfigurationException {
        Node[] nodeArray;
        InputStream in;
        String href;
        block11: {
            href = String.valueOf('/') + bundleId + '/' + relativePath;
            in = HelpSystem.getHelpContent(href, this.locale);
            if (nodeId == null) break block11;
            Element element = this.findElement(in, nodeId);
            this.processor.process(new UAElement(element), href);
            Node[] nodeArray2 = new Node[]{element};
            try {
                in.close();
            }
            catch (IOException iOException) {}
            return nodeArray2;
        }
        try {
            Element body = this.findBody(in);
            ArrayList<Node> children = new ArrayList<Node>();
            Node node = body.getFirstChild();
            while (node != null) {
                if (node.getNodeType() == 1) {
                    this.processor.process(new UAElement((Element)node), href);
                }
                children.add(node);
                node = node.getNextSibling();
            }
            nodeArray = children.toArray(new Node[children.size()]);
        }
        catch (Throwable throwable) {
            try {
                in.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            in.close();
        }
        catch (IOException iOException) {}
        return nodeArray;
    }

    private Element findElement(InputStream in, String elementId) throws IOException, SAXException, ParserConfigurationException {
        return this.findElement(this.reader.read(in).getElement(), elementId);
    }

    private Element findElement(Element element, String elementId) {
        String id = element.getAttribute(ATTRIBUTE_ID);
        if (id != null && id.equals(elementId)) {
            return element;
        }
        Node node = element.getFirstChild();
        while (node != null) {
            if (node.getNodeType() == 1 && (element = this.findElement((Element)node, elementId)) != null) {
                return element;
            }
            node = node.getNextSibling();
        }
        return null;
    }

    private Element findBody(InputStream in) throws IOException, SAXException, ParserConfigurationException {
        return this.findBody(this.reader.read(in).getElement());
    }

    private Element findBody(Element element) {
        if (ELEMENT_BODY.equals(element.getNodeName())) {
            return element;
        }
        Node node = element.getFirstChild();
        while (node != null) {
            Element body;
            if (node.getNodeType() == 1 && (body = this.findBody((Element)node)) != null) {
                return body;
            }
            node = node.getNextSibling();
        }
        return null;
    }
}

