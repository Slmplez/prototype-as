/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.ITouchpointData
 */
package org.eclipse.equinox.p2.publisher.actions;

import org.eclipse.equinox.p2.metadata.ITouchpointData;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

public interface ITouchpointAdvice
extends IPublisherAdvice {
    public ITouchpointData getTouchpointData(ITouchpointData var1);
}

