/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.spi.p2.publisher.PublisherHelper
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.publisher.eclipse.GeneratorBundleInfo;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;

public class DefaultCUsAction
extends AbstractPublisherAction {
    private String flavor;
    private int startLevel;
    private boolean start;

    public DefaultCUsAction(IPublisherInfo info, String flavor, int startLevel, boolean start) {
        this.flavor = flavor;
        this.startLevel = startLevel;
        this.start = start;
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        this.setPublisherInfo(publisherInfo);
        this.generateDefaultConfigIU(results);
        return Status.OK_STATUS;
    }

    protected void generateDefaultConfigIU(IPublisherResult result) {
        result.addIU(BundlesAction.createDefaultBundleConfigurationUnit(this.createDefaultConfigurationBundleInfo(), this.createDefaultUnconfigurationBundleInfo(), this.flavor), "root");
        result.addIU(PublisherHelper.createDefaultFeatureConfigurationUnit((String)this.flavor), "root");
        result.addIU(PublisherHelper.createDefaultConfigurationUnitForSourceBundles((String)this.flavor), "root");
    }

    protected GeneratorBundleInfo createDefaultConfigurationBundleInfo() {
        GeneratorBundleInfo result = new GeneratorBundleInfo();
        result.setSymbolicName("defaultConfigure");
        result.setVersion("1.0.0");
        result.setStartLevel(this.startLevel);
        result.setMarkedAsStarted(this.start);
        return result;
    }

    protected GeneratorBundleInfo createDefaultUnconfigurationBundleInfo() {
        GeneratorBundleInfo result = new GeneratorBundleInfo();
        result.setSymbolicName("defaultUnconfigure");
        result.setVersion("1.0.0");
        return result;
    }
}

