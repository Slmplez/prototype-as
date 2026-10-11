/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.index;

import org.eclipse.help.internal.dynamic.DocumentReader;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class IndexDocumentReader
extends DocumentReader {
    protected void prepareDocument(Document document) {
        this.prune(document.getDocumentElement());
    }

    private void prune(Node element) {
        NodeList nodes = element.getChildNodes();
        Node node = nodes.item(0);
        while (node != null) {
            short nodeType = node.getNodeType();
            if (nodeType == 3 || nodeType == 8) {
                Node nodeToDelete = node;
                node = node.getNextSibling();
                element.removeChild(nodeToDelete);
                continue;
            }
            if (nodeType == 1) {
                String kind = node.getNodeName();
                if ("topic".equalsIgnoreCase(kind)) {
                    this.fixTopicAttributes((Element)node);
                }
                this.prune(node);
                node = node.getNextSibling();
                continue;
            }
            node = node.getNextSibling();
        }
    }

    private void fixTopicAttributes(Element topic) {
        String title = topic.getAttribute("name");
        if (title != null && title.length() > 0) {
            topic.setAttribute("label", title);
            topic.removeAttribute("name");
        }
    }
}

