/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.publisher.actions;

import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

public interface ILicenseAdvice
extends IPublisherAdvice {
    public String getLicenseURL();

    public String getLicenseText();
}

