/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.Task
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.pde.internal.build.AbstractScriptGenerator
 *  org.eclipse.pde.internal.build.publisher.BuildPublisherApplication
 */
package org.eclipse.pde.internal.build.publisher;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import org.apache.tools.ant.Task;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.publisher.BuildPublisherApplication;

public abstract class AbstractPublisherTask
extends Task {
    protected static final String ANT_PREFIX = "${";
    protected URI metadataLocation;
    protected String metadataRepoName;
    protected URI artifactLocation;
    protected String artifactRepoName;
    protected String baseDirectory;
    protected boolean compress = false;
    protected boolean append = true;
    protected boolean reusePackedFiles = false;
    protected PublisherInfo publisherInfo = null;
    private Properties buildProperties = null;
    protected String overrides = null;
    protected List contextMetadataRepositories = new ArrayList();
    protected List contextArtifactRepositories = new ArrayList();

    protected Properties getBuildProperties() {
        String value;
        String key;
        File overrideFile;
        if (this.buildProperties != null) {
            return this.buildProperties;
        }
        Properties overrideProperties = null;
        if (this.overrides != null && (overrideFile = new File(this.overrides)).exists()) {
            try {
                overrideProperties = AbstractScriptGenerator.readProperties((String)overrideFile.getParent(), (String)overrideFile.getName(), (int)0);
            }
            catch (CoreException coreException) {}
        }
        Properties properties = null;
        try {
            properties = AbstractScriptGenerator.readProperties((String)this.baseDirectory, (String)"build.properties", (int)0);
        }
        catch (CoreException coreException) {
            return null;
        }
        this.buildProperties = new Properties();
        Iterator iterator = properties.keySet().iterator();
        while (iterator.hasNext()) {
            key = (String)iterator.next();
            value = properties.getProperty(key);
            this.buildProperties.put(key, this.getProject().replaceProperties(value));
        }
        if (overrideProperties != null) {
            iterator = overrideProperties.keySet().iterator();
            while (iterator.hasNext()) {
                key = (String)iterator.next();
                value = overrideProperties.getProperty(key);
                this.buildProperties.put(key, this.getProject().replaceProperties(value));
            }
        }
        return this.buildProperties;
    }

    protected BuildPublisherApplication createPublisherApplication() {
        BuildPublisherApplication application = new BuildPublisherApplication();
        application.setMetadataLocation(this.metadataLocation);
        application.setArtifactLocation(this.artifactLocation);
        application.setAppend(this.append);
        application.setCompress(this.compress);
        URI[] metadata = this.contextMetadataRepositories.toArray(new URI[this.contextMetadataRepositories.size()]);
        URI[] artifacts = this.contextArtifactRepositories.toArray(new URI[this.contextArtifactRepositories.size()]);
        application.setContextRepositories(metadata, artifacts);
        return application;
    }

    public void setArtifactRepository(String location) {
        try {
            this.artifactLocation = URIUtil.fromString((String)location);
        }
        catch (URISyntaxException uRISyntaxException) {
            throw new IllegalArgumentException("Artifact repository location (" + location + ") must be a URL.");
        }
    }

    public void setArtifactRepositoryName(String value) {
        this.artifactRepoName = value;
    }

    public void setMetadataRepository(String location) {
        try {
            this.metadataLocation = URIUtil.fromString((String)location);
        }
        catch (URISyntaxException uRISyntaxException) {
            throw new IllegalArgumentException("Metadata repository location (" + location + ") must be a URL.");
        }
    }

    public void setMetadataRepositoryName(String value) {
        this.metadataRepoName = value;
    }

    public void setRepository(String value) {
        this.setMetadataRepository(value);
        this.setArtifactRepository(value);
    }

    public void setAppend(String value) {
        this.append = Boolean.valueOf(value);
    }

    public void setCompress(String value) {
        this.compress = Boolean.valueOf(value);
    }

    public void setReusePackedFiles(String reusePackedFiles) {
        this.reusePackedFiles = Boolean.valueOf(reusePackedFiles);
    }

    public void setBaseDirectory(String baseDirectory) {
        if (baseDirectory != null && baseDirectory.length() > 0 && !baseDirectory.startsWith(ANT_PREFIX)) {
            this.baseDirectory = baseDirectory;
        }
    }

    public void setOverrides(String overrides) {
        if (overrides != null && overrides.length() > 0 && !overrides.startsWith(ANT_PREFIX)) {
            this.overrides = overrides;
        }
    }

    protected PublisherInfo getPublisherInfo() {
        if (this.publisherInfo == null) {
            this.publisherInfo = new PublisherInfo();
            this.publisherInfo.setArtifactOptions(2);
        }
        return this.publisherInfo;
    }

    public void addConfiguredContextRepository(RepoEntry repo) {
        if (repo.isMetadataRepository()) {
            this.contextMetadataRepositories.add(repo.getRepositoryLocation());
        }
        if (repo.isArtifactRepository()) {
            this.contextArtifactRepositories.add(repo.getRepositoryLocation());
        }
    }

    public static class RepoEntry {
        private URI repoLocation;
        private Boolean metadata = null;
        private Boolean artifact = null;

        public boolean isMetadataRepository() {
            if (this.metadata != null) {
                return this.metadata;
            }
            return !Boolean.TRUE.equals(this.artifact);
        }

        public boolean isArtifactRepository() {
            if (this.artifact != null) {
                return this.artifact;
            }
            return !Boolean.TRUE.equals(this.metadata);
        }

        public URI getRepositoryLocation() {
            return this.repoLocation;
        }

        public void setLocation(String location) {
            try {
                this.repoLocation = URIUtil.fromString((String)location);
            }
            catch (URISyntaxException uRISyntaxException) {
                throw new IllegalArgumentException("Repository location (" + location + ") must be a URL.");
            }
        }

        public void setMetadata(boolean metadata) {
            this.metadata = metadata;
        }

        public void setArtifact(boolean artifact) {
            this.artifact = artifact;
        }
    }
}

