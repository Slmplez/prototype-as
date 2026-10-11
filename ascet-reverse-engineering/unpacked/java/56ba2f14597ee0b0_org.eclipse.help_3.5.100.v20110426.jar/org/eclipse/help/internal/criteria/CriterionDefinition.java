/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.criteria;

import org.eclipse.help.ICriterionDefinition;
import org.eclipse.help.ICriterionValueDefinition;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class CriterionDefinition
extends UAElement
implements ICriterionDefinition {
    public static final String NAME = "criterion";
    public static final String ATTRIBUTE_ID = "id";
    public static final String ATTRIBUTE_NAME = "name";
    static /* synthetic */ Class class$0;

    public CriterionDefinition(ICriterionDefinition src) {
        super(NAME, src);
        this.setId(src.getId());
        this.setName(src.getName());
        this.appendChildren(src.getChildren());
    }

    public CriterionDefinition(Element src) {
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

    public ICriterionValueDefinition[] getCriterionValueDefinitions() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.help.ICriterionValueDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (ICriterionValueDefinition[])this.getChildren(clazz);
    }
}

