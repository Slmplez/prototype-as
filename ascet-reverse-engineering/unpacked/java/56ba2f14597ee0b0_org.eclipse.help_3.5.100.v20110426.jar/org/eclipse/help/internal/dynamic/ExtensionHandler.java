/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.dynamic;

import org.eclipse.help.internal.Anchor;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.UAElementFactory;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.eclipse.help.internal.dynamic.ExtensionResolver;
import org.eclipse.help.internal.dynamic.ProcessorHandler;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class ExtensionHandler
extends ProcessorHandler {
    private static final String ATTRIBUTE_ID = "id";
    private ExtensionResolver resolver;
    private DocumentReader reader;
    private String locale;

    public ExtensionHandler(DocumentReader reader, String locale) {
        this.reader = reader;
        this.locale = locale;
    }

    public short handle(UAElement element, String path) {
        if (element instanceof Anchor) {
            return this.handleExtension(element, path, 0);
        }
        if (element.getAttribute(ATTRIBUTE_ID) != null) {
            return this.handleExtension(element, path, 1);
        }
        return 0;
    }

    private short handleExtension(UAElement uaElement, String path, int type) {
        String id = uaElement.getAttribute(ATTRIBUTE_ID);
        if (id != null && id.length() > 0) {
            Node[] nodes;
            if (this.resolver == null) {
                this.resolver = new ExtensionResolver(this.getProcessor(), this.reader, this.locale);
            }
            if ((nodes = this.resolver.resolveExtension(String.valueOf(path) + '#' + id, type)) != null && nodes.length > 0) {
                Element domElement = uaElement.getElement();
                UAElement parent = uaElement.getParentElement();
                int i = 0;
                while (i < nodes.length) {
                    if (nodes[i].getNodeType() == 1) {
                        parent.insertBefore(UAElementFactory.newElement((Element)nodes[i]), uaElement);
                    } else {
                        Node node = domElement.getOwnerDocument().importNode(nodes[i], true);
                        parent.getElement().insertBefore(node, domElement);
                    }
                    ++i;
                }
                parent.removeChild(uaElement);
                return 2;
            }
        }
        if (type == 0) {
            uaElement.getParentElement().removeChild(uaElement);
            return 2;
        }
        return 0;
    }
}

