/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.publisher.eclipse.Feature
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 */
package org.eclipse.pde.internal.build;

import java.io.IOException;
import java.io.OutputStream;
import java.util.LinkedHashMap;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.pde.internal.build.FeatureWriter;
import org.eclipse.pde.internal.build.site.BuildTimeSite;

public class SourceFeatureWriter
extends FeatureWriter {
    public SourceFeatureWriter(OutputStream out, Feature feature, BuildTimeSite site) throws IOException {
        super(out, feature, site);
    }

    public void printIncludes() {
        LinkedHashMap<String, String> parameters = new LinkedHashMap<String, String>();
        FeatureEntry[] features = this.feature.getEntries();
        int i = 0;
        while (i < features.length) {
            if (!features[i].isRequires() && !features[i].isPlugin()) {
                parameters.clear();
                parameters.put("id", features[i].getId());
                parameters.put("version", features[i].getVersion());
                if (features[i].isOptional()) {
                    parameters.put("optional", "true");
                }
                if (features[i].getArch() != null) {
                    parameters.put("arch", features[i].getArch());
                }
                if (features[i].getWS() != null) {
                    parameters.put("ws", features[i].getWS());
                }
                if (features[i].getOS() != null) {
                    parameters.put("os", features[i].getOS());
                }
                this.printTag("includes", parameters, true, true, true);
            }
            ++i;
        }
    }
}

