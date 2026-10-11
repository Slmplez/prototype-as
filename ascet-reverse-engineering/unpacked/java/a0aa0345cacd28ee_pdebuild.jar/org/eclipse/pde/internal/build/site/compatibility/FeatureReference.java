/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.equinox.p2.publisher.eclipse.Feature
 */
package org.eclipse.pde.internal.build.site.compatibility;

import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.pde.internal.build.site.BuildTimeFeatureFactory;
import org.eclipse.pde.internal.build.site.BuildTimeSite;

public class FeatureReference {
    private BuildTimeSite site;
    private String urlString;
    private URL url;
    private Feature feature;

    public void setSiteModel(BuildTimeSite site) {
        this.site = site;
    }

    public void setURLString(String externalForm) {
        this.urlString = externalForm;
    }

    public Feature getFeature() throws CoreException {
        if (this.feature != null) {
            return this.feature;
        }
        if (this.site != null) {
            this.feature = this.site.createFeature(this.getURL());
        } else {
            BuildTimeFeatureFactory factory = BuildTimeFeatureFactory.getInstance();
            this.feature = factory.createFeature(this.getURL(), null);
        }
        return this.feature;
    }

    public URL getURL() {
        if (this.url == null) {
            try {
                this.url = new URL(this.urlString);
            }
            catch (MalformedURLException e) {
                e.printStackTrace();
            }
        }
        return this.url;
    }
}

