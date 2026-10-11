/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor
 */
package org.eclipse.equinox.internal.p2.artifact.repository.simple;

import java.util.Map;
import org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.spi.ArtifactDescriptor;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SimpleArtifactDescriptor
extends ArtifactDescriptor {
    public static final String ARTIFACT_REFERENCE = "artifact.reference";
    protected Map<String, String> repositoryProperties = new OrderedProperties();

    public SimpleArtifactDescriptor(IArtifactKey key) {
        super(key);
    }

    public SimpleArtifactDescriptor(IArtifactDescriptor base) {
        super(base);
    }

    public String getRepositoryProperty(String propertyKey) {
        return this.repositoryProperties.get(propertyKey);
    }

    public void setRepositoryProperty(String key, String value) {
        if (value == null) {
            this.repositoryProperties.remove(key);
        } else {
            this.repositoryProperties.put(key, value);
        }
    }

    public void addRepositoryProperties(Map<String, String> additionalProperties) {
        this.repositoryProperties.putAll(additionalProperties);
    }

    public Map<String, String> getRepositoryProperties() {
        return OrderedProperties.unmodifiableProperties(this.repositoryProperties);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SimpleArtifactDescriptor)) {
            return false;
        }
        SimpleArtifactDescriptor other = (SimpleArtifactDescriptor)((Object)obj);
        String locationProperty = this.getRepositoryProperty(ARTIFACT_REFERENCE);
        String otherProperty = other.getRepositoryProperty(ARTIFACT_REFERENCE);
        if (locationProperty != null ? !locationProperty.equals(otherProperty) : otherProperty != null) {
            return false;
        }
        return super.equals(obj);
    }

    public int hashCode() {
        int superHash = super.hashCode();
        String ref = this.getRepositoryProperty(ARTIFACT_REFERENCE);
        if (ref != null) {
            return 31 * superHash + ref.hashCode();
        }
        return superHash;
    }
}

