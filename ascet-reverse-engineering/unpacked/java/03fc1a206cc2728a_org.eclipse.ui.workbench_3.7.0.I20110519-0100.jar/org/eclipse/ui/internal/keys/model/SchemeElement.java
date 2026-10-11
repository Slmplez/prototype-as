/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.bindings.Scheme
 */
package org.eclipse.ui.internal.keys.model;

import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.ui.internal.keys.model.KeyController;
import org.eclipse.ui.internal.keys.model.ModelElement;

public class SchemeElement
extends ModelElement {
    public SchemeElement(KeyController kc) {
        super(kc);
    }

    public void init(Scheme scheme) {
        this.setId(scheme.getId());
        this.setModelObject(scheme);
        try {
            this.setName(scheme.getName());
            this.setDescription(scheme.getDescription());
        }
        catch (NotDefinedException e) {
            e.printStackTrace();
        }
    }
}

