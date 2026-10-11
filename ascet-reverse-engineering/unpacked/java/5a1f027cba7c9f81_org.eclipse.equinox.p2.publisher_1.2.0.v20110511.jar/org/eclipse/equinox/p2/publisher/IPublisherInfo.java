/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.eclipse.equinox.p2.repository.metadata.IMetadataRepository
 */
package org.eclipse.equinox.p2.publisher;

import java.util.Collection;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.eclipse.equinox.p2.repository.metadata.IMetadataRepository;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IPublisherInfo {
    public static final int A_INDEX = 1;
    public static final int A_PUBLISH = 2;
    public static final int A_OVERWRITE = 4;
    public static final int A_NO_MD5 = 8;

    public IArtifactRepository getArtifactRepository();

    public IMetadataRepository getMetadataRepository();

    public int getArtifactOptions();

    public <T extends IPublisherAdvice> Collection<T> getAdvice(String var1, boolean var2, String var3, Version var4, Class<T> var5);

    public void addAdvice(IPublisherAdvice var1);

    public String[] getConfigurations();

    public IArtifactRepository getContextArtifactRepository();

    public IMetadataRepository getContextMetadataRepository();
}

