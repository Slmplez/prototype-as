/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import org.eclipse.pde.internal.core.schema.BaseSchemaHandler;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

public class SchemaAttributeHandler
extends BaseSchemaHandler {
    private String fElementName;
    private String fAttributeName;
    private String fTargetElementName;
    private String fTargetAttributeName;
    private StringBuffer fDescription;
    private static final String[] DESC_NESTED_ELEM = new String[]{"documentation", "annotation", "attribute", "complexType", "element"};
    private static final String NAME_ATTR = "name";

    public SchemaAttributeHandler(String targetElementName, String targetAttributeName) {
        this.setTargetElementName(targetElementName);
        this.setTargetAttributeName(targetAttributeName);
    }

    public void setTargetElementName(String targetElementName) {
        this.fTargetElementName = targetElementName;
    }

    public void setTargetAttributeName(String targetAttributeName) {
        this.fTargetAttributeName = targetAttributeName;
    }

    protected void reset() {
        super.reset();
        this.fDescription = new StringBuffer();
        this.fElementName = null;
        this.fAttributeName = null;
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        super.startElement(uri, localName, qName, attributes);
        if (qName.compareTo(DESC_NESTED_ELEM[4]) == 0) {
            if (attributes != null && attributes.getValue(NAME_ATTR) != null) {
                this.fElementName = attributes.getValue(NAME_ATTR);
            }
        } else if (qName.compareTo(DESC_NESTED_ELEM[2]) == 0 && attributes != null) {
            this.fAttributeName = attributes.getValue(NAME_ATTR);
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
            if (this.fElementName == null || this.fElementName.compareTo(this.fTargetElementName) != 0) {
                return false;
            }
            return this.fAttributeName != null && this.fAttributeName.compareTo(this.fTargetAttributeName) == 0;
        }
        return false;
    }

    public String getDescription() {
        return this.fDescription.toString();
    }
}

