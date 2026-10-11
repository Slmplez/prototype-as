/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry
 *  org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry
 */
package org.eclipse.pde.internal.build.packager;

import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.equinox.p2.publisher.eclipse.FeatureEntry;
import org.eclipse.equinox.p2.publisher.eclipse.IPlatformEntry;
import org.eclipse.pde.internal.build.AssemblyInformation;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.builder.BuildDirector;
import org.eclipse.pde.internal.build.site.BuildTimeFeature;

public class ElementCollector
extends BuildDirector {
    public ElementCollector(AssemblyInformation assemblageInformation) {
        super(assemblageInformation);
    }

    protected void generateIncludedFeatureBuildFile(BuildTimeFeature feature) throws CoreException {
        FeatureEntry[] referencedFeatures = feature.getIncludedFeatureReferences();
        int i = 0;
        while (i < referencedFeatures.length) {
            block3: {
                String featureId = referencedFeatures[i].getId();
                BuildTimeFeature nestedFeature = this.getSite(false).findFeature(featureId, (String)null, true);
                try {
                    this.generate(nestedFeature, false);
                }
                catch (CoreException exception) {
                    if (exception.getStatus().getCode() == 1 && (exception.getStatus().getCode() != 1 || referencedFeatures[i].isOptional())) break block3;
                    throw exception;
                }
            }
            ++i;
        }
    }

    protected void collectElementToAssemble(BuildTimeFeature featureToCollect) {
        if (this.assemblyData == null) {
            return;
        }
        List correctConfigs = this.selectConfigs((IPlatformEntry)featureToCollect);
        Iterator iter = correctConfigs.iterator();
        while (iter.hasNext()) {
            Config config = (Config)iter.next();
            this.assemblyData.addFeature(config, featureToCollect);
        }
    }
}

