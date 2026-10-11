/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.core.helpers;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.equinox.internal.p2.core.helpers.Messages;
import org.eclipse.equinox.internal.p2.core.helpers.TarEntry;
import org.eclipse.equinox.internal.p2.core.helpers.TarException;
import org.eclipse.equinox.internal.p2.core.helpers.TarFile;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FileUtils {
    private static File[] untarFile(File source, File outputDir) throws IOException, TarException {
        TarFile tarFile = new TarFile(source);
        ArrayList<File> untarredFiles = new ArrayList<File>();
        try {
            Enumeration<TarEntry> e = tarFile.entries();
            while (e.hasMoreElements()) {
                TarEntry entry = e.nextElement();
                InputStream input = tarFile.getInputStream(entry);
                try {
                    File outFile = new File(outputDir, entry.getName());
                    outFile = outFile.getCanonicalFile();
                    untarredFiles.add(outFile);
                    if (entry.getFileType() == 53) {
                        outFile.mkdirs();
                        continue;
                    }
                    if (outFile.exists()) {
                        outFile.delete();
                    } else {
                        outFile.getParentFile().mkdirs();
                    }
                    try {
                        FileUtils.copyStream(input, false, new FileOutputStream(outFile), true);
                    }
                    catch (FileNotFoundException fileNotFoundException) {}
                    outFile.setLastModified(entry.getTime());
                }
                finally {
                    input.close();
                }
            }
        }
        finally {
            tarFile.close();
        }
        return untarredFiles.toArray(new File[untarredFiles.size()]);
    }

    public static File[] unzipFile(File zipFile, File outputDir) throws IOException {
        if (zipFile.getName().toLowerCase().endsWith(".tar.gz")) {
            try {
                return FileUtils.untarFile(zipFile, outputDir);
            }
            catch (TarException e) {
                throw new IOException(e.getMessage());
            }
        }
        FileInputStream in = new FileInputStream(zipFile);
        try {
            File[] fileArray = FileUtils.unzipStream(in, zipFile.length(), outputDir, null, null);
            return fileArray;
        }
        catch (IOException e) {
            throw new IOException(NLS.bind((String)Messages.Util_Error_Unzipping, (Object)zipFile, (Object)e.getMessage()));
        }
        finally {
            ((InputStream)in).close();
        }
    }

    public static File[] unzipFile(File zipFile, File outputDir, String taskName, IProgressMonitor monitor) throws IOException {
        FileInputStream in = new FileInputStream(zipFile);
        try {
            File[] fileArray = FileUtils.unzipStream(in, zipFile.length(), outputDir, taskName, monitor);
            return fileArray;
        }
        catch (IOException e) {
            throw new IOException(NLS.bind((String)Messages.Util_Error_Unzipping, (Object)zipFile, (Object)e.getMessage()));
        }
        finally {
            ((InputStream)in).close();
        }
    }

    public static File[] unzipStream(InputStream stream, long size, File outputDir, String taskName, IProgressMonitor monitor) throws IOException {
        InputStream is = monitor == null ? stream : stream;
        ZipInputStream in = new ZipInputStream(new BufferedInputStream(is));
        ZipEntry ze = in.getNextEntry();
        if (ze == null) {
            in.close();
            throw new IOException(Messages.Util_Invalid_Zip_File_Format);
        }
        ArrayList<File> unzippedFiles = new ArrayList<File>();
        do {
            File outFile = new File(outputDir, ze.getName());
            unzippedFiles.add(outFile);
            if (ze.isDirectory()) {
                outFile.mkdirs();
            } else {
                if (outFile.exists()) {
                    outFile.delete();
                } else {
                    outFile.getParentFile().mkdirs();
                }
                try {
                    FileUtils.copyStream(in, false, new FileOutputStream(outFile), true);
                }
                catch (FileNotFoundException fileNotFoundException) {}
                outFile.setLastModified(ze.getTime());
            }
            in.closeEntry();
        } while ((ze = in.getNextEntry()) != null);
        in.close();
        return unzippedFiles.toArray(new File[unzippedFiles.size()]);
    }

    public static void deleteEmptyDirs(File dir) throws IOException {
        File[] files = dir.listFiles();
        if (files != null) {
            int i = 0;
            while (i < files.length) {
                FileUtils.deleteEmptyDirs(files[i]);
                ++i;
            }
            dir.getCanonicalFile().delete();
        }
    }

    public static void deleteAll(File file) {
        File[] files;
        if (!file.exists()) {
            return;
        }
        if (file.isDirectory() && (files = file.listFiles()) != null) {
            int i = 0;
            while (i < files.length) {
                FileUtils.deleteAll(files[i]);
                ++i;
            }
        }
        file.delete();
    }

    public static int copyStream(InputStream in, boolean closeIn, OutputStream out, boolean closeOut) throws IOException {
        try {
            int len;
            int written = 0;
            byte[] buffer = new byte[16384];
            while ((len = in.read(buffer)) != -1) {
                out.write(buffer, 0, len);
                written += len;
            }
            int n = written;
            return n;
        }
        finally {
            try {
                if (closeIn) {
                    in.close();
                }
            }
            finally {
                if (closeOut) {
                    out.close();
                }
            }
        }
    }

    public static void copy(File source, File destination, File root, boolean overwrite) throws IOException {
        File sourceFile = new File(source, root.getPath());
        if (!sourceFile.exists()) {
            throw new FileNotFoundException(new StringBuffer("Source: ").append(sourceFile).append(" does not exist").toString());
        }
        File destinationFile = new File(destination, root.getPath());
        if (destinationFile.exists()) {
            if (overwrite) {
                FileUtils.deleteAll(destinationFile);
            } else {
                throw new IOException(new StringBuffer("Destination: ").append(destinationFile).append(" already exists").toString());
            }
        }
        if (sourceFile.isDirectory()) {
            destinationFile.mkdirs();
            File[] list = sourceFile.listFiles();
            int i = 0;
            while (i < list.length) {
                FileUtils.copy(source, destination, new File(root, list[i].getName()), false);
                ++i;
            }
        } else {
            destinationFile.getParentFile().mkdirs();
            InputStream in = null;
            OutputStream out = null;
            try {
                in = new BufferedInputStream(new FileInputStream(sourceFile));
                out = new BufferedOutputStream(new FileOutputStream(destinationFile));
                FileUtils.copyStream(in, false, out, false);
            }
            finally {
                try {
                    if (in != null) {
                        in.close();
                    }
                }
                finally {
                    if (out != null) {
                        out.close();
                    }
                }
            }
        }
    }

    public static void zip(File[] inclusions, File[] exclusions, File destinationArchive, IPathComputer pathComputer) throws IOException {
        FileOutputStream fileOutput = new FileOutputStream(destinationArchive);
        ZipOutputStream output = new ZipOutputStream(fileOutput);
        HashSet<File> exclusionSet = exclusions == null ? new HashSet<File>() : new HashSet<File>(Arrays.asList(exclusions));
        HashSet<IPath> directoryEntries = new HashSet<IPath>();
        try {
            int i = 0;
            while (i < inclusions.length) {
                pathComputer.reset();
                FileUtils.zip(output, inclusions[i], exclusionSet, pathComputer, directoryEntries);
                ++i;
            }
        }
        catch (Throwable throwable) {
            try {
                output.close();
            }
            catch (IOException iOException) {
                try {
                    fileOutput.close();
                }
                catch (IOException iOException2) {}
            }
            throw throwable;
        }
        try {
            output.close();
        }
        catch (IOException iOException) {
            try {
                fileOutput.close();
            }
            catch (IOException iOException3) {}
        }
    }

    public static void zip(ZipOutputStream output, File source, Set<File> exclusions, IPathComputer pathComputer) throws IOException {
        FileUtils.zip(output, source, exclusions, pathComputer, new HashSet<IPath>());
    }

    public static void zip(ZipOutputStream output, File source, Set<File> exclusions, IPathComputer pathComputer, Set<IPath> directoryEntries) throws IOException {
        if (exclusions.contains(source)) {
            return;
        }
        if (source.isDirectory()) {
            FileUtils.zipDir(output, source, exclusions, pathComputer, directoryEntries);
        } else {
            FileUtils.zipFile(output, source, pathComputer, directoryEntries);
        }
    }

    private static void zipDirectoryEntry(ZipOutputStream output, IPath entry, long time, Set<IPath> directoryEntries) throws IOException {
        block13: {
            if (!directoryEntries.contains(entry = entry.addTrailingSeparator())) {
                if (entry.segmentCount() > 1) {
                    FileUtils.zipDirectoryEntry(output, entry.removeLastSegments(1), time, directoryEntries);
                }
                try {
                    try {
                        ZipEntry dirEntry = new ZipEntry(entry.toString());
                        dirEntry.setTime(time);
                        output.putNextEntry(dirEntry);
                        directoryEntries.add(entry);
                    }
                    catch (ZipException zipException) {
                        try {
                            output.closeEntry();
                        }
                        catch (IOException iOException) {}
                        break block13;
                    }
                }
                catch (Throwable throwable) {
                    try {
                        output.closeEntry();
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    output.closeEntry();
                }
                catch (IOException iOException) {}
            }
        }
    }

    private static void zipDir(ZipOutputStream output, File source, Set<File> exclusions, IPathComputer pathComputer, Set<IPath> directoryEntries) throws IOException {
        File[] files = source.listFiles();
        if (files.length == 0) {
            FileUtils.zipDirectoryEntry(output, pathComputer.computePath(source), source.lastModified(), directoryEntries);
        }
        Arrays.sort(files, new Comparator<File>(){

            @Override
            public int compare(File arg0, File arg1) {
                Path a = new Path(arg0.getAbsolutePath());
                Path b = new Path(arg1.getAbsolutePath());
                if (a.segmentCount() == b.segmentCount()) {
                    if (arg0.isDirectory() && arg1.isFile()) {
                        return 1;
                    }
                    if (arg0.isDirectory() && arg1.isDirectory()) {
                        return 0;
                    }
                    if (arg0.isFile() && arg1.isDirectory()) {
                        return -1;
                    }
                    return 0;
                }
                return a.segmentCount() - b.segmentCount();
            }
        });
        int i = 0;
        while (i < files.length) {
            FileUtils.zip(output, files[i], exclusions, pathComputer, directoryEntries);
            ++i;
        }
    }

    private static void zipFile(ZipOutputStream output, File source, IPathComputer pathComputer, Set<IPath> directoryEntries) throws IOException {
        boolean isManifest;
        block21: {
            isManifest = false;
            BufferedInputStream input = new BufferedInputStream(new FileInputStream(source));
            try {
                try {
                    IPath entryPath = pathComputer.computePath(source);
                    if (entryPath.isAbsolute()) {
                        throw new IOException(Messages.Util_Absolute_Entry);
                    }
                    if (entryPath.segmentCount() == 0) {
                        throw new IOException(Messages.Util_Empty_Zip_Entry);
                    }
                    if (entryPath.segmentCount() > 1 && !(isManifest = "META-INF/MANIFEST.MF".equals(entryPath.toString()))) {
                        FileUtils.zipDirectoryEntry(output, entryPath.removeLastSegments(1), source.lastModified(), directoryEntries);
                    }
                    ZipEntry zipEntry = new ZipEntry(entryPath.toString());
                    zipEntry.setTime(source.lastModified());
                    output.putNextEntry(zipEntry);
                    FileUtils.copyStream(input, true, output, false);
                }
                catch (ZipException zipException) {
                    try {
                        ((InputStream)input).close();
                    }
                    catch (IOException iOException) {}
                    try {
                        output.closeEntry();
                    }
                    catch (IOException iOException) {}
                    break block21;
                }
            }
            catch (Throwable throwable) {
                try {
                    ((InputStream)input).close();
                }
                catch (IOException iOException) {}
                try {
                    output.closeEntry();
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                ((InputStream)input).close();
            }
            catch (IOException iOException) {}
            try {
                output.closeEntry();
            }
            catch (IOException iOException) {}
        }
        if (isManifest) {
            FileUtils.zipDirectoryEntry(output, (IPath)new Path("META-INF"), source.lastModified(), directoryEntries);
        }
    }

    public static IPathComputer createRootPathComputer(final File root) {
        return new IPathComputer(){

            public IPath computePath(File source) {
                Path result = new Path(source.getAbsolutePath());
                Path rootPath = new Path(root.getAbsolutePath());
                result = result.removeFirstSegments(rootPath.matchingFirstSegments((IPath)result));
                return result.setDevice(null);
            }

            public void reset() {
            }
        };
    }

    public static IPathComputer createDynamicPathComputer(final int segmentsToKeep) {
        return new IPathComputer(){
            IPathComputer computer = null;

            public IPath computePath(File source) {
                if (this.computer == null) {
                    Path sourcePath = new Path(source.getAbsolutePath());
                    sourcePath = sourcePath.removeLastSegments(segmentsToKeep);
                    this.computer = FileUtils.createRootPathComputer(sourcePath.toFile());
                }
                return this.computer.computePath(source);
            }

            public void reset() {
                this.computer = null;
            }
        };
    }

    public static IPathComputer createParentPrefixComputer(final int segmentsToKeep) {
        return new IPathComputer(){

            public IPath computePath(File source) {
                Path sourcePath = new Path(source.getAbsolutePath());
                sourcePath = sourcePath.removeFirstSegments(Math.max(0, sourcePath.segmentCount() - segmentsToKeep));
                return sourcePath.setDevice(null);
            }

            public void reset() {
            }
        };
    }

    public static interface IPathComputer {
        public IPath computePath(File var1);

        public void reset();
    }
}

