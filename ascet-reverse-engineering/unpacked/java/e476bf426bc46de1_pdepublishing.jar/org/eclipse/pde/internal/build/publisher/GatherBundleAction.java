/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor
 *  org.eclipse.equinox.spi.p2.publisher.PublisherHelper
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.build.publisher;

import java.io.File;
import java.util.Dictionary;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.eclipse.BundleShapeAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;
import org.eclipse.equinox.p2.repository.artifact.IArtifactDescriptor;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.internal.build.publisher.GatheringComputer;
import org.eclipse.pde.internal.publishing.Utils;
import org.osgi.framework.Version;

public class GatherBundleAction
extends BundlesAction {
    private GatheringComputer computer = null;
    private String unpack = null;
    private File manifestRoot = null;
    private File bundleLocation = null;

    public GatherBundleAction(File location, File manifestRoot) {
        super(new File[]{location});
        this.manifestRoot = manifestRoot;
        this.bundleLocation = location;
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        return super.perform(publisherInfo, results, monitor);
    }

    protected void publishArtifact(IArtifactDescriptor descriptor, File base, File[] inclusions, IPublisherInfo publisherInfo) {
        this.publishArtifact(descriptor, this.computer.getFiles(), null, publisherInfo, this.computer);
    }

    protected BundleDescription[] getBundleDescriptions(File[] bundleLocations, IProgressMonitor monitor) {
        Dictionary<String, String> manifest = GatherBundleAction.basicLoadManifest(this.manifestRoot);
        if (manifest == null) {
            return null;
        }
        BundleDescription bundle = GatherBundleAction.createBundleDescription(manifest, this.bundleLocation);
        this.createShapeAdvice(bundle);
        return new BundleDescription[]{bundle};
    }

    protected void createShapeAdvice(BundleDescription bundle) {
        Dictionary manifest = (Dictionary)bundle.getUserObject();
        String shape = (String)manifest.get(BUNDLE_SHAPE);
        if (shape == null) {
            shape = this.unpack != null ? (Boolean.valueOf(this.unpack) != false ? "dir" : "jar") : (Utils.guessUnpack(bundle, Utils.getBundleClasspath(manifest)) ? "dir" : "jar");
        }
        BundleShapeAdvice advice = new BundleShapeAdvice(bundle.getSymbolicName(), PublisherHelper.fromOSGiVersion((Version)bundle.getVersion()), shape);
        this.info.addAdvice((IPublisherAdvice)advice);
    }

    public void setComputer(GatheringComputer computer) {
        this.computer = computer;
    }

    public void setUnpack(String unpack) {
        this.unpack = unpack;
    }
}

