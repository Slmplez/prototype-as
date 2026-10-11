/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.io.File;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.publisher.eclipse.DataLoader;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.eclipse.ConfigAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.LaunchingAdvice;

public class AccumulateConfigDataAction
extends AbstractPublisherAction {
    private String configSpec;
    private DataLoader loader;

    public AccumulateConfigDataAction(IPublisherInfo info, String configSpec, File configurationLocation, File executableLocation) {
        this.configSpec = configSpec;
        this.loader = new DataLoader(configurationLocation, executableLocation);
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        this.storeConfigData(publisherInfo, this.configSpec, results);
        return Status.OK_STATUS;
    }

    protected void storeConfigData(IPublisherInfo publisherInfo, String config, IPublisherResult result) {
        ConfigData data = this.loader.getConfigData();
        if (data == null) {
            return;
        }
        publisherInfo.addAdvice((IPublisherAdvice)new ConfigAdvice(data, config));
        LauncherData launcherData = this.loader.getLauncherData();
        if (launcherData == null) {
            return;
        }
        publisherInfo.addAdvice((IPublisherAdvice)new LaunchingAdvice(launcherData, config));
    }
}

