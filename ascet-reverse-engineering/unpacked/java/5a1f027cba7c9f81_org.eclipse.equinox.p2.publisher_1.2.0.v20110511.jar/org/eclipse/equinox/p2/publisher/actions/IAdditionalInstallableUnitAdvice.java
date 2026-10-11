/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 */
package org.eclipse.equinox.p2.publisher.actions;

import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

public interface IAdditionalInstallableUnitAdvice
extends IPublisherAdvice {
    public MetadataFactory.InstallableUnitDescription[] getAdditionalInstallableUnitDescriptions(IInstallableUnit var1);
}

