/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.team.core.ScmUrlImportDescription
 *  org.eclipse.team.core.Team
 *  org.eclipse.team.core.importing.provisional.IBundleImporter
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.Version
 */
package org.eclipse.pde.internal.core.project;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.project.IBundleClasspathEntry;
import org.eclipse.pde.core.project.IBundleProjectDescription;
import org.eclipse.pde.core.project.IBundleProjectService;
import org.eclipse.pde.core.project.IHostDescription;
import org.eclipse.pde.core.project.IPackageExportDescription;
import org.eclipse.pde.core.project.IPackageImportDescription;
import org.eclipse.pde.core.project.IRequiredBundleDescription;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.project.BundleClasspathSpecification;
import org.eclipse.pde.internal.core.project.BundleProjectDescription;
import org.eclipse.pde.internal.core.project.HostDescriptoin;
import org.eclipse.pde.internal.core.project.PDEProject;
import org.eclipse.pde.internal.core.project.PackageExportDescription;
import org.eclipse.pde.internal.core.project.PackageImportDescription;
import org.eclipse.pde.internal.core.project.RequiredBundleDescription;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.team.core.ScmUrlImportDescription;
import org.eclipse.team.core.Team;
import org.eclipse.team.core.importing.provisional.IBundleImporter;
import org.osgi.framework.BundleException;
import org.osgi.framework.Version;

public final class BundleProjectService
implements IBundleProjectService {
    public static final String BUNDLE_IMPORTER = "BUNDLE_IMPORTER";
    public static final String PLUGIN = "PLUGIN";
    private static IBundleProjectService fgDefault;

    public static synchronized IBundleProjectService getDefault() {
        if (fgDefault == null) {
            fgDefault = new BundleProjectService();
        }
        return fgDefault;
    }

    private BundleProjectService() {
    }

    public IBundleProjectDescription getDescription(IProject project) throws CoreException {
        return new BundleProjectDescription(project);
    }

    public IHostDescription newHost(String name, VersionRange range) {
        return new HostDescriptoin(name, range);
    }

    public IPackageImportDescription newPackageImport(String name, VersionRange range, boolean optional) {
        return new PackageImportDescription(name, range, optional);
    }

    public IPackageExportDescription newPackageExport(String name, Version version, boolean api, String[] friends) {
        return new PackageExportDescription(name, version, friends, api);
    }

    public IRequiredBundleDescription newRequiredBundle(String name, VersionRange range, boolean optional, boolean export) {
        return new RequiredBundleDescription(name, range, export, optional);
    }

    public IBundleClasspathEntry newBundleClasspathEntry(IPath sourceFolder, IPath binaryFolder, IPath library) {
        return new BundleClasspathSpecification(sourceFolder, binaryFolder, library);
    }

    public void setBundleRoot(IProject project, IPath bundleRoot) throws CoreException {
        PDEProject.setBundleRoot(project, bundleRoot == null ? null : project.getFolder(bundleRoot));
    }

    public IBundleImporter getSourceReferenceHandler(String id) {
        return null;
    }

    public Map getImportDescriptions(IPluginModelBase[] models) throws CoreException {
        ArrayList<Map> manifests = new ArrayList<Map>();
        ArrayList<IPluginModelBase> plugins = new ArrayList<IPluginModelBase>();
        int i = 0;
        while (i < models.length) {
            Map manifest;
            String location = models[i].getInstallLocation();
            if (location != null && (manifest = this.loadManifest(new File(location))) != null) {
                manifests.add(manifest);
                plugins.add(models[i]);
            }
            ++i;
        }
        if (!manifests.isEmpty()) {
            Map[] marray = manifests.toArray(new Map[manifests.size()]);
            HashMap<IBundleImporter, ScmUrlImportDescription[]> result = new HashMap<IBundleImporter, ScmUrlImportDescription[]>();
            IBundleImporter[] importers = Team.getBundleImporters();
            int i2 = 0;
            while (i2 < importers.length) {
                IBundleImporter importer = importers[i2];
                ScmUrlImportDescription[] descriptions = importer.validateImport(marray);
                ArrayList<ScmUrlImportDescription> descriptioonList = new ArrayList<ScmUrlImportDescription>();
                int j = 0;
                while (j < descriptions.length) {
                    ScmUrlImportDescription description = descriptions[j];
                    if (description != null) {
                        descriptioonList.add(description);
                        description.setProperty(BUNDLE_IMPORTER, (Object)importer);
                        description.setProperty(PLUGIN, plugins.get(j));
                    }
                    ++j;
                }
                if (!descriptioonList.isEmpty()) {
                    result.put(importer, descriptioonList.toArray(new ScmUrlImportDescription[descriptioonList.size()]));
                }
                ++i2;
            }
            return result;
        }
        return new HashMap();
    }

    /*
     * WARNING - Removed back jump from a try to a catch block - possible behaviour change.
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private Map loadManifest(File bundleLocation) throws CoreException {
        ZipFile jarFile = null;
        InputStream manifestStream = null;
        String extension = new Path(bundleLocation.getName()).getFileExtension();
        try {
            if (extension != null && extension.equals("jar") && bundleLocation.isFile()) {
                jarFile = new ZipFile(bundleLocation, 1);
                ZipEntry manifestEntry = jarFile.getEntry("META-INF/MANIFEST.MF");
                if (manifestEntry != null) {
                    manifestStream = jarFile.getInputStream(manifestEntry);
                }
            } else {
                File file = new File(bundleLocation, "META-INF/MANIFEST.MF");
                if (file.exists()) {
                    manifestStream = new FileInputStream(file);
                }
            }
            if (manifestStream == null) {
                this.closeZipFileAndStream(manifestStream, jarFile);
                return null;
            }
        }
        catch (BundleException e) {
            try {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", 102, NLS.bind((String)Messages.DirectoryBundleContainer_3, (Object)bundleLocation.getAbsolutePath()), (Throwable)e));
                catch (IOException e2) {
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", 102, NLS.bind((String)Messages.DirectoryBundleContainer_3, (Object)bundleLocation.getAbsolutePath()), (Throwable)e2));
                }
            }
            catch (Throwable throwable) {
                this.closeZipFileAndStream(manifestStream, jarFile);
                throw throwable;
            }
        }
        {
            Map map = ManifestElement.parseBundleManifest((InputStream)manifestStream, new Hashtable(10));
            this.closeZipFileAndStream(manifestStream, jarFile);
            return map;
        }
    }

    private void closeZipFileAndStream(InputStream stream, ZipFile jarFile) {
        try {
            if (stream != null) {
                stream.close();
            }
        }
        catch (IOException e) {
            PDECore.log(e);
        }
        try {
            if (jarFile != null) {
                jarFile.close();
            }
        }
        catch (IOException e) {
            PDECore.log(e);
        }
    }
}

