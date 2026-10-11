/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.criteria;

import org.eclipse.help.ICriteriaDefinition;
import org.eclipse.help.ICriterionDefinition;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class CriteriaDefinition
extends UAElement
implements ICriteriaDefinition {
    public static final String NAME = "criteriaDefinition";
    static /* synthetic */ Class class$0;

    public CriteriaDefinition() {
        super(NAME);
    }

    public CriteriaDefinition(ICriteriaDefinition src) {
        super(NAME, src);
        this.appendChildren(src.getChildren());
    }

    public CriteriaDefinition(Element src) {
        super(src);
    }

    public ICriterionDefinition[] getCriterionDefinitions() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.help.ICriterionDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (ICriterionDefinition[])this.getChildren(clazz);
    }
}

