/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.site;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.site.AbstractSiteModel;

public class ExternalSiteModel
extends AbstractSiteModel {
    private static final long serialVersionUID = 1L;

    protected void updateTimeStamp() {
    }

    public boolean isInSync() {
        return true;
    }

    public boolean isEditable() {
        return false;
    }

    public void load() throws CoreException {
    }
}

