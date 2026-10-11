/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.criteria;

import org.eclipse.help.ICriteria;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class Criteria
extends UAElement
implements ICriteria {
    public static final String NAME = "criteria";
    public static final String ATTRIBUTE_NAME = "name";
    public static final String ATTRIBUTE_VALUE = "value";

    public Criteria(ICriteria src) {
        super(NAME, src);
        this.setName(src.getName());
        this.setValue(src.getValue());
    }

    public Criteria(Element element) {
        super(element);
    }

    public String getName() {
        return this.getAttribute(ATTRIBUTE_NAME);
    }

    public String getValue() {
        return this.getAttribute(ATTRIBUTE_VALUE);
    }

    public void setName(String name) {
        this.setAttribute(ATTRIBUTE_NAME, name);
    }

    public void setValue(String value) {
        this.setAttribute(ATTRIBUTE_VALUE, value);
    }
}

