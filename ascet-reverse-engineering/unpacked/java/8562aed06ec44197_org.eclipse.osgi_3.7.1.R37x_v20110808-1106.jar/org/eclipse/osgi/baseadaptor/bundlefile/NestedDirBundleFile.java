/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.bundlefile;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NestedDirBundleFile
extends BundleFile {
    private final BundleFile baseBundleFile;
    private final String cp;

    public NestedDirBundleFile(BundleFile baseBundlefile, String cp) {
        super(baseBundlefile.getBaseFile());
        this.baseBundleFile = baseBundlefile;
        if (cp.charAt(cp.length() - 1) != '/') {
            cp = new StringBuffer(String.valueOf(cp)).append('/').toString();
        }
        this.cp = cp;
    }

    @Override
    public void close() {
    }

    @Override
    public BundleEntry getEntry(String path) {
        return this.baseBundleFile.getEntry(this.prependNestedDir(path));
    }

    @Override
    public boolean containsDir(String dir) {
        if (dir == null) {
            return false;
        }
        return this.baseBundleFile.containsDir(this.prependNestedDir(dir));
    }

    private String prependNestedDir(String path) {
        if (path.length() > 0 && path.charAt(0) == '/') {
            path = path.substring(1);
        }
        return new StringBuffer(this.cp).append(path).toString();
    }

    @Override
    public Enumeration<String> getEntryPaths(String path) {
        final Enumeration<String> basePaths = this.baseBundleFile.getEntryPaths(this.prependNestedDir(path));
        final int cpLength = this.cp.length();
        if (basePaths == null) {
            return null;
        }
        return new Enumeration<String>(){

            @Override
            public boolean hasMoreElements() {
                return basePaths.hasMoreElements();
            }

            @Override
            public String nextElement() {
                String next = (String)basePaths.nextElement();
                return next.substring(cpLength);
            }
        };
    }

    @Override
    public File getFile(String entry, boolean nativeCode) {
        return null;
    }

    @Override
    public void open() throws IOException {
    }
}

