/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import org.eclipse.pde.internal.core.schema.BaseSchemaHandler;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

public class SchemaElementHandler
extends BaseSchemaHandler {
    private String fElementName;
    private String fTargetElementName;
    private StringBuffer fDescription;
    private static final String[] DESC_NESTED_ELEM = new String[]{"documentation", "annotation", "element"};
    private static final String NAME_ATTR = "name";

    public SchemaElementHandler(String targetElementName) {
        this.setTargetElementName(targetElementName);
    }

    public void setTargetElementName(String targetElement) {
        this.fTargetElementName = targetElement;
    }

    protected void reset() {
        super.reset();
        this.fDescription = new StringBuffer();
        this.fElementName = null;
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        super.startElement(uri, localName, qName, attributes);
        if (qName.compareTo(DESC_NESTED_ELEM[2]) == 0) {
            this.fElementName = attributes.getValue(NAME_ATTR);
        }
    }

    public void characters(char[] ch, int start, int length) throws SAXException {
        if (this.onTarget()) {
            int i = 0;
            while (i < length) {
                this.fDescription.append(ch[start + i]);
                ++i;
            }
        }
    }

    protected boolean onTarget() {
        if (this.fElementList.size() >= DESC_NESTED_ELEM.length) {
            int i = 0;
            while (i < DESC_NESTED_ELEM.length) {
                String currentElement = (String)this.fElementList.get(i);
                if (currentElement.compareTo(DESC_NESTED_ELEM[i]) != 0) {
                    return false;
                }
                ++i;
            }
            return this.fElementName != null && this.fElementName.compareTo(this.fTargetElementName) == 0;
        }
        return false;
    }

    public String getDescription() {
        return this.fDescription.toString();
    }
}

