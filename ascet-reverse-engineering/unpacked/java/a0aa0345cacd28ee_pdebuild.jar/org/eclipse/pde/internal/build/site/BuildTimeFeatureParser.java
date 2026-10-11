/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.publisher.eclipse.FeatureManifestParser
 *  org.eclipse.equinox.p2.publisher.eclipse.Feature
 */
package org.eclipse.pde.internal.build.site;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.eclipse.equinox.internal.p2.publisher.eclipse.FeatureManifestParser;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;
import org.xml.sax.SAXException;

public class BuildTimeFeatureParser
extends FeatureManifestParser {
    protected Feature createFeature(String id, String version) {
        return new BuildTimeFeature(id, version);
    }

    public Feature parse(URL featureURL) throws SAXException, IOException {
        InputStream in = featureURL.openStream();
        try {
            Feature feature = super.parse(in, featureURL);
            return feature;
        }
        finally {
            in.close();
        }
    }
}

