/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IContributor
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 *  org.eclipse.core.runtime.spi.RegistryContributor
 *  org.eclipse.core.variables.IStringVariableManager
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.equinox.frameworkadmin.BundleInfo
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator
 *  org.eclipse.osgi.service.pluginconversion.PluginConversionException
 *  org.eclipse.osgi.service.pluginconversion.PluginConverter
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.core.target;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.core.runtime.spi.RegistryContributor;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.equinox.frameworkadmin.BundleInfo;
import org.eclipse.equinox.internal.provisional.frameworkadmin.ConfigData;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin;
import org.eclipse.equinox.internal.provisional.frameworkadmin.Manipulator;
import org.eclipse.osgi.service.pluginconversion.PluginConversionException;
import org.eclipse.osgi.service.pluginconversion.PluginConverter;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.target.Messages;
import org.eclipse.pde.internal.core.target.ResolvedBundle;
import org.eclipse.pde.internal.core.target.provisional.IBundleContainer;
import org.eclipse.pde.internal.core.target.provisional.IResolvedBundle;
import org.eclipse.pde.internal.core.target.provisional.ITargetDefinition;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;

public abstract class AbstractBundleContainer
implements IBundleContainer {
    protected IResolvedBundle[] fBundles;
    protected IFeatureModel[] fFeatures;
    private IStatus fResolutionStatus;
    private IExtensionRegistry fRegistry;
    private String fSourcePath;
    private String[] fVMArgs;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    protected String resolveVariables(String text) throws CoreException {
        IStringVariableManager manager = VariablesPlugin.getDefault().getStringVariableManager();
        return manager.performStringSubstitution(text);
    }

    public final boolean isResolved() {
        return this.fResolutionStatus != null && this.fResolutionStatus.getSeverity() != 8;
    }

    public final IStatus resolve(ITargetDefinition definition, IProgressMonitor monitor) {
        SubMonitor subMonitor = SubMonitor.convert((IProgressMonitor)monitor, (int)150);
        try {
            try {
                this.fBundles = this.resolveBundles(definition, (IProgressMonitor)subMonitor.newChild(100));
                this.fFeatures = this.resolveFeatures(definition, (IProgressMonitor)subMonitor.newChild(50));
                this.fResolutionStatus = Status.OK_STATUS;
                if (subMonitor.isCanceled()) {
                    this.fBundles = null;
                    this.fResolutionStatus = Status.CANCEL_STATUS;
                }
            }
            catch (CoreException e) {
                this.fBundles = new IResolvedBundle[0];
                this.fFeatures = new IFeatureModel[0];
                this.fResolutionStatus = e.getStatus();
                if (this.fRegistry != null) {
                    this.fRegistry.stop((Object)this);
                    this.fRegistry = null;
                }
                subMonitor.done();
                if (monitor != null) {
                    monitor.done();
                }
            }
        }
        finally {
            if (this.fRegistry != null) {
                this.fRegistry.stop((Object)this);
                this.fRegistry = null;
            }
            subMonitor.done();
            if (monitor != null) {
                monitor.done();
            }
        }
        return this.fResolutionStatus;
    }

    public IStatus getStatus() {
        if (!this.isResolved()) {
            return null;
        }
        return this.fResolutionStatus;
    }

    public final IResolvedBundle[] getBundles() {
        if (this.isResolved()) {
            return this.fBundles;
        }
        return null;
    }

    public IFeatureModel[] getFeatures() {
        if (this.isResolved()) {
            return this.fFeatures;
        }
        return null;
    }

    protected abstract IResolvedBundle[] resolveBundles(ITargetDefinition var1, IProgressMonitor var2) throws CoreException;

    protected abstract IFeatureModel[] resolveFeatures(ITargetDefinition var1, IProgressMonitor var2) throws CoreException;

    public abstract String getType();

    public abstract String getLocation(boolean var1) throws CoreException;

    public abstract boolean isContentEqual(AbstractBundleContainer var1);

    protected void clearResolutionStatus() {
        this.fResolutionStatus = null;
    }

    /*
     * WARNING - Removed back jump from a try to a catch block - possible behaviour change.
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected Map loadManifest(BundleInfo bundle) throws CoreException {
        ZipFile jarFile = null;
        InputStream manifestStream = null;
        try {
            String path = bundle.getLocation().toURL().getFile();
            File dirOrJar = new File(path);
            String extension = new Path(path).getFileExtension();
            if (extension != null && extension.equals("jar") && dirOrJar.isFile()) {
                jarFile = new ZipFile(dirOrJar, 1);
                ZipEntry manifestEntry = jarFile.getEntry("META-INF/MANIFEST.MF");
                if (manifestEntry != null) {
                    manifestStream = jarFile.getInputStream(manifestEntry);
                }
            } else {
                File file = new File(dirOrJar, "META-INF/MANIFEST.MF");
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
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", 102, NLS.bind((String)Messages.DirectoryBundleContainer_3, (Object)bundle.getSymbolicName()), (Throwable)e));
                catch (IOException e2) {
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", 102, NLS.bind((String)Messages.DirectoryBundleContainer_3, (Object)bundle.getSymbolicName()), (Throwable)e2));
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

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected Map loadManifest(File bundleLocation) throws CoreException {
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
                } else {
                    Map map = this.loadPluginXML(bundleLocation);
                    if (map != null) {
                        Map map2 = map;
                        this.closeZipFileAndStream(manifestStream, jarFile);
                        return map2;
                    }
                }
            }
            if (manifestStream == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", 102, NLS.bind((String)Messages.DirectoryBundleContainer_3, (Object)bundleLocation.getAbsolutePath()), null));
            }
            Map map = ManifestElement.parseBundleManifest((InputStream)manifestStream, new Hashtable(10));
            String bsn = (String)map.get("Bundle-SymbolicName");
            if (bsn == null && bundleLocation.isDirectory()) {
                map = this.loadPluginXML(bundleLocation);
            }
            if (map == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", 102, NLS.bind((String)Messages.DirectoryBundleContainer_3, (Object)bundleLocation.getAbsolutePath()), null));
            }
            Map map3 = map;
            this.closeZipFileAndStream(manifestStream, jarFile);
            return map3;
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
    }

    void closeZipFileAndStream(InputStream stream, ZipFile jarFile) {
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

    private Map loadPluginXML(File pluginDir) throws CoreException {
        File pxml = new File(pluginDir, "plugin.xml");
        File fxml = new File(pluginDir, "fragment.xml");
        if (pxml.exists() || fxml.exists()) {
            PluginConverter converter;
            PDECore pDECore = PDECore.getDefault();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.service.pluginconversion.PluginConverter");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((converter = (PluginConverter)pDECore.acquireService(clazz.getName())) != null) {
                try {
                    Dictionary convert = converter.convertManifest(pluginDir, false, null, false, null);
                    if (convert != null) {
                        HashMap map = new HashMap(convert.size(), 1.0f);
                        Enumeration keys = convert.keys();
                        while (keys.hasMoreElements()) {
                            Object key = keys.nextElement();
                            map.put(key, convert.get(key));
                        }
                        return map;
                    }
                }
                catch (PluginConversionException e) {
                    throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", NLS.bind((String)Messages.DirectoryBundleContainer_2, (Object)pluginDir.getAbsolutePath()), (Throwable)e));
                }
            }
        }
        return null;
    }

    protected IResolvedBundle resolveBundle(BundleInfo info, boolean isSource) {
        File file = null;
        Map manifest = null;
        boolean fragment = false;
        IStatus status = null;
        try {
            file = new File(info.getLocation());
            manifest = this.loadManifest(file);
            fragment = manifest.containsKey("Fragment-Host");
        }
        catch (CoreException e) {
            status = e.getStatus();
        }
        return new ResolvedBundle(info, this, status, isSource ? this.getProvidedSource(file, info.getSymbolicName(), manifest) : null, false, fragment);
    }

    protected void disposeRegistry() {
    }

    protected IResolvedBundle generateBundle(File file) throws CoreException {
        Map manifest = this.loadManifest(file);
        try {
            String name;
            ManifestElement[] elements;
            String header = (String)manifest.get("Bundle-SymbolicName");
            if (header != null && (elements = ManifestElement.parseHeader((String)"Bundle-SymbolicName", (String)header)) != null && (name = elements[0].getValue()) != null) {
                BundleInfo info = new BundleInfo();
                info.setSymbolicName(name);
                info.setLocation(file.toURI());
                header = (String)manifest.get("Bundle-Version");
                if (header != null && (elements = ManifestElement.parseHeader((String)"Bundle-Version", (String)header)) != null) {
                    info.setVersion(elements[0].getValue());
                }
                BundleInfo source = this.getProvidedSource(file, name, manifest);
                boolean fragment = manifest.containsKey("Fragment-Host");
                ResolvedBundle rb = new ResolvedBundle(info, this, null, source, false, fragment);
                rb.setSourcePath(this.fSourcePath);
                return rb;
            }
        }
        catch (BundleException e) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", 102, NLS.bind((String)Messages.DirectoryBundleContainer_3, (Object)file.getAbsolutePath()), (Throwable)e));
        }
        return null;
    }

    private BundleInfo getProvidedSource(File bundle, String symbolicName, Map manifest) {
        this.fSourcePath = null;
        if (manifest != null) {
            if (manifest.containsKey("Eclipse-SourceBundle")) {
                try {
                    ManifestElement[] manifestElements = ManifestElement.parseHeader((String)"Eclipse-SourceBundle", (String)((String)manifest.get("Eclipse-SourceBundle")));
                    if (manifestElements != null) {
                        int j = 0;
                        while (j < manifestElements.length) {
                            ManifestElement currentElement = manifestElements[j];
                            String binaryPluginName = currentElement.getValue();
                            String versionEntry = currentElement.getAttribute("version");
                            if (binaryPluginName != null && binaryPluginName.length() > 0 && versionEntry != null && versionEntry.length() > 0) {
                                return new BundleInfo(binaryPluginName, versionEntry, null, -1, false);
                            }
                            ++j;
                        }
                    }
                }
                catch (BundleException e) {
                    PDECore.log(e);
                    return null;
                }
            }
            if (manifest.containsKey("Bundle-ClassPath")) {
                return null;
            }
        }
        if (bundle != null && symbolicName != null) {
            if (bundle.isFile()) {
                return null;
            }
            File pxml = new File(bundle, "plugin.xml");
            if (!pxml.exists()) {
                pxml = new File(bundle, "fragment.xml");
            }
            if (pxml.exists()) {
                IExtensionRegistry registry = this.getRegistry();
                RegistryContributor contributor = new RegistryContributor(symbolicName, symbolicName, null, null);
                try {
                    registry.addContribution((InputStream)new BufferedInputStream(new FileInputStream(pxml)), (IContributor)contributor, false, null, null, (Object)this);
                    IExtension[] extensions = registry.getExtensions((IContributor)contributor);
                    int i = 0;
                    while (i < extensions.length) {
                        IExtension extension = extensions[i];
                        if ("org.eclipse.pde.core.source".equals(extension.getExtensionPointUniqueIdentifier())) {
                            IConfigurationElement[] elements = extension.getConfigurationElements();
                            if (elements.length == 1) {
                                this.fSourcePath = elements[0].getAttribute("path");
                            }
                            return new BundleInfo(null, null, bundle.toURI(), -1, false);
                        }
                        ++i;
                    }
                }
                catch (FileNotFoundException fileNotFoundException) {}
            }
        }
        return null;
    }

    private IExtensionRegistry getRegistry() {
        if (this.fRegistry == null) {
            this.fRegistry = RegistryFactory.createRegistry(null, (Object)this, (Object)this);
            String bogusDef = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<?eclipse version=\"3.2\"?>\n<plugin><extension-point id=\"source\" name=\"source\"/>\n</plugin>";
            RegistryContributor contributor = new RegistryContributor("org.eclipse.pde.core", "org.eclipse.pde.core", null, null);
            this.fRegistry.addContribution((InputStream)new ByteArrayInputStream(bogusDef.getBytes()), (IContributor)contributor, false, null, null, (Object)this);
        }
        return this.fRegistry;
    }

    public String[] getVMArguments() {
        String FWK_ADMIN_EQ = "org.eclipse.equinox.frameworkadmin.equinox";
        if (this.fVMArgs == null) {
            try {
                Bundle fwAdminBundle;
                FrameworkAdmin fwAdmin;
                PDECore pDECore = PDECore.getDefault();
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = class$1 = Class.forName("org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((fwAdmin = (FrameworkAdmin)pDECore.acquireService(clazz.getName())) == null && (fwAdminBundle = Platform.getBundle((String)FWK_ADMIN_EQ)) != null) {
                    fwAdminBundle.start();
                    PDECore pDECore2 = PDECore.getDefault();
                    Class<?> clazz2 = class$1;
                    if (clazz2 == null) {
                        try {
                            clazz2 = class$1 = Class.forName("org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdmin");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    fwAdmin = (FrameworkAdmin)pDECore2.acquireService(clazz2.getName());
                }
                if (fwAdmin != null) {
                    Manipulator manipulator = fwAdmin.getManipulator();
                    ConfigData configData = new ConfigData(null, null, null, null);
                    String home = this.getLocation(true);
                    manipulator.getLauncherData().setLauncher(new File(home, "eclipse"));
                    File installDirectory = new File(home);
                    if (Platform.getOS().equals("macosx")) {
                        installDirectory = new File(installDirectory, "Eclipse.app/Contents/MacOS");
                    }
                    manipulator.getLauncherData().setLauncherConfigLocation(new File(installDirectory, "eclipse.ini"));
                    manipulator.getLauncherData().setHome(new File(home));
                    manipulator.setConfigData(configData);
                    manipulator.load();
                    this.fVMArgs = manipulator.getLauncherData().getJvmArgs();
                }
            }
            catch (BundleException e) {
                PDECore.log(e);
            }
            catch (CoreException e) {
                PDECore.log(e);
            }
            catch (IOException e) {
                PDECore.log(e);
            }
        }
        if (this.fVMArgs == null || this.fVMArgs.length == 0) {
            return null;
        }
        return this.fVMArgs;
    }

    protected void associateWithTarget(ITargetDefinition target) {
    }
}

