/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.schema;

import org.eclipse.pde.internal.core.schema.BaseSchemaHandler;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

public class SchemaAnnotationHandler
extends BaseSchemaHandler {
    private static final String[] DESC_NESTED_ELEM = new String[]{"documentation", "annotation", "schema"};
    private static final String META_SCHEMA_ELEM = "meta.schema";
    private static final String APP_INFO_ELEM = "appinfo";
    private static final String APP_INFO_ELEM_OLD = "appInfo";
    private static final String NAME_ATTR = "name";
    private StringBuffer fDescription;
    private String fName;
    private boolean fMetaSchemaElemFlag;
    private boolean fAppInfoElemFlag;

    protected void reset() {
        super.reset();
        this.fName = null;
        this.fDescription = new StringBuffer();
        this.fMetaSchemaElemFlag = false;
        this.fAppInfoElemFlag = false;
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        super.startElement(uri, localName, qName, attributes);
        if (this.fElementList.size() >= 2 && (((String)this.fElementList.get(1)).compareTo(APP_INFO_ELEM) == 0 || ((String)this.fElementList.get(1)).compareTo(APP_INFO_ELEM_OLD) == 0)) {
            this.fAppInfoElemFlag = true;
            if (qName.compareTo(META_SCHEMA_ELEM) == 0) {
                this.fMetaSchemaElemFlag = true;
                if (attributes != null) {
                    this.fName = attributes.getValue(NAME_ATTR);
                }
            } else {
                this.fMetaSchemaElemFlag = false;
            }
        }
    }

    public void characters(char[] ch, int start, int length) {
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
            if (this.fMetaSchemaElemFlag || !this.fAppInfoElemFlag) {
                return true;
            }
        }
        return false;
    }

    public String getDescription() {
        return this.fDescription.toString();
    }

    public String getName() {
        return this.fName;
    }
}

