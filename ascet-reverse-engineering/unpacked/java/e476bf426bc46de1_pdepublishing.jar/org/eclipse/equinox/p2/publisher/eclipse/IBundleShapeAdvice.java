/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

public interface IBundleShapeAdvice
extends IPublisherAdvice {
    public static final String DIR = "dir";
    public static final String JAR = "jar";

    public String getShape();
}

