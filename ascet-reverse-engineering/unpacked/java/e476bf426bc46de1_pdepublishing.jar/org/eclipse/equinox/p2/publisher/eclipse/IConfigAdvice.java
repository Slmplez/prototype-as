/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.util.Map;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IConfigAdvice
extends IPublisherAdvice {
    public BundleInfo[] getBundles();

    public Map<String, String> getProperties();
}

