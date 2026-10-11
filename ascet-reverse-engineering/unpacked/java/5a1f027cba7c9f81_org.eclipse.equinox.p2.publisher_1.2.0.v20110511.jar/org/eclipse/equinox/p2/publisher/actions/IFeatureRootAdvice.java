/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils$IPathComputer
 */
package org.eclipse.equinox.p2.publisher.actions;

import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.publisher.FileSetDescriptor;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

public interface IFeatureRootAdvice
extends IPublisherAdvice {
    public String[] getConfigurations();

    public FileUtils.IPathComputer getRootFileComputer(String var1);

    public FileSetDescriptor getDescriptor(String var1);
}

