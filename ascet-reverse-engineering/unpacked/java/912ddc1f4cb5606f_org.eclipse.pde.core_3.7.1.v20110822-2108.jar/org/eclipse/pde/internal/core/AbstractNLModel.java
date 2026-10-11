/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.pde.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.pde.internal.core.AbstractModel;
import org.eclipse.pde.internal.core.NLResourceHelper;

public abstract class AbstractNLModel
extends AbstractModel {
    private static final long serialVersionUID = 1L;
    protected transient NLResourceHelper fNLHelper;
    static /* synthetic */ Class class$0;

    public NLResourceHelper getNLResourceHelper() {
        if (this.fNLHelper == null) {
            this.fNLHelper = this.createNLResourceHelper();
        }
        return this.fNLHelper;
    }

    public void resetNLResourceHelper() {
        this.fNLHelper = null;
    }

    public void dispose() {
        if (this.fNLHelper != null) {
            this.fNLHelper.dispose();
            this.fNLHelper = null;
        }
        super.dispose();
    }

    public String getResourceString(String key) {
        if (key == null) {
            return "";
        }
        if (this.fNLHelper == null) {
            this.fNLHelper = this.createNLResourceHelper();
        }
        return this.fNLHelper != null ? this.fNLHelper.getResourceString(key) : key;
    }

    protected abstract NLResourceHelper createNLResourceHelper();

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.core.resources.IResource");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            IResource resource = this.getUnderlyingResource();
            return resource == null ? null : resource.getProject();
        }
        return super.getAdapter(adapter);
    }
}

