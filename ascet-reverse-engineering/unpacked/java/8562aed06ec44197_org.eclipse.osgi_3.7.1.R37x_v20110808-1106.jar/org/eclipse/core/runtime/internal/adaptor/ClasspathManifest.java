/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.IOException;
import java.io.InputStream;
import java.util.jar.Manifest;
import org.eclipse.core.runtime.internal.adaptor.EclipseStorageHook;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathEntry;
import org.eclipse.osgi.baseadaptor.loader.ClasspathManager;
import org.eclipse.osgi.baseadaptor.loader.FragmentClasspath;
import org.eclipse.osgi.framework.util.KeyedElement;

public class ClasspathManifest
implements KeyedElement {
    public static final Object KEY = new Object();
    public static final int HASHCODE = KEY.hashCode();
    private Manifest manifest;
    private boolean initialized = false;

    public int getKeyHashCode() {
        return HASHCODE;
    }

    public boolean compare(KeyedElement other) {
        return other.getKey() == KEY;
    }

    public Object getKey() {
        return KEY;
    }

    public synchronized Manifest getManifest(ClasspathEntry cpEntry, ClasspathManager loader) {
        if (this.initialized) {
            return this.manifest;
        }
        if (!this.hasPackageInfo(cpEntry, loader)) {
            this.initialized = true;
            this.manifest = null;
            return this.manifest;
        }
        BundleEntry mfEntry = cpEntry.getBundleFile().getEntry("META-INF/MANIFEST.MF");
        if (mfEntry != null) {
            InputStream manIn = null;
            try {
                try {
                    manIn = mfEntry.getInputStream();
                    this.manifest = new Manifest(manIn);
                }
                finally {
                    if (manIn != null) {
                        manIn.close();
                    }
                }
            }
            catch (IOException iOException) {}
        }
        this.initialized = true;
        return this.manifest;
    }

    private boolean hasPackageInfo(ClasspathEntry cpEntry, ClasspathManager loader) {
        FragmentClasspath[] fragCPs;
        BaseData bundledata = null;
        if (cpEntry.getBundleFile() == loader.getBaseData().getBundleFile()) {
            bundledata = loader.getBaseData();
        }
        if (bundledata == null && (fragCPs = loader.getFragmentClasspaths()) != null) {
            int i = 0;
            while (i < fragCPs.length) {
                if (cpEntry.getBundleFile() == fragCPs[i].getBundleData().getBundleFile()) {
                    bundledata = fragCPs[i].getBundleData();
                    break;
                }
                ++i;
            }
        }
        if (bundledata == null) {
            return true;
        }
        EclipseStorageHook storageHook = (EclipseStorageHook)bundledata.getStorageHook(EclipseStorageHook.KEY);
        return storageHook == null ? true : storageHook.hasPackageInfo();
    }
}

