/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.commands.contexts.Context
 */
package org.eclipse.ui.internal.keys.model;

import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.commands.contexts.Context;
import org.eclipse.ui.internal.keys.model.KeyController;
import org.eclipse.ui.internal.keys.model.ModelElement;

public class ContextElement
extends ModelElement {
    public ContextElement(KeyController kc) {
        super(kc);
    }

    public void init(Context context) {
        this.setId(context.getId());
        this.setModelObject(context);
        try {
            this.setName(context.getName());
            this.setDescription(context.getDescription());
        }
        catch (NotDefinedException notDefinedException) {}
    }
}

