/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.Scheme
 */
package org.eclipse.ui.internal.keys.model;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.ui.internal.keys.model.CommonModel;
import org.eclipse.ui.internal.keys.model.KeyController;
import org.eclipse.ui.internal.keys.model.SchemeElement;

public class SchemeModel
extends CommonModel {
    public static final String PROP_SCHEMES = "schemes";
    private List schemes;

    public SchemeModel(KeyController kc) {
        super(kc);
    }

    public void init(BindingManager bindingManager) {
        this.schemes = new ArrayList();
        Scheme[] definedSchemes = bindingManager.getDefinedSchemes();
        int i = 0;
        while (i < definedSchemes.length) {
            SchemeElement se = new SchemeElement(this.controller);
            se.init(definedSchemes[i]);
            se.setParent(this);
            this.schemes.add(se);
            if (definedSchemes[i] == bindingManager.getActiveScheme()) {
                this.setSelectedElement(se);
            }
            ++i;
        }
    }

    public List getSchemes() {
        return this.schemes;
    }

    public void setSchemes(List schemes) {
        List old = this.schemes;
        this.schemes = schemes;
        this.controller.firePropertyChange(this, PROP_SCHEMES, old, schemes);
    }
}

