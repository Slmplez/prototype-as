/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.AdviceFileAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.equinox.p2.publisher.eclipse.BundleShapeAdvice
 *  org.eclipse.equinox.p2.publisher.eclipse.BundlesAction
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.equinox.internal.p2.touchpoint.eclipse;

import java.io.File;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.AdviceFileAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.equinox.p2.publisher.eclipse.BundleShapeAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;
import org.eclipse.osgi.service.resolver.BundleDescription;

public class PublisherUtil {
    public static IInstallableUnit createBundleIU(IArtifactKey artifactKey, File bundleFile) {
        BundleDescription bundleDescription = BundlesAction.createBundleDescription((File)bundleFile);
        if (bundleDescription == null) {
            return null;
        }
        PublisherInfo info = new PublisherInfo();
        Version version = Version.create((String)bundleDescription.getVersion().toString());
        AdviceFileAdvice advice = new AdviceFileAdvice(bundleDescription.getSymbolicName(), version, (IPath)new Path(bundleFile.getAbsolutePath()), AdviceFileAdvice.BUNDLE_ADVICE_FILE);
        if (advice.containsAdvice()) {
            info.addAdvice((IPublisherAdvice)advice);
        }
        String shape = bundleFile.isDirectory() ? "dir" : "jar";
        info.addAdvice((IPublisherAdvice)new BundleShapeAdvice(bundleDescription.getSymbolicName(), version, shape));
        return BundlesAction.createBundleIU((BundleDescription)bundleDescription, (IArtifactKey)artifactKey, (IPublisherInfo)info);
    }
}

