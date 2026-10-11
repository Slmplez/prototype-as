/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.security.AccessControlContext;
import java.security.AccessController;
import java.security.AllPermission;
import java.security.Permission;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.security.ProtectionDomain;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;
import org.eclipse.osgi.framework.adaptor.BundleData;
import org.eclipse.osgi.framework.adaptor.BundleOperation;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.BundleWatcher;
import org.eclipse.osgi.framework.adaptor.StatusException;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.BundleFragment;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.framework.internal.core.BundleRepository;
import org.eclipse.osgi.framework.internal.core.BundleSource;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.internal.core.ManifestLocalization;
import org.eclipse.osgi.framework.internal.core.Msg;
import org.eclipse.osgi.framework.util.KeyedElement;
import org.eclipse.osgi.internal.composite.CompositeImpl;
import org.eclipse.osgi.internal.composite.SurrogateImpl;
import org.eclipse.osgi.internal.loader.BundleLoader;
import org.eclipse.osgi.internal.permadmin.EquinoxSecurityManager;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignedContentFactory;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.AdaptPermission;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.framework.BundleReference;
import org.osgi.framework.Version;
import org.osgi.framework.startlevel.BundleStartLevel;
import org.osgi.framework.wiring.BundleRevision;
import org.osgi.framework.wiring.BundleRevisions;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class AbstractBundle
implements Bundle,
Comparable<Bundle>,
KeyedElement,
BundleStartLevel,
BundleReference,
BundleRevisions {
    private static final long STATE_CHANGE_TIMEOUT;
    protected final Framework framework;
    protected volatile int state = 2;
    protected volatile Thread stateChanging = null;
    protected BundleData bundledata;
    protected final Object statechangeLock = new Object();
    protected BundleProtectionDomain domain;
    protected volatile ManifestLocalization manifestLocalization = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        long stateChangeWait = 5000L;
        try {
            String prop = FrameworkProperties.getProperty("equinox.statechange.timeout");
            if (prop != null) {
                stateChangeWait = Long.parseLong(prop);
            }
        }
        catch (Throwable throwable) {
            stateChangeWait = 5000L;
        }
        STATE_CHANGE_TIMEOUT = stateChangeWait;
    }

    protected static AbstractBundle createBundle(BundleData bundledata, Framework framework, boolean setBundle) throws BundleException {
        AbstractBundle result = (bundledata.getType() & 1) > 0 ? new BundleFragment(bundledata, framework) : ((bundledata.getType() & 0x20) > 0 ? new CompositeImpl(bundledata, framework) : ((bundledata.getType() & 0x40) > 0 ? new SurrogateImpl(bundledata, framework) : new BundleHost(bundledata, framework)));
        if (setBundle) {
            bundledata.setBundle(result);
        }
        return result;
    }

    protected AbstractBundle(BundleData bundledata, Framework framework) {
        this.bundledata = bundledata;
        this.framework = framework;
    }

    protected abstract void load();

    protected abstract boolean reload(AbstractBundle var1);

    protected abstract void refresh();

    protected abstract boolean unload();

    protected void close() {
        if (Debug.DEBUG_GENERAL && (this.state & 2) == 0) {
            Debug.println(new StringBuffer("Bundle.close called when state != INSTALLED: ").append(this).toString());
            Debug.printStackTrace(new Exception("Stack trace"));
        }
        this.state = 1;
    }

    protected BundleActivator loadBundleActivator() throws BundleException {
        String activatorClassName = this.bundledata.getActivator();
        if (activatorClassName != null) {
            try {
                Class<?> activatorClass = this.loadClass(activatorClassName, false);
                return (BundleActivator)activatorClass.newInstance();
            }
            catch (Throwable t) {
                if (Debug.DEBUG_GENERAL) {
                    Debug.printStackTrace(t);
                }
                throw new BundleException(NLS.bind(Msg.BUNDLE_INVALID_ACTIVATOR_EXCEPTION, activatorClassName, this.bundledata.getSymbolicName()), 5, t);
            }
        }
        return null;
    }

    protected abstract Class<?> loadClass(String var1, boolean var2) throws ClassNotFoundException;

    @Override
    public int getState() {
        return this.state;
    }

    public Framework getFramework() {
        return this.framework;
    }

    protected boolean isActive() {
        return (this.state & 0x28) != 0;
    }

    boolean isLazyStart() {
        int status = this.bundledata.getStatus();
        return (status & 4) != 0 && (status & 2) != 0;
    }

    public boolean isResolved() {
        return (this.state & 3) == 0;
    }

    @Override
    public void start() throws BundleException {
        this.start(0);
    }

    @Override
    public void start(int options) throws BundleException {
        this.framework.checkAdminPermission(this, "execute");
        this.checkValid();
        this.beginStateChange();
        try {
            this.startWorker(options);
        }
        finally {
            this.completeStateChange();
        }
    }

    protected abstract void startWorker(int var1) throws BundleException;

    protected boolean readyToResume() {
        return false;
    }

    protected void resume() throws BundleException {
        if (this.state == 1) {
            return;
        }
        this.beginStateChange();
        try {
            if (this.readyToResume()) {
                this.startWorker(1);
            }
        }
        finally {
            this.completeStateChange();
        }
    }

    @Override
    public void stop() throws BundleException {
        this.stop(0);
    }

    @Override
    public void stop(int options) throws BundleException {
        this.framework.checkAdminPermission(this, "execute");
        this.checkValid();
        this.beginStateChange();
        try {
            this.stopWorker(options);
        }
        finally {
            this.completeStateChange();
        }
    }

    protected abstract void stopWorker(int var1) throws BundleException;

    protected void setStatus(final int mask, final boolean state) {
        try {
            AccessController.doPrivileged(new PrivilegedExceptionAction<Object>(){

                @Override
                public Object run() throws IOException {
                    boolean test;
                    int status = AbstractBundle.this.bundledata.getStatus();
                    boolean bl = test = (status & mask) != 0;
                    if (test != state) {
                        AbstractBundle.this.bundledata.setStatus(state ? status | mask : status & ~mask);
                        AbstractBundle.this.bundledata.save();
                    }
                    return null;
                }
            });
        }
        catch (PrivilegedActionException pae) {
            this.framework.publishFrameworkEvent(2, this, pae.getException());
        }
    }

    protected void suspend(boolean lock) throws BundleException {
        if (this.state == 1) {
            return;
        }
        this.beginStateChange();
        try {
            this.stopWorker(1);
        }
        finally {
            if (!lock) {
                this.completeStateChange();
            }
        }
    }

    @Override
    public void update() throws BundleException {
        this.update(null);
    }

    @Override
    public void update(final InputStream in) throws BundleException {
        if (Debug.DEBUG_GENERAL) {
            Debug.println(new StringBuffer("update location ").append(this.bundledata.getLocation()).toString());
            Debug.println(new StringBuffer("   from: ").append(in).toString());
        }
        this.framework.checkAdminPermission(this, "lifecycle");
        if ((this.bundledata.getType() & 0x16) != 0) {
            this.framework.checkAdminPermission(this, "extensionLifecycle");
        }
        this.checkValid();
        this.beginStateChange();
        try {
            final AccessControlContext callerContext = AccessController.getContext();
            this.updateWorker(new PrivilegedExceptionAction<Object>(){

                @Override
                public Object run() throws BundleException {
                    URLConnection source = null;
                    if (in == null) {
                        String updateLocation = AbstractBundle.this.bundledata.getManifest().get("Bundle-UpdateLocation");
                        if (updateLocation == null) {
                            updateLocation = AbstractBundle.this.bundledata.getLocation();
                        }
                        if (Debug.DEBUG_GENERAL) {
                            Debug.println(new StringBuffer("   from location: ").append(updateLocation).toString());
                        }
                        source = AbstractBundle.this.framework.adaptor.mapLocationToURLConnection(updateLocation);
                    } else {
                        source = new BundleSource(in);
                    }
                    AbstractBundle.this.updateWorkerPrivileged(source, callerContext);
                    return null;
                }
            });
        }
        finally {
            this.completeStateChange();
        }
    }

    protected void updateWorker(PrivilegedExceptionAction<Object> action) throws BundleException {
        int previousState;
        block15: {
            previousState = 0;
            if (!this.isFragment()) {
                previousState = this.state;
            }
            if ((previousState & 0x28) != 0) {
                try {
                    this.stopWorker(1);
                }
                catch (BundleException e) {
                    this.framework.publishFrameworkEvent(2, this, e);
                    if ((this.state & 0x28) == 0) break block15;
                    throw e;
                }
            }
        }
        try {
            try {
                AccessController.doPrivileged(action);
                this.framework.publishBundleEvent(8, this);
            }
            catch (PrivilegedActionException pae) {
                if (pae.getException() instanceof RuntimeException) {
                    throw (RuntimeException)pae.getException();
                }
                throw (BundleException)pae.getException();
            }
        }
        catch (Throwable throwable) {
            if ((previousState & 0x28) != 0) {
                try {
                    this.startWorker(1 | ((previousState & 8) != 0 ? 2 : 0));
                }
                catch (BundleException e) {
                    this.framework.publishFrameworkEvent(2, this, e);
                }
            }
            throw throwable;
        }
        if ((previousState & 0x28) != 0) {
            try {
                this.startWorker(1 | ((previousState & 8) != 0 ? 2 : 0));
            }
            catch (BundleException e) {
                this.framework.publishFrameworkEvent(2, this, e);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void updateWorkerPrivileged(URLConnection source, AccessControlContext callerContext) throws BundleException {
        AbstractBundle oldBundle = AbstractBundle.createBundle(this.bundledata, this.framework, false);
        boolean reloaded = false;
        BundleOperation storage = this.framework.adaptor.updateBundle(this.bundledata, source);
        BundleRepository bundles = this.framework.getBundles();
        try {
            boolean exporting;
            BundleData newBundleData = storage.begin();
            final AbstractBundle newBundle = this.framework.createAndVerifyBundle(newBundleData, false);
            int st = this.getState();
            BundleRepository bundleRepository = bundles;
            synchronized (bundleRepository) {
                String oldBSN = this.getSymbolicName();
                exporting = this.reload(newBundle);
                bundles.update(oldBSN, this);
                this.manifestLocalization = null;
            }
            reloaded = true;
            if (System.getSecurityManager() != null) {
                boolean extension;
                boolean bl = extension = (this.bundledata.getType() & 0x16) != 0;
                if (extension && !this.hasPermission(new AllPermission())) {
                    throw new BundleException(Msg.BUNDLE_EXTENSION_PERMISSION, 6, new SecurityException(Msg.BUNDLE_EXTENSION_PERMISSION));
                }
                try {
                    AccessController.doPrivileged(new PrivilegedExceptionAction<Object>(){

                        @Override
                        public Object run() throws Exception {
                            AbstractBundle.this.framework.checkAdminPermission(newBundle, "lifecycle");
                            if (extension) {
                                AbstractBundle.this.framework.checkAdminPermission(newBundle, "extensionLifecycle");
                            }
                            return null;
                        }
                    }, callerContext);
                }
                catch (PrivilegedActionException e) {
                    throw e.getException();
                }
            }
            if (st == 4) {
                this.framework.publishBundleEvent(64, this);
            }
            storage.commit(exporting);
        }
        catch (Throwable t) {
            block17: {
                try {
                    storage.undo();
                    if (!reloaded) break block17;
                    BundleRepository newBundle = bundles;
                    synchronized (newBundle) {
                        String oldBSN = this.getSymbolicName();
                        this.reload(oldBundle);
                        bundles.update(oldBSN, this);
                    }
                }
                catch (BundleException ee) {
                    this.framework.publishFrameworkEvent(2, this, ee);
                }
            }
            if (t instanceof SecurityException) {
                throw (SecurityException)t;
            }
            if (t instanceof BundleException) {
                throw (BundleException)t;
            }
            throw new BundleException(t.getMessage(), t);
        }
    }

    @Override
    public void uninstall() throws BundleException {
        if (Debug.DEBUG_GENERAL) {
            Debug.println(new StringBuffer("uninstall location: ").append(this.bundledata.getLocation()).toString());
        }
        this.framework.checkAdminPermission(this, "lifecycle");
        if ((this.bundledata.getType() & 0x16) != 0) {
            this.framework.checkAdminPermission(this, "extensionLifecycle");
        }
        this.checkValid();
        this.beginStateChange();
        try {
            this.uninstallWorker(new PrivilegedExceptionAction<Object>(){

                @Override
                public Object run() throws BundleException {
                    AbstractBundle.this.uninstallWorkerPrivileged();
                    return null;
                }
            });
        }
        finally {
            this.completeStateChange();
        }
    }

    protected void uninstallWorker(PrivilegedExceptionAction<Object> action) throws BundleException {
        boolean bundleActive = false;
        if (!this.isFragment()) {
            boolean bl = bundleActive = (this.state & 0x28) != 0;
        }
        if (bundleActive) {
            try {
                this.stopWorker(1);
            }
            catch (BundleException e) {
                this.framework.publishFrameworkEvent(2, this, e);
            }
        }
        try {
            AccessController.doPrivileged(action);
        }
        catch (PrivilegedActionException pae) {
            if (bundleActive) {
                try {
                    this.startWorker(1);
                }
                catch (BundleException e) {
                    this.framework.publishFrameworkEvent(2, this, e);
                }
            }
            throw (BundleException)pae.getException();
        }
        this.framework.publishBundleEvent(16, this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void uninstallWorkerPrivileged() throws BundleException {
        BundleWatcher bundleStats = this.framework.adaptor.getBundleWatcher();
        if (bundleStats != null) {
            bundleStats.watchBundle(this, 64);
        }
        boolean unloaded = false;
        this.getHeaders();
        BundleOperation storage = this.framework.adaptor.uninstallBundle(this.bundledata);
        BundleRepository bundles = this.framework.getBundles();
        try {
            try {
                boolean exporting;
                storage.begin();
                int st = this.getState();
                BundleRepository bundleRepository = bundles;
                synchronized (bundleRepository) {
                    bundles.remove(this);
                    exporting = this.unload();
                }
                if (st == 4) {
                    this.framework.publishBundleEvent(64, this);
                }
                unloaded = true;
                storage.commit(exporting);
                this.close();
            }
            catch (BundleException e) {
                block17: {
                    try {
                        storage.undo();
                        if (!unloaded) break block17;
                        BundleRepository st = bundles;
                        synchronized (st) {
                            this.load();
                            bundles.add(this);
                        }
                    }
                    catch (BundleException ee) {
                        this.framework.publishFrameworkEvent(2, this, ee);
                    }
                }
                throw e;
            }
        }
        finally {
            if (bundleStats != null) {
                bundleStats.watchBundle(this, 128);
            }
        }
    }

    @Override
    public Dictionary<String, String> getHeaders() {
        return this.getHeaders(null);
    }

    @Override
    public Dictionary<String, String> getHeaders(String localeString) {
        ManifestLocalization localization;
        this.framework.checkAdminPermission(this, "metadata");
        try {
            localization = this.getManifestLocalization();
        }
        catch (BundleException e) {
            this.framework.publishFrameworkEvent(2, this, e);
            return new Hashtable<String, String>();
        }
        if (localeString == null) {
            localeString = Locale.getDefault().toString();
        }
        return localization.getHeaders(localeString);
    }

    @Override
    public long getBundleId() {
        return this.bundledata.getBundleID();
    }

    @Override
    public String getLocation() {
        this.framework.checkAdminPermission(this, "metadata");
        return this.bundledata.getLocation();
    }

    @Override
    public boolean hasPermission(Object permission) {
        this.checkValid();
        if (this.domain != null) {
            if (permission instanceof Permission) {
                SecurityManager sm = System.getSecurityManager();
                if (sm instanceof EquinoxSecurityManager) {
                    AccessControlContext acc = new AccessControlContext(new ProtectionDomain[]{this.domain});
                    try {
                        sm.checkPermission((Permission)permission, acc);
                        return true;
                    }
                    catch (Exception exception) {
                        return false;
                    }
                }
                return this.domain.implies((Permission)permission);
            }
            return false;
        }
        return true;
    }

    protected void beginStateChange() throws BundleException {
        Object object = this.statechangeLock;
        synchronized (object) {
            boolean doubleFault = false;
            while (true) {
                if (this.stateChanging == null) {
                    this.stateChanging = Thread.currentThread();
                    return;
                }
                if (doubleFault || this.stateChanging == Thread.currentThread()) {
                    throw new BundleException(NLS.bind(Msg.BUNDLE_STATE_CHANGE_EXCEPTION, this.getBundleData().getLocation(), this.stateChanging.getName()), 7, new BundleStatusException(null, 4, this.stateChanging));
                }
                try {
                    long end;
                    long start = 0L;
                    if (Debug.DEBUG_GENERAL) {
                        Debug.println(new StringBuffer(" Waiting for state to change in bundle ").append(this).toString());
                        start = System.currentTimeMillis();
                    }
                    this.statechangeLock.wait(STATE_CHANGE_TIMEOUT);
                    if (Debug.DEBUG_GENERAL && (end = System.currentTimeMillis()) - start > 0L) {
                        System.out.println(new StringBuffer("Waiting... : ").append(this.getSymbolicName()).append(' ').append(end - start).toString());
                    }
                }
                catch (InterruptedException interruptedException) {}
                doubleFault = true;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void completeStateChange() {
        Object object = this.statechangeLock;
        synchronized (object) {
            if (this.stateChanging == Thread.currentThread()) {
                this.stateChanging = null;
                this.statechangeLock.notify();
            }
        }
    }

    public String toString() {
        String name = this.bundledata.getSymbolicName();
        if (name == null) {
            name = "unknown";
        }
        return new StringBuffer(String.valueOf(name)).append('_').append(this.bundledata.getVersion()).append(" [").append(this.getBundleId()).append("]").toString();
    }

    @Override
    public int compareTo(Bundle obj) {
        int slcomp = this.getInternalStartLevel() - ((AbstractBundle)obj).getInternalStartLevel();
        if (slcomp != 0) {
            return slcomp;
        }
        long idcomp = this.getBundleId() - ((AbstractBundle)obj).getBundleId();
        return idcomp < 0L ? -1 : (idcomp > 0L ? 1 : 0);
    }

    protected void checkValid() {
        if (this.state == 1) {
            throw new IllegalStateException(NLS.bind(Msg.BUNDLE_UNINSTALLED_EXCEPTION, this.getBundleData().getLocation()));
        }
    }

    public BundleProtectionDomain getProtectionDomain() {
        return this.domain;
    }

    protected BundleFragment[] getFragments() {
        this.checkValid();
        return null;
    }

    protected boolean isFragment() {
        return false;
    }

    BundleHost[] getHosts() {
        this.checkValid();
        return null;
    }

    @Override
    public Class<?> loadClass(String classname) throws ClassNotFoundException {
        return this.loadClass(classname, true);
    }

    @Override
    public Enumeration<String> getEntryPaths(final String path) {
        try {
            this.framework.checkAdminPermission(this, "resource");
        }
        catch (SecurityException securityException) {
            return null;
        }
        this.checkValid();
        return AccessController.doPrivileged(new PrivilegedAction<Enumeration<String>>(){

            @Override
            public Enumeration<String> run() {
                return AbstractBundle.this.bundledata.getEntryPaths(path);
            }
        });
    }

    @Override
    public URL getEntry(String fileName) {
        try {
            this.framework.checkAdminPermission(this, "resource");
        }
        catch (SecurityException securityException) {
            return null;
        }
        return this.getEntry0(fileName);
    }

    URL getEntry0(String fileName) {
        this.checkValid();
        return this.bundledata.getEntry(fileName);
    }

    @Override
    public String getSymbolicName() {
        return this.bundledata.getSymbolicName();
    }

    @Override
    public long getLastModified() {
        return this.bundledata.getLastModified();
    }

    public BundleData getBundleData() {
        return this.bundledata;
    }

    @Override
    public Version getVersion() {
        return this.bundledata.getVersion();
    }

    public BundleDescription getBundleDescription() {
        return this.framework.adaptor.getState().getBundle(this.getBundleId());
    }

    int getInternalStartLevel() {
        return this.bundledata.getStartLevel();
    }

    protected abstract BundleLoader getBundleLoader();

    protected void resolve() {
        if (Debug.DEBUG_GENERAL && (this.state & 2) == 0) {
            Debug.println(new StringBuffer("Bundle.resolve called when state != INSTALLED: ").append(this).toString());
            Debug.printStackTrace(new Exception("Stack trace"));
        }
        if (this.state == 2) {
            this.state = 4;
        }
    }

    @Override
    public BundleContext getBundleContext() {
        this.framework.checkAdminPermission(this, "context");
        return this.getContext();
    }

    protected abstract BundleContextImpl getContext();

    public BundleException getResolutionFailureException() {
        BundleDescription bundleDescription = this.getBundleDescription();
        if (bundleDescription == null) {
            return new BundleException(NLS.bind(Msg.BUNDLE_UNRESOLVED_EXCEPTION, this.toString()), 4);
        }
        if (bundleDescription.isResolved()) {
            return new BundleException(Msg.BUNDLE_UNRESOLVED_STATE_CONFLICT, 4);
        }
        return this.getResolverError(bundleDescription);
    }

    private BundleException getResolverError(BundleDescription bundleDesc) {
        ResolverError[] errors = this.framework.adaptor.getState().getResolverErrors(bundleDesc);
        if (errors == null || errors.length == 0) {
            return new BundleException(NLS.bind(Msg.BUNDLE_UNRESOLVED_EXCEPTION, this.toString()), 4);
        }
        StringBuffer message = new StringBuffer();
        int errorType = 4;
        int i = 0;
        while (i < errors.length) {
            if ((errors[i].getType() & 0x20000) != 0) {
                errorType = 8;
            }
            message.append(errors[i].toString());
            if (i < errors.length - 1) {
                message.append(", ");
            }
            ++i;
        }
        return new BundleException(NLS.bind(Msg.BUNDLE_UNRESOLVED_UNSATISFIED_CONSTRAINT_EXCEPTION, this.toString(), message.toString()), errorType);
    }

    @Override
    public int getKeyHashCode() {
        long id = this.getBundleId();
        return (int)(id ^ id >>> 32);
    }

    @Override
    public boolean compare(KeyedElement other) {
        return this.getBundleId() == ((AbstractBundle)other).getBundleId();
    }

    @Override
    public Object getKey() {
        return new Long(this.getBundleId());
    }

    public ResourceBundle getResourceBundle(String localeString) {
        ManifestLocalization localization;
        try {
            localization = this.getManifestLocalization();
        }
        catch (BundleException bundleException) {
            return null;
        }
        String defaultLocale = Locale.getDefault().toString();
        if (localeString == null) {
            localeString = defaultLocale;
        }
        return localization.getResourceBundle(localeString, defaultLocale.equals(localeString));
    }

    private synchronized ManifestLocalization getManifestLocalization() throws BundleException {
        ManifestLocalization currentLocalization = this.manifestLocalization;
        if (currentLocalization == null) {
            Dictionary<String, String> rawHeaders = this.bundledata.getManifest();
            this.manifestLocalization = currentLocalization = new ManifestLocalization(this, rawHeaders);
        }
        return currentLocalization;
    }

    public boolean testStateChanging(Object thread) {
        return this.stateChanging == thread;
    }

    public Thread getStateChanging() {
        return this.stateChanging;
    }

    @Override
    public Enumeration<URL> findEntries(String path, String filePattern, boolean recurse) {
        BundleFragment[] fragments;
        try {
            this.framework.checkAdminPermission(this, "resource");
        }
        catch (SecurityException securityException) {
            return null;
        }
        this.checkValid();
        if (!this.isResolved()) {
            this.framework.packageAdmin.resolveBundles(new Bundle[]{this});
        }
        ArrayList<BundleData> datas = new ArrayList<BundleData>(((fragments = this.getFragments()) == null ? 0 : fragments.length) + 1);
        datas.add(this.getBundleData());
        if (fragments != null) {
            BundleFragment[] bundleFragmentArray = fragments;
            int n = fragments.length;
            int n2 = 0;
            while (n2 < n) {
                BundleFragment fragment = bundleFragmentArray[n2];
                datas.add(fragment.getBundleData());
                ++n2;
            }
        }
        int options = recurse ? 1 : 0;
        return this.framework.getAdaptor().findEntries(datas, path, filePattern, options);
    }

    @Override
    public Map<X509Certificate, List<X509Certificate>> getSignerCertificates(int signersType) {
        Map empty = Collections.EMPTY_MAP;
        if (signersType != 1 && signersType != 2) {
            throw new IllegalArgumentException(new StringBuffer("Invalid signers type: ").append(signersType).toString());
        }
        if (this.framework == null) {
            return empty;
        }
        SignedContentFactory factory = this.framework.getSignedContentFactory();
        if (factory == null) {
            return empty;
        }
        try {
            SignedContent signedContent = factory.getSignedContent(this);
            SignerInfo[] infos = signedContent.getSignerInfos();
            if (infos.length == 0) {
                return empty;
            }
            HashMap<X509Certificate, List<X509Certificate>> results = new HashMap<X509Certificate, List<X509Certificate>>(infos.length);
            int i = 0;
            while (i < infos.length) {
                Certificate[] certs;
                if ((signersType != 2 || infos[i].isTrusted()) && (certs = infos[i].getCertificateChain()) != null && certs.length != 0) {
                    ArrayList<X509Certificate> certChain = new ArrayList<X509Certificate>();
                    int j = 0;
                    while (j < certs.length) {
                        certChain.add((X509Certificate)certs[j]);
                        ++j;
                    }
                    results.put((X509Certificate)certs[0], certChain);
                }
                ++i;
            }
            return results;
        }
        catch (Exception exception) {
            return empty;
        }
    }

    @Override
    public final <A> A adapt(Class<A> adapterType) {
        this.checkAdaptPermission(adapterType);
        return this.adapt0(adapterType);
    }

    @Override
    public List<BundleRevision> getRevisions() {
        BundleDescription[] removals;
        ArrayList<BundleRevision> revisions = new ArrayList<BundleRevision>();
        BundleDescription current = this.getBundleDescription();
        if (current != null) {
            revisions.add(current);
        }
        BundleDescription[] bundleDescriptionArray = removals = this.framework.adaptor.getState().getRemovalPending();
        int n = removals.length;
        int n2 = 0;
        while (n2 < n) {
            BundleDescription removed = bundleDescriptionArray[n2];
            if (removed.getBundleId() == this.getBundleId() && removed != current) {
                revisions.add(removed);
            }
            ++n2;
        }
        return revisions;
    }

    protected <A> A adapt0(Class<A> adapterType) {
        if (adapterType.isInstance(this)) {
            return (A)this;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.framework.BundleContext");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(adapterType)) {
            try {
                return (A)this.getBundleContext();
            }
            catch (SecurityException securityException) {
                return null;
            }
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.osgi.framework.wiring.BundleWiring");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz2.equals(adapterType)) {
            if (this.state == 1) {
                return null;
            }
            BundleDescription description = this.getBundleDescription();
            return (A)description.getWiring();
        }
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.osgi.framework.wiring.BundleRevision");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz3.equals(adapterType)) {
            if (this.state == 1) {
                return null;
            }
            return (A)this.getBundleDescription();
        }
        return null;
    }

    private <A> void checkAdaptPermission(Class<A> adapterType) {
        SecurityManager sm = System.getSecurityManager();
        if (sm == null) {
            return;
        }
        sm.checkPermission(new AdaptPermission(adapterType.getName(), this, "adapt"));
    }

    @Override
    public File getDataFile(String filename) {
        return this.framework.getDataFile(this, filename);
    }

    @Override
    public Bundle getBundle() {
        return this;
    }

    @Override
    public int getStartLevel() {
        if (this.getState() == 1) {
            throw new IllegalArgumentException(NLS.bind(Msg.BUNDLE_UNINSTALLED_EXCEPTION, this.getBundleData().getLocation()));
        }
        return this.getInternalStartLevel();
    }

    @Override
    public void setStartLevel(int startlevel) {
        this.framework.startLevelManager.setBundleStartLevel(this, startlevel);
    }

    @Override
    public boolean isPersistentlyStarted() {
        if (this.getState() == 1) {
            throw new IllegalArgumentException(NLS.bind(Msg.BUNDLE_UNINSTALLED_EXCEPTION, this.getBundleData().getLocation()));
        }
        return (this.getBundleData().getStatus() & 1) != 0;
    }

    @Override
    public boolean isActivationPolicyUsed() {
        if (this.getState() == 1) {
            throw new IllegalArgumentException(NLS.bind(Msg.BUNDLE_UNINSTALLED_EXCEPTION, this.getBundleData().getLocation()));
        }
        return (this.getBundleData().getStatus() & 4) != 0;
    }

    class BundleStatusException
    extends Throwable
    implements StatusException {
        private static final long serialVersionUID = 7201911791818929100L;
        private int code;
        private Object status;

        BundleStatusException(String message, int code, Object status) {
            super(message);
            this.code = code;
            this.status = status;
        }

        public Object getStatus() {
            return this.status;
        }

        public int getStatusCode() {
            return this.code;
        }
    }
}

