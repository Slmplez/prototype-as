/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.baseadaptor.bundlefile;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleEntry;
import org.eclipse.osgi.baseadaptor.bundlefile.BundleFile;
import org.eclipse.osgi.baseadaptor.bundlefile.FileBundleEntry;
import org.eclipse.osgi.internal.baseadaptor.AdaptorMsg;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DirBundleFile
extends BundleFile {
    public DirBundleFile(File basefile) throws IOException {
        super(basefile);
        if (!BundleFile.secureAction.exists(basefile) || !BundleFile.secureAction.isDirectory(basefile)) {
            throw new IOException(NLS.bind(AdaptorMsg.ADAPTOR_DIRECTORY_EXCEPTION, basefile));
        }
    }

    @Override
    public File getFile(String path, boolean nativeCode) {
        boolean checkInBundle = path != null && path.indexOf("..") >= 0;
        File file = new File(this.basefile, path);
        if (!BundleFile.secureAction.exists(file)) {
            return null;
        }
        if (checkInBundle) {
            try {
                if (!BundleFile.secureAction.getCanonicalPath(file).startsWith(BundleFile.secureAction.getCanonicalPath(this.basefile))) {
                    return null;
                }
            }
            catch (IOException iOException) {
                return null;
            }
        }
        return file;
    }

    @Override
    public BundleEntry getEntry(String path) {
        File filePath = this.getFile(path, false);
        if (filePath == null) {
            return null;
        }
        return new FileBundleEntry(filePath, path);
    }

    @Override
    public boolean containsDir(String dir) {
        File dirPath = this.getFile(dir, false);
        return dirPath != null && BundleFile.secureAction.isDirectory(dirPath);
    }

    @Override
    public Enumeration<String> getEntryPaths(String path) {
        File pathFile;
        if (path.length() > 0 && path.charAt(0) == '/') {
            path = path.substring(1);
        }
        if ((pathFile = this.getFile(path, false)) == null || !BundleFile.secureAction.isDirectory(pathFile)) {
            return null;
        }
        final String[] fileList = BundleFile.secureAction.list(pathFile);
        if (fileList == null || fileList.length == 0) {
            return null;
        }
        final String dirPath = path.length() == 0 || path.charAt(path.length() - 1) == '/' ? path : new StringBuffer(String.valueOf(path)).append('/').toString();
        return new Enumeration<String>(){
            int cur = 0;

            @Override
            public boolean hasMoreElements() {
                return fileList != null && this.cur < fileList.length;
            }

            @Override
            public String nextElement() {
                if (!this.hasMoreElements()) {
                    throw new NoSuchElementException();
                }
                File childFile = new File(pathFile, fileList[this.cur]);
                StringBuffer sb = new StringBuffer(dirPath).append(fileList[this.cur++]);
                if (BundleFile.secureAction.isDirectory(childFile)) {
                    sb.append("/");
                }
                return sb.toString();
            }
        };
    }

    @Override
    public void close() {
    }

    @Override
    public void open() {
    }
}

