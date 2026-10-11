/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.IUpdateDescriptor
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 */
package org.eclipse.equinox.p2.publisher.actions;

import org.eclipse.equinox.p2.metadata.IUpdateDescriptor;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

public interface IUpdateDescriptorAdvice
extends IPublisherAdvice {
    public IUpdateDescriptor getUpdateDescriptor(MetadataFactory.InstallableUnitDescription var1);
}

