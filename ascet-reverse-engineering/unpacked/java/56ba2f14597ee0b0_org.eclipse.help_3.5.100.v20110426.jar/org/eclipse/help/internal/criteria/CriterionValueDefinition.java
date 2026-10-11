/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.criteria;

import org.eclipse.help.ICriterionValueDefinition;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class CriterionValueDefinition
extends UAElement
implements ICriterionValueDefinition {
    public static final String NAME = "criterion-value";
    public static final String ATTRIBUTE_ID = "id";
    public static final String ATTRIBUTE_NAME = "name";

    public CriterionValueDefinition(ICriterionValueDefinition src) {
        super(NAME, src);
        this.setId(src.getId());
        this.setName(src.getName());
    }

    public CriterionValueDefinition(Element src) {
        super(src);
    }

    public String getId() {
        return this.getAttribute(ATTRIBUTE_ID);
    }

    public String getName() {
        return this.getAttribute(ATTRIBUTE_NAME);
    }

    public void setId(String id) {
        this.setAttribute(ATTRIBUTE_ID, id);
    }

    public void setName(String name) {
        this.setAttribute(ATTRIBUTE_NAME, name);
    }
}

