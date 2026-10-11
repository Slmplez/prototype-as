/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.expression.IMemberProvider
 */
package org.eclipse.equinox.p2.repository.artifact.spi;

import java.util.Arrays;
import java.util.Map;
import org.eclipse.equinox.internal.p2.core.helpers.OrderedProperties;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.expression.IMemberProvider;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor;
import org.eclipse.equinox.p2.repository.artifact.spi.ProcessingStepDescriptor;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ArtifactDescriptor
implements IArtifactDescriptor,
IMemberProvider {
    public static final String MEMBER_ARTIFACT_KEY = "artifactKey";
    public static final String MEMBER_PROCESSING_STEPS = "processingSteps";
    public static final String MEMBER_PROPERTIES = "properties";
    public static final String MEMBER_REPOSITORY = "repository";
    private static final IProcessingStepDescriptor[] EMPTY_STEPS = new ProcessingStepDescriptor[0];
    protected IArtifactKey key;
    protected IProcessingStepDescriptor[] processingSteps = EMPTY_STEPS;
    protected Map<String, String> properties = new OrderedProperties();
    private transient IArtifactRepository repository;

    public ArtifactDescriptor(IArtifactDescriptor base) {
        this.key = base.getArtifactKey();
        this.processingSteps = base.getProcessingSteps();
        this.properties.putAll(base.getProperties());
        this.repository = base.getRepository();
    }

    public ArtifactDescriptor(IArtifactKey key) {
        this.key = key;
    }

    @Override
    public IArtifactKey getArtifactKey() {
        return this.key;
    }

    @Override
    public String getProperty(String propertyKey) {
        return this.properties.get(propertyKey);
    }

    public void setProperty(String key, String value) {
        if (value == null) {
            this.properties.remove(key);
        } else {
            this.properties.put(key, value);
        }
    }

    public void addProperties(Map<String, String> additionalProperties) {
        this.properties.putAll(additionalProperties);
    }

    @Override
    public Map<String, String> getProperties() {
        return OrderedProperties.unmodifiableProperties(this.properties);
    }

    @Override
    public IProcessingStepDescriptor[] getProcessingSteps() {
        return this.processingSteps;
    }

    public void setProcessingSteps(IProcessingStepDescriptor[] value) {
        this.processingSteps = value == null ? EMPTY_STEPS : value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (!obj.getClass().equals(this.getClass())) {
            return false;
        }
        ArtifactDescriptor other = (ArtifactDescriptor)obj;
        if (this.key == null ? other.getArtifactKey() != null : !this.key.equals(other.getArtifactKey())) {
            return false;
        }
        if (!Arrays.equals(this.processingSteps, other.getProcessingSteps())) {
            return false;
        }
        String format = this.getProperty("format");
        String otherFormat = other.getProperty("format");
        return !(format != null ? !format.equals(otherFormat) : otherFormat != null);
    }

    public int hashCode() {
        String format = this.getProperty("format");
        int result = 1;
        result = 31 * result + (this.key == null ? 0 : this.key.hashCode());
        result = 31 * result + Arrays.asList(this.processingSteps).hashCode();
        result = 31 * result + (format != null ? format.hashCode() : 0);
        return result;
    }

    @Override
    public IArtifactRepository getRepository() {
        return this.repository;
    }

    public void setRepository(IArtifactRepository value) {
        this.repository = value;
    }

    public String toString() {
        String format = this.getProperty("format");
        if (format == null) {
            return new StringBuffer("canonical: ").append(this.key.toString()).toString();
        }
        return new StringBuffer(String.valueOf(format)).append(": ").append(this.key.toString()).toString();
    }

    public Object getMember(String memberName) {
        if (memberName == MEMBER_ARTIFACT_KEY) {
            return this.key;
        }
        if (memberName == MEMBER_PROPERTIES) {
            return this.properties;
        }
        if (memberName == MEMBER_PROCESSING_STEPS) {
            return this.processingSteps;
        }
        if (memberName == MEMBER_REPOSITORY) {
            return this.repository;
        }
        throw new IllegalArgumentException(new StringBuffer("No such member: ").append(memberName).toString());
    }
}

