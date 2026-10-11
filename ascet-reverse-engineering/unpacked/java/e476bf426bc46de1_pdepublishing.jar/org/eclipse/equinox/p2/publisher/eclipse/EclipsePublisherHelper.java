/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.metadata.InstallableUnit
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.IPublisherInfo
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.equinox.spi.p2.publisher.PublisherHelper
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.osgi.framework.Version
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.util.ArrayList;
import java.util.Map;
import org.eclipse.equinox.internal.p2.metadata.InstallableUnit;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.IPublisherInfo;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.equinox.p2.publisher.eclipse.BundleShapeAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;
import org.eclipse.equinox.spi.p2.publisher.PublisherHelper;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EclipsePublisherHelper {
    public static IInstallableUnit[] createEclipseIU(BundleDescription bd, boolean isFolderPlugin, IArtifactKey key, Map<String, String> extraProperties) {
        ArrayList<IInstallableUnit> iusCreated = new ArrayList<IInstallableUnit>(1);
        PublisherInfo info = new PublisherInfo();
        String shape = isFolderPlugin ? "dir" : "jar";
        info.addAdvice((IPublisherAdvice)new BundleShapeAdvice(bd.getSymbolicName(), PublisherHelper.fromOSGiVersion((Version)bd.getVersion()), shape));
        IInstallableUnit iu = BundlesAction.createBundleIU(bd, key, (IPublisherInfo)info);
        EclipsePublisherHelper.addExtraProperties(iu, extraProperties);
        iusCreated.add(iu);
        return iusCreated.toArray(new IInstallableUnit[iusCreated.size()]);
    }

    private static void addExtraProperties(IInstallableUnit iiu, Map<String, String> extraProperties) {
        if (iiu instanceof InstallableUnit) {
            InstallableUnit iu = (InstallableUnit)iiu;
            for (Map.Entry<String, String> entry : extraProperties.entrySet()) {
                iu.setProperty(entry.getKey(), entry.getValue());
            }
        }
    }
}

