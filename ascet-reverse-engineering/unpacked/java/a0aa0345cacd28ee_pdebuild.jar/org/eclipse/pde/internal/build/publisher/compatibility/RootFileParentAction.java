/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.publisher.eclipse.ProductFile
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.metadata.MetadataFactory
 *  org.eclipse.equinox.p2.metadata.MetadataFactory$InstallableUnitDescription
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.IPublisherResult
 *  org.eclipse.equinox.p2.publisher.actions.RootFilesAction
 */
package org.eclipse.pde.internal.build.publisher.compatibility;

import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.publisher.eclipse.ProductFile;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.metadata.MetadataFactory;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.IPublisherResult;
import org.eclipse.equinox.p2.publisher.actions.RootFilesAction;

public class RootFileParentAction
extends AbstractPublisherAction {
    private final String flavor;
    private final String version;
    protected final String baseId;

    public RootFileParentAction(ProductFile product, String flavor) {
        this.flavor = flavor;
        this.baseId = product.getId();
        this.version = this.getVersion(product.getVersion());
    }

    public RootFileParentAction(String rootId, String rootVersion, String flavor) {
        this.flavor = flavor;
        this.baseId = rootId != null ? rootId : "org.eclipse";
        this.version = this.getVersion(rootVersion);
    }

    public IStatus perform(IPublisherInfo publisherInfo, IPublisherResult results, IProgressMonitor monitor) {
        String idPrefix = String.valueOf(this.baseId) + ".rootfiles";
        String flavorPrefix = String.valueOf(this.flavor) + this.baseId + ".rootfiles";
        HashSet<IInstallableUnit> collector = new HashSet<IInstallableUnit>();
        Iterator iter = results.getIUs(null, "non_root").iterator();
        while (iter.hasNext()) {
            IInstallableUnit iu = (IInstallableUnit)iter.next();
            String id = iu.getId();
            if (!id.startsWith(idPrefix) && !id.startsWith(flavorPrefix)) continue;
            collector.add(iu);
        }
        MetadataFactory.InstallableUnitDescription descriptor = this.createParentIU(collector, RootFilesAction.computeIUId((String)this.baseId, (String)this.flavor), Version.parseVersion((String)this.version));
        descriptor.setSingleton(true);
        IInstallableUnit rootIU = MetadataFactory.createInstallableUnit((MetadataFactory.InstallableUnitDescription)descriptor);
        results.addIU(rootIU, "root");
        return Status.OK_STATUS;
    }

    private String getVersion(String rootVersion) {
        if (rootVersion != null && !rootVersion.equals("0.0.0")) {
            return rootVersion;
        }
        return "1.0.0";
    }
}

