/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.accessibility;

import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.internal.SWTEventObject;

public class AccessibleTextAttributeEvent
extends SWTEventObject {
    public int offset;
    public int start;
    public int end;
    public TextStyle textStyle;
    public String[] attributes;
    public String result;
    static final long serialVersionUID = 7131825608864332802L;

    public AccessibleTextAttributeEvent(Object source) {
        super(source);
    }

    public String toString() {
        return "AccessibleAttributeEvent { offset=" + this.offset + " start=" + this.start + " end=" + this.end + " textStyle=" + this.textStyle + " attributes=" + this.toAttributeString(this.attributes) + " result=" + this.result + "}";
    }

    String toAttributeString(String[] attributes) {
        if (attributes == null || attributes.length == 0) {
            return "" + attributes;
        }
        StringBuffer attributeString = new StringBuffer();
        int i = 0;
        while (i < attributes.length) {
            attributeString.append(attributes[i]);
            attributeString.append(i % 2 == 0 ? ":" : ";");
            ++i;
        }
        return attributeString.toString();
    }
}

