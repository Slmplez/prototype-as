/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.feature.AbstractFeatureModel;

public class ExternalFeatureModel
extends AbstractFeatureModel {
    private static final long serialVersionUID = 1L;
    private String location;

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

    public void setInstallLocation(String location) {
        this.location = location;
    }

    public String getInstallLocation() {
        return this.location;
    }

    protected NLResourceHelper createNLResourceHelper() {
        if (this.location != null) {
            URL url = this.getNLLookupLocation();
            return new NLResourceHelper("feature", new URL[]{url});
        }
        return null;
    }

    public URL getNLLookupLocation() {
        try {
            if (this.location != null && new File(this.location).isDirectory() && !this.location.endsWith("/")) {
                return new URL("file:" + this.location + "/");
            }
            return new URL("file:" + this.location);
        }
        catch (MalformedURLException malformedURLException) {
            return null;
        }
    }
}

