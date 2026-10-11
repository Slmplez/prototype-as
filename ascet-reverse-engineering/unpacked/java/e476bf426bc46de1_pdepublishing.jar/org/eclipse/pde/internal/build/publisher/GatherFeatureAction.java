/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor
 *  org.eclipse.equinox.spi.p2.publisher.PublisherHelper
 */
package org.eclipse.pde.internal.build.publisher;

import java.io.File;
import java.util.Collection;
import org.eclipse.equinox.internal.p2.publisher.eclipse.FeatureParser;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.equinox.p2.publisher.eclipse.FeaturesAction;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;
import org.eclipse.pde.internal.build.publisher.FeatureRootAdvice;
import org.eclipse.pde.internal.build.publisher.GatheringComputer;

public class GatherFeatureAction
extends FeaturesAction {
    private GatheringComputer computer;
    private String groupId = null;
    private FeatureRootAdvice rootAdvice;
    private final File featureRoot;

    public GatherFeatureAction(File location, File featureRoot) {
        super(new File[]{location});
        this.featureRoot = featureRoot;
    }

    public void setComputer(GatheringComputer computer) {
        this.computer = computer;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    protected Feature[] getFeatures(File[] locations) {
        Feature feature = new FeatureParser().parse(this.featureRoot);
        if (feature != null) {
            feature.setLocation(locations[0].getAbsolutePath());
            this.rootAdvice.setFeatureId(feature.getId());
            this.rootAdvice.setFeatureVersion(Version.parseVersion((String)feature.getVersion()));
            return new Feature[]{feature};
        }
        return new Feature[0];
    }

    protected String getGroupId(String featureId) {
        if (this.groupId != null) {
            return this.groupId;
        }
        return super.getGroupId(featureId);
    }

    protected IInstallableUnit generateFeatureJarIU(Feature feature, IPublisherInfo publisherInfo) {
        if (this.computer == null) {
            return null;
        }
        return GatherFeatureAction.createFeatureJarIU(feature, publisherInfo);
    }

    protected void publishFeatureArtifacts(Feature feature, IInstallableUnit featureIU, IPublisherInfo publisherInfo) {
        if (this.computer == null) {
            return;
        }
        Collection artifacts = featureIU.getArtifacts();
        artifacts.size();
        ArtifactDescriptor ad = (ArtifactDescriptor)PublisherHelper.createArtifactDescriptor((IPublisherInfo)publisherInfo, (IArtifactKey)((IArtifactKey)artifacts.iterator().next()), null);
        GatherFeatureAction.processArtifactPropertiesAdvice((IInstallableUnit)featureIU, (IArtifactDescriptor)ad, (IPublisherInfo)publisherInfo);
        ad.setProperty("download.contentType", "application/zip");
        this.publishArtifact((IArtifactDescriptor)ad, this.computer.getFiles(), null, publisherInfo, this.computer);
    }

    public void setRootAdvice(FeatureRootAdvice rootAdvice) {
        this.rootAdvice = rootAdvice;
    }
}

