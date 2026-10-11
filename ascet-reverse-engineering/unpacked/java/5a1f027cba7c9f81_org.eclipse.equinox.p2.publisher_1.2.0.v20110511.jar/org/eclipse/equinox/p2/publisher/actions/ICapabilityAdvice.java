/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IProvidedCapability
 *  org.eclipse.equinox.p2.metadata.IRequirement
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 */
package org.eclipse.equinox.p2.publisher.actions;

import org.eclipse.equinox.p2.metadata.IProvidedCapability;
import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

public interface ICapabilityAdvice
extends IPublisherAdvice {
    public IProvidedCapability[] getProvidedCapabilities(MetadataFactory.InstallableUnitDescription var1);

    public IRequirement[] getRequiredCapabilities(MetadataFactory.InstallableUnitDescription var1);

    public IRequirement[] getMetaRequiredCapabilities(MetadataFactory.InstallableUnitDescription var1);
}

