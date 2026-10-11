/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

public interface IBrandingAdvice
extends IPublisherAdvice {
    public String getOS();

    public String[] getIcons();

    public String getExecutableName();
}

