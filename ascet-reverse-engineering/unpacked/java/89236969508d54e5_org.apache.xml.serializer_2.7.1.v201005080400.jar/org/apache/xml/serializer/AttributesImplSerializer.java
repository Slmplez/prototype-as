/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xml.serializer;

import java.util.Hashtable;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.AttributesImpl;

public final class AttributesImplSerializer
extends AttributesImpl {
    private final Hashtable m_indexFromQName = new Hashtable();
    private final StringBuffer m_buff = new StringBuffer();
    private static final int MAX = 12;
    private static final int MAXMinus1 = 11;

    public final int getIndex(String qname) {
        if (super.getLength() < 12) {
            int index = super.getIndex(qname);
            return index;
        }
        Integer i = (Integer)this.m_indexFromQName.get(qname);
        int index = i == null ? -1 : i;
        return index;
    }

    public final void addAttribute(String uri, String local, String qname, String type, String val) {
        int index = super.getLength();
        super.addAttribute(uri, local, qname, type, val);
        if (index < 11) {
            return;
        }
        if (index == 11) {
            this.switchOverToHash(12);
        } else {
            Integer i = new Integer(index);
            this.m_indexFromQName.put(qname, i);
            this.m_buff.setLength(0);
            this.m_buff.append('{').append(uri).append('}').append(local);
            String key = this.m_buff.toString();
            this.m_indexFromQName.put(key, i);
        }
    }

    private void switchOverToHash(int numAtts) {
        int index = 0;
        while (index < numAtts) {
            String qName = super.getQName(index);
            Integer i = new Integer(index);
            this.m_indexFromQName.put(qName, i);
            String uri = super.getURI(index);
            String local = super.getLocalName(index);
            this.m_buff.setLength(0);
            this.m_buff.append('{').append(uri).append('}').append(local);
            String key = this.m_buff.toString();
            this.m_indexFromQName.put(key, i);
            ++index;
        }
    }

    public final void clear() {
        int len = super.getLength();
        super.clear();
        if (12 <= len) {
            this.m_indexFromQName.clear();
        }
    }

    public final void setAttributes(Attributes atts) {
        super.setAttributes(atts);
        int numAtts = atts.getLength();
        if (12 <= numAtts) {
            this.switchOverToHash(numAtts);
        }
    }

    public final int getIndex(String uri, String localName) {
        if (super.getLength() < 12) {
            int index = super.getIndex(uri, localName);
            return index;
        }
        this.m_buff.setLength(0);
        this.m_buff.append('{').append(uri).append('}').append(localName);
        String key = this.m_buff.toString();
        Integer i = (Integer)this.m_indexFromQName.get(key);
        int index = i == null ? -1 : i;
        return index;
    }
}

