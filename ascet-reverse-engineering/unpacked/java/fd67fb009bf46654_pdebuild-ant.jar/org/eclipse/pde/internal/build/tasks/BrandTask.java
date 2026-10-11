/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 *  org.eclipse.pde.internal.build.BrandingIron
 */
package org.eclipse.pde.internal.build.tasks;

import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.pde.internal.build.BrandingIron;

public class BrandTask
extends Task {
    BrandingIron iron = new BrandingIron();

    public void setName(String value) {
        this.iron.setName(value);
    }

    public void setIcons(String value) {
        this.iron.setIcons(value);
    }

    public void setRoot(String value) {
        this.iron.setRoot(value);
    }

    public void setOS(String value) {
        this.iron.setOS(value);
    }

    public void execute() throws BuildException {
        try {
            this.iron.brand();
        }
        catch (Exception e) {
            throw new BuildException((Throwable)e);
        }
    }
}

