/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 */
package org.eclipse.equinox.p2.publisher;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PublisherInfo
implements IPublisherInfo {
    private int artifactOptions = 0;
    private IMetadataRepository metadataRepository;
    private IArtifactRepository artifactRepository;
    private IMetadataRepository contextMetadataRepository;
    private IArtifactRepository contextArtifactRepository;
    private String[] configurations = new String[0];
    private List<IPublisherAdvice> adviceList = new ArrayList<IPublisherAdvice>(11);

    @Override
    public void addAdvice(IPublisherAdvice advice) {
        this.adviceList.add(advice);
    }

    public List<IPublisherAdvice> getAdvice() {
        return this.adviceList;
    }

    @Override
    public <T extends IPublisherAdvice> Collection<T> getAdvice(String configSpec, boolean includeDefault, String id, Version version, Class<T> type) {
        ArrayList<IPublisherAdvice> result = new ArrayList<IPublisherAdvice>();
        for (IPublisherAdvice advice : this.adviceList) {
            if (!type.isInstance(advice) || !advice.isApplicable(configSpec, includeDefault, id, version)) continue;
            result.add(advice);
        }
        return result;
    }

    @Override
    public IArtifactRepository getArtifactRepository() {
        return this.artifactRepository;
    }

    @Override
    public IMetadataRepository getMetadataRepository() {
        return this.metadataRepository;
    }

    @Override
    public IArtifactRepository getContextArtifactRepository() {
        return this.contextArtifactRepository;
    }

    @Override
    public IMetadataRepository getContextMetadataRepository() {
        return this.contextMetadataRepository;
    }

    @Override
    public int getArtifactOptions() {
        return this.artifactOptions;
    }

    public void setArtifactRepository(IArtifactRepository value) {
        this.artifactRepository = value;
    }

    public void setMetadataRepository(IMetadataRepository value) {
        this.metadataRepository = value;
    }

    public void setContextArtifactRepository(IArtifactRepository value) {
        this.contextArtifactRepository = value;
    }

    public void setContextMetadataRepository(IMetadataRepository value) {
        this.contextMetadataRepository = value;
    }

    public void setArtifactOptions(int value) {
        this.artifactOptions = value;
    }

    @Override
    public String[] getConfigurations() {
        return this.configurations;
    }

    public void setConfigurations(String[] value) {
        this.configurations = value;
    }

    public String getSummary() {
        return ".";
    }
}

