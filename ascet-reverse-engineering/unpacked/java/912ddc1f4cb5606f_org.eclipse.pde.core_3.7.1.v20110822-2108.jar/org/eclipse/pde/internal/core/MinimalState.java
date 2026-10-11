/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.service.pluginconversion.PluginConversionException
 *  org.eclipse.osgi.service.pluginconversion.PluginConverter
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.BundleSpecification
 *  org.eclipse.osgi.service.resolver.HostSpecification
 *  org.eclipse.osgi.service.resolver.ImportPackageSpecification
 *  org.eclipse.osgi.service.resolver.State
 *  org.eclipse.osgi.service.resolver.StateDelta
 *  org.eclipse.osgi.service.resolver.StateHelper
 *  org.eclipse.osgi.service.resolver.StateObjectFactory
 *  org.eclipse.osgi.service.resolver.VersionConstraint
 *  org.eclipse.osgi.service.resolver.VersionRange
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleException
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.pde.internal.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.service.pluginconversion.PluginConversionException;
import org.eclipse.osgi.service.pluginconversion.PluginConverter;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.StateDelta;
import org.eclipse.osgi.service.resolver.StateHelper;
import org.eclipse.osgi.service.resolver.StateObjectFactory;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.TargetPlatformHelper;
import org.eclipse.pde.internal.core.TargetWeaver;
import org.eclipse.pde.internal.core.util.Headers;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.util.tracker.ServiceTracker;

public class MinimalState {
    protected State fState;
    protected long fId;
    private PluginConverter fConverter = null;
    private boolean fEEListChanged = false;
    private String[] fExecutionEnvironments;
    private boolean fNoProfile;
    protected static boolean DEBUG = false;
    protected static StateObjectFactory stateObjectFactory;
    protected static String DIR;
    protected String fSystemBundle = "org.eclipse.osgi";
    static /* synthetic */ Class class$0;

    static {
        DEBUG = PDECore.getDefault().isDebugging() && "true".equals(Platform.getDebugOption((String)"org.eclipse.pde.core/cache"));
        DIR = PDECore.getDefault().getStateLocation().toOSString();
        stateObjectFactory = Platform.getPlatformAdmin().getFactory();
    }

    protected MinimalState(MinimalState state) {
        this.fState = stateObjectFactory.createState(state.fState);
        this.fState.setPlatformProperties(state.fState.getPlatformProperties());
        this.fState.setResolver(Platform.getPlatformAdmin().createResolver());
        this.fId = state.fId;
        this.fEEListChanged = state.fEEListChanged;
        this.fExecutionEnvironments = state.fExecutionEnvironments;
        this.fNoProfile = state.fNoProfile;
        this.fSystemBundle = state.fSystemBundle;
    }

    protected MinimalState() {
    }

    public void addBundle(IPluginModelBase model, boolean update) {
        if (model == null) {
            return;
        }
        BundleDescription desc = model.getBundleDescription();
        long bundleId = desc == null || !update ? -1L : desc.getBundleId();
        try {
            BundleDescription newDesc = this.addBundle(new File(model.getInstallLocation()), bundleId);
            model.setBundleDescription(newDesc);
            if (newDesc == null && update) {
                this.fState.removeBundle(desc);
            }
        }
        catch (IOException iOException) {
        }
        catch (PluginConversionException pluginConversionException) {
        }
        catch (CoreException e) {
            PDECore.log(e);
        }
    }

    public BundleDescription addBundle(IPluginModelBase model, long bundleId) {
        try {
            return this.addBundle(new File(model.getInstallLocation()), -1L);
        }
        catch (IOException iOException) {
        }
        catch (PluginConversionException pluginConversionException) {
        }
        catch (CoreException coreException) {}
        return null;
    }

    public BundleDescription addBundle(Dictionary manifest, File bundleLocation, long bundleId) {
        try {
            BundleDescription descriptor = stateObjectFactory.createBundleDescription(this.fState, manifest, bundleLocation.getAbsolutePath(), bundleId == -1L ? this.getNextId() : bundleId);
            if (bundleId == -1L) {
                this.fState.addBundle(descriptor);
            } else if (!this.fState.updateBundle(descriptor)) {
                this.fState.addBundle(descriptor);
            }
            return descriptor;
        }
        catch (BundleException bundleException) {
        }
        catch (NumberFormatException numberFormatException) {
        }
        catch (IllegalArgumentException illegalArgumentException) {}
        return null;
    }

    public BundleDescription addBundle(File bundleLocation, long bundleId) throws PluginConversionException, CoreException, IOException {
        BundleDescription desc;
        boolean hasBundleStructure;
        Dictionary manifest = MinimalState.loadManifest(bundleLocation);
        TargetWeaver.weaveManifest(manifest);
        boolean bl = hasBundleStructure = manifest != null && manifest.get("Bundle-SymbolicName") != null;
        if (!hasBundleStructure) {
            if (!(bundleLocation.isFile() || new File(bundleLocation, "plugin.xml").exists() || new File(bundleLocation, "fragment.xml").exists())) {
                return null;
            }
            PluginConverter converter = this.acquirePluginConverter();
            manifest = converter.convertManifest(bundleLocation, false, null, false, null);
            if (manifest == null || manifest.get("Bundle-SymbolicName") == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.core", 4, "Error parsing plug-in manifest file at " + bundleLocation.toString(), null));
            }
        }
        if ((desc = this.addBundle(manifest, bundleLocation, bundleId)) != null && "true".equals(manifest.get("Eclipse-SystemBundle"))) {
            this.fEEListChanged = true;
            this.fSystemBundle = desc.getSymbolicName();
        }
        if (desc != null) {
            this.addAuxiliaryData(desc, manifest, hasBundleStructure);
        }
        return desc;
    }

    protected void addAuxiliaryData(BundleDescription desc, Dictionary manifest, boolean hasBundleStructure) {
    }

    protected void saveState(File dir) {
        this.saveState(this.fState, dir);
    }

    protected void saveState(State state, File dir) {
        try {
            if (!dir.exists()) {
                dir.mkdirs();
            }
            stateObjectFactory.writeState(state, dir);
        }
        catch (FileNotFoundException e) {
            PDECore.log(e);
        }
        catch (IOException e) {
            PDECore.log(e);
        }
    }

    /*
     * Loose catch block
     */
    public static Dictionary loadManifest(File bundleLocation) throws IOException {
        ZipFile jarFile = null;
        InputStream manifestStream = null;
        try {
            String extension = new Path(bundleLocation.getName()).getFileExtension();
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
        }
        catch (IOException iOException) {}
        if (manifestStream == null) {
            return null;
        }
        Dictionary dictionary = (Dictionary)((Object)ManifestElement.parseBundleManifest(manifestStream, (Map)new Headers(10)));
        try {
            if (jarFile != null) {
                jarFile.close();
            }
        }
        catch (IOException iOException) {}
        return dictionary;
        catch (BundleException bundleException) {
            try {}
            catch (Throwable throwable) {
                try {
                    if (jarFile != null) {
                        jarFile.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (jarFile != null) {
                    jarFile.close();
                }
            }
            catch (IOException iOException) {}
        }
        return null;
    }

    public StateDelta resolveState(boolean incremental) {
        return this.internalResolveState(incremental);
    }

    public StateDelta resolveState(String[] symbolicNames) {
        if (this.initializePlatformProperties()) {
            return this.fState.resolve(false);
        }
        ArrayList<BundleDescription> bundles = new ArrayList<BundleDescription>();
        int i = 0;
        while (i < symbolicNames.length) {
            BundleDescription[] descriptions = this.fState.getBundles(symbolicNames[i]);
            int j = 0;
            while (j < descriptions.length) {
                bundles.add(descriptions[j]);
                ++j;
            }
            ++i;
        }
        return this.fState.resolve(bundles.toArray(new BundleDescription[bundles.size()]));
    }

    private synchronized StateDelta internalResolveState(boolean incremental) {
        boolean fullBuildRequired = this.initializePlatformProperties();
        return this.fState.resolve(incremental && !fullBuildRequired);
    }

    protected boolean initializePlatformProperties() {
        if (this.fExecutionEnvironments == null && !this.fNoProfile) {
            this.setExecutionEnvironments();
        }
        if (this.fEEListChanged) {
            this.fEEListChanged = false;
            return this.fState.setPlatformProperties(this.getProfilePlatformProperties());
        }
        return false;
    }

    private Dictionary[] getProfilePlatformProperties() {
        return TargetPlatformHelper.getPlatformProperties(this.fExecutionEnvironments, this);
    }

    public void removeBundleDescription(BundleDescription description) {
        if (description != null) {
            this.fState.removeBundle(description);
        }
    }

    public State getState() {
        return this.fState;
    }

    private void setExecutionEnvironments() {
        String jreProfile;
        String[] knownExecutionEnviroments = TargetPlatformHelper.getKnownExecutionEnvironments();
        if (knownExecutionEnviroments.length == 0 && (jreProfile = System.getProperty("pde.jreProfile")) != null && jreProfile.length() > 0 && "none".equals(jreProfile)) {
            this.fNoProfile = true;
        }
        if (!this.fNoProfile) {
            this.fExecutionEnvironments = knownExecutionEnviroments;
        }
        this.fEEListChanged = true;
    }

    public void addBundleDescription(BundleDescription toAdd) {
        if (toAdd != null) {
            this.fState.addBundle(toAdd);
        }
    }

    private PluginConverter acquirePluginConverter() {
        if (this.fConverter == null) {
            BundleContext bundleContext = PDECore.getDefault().getBundleContext();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.service.pluginconversion.PluginConverter");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ServiceTracker tracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            tracker.open();
            this.fConverter = (PluginConverter)tracker.getService();
            tracker.close();
            Object var1_1 = null;
        }
        return this.fConverter;
    }

    public long getNextId() {
        return ++this.fId;
    }

    private BundleDescription findActiveBundle(String symbolicName) {
        BundleDescription[] bundles = this.fState.getBundles(symbolicName);
        int i = 0;
        while (i < bundles.length) {
            if (bundles[i].isResolved()) {
                return bundles[i];
            }
            ++i;
        }
        return null;
    }

    protected void logResolutionErrors() {
        MultiStatus errors = new MultiStatus("org.eclipse.pde.core", 1, "Problems occurred during the resolution of the target platform", null);
        StateHelper helper = Platform.getPlatformAdmin().getStateHelper();
        BundleDescription[] all = this.fState.getBundles();
        int i = 0;
        while (i < all.length) {
            if (!all[i].isResolved()) {
                String message;
                VersionConstraint[] unsatisfiedConstraints = helper.getUnsatisfiedConstraints(all[i]);
                if (unsatisfiedConstraints.length == 0) {
                    if (DEBUG) {
                        BundleDescription activeBundle = this.findActiveBundle(all[i].getSymbolicName());
                        message = "Plug-in located at \"" + all[i].getLocation() + "\" was disabled because plug-in located at \"" + activeBundle.getLocation() + "\" was selected.";
                        System.out.print(message);
                    }
                } else {
                    int j = 0;
                    while (j < unsatisfiedConstraints.length) {
                        message = this.getResolutionFailureMessage(unsatisfiedConstraints[j]);
                        if (message != null) {
                            errors.add((IStatus)new Status(2, all[i].getSymbolicName(), 2, message, null));
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
        if (errors.getChildren().length > 0) {
            PDECore.log((IStatus)errors);
        }
    }

    private String getResolutionFailureMessage(VersionConstraint unsatisfied) {
        if (unsatisfied.isResolved()) {
            throw new IllegalArgumentException();
        }
        if (unsatisfied instanceof ImportPackageSpecification) {
            return "Missing imported package: " + this.toString(unsatisfied);
        }
        if (unsatisfied instanceof BundleSpecification && !((BundleSpecification)unsatisfied).isOptional()) {
            return "Missing required plug-in: " + this.toString(unsatisfied);
        }
        if (unsatisfied instanceof HostSpecification) {
            return "Missing Fragment Host: " + this.toString(unsatisfied);
        }
        return null;
    }

    private String toString(VersionConstraint constraint) {
        VersionRange versionRange = constraint.getVersionRange();
        if (versionRange == null || versionRange.getMinimum() != null) {
            return constraint.getName();
        }
        return String.valueOf(constraint.getName()) + '_' + versionRange;
    }

    public String getSystemBundle() {
        return this.fSystemBundle;
    }
}

