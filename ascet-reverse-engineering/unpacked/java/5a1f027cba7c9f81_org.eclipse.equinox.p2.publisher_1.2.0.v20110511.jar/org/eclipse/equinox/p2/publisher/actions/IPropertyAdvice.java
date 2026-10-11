/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 */
package org.eclipse.equinox.p2.publisher.actions;

import java.util.Map;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IPropertyAdvice
extends IPublisherAdvice {
    public Map<String, String> getInstallableUnitProperties(MetadataFactory.InstallableUnitDescription var1);

    public Map<String, String> getArtifactProperties(IInstallableUnit var1, IArtifactDescriptor var2);
}

