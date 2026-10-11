/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.jdt.core.IAccessRule
 *  org.eclipse.jdt.core.IClasspathAttribute
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.launching;

import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Platform;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.JREContainerInitializer;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.LibraryInfo;
import org.eclipse.jdt.internal.launching.RuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntryResolver2;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.LibraryLocation;

public class JRERuntimeClasspathEntryResolver
implements IRuntimeClasspathEntryResolver2 {
    private static IAccessRule[] EMPTY_RULES = new IAccessRule[0];

    public IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry entry, ILaunchConfiguration configuration) throws CoreException {
        IVMInstall jre = null;
        jre = entry.getType() == 4 && entry.getPath().segmentCount() > 1 ? JREContainerInitializer.resolveVM(entry.getPath()) : JavaRuntime.computeVMInstall(configuration);
        if (jre == null) {
            return new IRuntimeClasspathEntry[0];
        }
        return this.resolveLibraryLocations(jre, entry.getClasspathProperty());
    }

    public IRuntimeClasspathEntry[] resolveRuntimeClasspathEntry(IRuntimeClasspathEntry entry, IJavaProject project) throws CoreException {
        IVMInstall jre = null;
        jre = entry.getType() == 4 && entry.getPath().segmentCount() > 1 ? JREContainerInitializer.resolveVM(entry.getPath()) : JavaRuntime.getVMInstall(project);
        if (jre == null) {
            return new IRuntimeClasspathEntry[0];
        }
        return this.resolveLibraryLocations(jre, entry.getClasspathProperty());
    }

    protected IRuntimeClasspathEntry[] resolveLibraryLocations(IVMInstall vm, int kind) {
        LibraryInfo libraryInfo;
        File vmInstallLocation;
        LibraryLocation[] libs = vm.getLibraryLocations();
        LibraryLocation[] defaultLibs = vm.getVMInstallType().getDefaultLibraryLocations(vm.getInstallLocation());
        boolean overrideJavadoc = false;
        if (libs == null) {
            libs = defaultLibs;
            overrideJavadoc = true;
        } else if (!JRERuntimeClasspathEntryResolver.isSameArchives(libs, defaultLibs)) {
            kind = 2;
        }
        if (kind == 2 && (vmInstallLocation = vm.getInstallLocation()) != null && (libraryInfo = LaunchingPlugin.getLibraryInfo(vmInstallLocation.getAbsolutePath())) != null) {
            String[] extensionDirsArray = libraryInfo.getExtensionDirs();
            HashSet<String> extensionDirsSet = new HashSet<String>();
            int i = 0;
            while (i < extensionDirsArray.length) {
                extensionDirsSet.add(extensionDirsArray[i]);
                ++i;
            }
            ArrayList<IRuntimeClasspathEntry> resolvedEntries = new ArrayList<IRuntimeClasspathEntry>(libs.length);
            int i2 = 0;
            while (i2 < libs.length) {
                LibraryLocation location = libs[i2];
                IPath libraryPath = location.getSystemLibraryPath();
                String dir = libraryPath.toFile().getParent();
                if (!extensionDirsSet.contains(dir)) {
                    resolvedEntries.add(this.resolveLibraryLocation(vm, location, kind, overrideJavadoc));
                }
                ++i2;
            }
            return resolvedEntries.toArray(new IRuntimeClasspathEntry[resolvedEntries.size()]);
        }
        ArrayList<IRuntimeClasspathEntry> resolvedEntries = new ArrayList<IRuntimeClasspathEntry>(libs.length);
        int i = 0;
        while (i < libs.length) {
            IPath systemLibraryPath = libs[i].getSystemLibraryPath();
            if (systemLibraryPath.toFile().exists()) {
                resolvedEntries.add(this.resolveLibraryLocation(vm, libs[i], kind, overrideJavadoc));
            }
            ++i;
        }
        return resolvedEntries.toArray(new IRuntimeClasspathEntry[resolvedEntries.size()]);
    }

    public static boolean isSameArchives(LibraryLocation[] libs, LibraryLocation[] defaultLibs) {
        if (libs.length != defaultLibs.length) {
            return false;
        }
        IPath dpath = null;
        IPath lpath = null;
        int i = 0;
        while (i < defaultLibs.length) {
            dpath = defaultLibs[i].getSystemLibraryPath();
            lpath = libs[i].getSystemLibraryPath();
            if (Platform.getOS().equals("win32") ? !dpath.removeTrailingSeparator().toOSString().equalsIgnoreCase(lpath.removeTrailingSeparator().toOSString()) : !dpath.equals((Object)lpath)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public IVMInstall resolveVMInstall(IClasspathEntry entry) {
        switch (entry.getEntryKind()) {
            case 4: {
                if (!entry.getPath().segment(0).equals("JRE_LIB")) break;
                return JavaRuntime.getDefaultVMInstall();
            }
            case 5: {
                if (!entry.getPath().segment(0).equals(JavaRuntime.JRE_CONTAINER)) break;
                return JREContainerInitializer.resolveVM(entry.getPath());
            }
        }
        return null;
    }

    public boolean isVMInstallReference(IClasspathEntry entry) {
        switch (entry.getEntryKind()) {
            case 4: {
                if (!entry.getPath().segment(0).equals("JRE_LIB")) break;
                return true;
            }
            case 5: {
                if (!entry.getPath().segment(0).equals(JavaRuntime.JRE_CONTAINER)) break;
                return true;
            }
        }
        return false;
    }

    private IRuntimeClasspathEntry resolveLibraryLocation(IVMInstall vm, LibraryLocation location, int kind, boolean overrideJavaDoc) {
        IPath libraryPath = location.getSystemLibraryPath();
        URL javadocLocation = location.getJavadocLocation();
        if (overrideJavaDoc && javadocLocation == null) {
            javadocLocation = vm.getJavadocLocation();
        }
        IClasspathAttribute[] attributes = null;
        attributes = javadocLocation == null ? new IClasspathAttribute[]{} : new IClasspathAttribute[]{JavaCore.newClasspathAttribute((String)"javadoc_location", (String)javadocLocation.toExternalForm())};
        IClasspathEntry cpe = JavaCore.newLibraryEntry((IPath)libraryPath, (IPath)location.getSystemLibraryPath(), (IPath)location.getPackageRootPath(), (IAccessRule[])EMPTY_RULES, (IClasspathAttribute[])attributes, (boolean)false);
        RuntimeClasspathEntry resolved = new RuntimeClasspathEntry(cpe);
        resolved.setClasspathProperty(kind);
        IPath sourcePath = location.getSystemLibrarySourcePath();
        if (sourcePath != null && !sourcePath.isEmpty()) {
            resolved.setSourceAttachmentPath(sourcePath);
            resolved.setSourceAttachmentRootPath(location.getPackageRootPath());
        }
        return resolved;
    }
}

