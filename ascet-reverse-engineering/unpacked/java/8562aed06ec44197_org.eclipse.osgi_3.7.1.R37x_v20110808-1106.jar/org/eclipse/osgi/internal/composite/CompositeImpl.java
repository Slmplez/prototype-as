/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.composite;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Map;
import java.util.Properties;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.internal.composite.CompositeBase;
import org.eclipse.osgi.internal.composite.CompositeHelper;
import org.eclipse.osgi.internal.composite.CompositeServiceTracker;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.loader.BundleLoaderProxy;
import org.eclipse.osgi.launch.Equinox;
import org.eclipse.osgi.service.internal.composite.CompositeModule;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.FrameworkEvent;
import org.osgi.service.framework.CompositeBundle;
import org.osgi.service.framework.SurrogateBundle;

public class CompositeImpl
extends CompositeBase
implements CompositeBundle {
    private static String COMPOSITE_STORAGE = "store";
    public static String COMPOSITE_CONFIGURATION = "compositeConfig.properties";
    private final ServiceTrackerManager trackerManager = new ServiceTrackerManager();

    public CompositeImpl(BundleData bundledata, Framework framework) throws BundleException {
        super(bundledata, framework);
    }

    protected org.osgi.framework.launch.Framework findCompanionFramework(Framework thisFramework, BundleData thisData) throws BundleException {
        File compositeStorage = thisData.getDataFile(COMPOSITE_STORAGE);
        boolean firstTime = false;
        if (!compositeStorage.exists()) {
            firstTime = true;
        }
        URL childConfig = this.bundledata.getEntry(COMPOSITE_CONFIGURATION);
        Properties props = new Properties();
        try {
            props.load(childConfig.openStream());
        }
        catch (IOException e) {
            throw new BundleException("Could not load child configuration", e);
        }
        props.put("org.osgi.framework.storage", compositeStorage.getAbsolutePath());
        props.put(PROP_PARENTFRAMEWORK, thisFramework.getSystemBundleContext().getBundle());
        props.put(PROP_COMPOSITE, this);
        Equinox equinox = new Equinox(props);
        if (!firstTime) {
            return equinox;
        }
        equinox.init();
        this.installSurrogate(equinox.getBundleContext(), thisData);
        return equinox;
    }

    private void installSurrogate(BundleContext companionContext, BundleData thisData) throws BundleException {
        Bundle surrogate;
        try {
            InputStream surrogateContent = CompositeHelper.getSurrogateInput(thisData.getManifest(), null, null);
            surrogate = companionContext.installBundle(thisData.getLocation(), surrogateContent);
        }
        catch (IOException e) {
            throw new BundleException("Error installing parent companion composite bundle", e);
        }
        CompositeHelper.setDisabled(true, surrogate, companionContext);
        CompositeHelper.setCompositePermissions(thisData.getLocation(), companionContext);
    }

    private boolean updateSurrogate(BundleData thisData, BundleDescription child, ExportPackageDescription[] matchingExports) throws BundleException {
        InputStream surrogateContent;
        try {
            surrogateContent = CompositeHelper.getSurrogateInput(thisData.getManifest(), child, matchingExports);
        }
        catch (IOException e) {
            throw new BundleException("Error updating surrogate bundle.", e);
        }
        CompositeModule surrogateComposite = (CompositeModule)((Object)this.getSurrogateBundle());
        surrogateComposite.updateContent(surrogateContent);
        boolean disable = matchingExports == null;
        CompositeHelper.setDisabled(disable, this.getSurrogateBundle(), this.getCompositeFramework().getBundleContext());
        return disable ? false : surrogateComposite.resolveContent();
    }

    public org.osgi.framework.launch.Framework getCompositeFramework() {
        if ((this.getState() & 1) == 0 && (this.companionFramework.getState() & 6) != 0) {
            try {
                this.companionFramework.init();
            }
            catch (BundleException e) {
                throw new RuntimeException("Cannot initialize child framework.", e);
            }
        }
        return this.companionFramework;
    }

    public SurrogateBundle getSurrogateBundle() {
        return (SurrogateBundle)this.getCompanionBundle();
    }

    protected Bundle getCompanionBundle() {
        return this.getCompositeFramework().getBundleContext().getBundle(1L);
    }

    public void update(Map compositeManifest) throws BundleException {
        BundleLoader loader;
        CompositeHelper.validateCompositeManifest(compositeManifest);
        if (this.isResolved() && (loader = this.getBundleLoader()) != null) {
            loader.createClassLoader();
        }
        try {
            Map frameworkConfig = this.getFrameworkConfig();
            this.updateSurrogate(this.getBundleData(), null, null);
            this.updateContent(CompositeHelper.getCompositeInput(frameworkConfig, compositeManifest));
        }
        catch (IOException e) {
            throw new BundleException("Error updating composite.", e);
        }
    }

    private Map getFrameworkConfig() throws IOException {
        Properties result = new Properties();
        URL config = this.getEntry(COMPOSITE_CONFIGURATION);
        result.load(config.openStream());
        return result;
    }

    public void uninstall() throws BundleException {
        this.checkClassLoader();
        this.stop(1);
        this.stopChildFramework();
        super.uninstall();
    }

    private void checkClassLoader() {
        BundleLoaderProxy proxy = this.getLoaderProxy();
        if (proxy != null && proxy.inUse() && proxy.getBundleLoader() != null) {
            BundleClassLoader loader = proxy.getBundleLoader().createClassLoader();
            loader.getResource("dummy");
        }
    }

    protected void startHook() throws BundleException {
        this.companionFramework.start();
        this.trackerManager.startedComposite();
    }

    protected void stopHook() throws BundleException {
        this.trackerManager.stoppedComposite();
        if ((this.bundledata.getStatus() & 1) == 0) {
            this.stopChildFramework();
        }
    }

    public void started(CompositeModule surrogate) {
        if (surrogate == this.getSurrogateBundle()) {
            this.trackerManager.startedSurrogate();
        }
    }

    public void stopped(CompositeModule surrogate) {
        if (surrogate == this.getSurrogateBundle()) {
            this.trackerManager.stoppedSurrogate();
        }
    }

    private void stopChildFramework() throws BundleException {
        this.companionFramework.stop();
        try {
            FrameworkEvent stopped = this.companionFramework.waitForStop(30000L);
            switch (stopped.getType()) {
                case 2: {
                    throw new BundleException("Error stopping the child framework.", stopped.getThrowable());
                }
                case 512: {
                    throw new BundleException("Timed out waiting for the child framework to stop.");
                }
                case 64: {
                    return;
                }
            }
            throw new BundleException("Unexpected code returned when stopping the child framework:" + stopped.getType());
        }
        catch (InterruptedException e) {
            throw new BundleException("Error stopping child framework", e);
        }
    }

    public boolean giveExports(ExportPackageDescription[] matchingExports) {
        if (matchingExports == null) {
            SurrogateBundle surrogate = this.getSurrogateBundle();
            CompositeHelper.setDisabled(true, this.getSurrogateBundle(), this.getCompositeFramework().getBundleContext());
            ((CompositeModule)((Object)surrogate)).refreshContent();
            return true;
        }
        try {
            return this.updateSurrogate(this.getBundleData(), this.getBundleDescription(), matchingExports);
        }
        catch (BundleException e) {
            e.printStackTrace();
            return false;
        }
    }

    class ServiceTrackerManager {
        static final int COMPOSITE_ACTIVE = 1;
        static final int SURROGATE_ACTIVE = 2;
        private int bundlesActive = 0;
        private CompositeServiceTracker shareToChildServices;
        private CompositeServiceTracker shareToParentServices;

        ServiceTrackerManager() {
        }

        void startedComposite() throws BundleException {
            this.open(1);
            CompositeImpl.this.getSurrogateBundle().start(1);
        }

        void startedSurrogate() {
            this.open(2);
        }

        void stoppedComposite() {
            try {
                CompositeImpl.this.getSurrogateBundle().stop(1);
            }
            catch (BundleException bundleException) {
            }
            catch (IllegalStateException illegalStateException) {}
            this.close(1);
        }

        void stoppedSurrogate() {
            this.close(2);
        }

        private synchronized void open(int bundleActive) {
            this.bundlesActive |= bundleActive;
            if ((this.bundlesActive & 3) != 3) {
                return;
            }
            this.shareToChildServices = new CompositeServiceTracker(CompositeImpl.this.getBundleContext(), CompositeImpl.this.getSurrogateBundle().getBundleContext(), CompositeImpl.this.getBundleContext().getBundle().getHeaders("").get("CompositeServiceFilter-Import"));
            this.shareToChildServices.open();
            this.shareToParentServices = new CompositeServiceTracker(CompositeImpl.this.getSurrogateBundle().getBundleContext(), CompositeImpl.this.getBundleContext(), CompositeImpl.this.getBundleContext().getBundle().getHeaders("").get("CompositeServiceFilter-Export"));
            this.shareToParentServices.open();
        }

        private synchronized void close(int bundleStopped) {
            this.bundlesActive ^= bundleStopped;
            if (this.shareToChildServices != null) {
                this.shareToChildServices.close();
            }
            if (this.shareToParentServices != null) {
                this.shareToParentServices.close();
            }
        }
    }
}

