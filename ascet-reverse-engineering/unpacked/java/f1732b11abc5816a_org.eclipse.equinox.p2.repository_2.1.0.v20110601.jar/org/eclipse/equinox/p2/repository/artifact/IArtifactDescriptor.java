/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 */
package org.eclipse.equinox.p2.repository.artifact;

import java.util.Map;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.artifact.IProcessingStepDescriptor;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IArtifactDescriptor {
    public static final String DOWNLOAD_SIZE = "download.size";
    public static final String ARTIFACT_SIZE = "artifact.size";
    public static final String DOWNLOAD_MD5 = "download.md5";
    public static final String DOWNLOAD_CONTENTTYPE = "download.contentType";
    public static final String TYPE_ZIP = "application/zip";
    public static final String ARTIFACT_MD5 = "artifact.md5";
    public static final String FORMAT = "format";
    public static final String FORMAT_PACKED = "packed";

    public IArtifactKey getArtifactKey();

    public String getProperty(String var1);

    public Map<String, String> getProperties();

    public IProcessingStepDescriptor[] getProcessingSteps();

    public IArtifactRepository getRepository();
}

