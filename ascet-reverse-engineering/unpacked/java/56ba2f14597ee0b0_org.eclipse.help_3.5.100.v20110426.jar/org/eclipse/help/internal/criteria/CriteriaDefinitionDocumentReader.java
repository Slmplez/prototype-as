/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.criteria;

import org.eclipse.help.internal.dynamic.DocumentReader;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class CriteriaDefinitionDocumentReader
extends DocumentReader {
    private static final String CRITERION_ELEMENT = "criterion";
    private static final String CRITERION_ID_ATTRIBUTE = "id";

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
                if (CRITERION_ELEMENT.equalsIgnoreCase(kind)) {
                    this.fixCriterionId((Element)node);
                }
                this.prune(node);
                node = node.getNextSibling();
                continue;
            }
            node = node.getNextSibling();
        }
    }

    private void fixCriterionId(Element criterion) {
        String id = criterion.getAttribute(CRITERION_ID_ATTRIBUTE);
        if (id != null && id.length() > 0) {
            criterion.setAttribute(CRITERION_ID_ATTRIBUTE, id.toLowerCase());
        }
    }
}

