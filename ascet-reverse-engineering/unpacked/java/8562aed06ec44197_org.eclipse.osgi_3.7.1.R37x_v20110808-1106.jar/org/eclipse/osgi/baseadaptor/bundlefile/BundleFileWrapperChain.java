/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.bundlefile;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;
import org.eclipse.osgi.baseadaptor.BaseData;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BundleFileWrapperChain
extends BundleFile {
    private final BundleFile wrapped;
    private final BundleFileWrapperChain next;

    public BundleFileWrapperChain(BundleFile wrapped, BundleFileWrapperChain next) {
        this.wrapped = wrapped;
        this.next = next;
    }

    @Override
    public void close() throws IOException {
        this.wrapped.close();
    }

    @Override
    public boolean containsDir(String dir) {
        return this.wrapped.containsDir(dir);
    }

    @Override
    public BundleEntry getEntry(String path) {
        return this.wrapped.getEntry(path);
    }

    @Override
    public Enumeration<String> getEntryPaths(String path) {
        return this.wrapped.getEntryPaths(path);
    }

    @Override
    public File getFile(String path, boolean nativeCode) {
        return this.wrapped.getFile(path, nativeCode);
    }

    @Override
    public void open() throws IOException {
        this.wrapped.open();
    }

    @Override
    public File getBaseFile() {
        return this.wrapped.getBaseFile();
    }

    @Override
    public URL getResourceURL(String path, BaseData hostData, int index) {
        return this.wrapped.getResourceURL(path, hostData, index);
    }

    @Override
    public String toString() {
        return this.wrapped.toString();
    }

    public BundleFile getWrapped() {
        return this.wrapped;
    }

    public BundleFileWrapperChain getNext() {
        return this.next;
    }
}

