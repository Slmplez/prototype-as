/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.baseadaptor;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Enumeration;
import org.eclipse.osgi.baseadaptor.BaseAdaptor;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.hooks.StorageHook;
import org.eclipse.osgi.framework.adaptor.BundleClassLoader;
import org.eclipse.osgi.framework.adaptor.BundleProtectionDomain;
import org.eclipse.osgi.framework.adaptor.ClassLoaderDelegate;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.util.Headers;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.internal.baseadaptor.BaseStorageHook;
import org.osgi.framework.BundleException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemBundleData
extends BaseData {
    private static final String OSGI_FRAMEWORK = "osgi.framework";

    public SystemBundleData(BaseAdaptor adaptor) throws BundleException {
        super(0L, adaptor);
        File osgiBase = this.getOsgiBase();
        this.createBundleFile(osgiBase);
        this.manifest = this.createManifest(osgiBase);
        this.setMetaData();
        this.setLastModified(System.currentTimeMillis());
        StorageHook[] hooks = adaptor.getHookRegistry().getStorageHooks();
        StorageHook[] instanceHooks = new StorageHook[hooks.length];
        int i = 0;
        while (i < hooks.length) {
            instanceHooks[i] = hooks[i].create(this);
            ++i;
        }
        this.setStorageHooks(instanceHooks);
    }

    private File getOsgiBase() {
        String frameworkLocation = FrameworkProperties.getProperty(OSGI_FRAMEWORK);
        if (frameworkLocation != null && frameworkLocation.startsWith("file:")) {
            return new File(frameworkLocation.substring(5));
        }
        try {
            URL url = this.getClass().getProtectionDomain().getCodeSource().getLocation();
            if ("file".equals(url.getProtocol())) {
                return new File(url.getPath());
            }
        }
        catch (Throwable throwable) {}
        return null;
    }

    private Headers<String, String> createManifest(File osgiBase) throws BundleException {
        InputStream in = null;
        if (osgiBase != null && osgiBase.exists()) {
            try {
                BundleEntry entry = this.getBundleFile().getEntry("META-INF/MANIFEST.MF");
                if (entry != null) {
                    in = entry.getInputStream();
                }
            }
            catch (IOException iOException) {}
        }
        if (in == null) {
            in = this.getManifestAsResource();
        }
        if (Debug.DEBUG_GENERAL && in == null) {
            Debug.println("Unable to find system bundle manifest META-INF/MANIFEST.MF");
        }
        if (in == null) {
            throw new BundleException(AdaptorMsg.SYSTEMBUNDLE_MISSING_MANIFEST, 3);
        }
        return Headers.parseManifest(in);
    }

    private InputStream getManifestAsResource() {
        URL url = this.getManifestURL();
        try {
            return url == null ? null : url.openStream();
        }
        catch (IOException iOException) {
            return null;
        }
    }

    private URL getManifestURL() {
        ClassLoader cl = this.getClass().getClassLoader();
        try {
            Enumeration<URL> manifests = cl != null ? cl.getResources("META-INF/MANIFEST.MF") : ClassLoader.getSystemResources("META-INF/MANIFEST.MF");
            while (manifests.hasMoreElements()) {
                URL url = manifests.nextElement();
                try {
                    Headers<String, String> headers = Headers.parseManifest(url.openStream());
                    if (!"true".equals(headers.get("Eclipse-SystemBundle"))) continue;
                    return url;
                }
                catch (BundleException bundleException) {}
            }
        }
        catch (IOException iOException) {}
        return null;
    }

    private void createBundleFile(File osgiBase) {
        if (osgiBase != null) {
            try {
                this.bundleFile = this.getAdaptor().createBundleFile(osgiBase, this);
            }
            catch (IOException iOException) {}
        } else {
            this.bundleFile = new BundleFile(osgiBase){

                @Override
                public File getFile(String path, boolean nativeCode) {
                    return null;
                }

                @Override
                public BundleEntry getEntry(String path) {
                    if ("META-INF/MANIFEST.MF".equals(path)) {
                        System.err.println(new StringBuffer("Getting system bundle manifest: ").append(path).toString());
                        return new BundleEntry(){

                            public InputStream getInputStream() throws IOException {
                                return SystemBundleData.this.getManifestURL().openStream();
                            }

                            public long getSize() {
                                return 0L;
                            }

                            public String getName() {
                                return "META-INF/MANIFEST.MF";
                            }

                            public long getTime() {
                                return 0L;
                            }

                            public URL getLocalURL() {
                                return SystemBundleData.this.getManifestURL();
                            }

                            public URL getFileURL() {
                                return null;
                            }
                        };
                    }
                    return null;
                }

                @Override
                public Enumeration<String> getEntryPaths(String path) {
                    return null;
                }

                @Override
                public void close() {
                }

                @Override
                public void open() {
                }

                @Override
                public boolean containsDir(String dir) {
                    return false;
                }
            };
        }
    }

    private void setMetaData() throws BundleException {
        this.setLocation("System Bundle");
        BaseStorageHook.loadManifest(this, this.manifest);
    }

    @Override
    public BundleClassLoader createClassLoader(ClassLoaderDelegate delegate, BundleProtectionDomain domain, String[] bundleclasspath) {
        return null;
    }

    public File createGenerationDir() {
        return null;
    }

    @Override
    public String findLibrary(String libname) {
        return null;
    }

    @Override
    public void installNativeCode(String[] nativepaths) throws BundleException {
    }

    @Override
    public int getStartLevel() {
        return 0;
    }

    @Override
    public int getStatus() {
        return 1;
    }

    @Override
    public void save() {
    }
}

