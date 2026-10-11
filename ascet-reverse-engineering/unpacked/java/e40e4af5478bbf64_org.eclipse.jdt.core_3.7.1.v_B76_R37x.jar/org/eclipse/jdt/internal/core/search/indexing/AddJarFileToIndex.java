/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.jdt.internal.core.search.indexing;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.JavaSearchDocument;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.search.indexing.IndexRequest;
import org.eclipse.jdt.internal.core.search.indexing.ReadWriteMonitor;
import org.eclipse.jdt.internal.core.search.processing.JobManager;

class AddJarFileToIndex
extends IndexRequest {
    private static final char JAR_SEPARATOR = "|".charAt(0);
    IFile resource;
    Scanner scanner;

    public AddJarFileToIndex(IFile resource, IndexManager manager) {
        super(resource.getFullPath(), manager);
        this.resource = resource;
    }

    public AddJarFileToIndex(IPath jarPath, IndexManager manager) {
        super(jarPath, manager);
    }

    public boolean equals(Object o) {
        if (o instanceof AddJarFileToIndex) {
            if (this.resource != null) {
                return this.resource.equals((Object)((AddJarFileToIndex)o).resource);
            }
            if (this.containerPath != null) {
                return this.containerPath.equals((Object)((AddJarFileToIndex)o).containerPath);
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.resource != null) {
            return this.resource.hashCode();
        }
        if (this.containerPath != null) {
            return this.containerPath.hashCode();
        }
        return -1;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean execute(IProgressMonitor progressMonitor) {
        if (this.isCancelled) return true;
        if (progressMonitor != null && progressMonitor.isCanceled()) {
            return true;
        }
        try {
            Index index = this.manager.getIndexForUpdate(this.containerPath, false, false);
            if (index != null) {
                if (!JobManager.VERBOSE) return true;
                org.eclipse.jdt.internal.core.util.Util.verbose("-> no indexing required (index already exists) for " + this.containerPath);
                return true;
            }
            index = this.manager.getIndexForUpdate(this.containerPath, true, true);
            if (index == null) {
                if (!JobManager.VERBOSE) return true;
                org.eclipse.jdt.internal.core.util.Util.verbose("-> index could not be created for " + this.containerPath);
                return true;
            }
            ReadWriteMonitor monitor = index.monitor;
            if (monitor == null) {
                if (!JobManager.VERBOSE) return true;
                org.eclipse.jdt.internal.core.util.Util.verbose("-> index for " + this.containerPath + " just got deleted");
                return true;
            }
            index.separator = JAR_SEPARATOR;
            ZipFile zip = null;
            try {
                Path zipFilePath = null;
                monitor.enterWrite();
                if (this.resource != null) {
                    File file;
                    URI location;
                    block39: {
                        location = this.resource.getLocationURI();
                        if (location == null) {
                            return false;
                        }
                        if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                            System.out.println("(" + Thread.currentThread() + ") [AddJarFileToIndex.execute()] Creating ZipFile on " + location.getPath());
                        }
                        file = null;
                        try {
                            file = org.eclipse.jdt.internal.core.util.Util.toLocalFile(location, progressMonitor);
                        }
                        catch (CoreException e) {
                            if (!JobManager.VERBOSE) break block39;
                            org.eclipse.jdt.internal.core.util.Util.verbose("-> failed to index " + location.getPath() + " because of the following exception:");
                            e.printStackTrace();
                        }
                    }
                    if (file == null) {
                        if (!JobManager.VERBOSE) return false;
                        org.eclipse.jdt.internal.core.util.Util.verbose("-> failed to index " + location.getPath() + " because the file could not be fetched");
                        return false;
                    }
                    zip = new ZipFile(file);
                    zipFilePath = (Path)this.resource.getFullPath().makeRelative();
                } else {
                    if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                        System.out.println("(" + Thread.currentThread() + ") [AddJarFileToIndex.execute()] Creating ZipFile on " + this.containerPath);
                    }
                    zip = new ZipFile(this.containerPath.toFile());
                    zipFilePath = (Path)this.containerPath;
                }
                if (this.isCancelled) {
                    if (!JobManager.VERBOSE) return false;
                    org.eclipse.jdt.internal.core.util.Util.verbose("-> indexing of " + zip.getName() + " has been cancelled");
                    return false;
                }
                if (JobManager.VERBOSE) {
                    org.eclipse.jdt.internal.core.util.Util.verbose("-> indexing " + zip.getName());
                }
                long initialTime = System.currentTimeMillis();
                String[] paths = index.queryDocumentNames("");
                if (paths != null) {
                    boolean needToReindex;
                    int max = paths.length;
                    String EXISTS = "OK";
                    String DELETED = "DELETED";
                    SimpleLookupTable indexedFileNames = new SimpleLookupTable(max == 0 ? 33 : max + 11);
                    int i = 0;
                    while (i < max) {
                        indexedFileNames.put(paths[i], DELETED);
                        ++i;
                    }
                    Enumeration<? extends ZipEntry> e = zip.entries();
                    while (e.hasMoreElements()) {
                        ZipEntry ze = e.nextElement();
                        String zipEntryName = ze.getName();
                        if (!Util.isClassFileName(zipEntryName) || !this.isValidPackageNameForClass(zipEntryName)) continue;
                        indexedFileNames.put(zipEntryName, EXISTS);
                    }
                    boolean bl = needToReindex = indexedFileNames.elementSize != max;
                    if (!needToReindex) {
                        Object[] valueTable = indexedFileNames.valueTable;
                        int i2 = 0;
                        int l = valueTable.length;
                        while (i2 < l) {
                            if (valueTable[i2] == DELETED) {
                                needToReindex = true;
                                break;
                            }
                            ++i2;
                        }
                        if (!needToReindex) {
                            if (JobManager.VERBOSE) {
                                org.eclipse.jdt.internal.core.util.Util.verbose("-> no indexing required (index is consistent with library) for " + zip.getName() + " (" + (System.currentTimeMillis() - initialTime) + "ms)");
                            }
                            this.manager.saveIndex(index);
                            return true;
                        }
                    }
                }
                SearchParticipant participant = SearchEngine.getDefaultSearchParticipant();
                if (!this.manager.resetIndex(this.containerPath)) {
                    this.manager.removeIndex(this.containerPath);
                    return false;
                }
                index.separator = JAR_SEPARATOR;
                Enumeration<? extends ZipEntry> e = zip.entries();
                while (e.hasMoreElements()) {
                    if (this.isCancelled) {
                        if (!JobManager.VERBOSE) return false;
                        org.eclipse.jdt.internal.core.util.Util.verbose("-> indexing of " + zip.getName() + " has been cancelled");
                        return false;
                    }
                    ZipEntry ze = e.nextElement();
                    String zipEntryName = ze.getName();
                    if (!Util.isClassFileName(zipEntryName) || !this.isValidPackageNameForClass(zipEntryName)) continue;
                    byte[] classFileBytes = Util.getZipEntryByteContent(ze, zip);
                    JavaSearchDocument entryDocument = new JavaSearchDocument(ze, (IPath)zipFilePath, classFileBytes, participant);
                    this.manager.indexDocument(entryDocument, participant, index, this.containerPath);
                }
                this.manager.saveIndex(index);
                if (!JobManager.VERBOSE) return true;
                org.eclipse.jdt.internal.core.util.Util.verbose("-> done indexing of " + zip.getName() + " (" + (System.currentTimeMillis() - initialTime) + "ms)");
                return true;
            }
            finally {
                if (zip != null) {
                    if (JavaModelManager.ZIP_ACCESS_VERBOSE) {
                        System.out.println("(" + Thread.currentThread() + ") [AddJarFileToIndex.execute()] Closing ZipFile " + zip);
                    }
                    zip.close();
                }
                monitor.exitWrite();
            }
        }
        catch (IOException e) {
            if (JobManager.VERBOSE) {
                org.eclipse.jdt.internal.core.util.Util.verbose("-> failed to index " + this.containerPath + " because of the following exception:");
                e.printStackTrace();
            }
            this.manager.removeIndex(this.containerPath);
            return false;
        }
    }

    public String getJobFamily() {
        if (this.resource != null) {
            return super.getJobFamily();
        }
        return this.containerPath.toOSString();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean isValidPackageNameForClass(String className) {
        char[] classNameArray = className.toCharArray();
        if (this.scanner == null) {
            this.scanner = new Scanner(false, true, false, 0x2F0000L, null, null, true);
        }
        this.scanner.setSource(classNameArray);
        this.scanner.eofPosition = classNameArray.length - SuffixConstants.SUFFIX_CLASS.length;
        try {
            if (this.scanner.scanIdentifier() != 26) return false;
            do {
                if (this.scanner.eofPosition <= this.scanner.currentPosition) {
                    return true;
                }
                if (this.scanner.getNextChar() == 47 && this.scanner.eofPosition > this.scanner.currentPosition) continue;
                return false;
            } while (this.scanner.scanIdentifier() == 26);
            return false;
        }
        catch (InvalidInputException invalidInputException) {}
        return false;
    }

    protected Integer updatedIndexState() {
        return IndexManager.REBUILDING_STATE;
    }

    public String toString() {
        return "indexing " + this.containerPath.toString();
    }
}

