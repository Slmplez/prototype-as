/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.natures;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.natures.BaseProject;

public class SiteProject
extends BaseProject {
    public void configure() throws CoreException {
        this.addToBuildSpec("org.eclipse.pde.UpdateSiteBuilder");
    }

    public void deconfigure() throws CoreException {
        this.removeFromBuildSpec("org.eclipse.pde.UpdateSiteBuilder");
    }
}

