/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.Launch
 *  org.eclipse.debug.core.model.IProcess
 *  org.eclipse.debug.core.model.IStreamsProxy
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.Launch;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.IStreamsProxy;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.LibraryInfo;
import org.eclipse.jdt.internal.launching.StandardVM;
import org.eclipse.jdt.launching.AbstractVMInstallType;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.LibraryLocation;

public class StandardVMType
extends AbstractVMInstallType {
    private static final String RT_JAR = "rt.jar";
    private static final String SRC = "src";
    private static final String SRC_ZIP = "src.zip";
    private static final String SRC_JAR = "src.jar";
    private static final String JRE = "jre";
    private static final String LIB = "lib";
    private static final String BAR = "|";
    public static final String ID_STANDARD_VM_TYPE = "org.eclipse.jdt.internal.debug.ui.launcher.StandardVMType";
    private String fDefaultRootPath = "";
    private static Map fgFailedInstallPath = new HashMap();
    private static Map fgDefaultLibLocs = new HashMap();
    private static final String[] fgCandidateJavaFiles = new String[]{"javaw", "javaw.exe", "java", "java.exe", "j9w", "j9w.exe", "j9", "j9.exe"};
    private static final String[] fgCandidateJavaLocations = new String[]{"bin" + File.separatorChar, "jre" + File.separatorChar + "bin" + File.separatorChar};

    public static File findJavaExecutable(File vmInstallLocation) {
        int i = 0;
        while (i < fgCandidateJavaFiles.length) {
            int j = 0;
            while (j < fgCandidateJavaLocations.length) {
                File javaFile = new File(vmInstallLocation, String.valueOf(fgCandidateJavaLocations[j]) + fgCandidateJavaFiles[i]);
                if (javaFile.isFile()) {
                    return javaFile;
                }
                ++j;
            }
            ++i;
        }
        return null;
    }

    public String getName() {
        return LaunchingMessages.StandardVMType_Standard_VM_3;
    }

    protected IVMInstall doCreateVMInstall(String id) {
        return new StandardVM(this, id);
    }

    protected synchronized LibraryInfo getLibraryInfo(File javaHome, File javaExecutable) {
        String installPath = javaHome.getAbsolutePath();
        LibraryInfo info = LaunchingPlugin.getLibraryInfo(installPath);
        if ((info == null || LaunchingPlugin.timeStampChanged(installPath)) && (info = (LibraryInfo)fgFailedInstallPath.get(installPath)) == null) {
            info = this.generateLibraryInfo(javaHome, javaExecutable);
            if (info == null) {
                info = this.getDefaultLibraryInfo(javaHome);
                fgFailedInstallPath.put(installPath, info);
            } else {
                LaunchingPlugin.setLibraryInfo(installPath, info);
            }
        }
        return info;
    }

    protected boolean canDetectDefaultSystemLibraries(File javaHome, File javaExecutable) {
        LibraryLocation[] locations = this.getDefaultLibraryLocations(javaHome);
        String version = this.getVMVersion(javaHome, javaExecutable);
        return locations.length > 0 && !version.startsWith("1.1");
    }

    protected String getVMVersion(File javaHome, File javaExecutable) {
        LibraryInfo info = this.getLibraryInfo(javaHome, javaExecutable);
        return info.getVersion();
    }

    public File detectInstallLocation() {
        File parent;
        File javaHome;
        if (Platform.getOS().equals("macosx")) {
            return null;
        }
        try {
            javaHome = new File(System.getProperty("java.home")).getCanonicalFile();
        }
        catch (IOException e) {
            LaunchingPlugin.log(e);
            return null;
        }
        if (!javaHome.exists()) {
            return null;
        }
        File javaExecutable = StandardVMType.findJavaExecutable(javaHome);
        if (javaExecutable == null) {
            return null;
        }
        boolean foundLibraries = false;
        if (javaHome.getName().equalsIgnoreCase(JRE) && this.canDetectDefaultSystemLibraries(parent = new File(javaHome.getParent()), javaExecutable)) {
            javaHome = parent;
            foundLibraries = true;
        }
        if (!foundLibraries && !this.canDetectDefaultSystemLibraries(javaHome, javaExecutable)) {
            return null;
        }
        return javaHome;
    }

    protected IPath getDefaultSystemLibrary(File javaHome) {
        IPath jreLibPath = new Path(javaHome.getPath()).append(LIB).append(RT_JAR);
        if (jreLibPath.toFile().isFile()) {
            return jreLibPath;
        }
        return new Path(javaHome.getPath()).append(JRE).append(LIB).append(RT_JAR);
    }

    protected IPath getDefaultSystemLibrarySource(File libLocation) {
        File parent = libLocation.getParentFile();
        while (parent != null) {
            File parentsrc = new File(parent, SRC_JAR);
            if (parentsrc.isFile()) {
                this.setDefaultRootPath(SRC);
                return new Path(parentsrc.getPath());
            }
            parentsrc = new File(parent, SRC_ZIP);
            if (parentsrc.isFile()) {
                this.setDefaultRootPath("");
                return new Path(parentsrc.getPath());
            }
            parent = parent.getParentFile();
        }
        IPath result = this.checkForJ9LibrarySource(libLocation);
        if (result != null) {
            return result;
        }
        Path libName = new Path(libLocation.getName());
        String extension = libName.getFileExtension();
        String prefix = libName.removeFileExtension().lastSegment();
        if (extension != null) {
            Path srcPath = new Path(libLocation.getPath());
            srcPath = srcPath.removeLastSegments(1);
            StringBuffer buf = new StringBuffer();
            buf.append(prefix);
            buf.append("-src.");
            buf.append(extension);
            srcPath = srcPath.append(buf.toString());
            if (srcPath.toFile().exists()) {
                return srcPath;
            }
        }
        this.setDefaultRootPath("");
        return Path.EMPTY;
    }

    private IPath checkForJ9LibrarySource(File libLocation) {
        File parent = libLocation.getParentFile();
        String name = libLocation.getName();
        if (name.equalsIgnoreCase("classes.zip")) {
            File source = new File(parent, "source/source.zip");
            return source.isFile() ? new Path(source.getPath()) : Path.EMPTY;
        }
        if (name.equalsIgnoreCase("locale.zip")) {
            File source = new File(parent, "source/locale-src.zip");
            return source.isFile() ? new Path(source.getPath()) : Path.EMPTY;
        }
        if (name.equalsIgnoreCase("charconv.zip")) {
            File source = new File(parent, "charconv-src.zip");
            return source.isFile() ? new Path(source.getPath()) : Path.EMPTY;
        }
        return null;
    }

    protected IPath getDefaultPackageRootPath() {
        return new Path(this.getDefaultRootPath());
    }

    public LibraryLocation[] getDefaultLibraryLocations(File installLocation) {
        ArrayList allLibs = (ArrayList)fgDefaultLibLocs.get(installLocation.getAbsolutePath());
        if (allLibs == null) {
            File javaExecutable = StandardVMType.findJavaExecutable(installLocation);
            LibraryInfo libInfo = javaExecutable == null ? this.getDefaultLibraryInfo(installLocation) : this.getLibraryInfo(installLocation, javaExecutable);
            allLibs = new ArrayList(StandardVMType.gatherAllLibraries(libInfo.getEndorsedDirs()));
            String[] bootpath = libInfo.getBootpath();
            ArrayList<LibraryLocation> boot = new ArrayList<LibraryLocation>(bootpath.length);
            URL url = this.getDefaultJavadocLocation(installLocation);
            int i = 0;
            while (i < bootpath.length) {
                Path path = new Path(bootpath[i]);
                File lib = path.toFile();
                if (lib.exists() && lib.isFile()) {
                    LibraryLocation libraryLocation = new LibraryLocation((IPath)path, this.getDefaultSystemLibrarySource(lib), this.getDefaultPackageRootPath(), url);
                    boot.add(libraryLocation);
                }
                ++i;
            }
            allLibs.addAll(boot);
            allLibs.addAll(StandardVMType.gatherAllLibraries(libInfo.getExtensionDirs()));
            HashSet<String> set = new HashSet<String>();
            LibraryLocation lib = null;
            ListIterator liter = allLibs.listIterator();
            while (liter.hasNext()) {
                lib = (LibraryLocation)liter.next();
                IPath systemLibraryPath = lib.getSystemLibraryPath();
                String device = systemLibraryPath.getDevice();
                if (device != null) {
                    systemLibraryPath = systemLibraryPath.setDevice(device.toUpperCase());
                }
                if (set.add(systemLibraryPath.toOSString())) continue;
                liter.remove();
            }
            fgDefaultLibLocs.put(installLocation.getAbsolutePath(), allLibs);
        }
        return allLibs.toArray(new LibraryLocation[allLibs.size()]);
    }

    protected LibraryInfo getDefaultLibraryInfo(File installLocation) {
        IPath rtjar = this.getDefaultSystemLibrary(installLocation);
        File extDir = this.getDefaultExtensionDirectory(installLocation);
        File endDir = this.getDefaultEndorsedDirectory(installLocation);
        String[] dirs = null;
        dirs = extDir == null ? new String[]{} : new String[]{extDir.getAbsolutePath()};
        String[] endDirs = null;
        endDirs = endDir == null ? new String[]{} : new String[]{endDir.getAbsolutePath()};
        return new LibraryInfo("???", new String[]{rtjar.toOSString()}, dirs, endDirs);
    }

    public static List gatherAllLibraries(String[] dirPaths) {
        ArrayList<LibraryLocation> libraries = new ArrayList<LibraryLocation>();
        int i = 0;
        while (i < dirPaths.length) {
            String[] names;
            File extDir = new File(dirPaths[i]);
            if (extDir.exists() && extDir.isDirectory() && (names = extDir.list()) != null) {
                int j = 0;
                while (j < names.length) {
                    String suffix;
                    int length;
                    String name = names[j];
                    File jar = new File(extDir, name);
                    if (jar.isFile() && (length = name.length()) > 4 && ((suffix = name.substring(length - 4)).equalsIgnoreCase(".zip") || suffix.equalsIgnoreCase(".jar"))) {
                        try {
                            Path libPath = new Path(jar.getCanonicalPath());
                            LibraryLocation library = new LibraryLocation((IPath)libPath, (IPath)Path.EMPTY, (IPath)Path.EMPTY, null);
                            libraries.add(library);
                        }
                        catch (IOException e) {
                            LaunchingPlugin.log(e);
                        }
                    }
                    ++j;
                }
            }
            ++i;
        }
        return libraries;
    }

    protected File getDefaultExtensionDirectory(File installLocation) {
        File jre = null;
        jre = installLocation.getName().equalsIgnoreCase(JRE) ? installLocation : new File(installLocation, JRE);
        File lib = new File(jre, LIB);
        File ext = new File(lib, "ext");
        return ext;
    }

    protected File getDefaultEndorsedDirectory(File installLocation) {
        File lib = new File(installLocation, LIB);
        File ext = new File(lib, "endorsed");
        return ext;
    }

    protected String getDefaultRootPath() {
        return this.fDefaultRootPath;
    }

    protected void setDefaultRootPath(String defaultRootPath) {
        this.fDefaultRootPath = defaultRootPath;
    }

    public IStatus validateInstallLocation(File javaHome) {
        Status status = null;
        File javaExecutable = StandardVMType.findJavaExecutable(javaHome);
        status = javaExecutable == null ? new Status(4, LaunchingPlugin.getUniqueIdentifier(), 0, LaunchingMessages.StandardVMType_Not_a_JDK_Root__Java_executable_was_not_found_1, null) : (this.canDetectDefaultSystemLibraries(javaHome, javaExecutable) ? new Status(0, LaunchingPlugin.getUniqueIdentifier(), 0, LaunchingMessages.StandardVMType_ok_2, null) : new Status(4, LaunchingPlugin.getUniqueIdentifier(), 0, LaunchingMessages.StandardVMType_Not_a_JDK_root__System_library_was_not_found__1, null));
        return status;
    }

    protected LibraryInfo generateLibraryInfo(File javaHome, File javaExecutable) {
        LibraryInfo info;
        block16: {
            info = null;
            IPath classesZip = new Path(javaHome.getAbsolutePath()).append(LIB).append("classes.zip");
            if (classesZip.toFile().exists()) {
                return new LibraryInfo("1.1.x", new String[]{classesZip.toOSString()}, new String[0], new String[0]);
            }
            File file = LaunchingPlugin.getFileInPlugin((IPath)new Path("lib/launchingsupport.jar"));
            if (file != null && file.exists()) {
                String javaExecutablePath = javaExecutable.getAbsolutePath();
                String[] cmdLine = new String[]{javaExecutablePath, "-classpath", file.getAbsolutePath(), "org.eclipse.jdt.internal.launching.support.LibraryDetector"};
                Process p = null;
                try {
                    try {
                        Map map;
                        String[] envp = null;
                        if ("macosx".equals(Platform.getOS()) && (map = DebugPlugin.getDefault().getLaunchManager().getNativeEnvironmentCasePreserved()).remove("JAVA_JVM_VERSION") != null) {
                            envp = new String[map.size()];
                            Iterator iterator = map.entrySet().iterator();
                            int i = 0;
                            while (iterator.hasNext()) {
                                Map.Entry entry = iterator.next();
                                envp[i] = String.valueOf((String)entry.getKey()) + "=" + (String)entry.getValue();
                                ++i;
                            }
                        }
                        p = DebugPlugin.exec((String[])cmdLine, null, (String[])envp);
                        IProcess process = DebugPlugin.newProcess((ILaunch)new Launch(null, "run", null), (Process)p, (String)"Library Detection");
                        int i = 0;
                        while (i < 600) {
                            if (process.isTerminated()) break;
                            try {
                                Thread.sleep(50L);
                            }
                            catch (InterruptedException interruptedException) {}
                            ++i;
                        }
                        info = this.parseLibraryInfo(process);
                    }
                    catch (CoreException ioe) {
                        LaunchingPlugin.log(ioe);
                        if (p != null) {
                            p.destroy();
                        }
                        break block16;
                    }
                }
                catch (Throwable throwable) {
                    if (p != null) {
                        p.destroy();
                    }
                    throw throwable;
                }
                if (p != null) {
                    p.destroy();
                }
            }
        }
        if (info == null) {
            LaunchingPlugin.log(MessageFormat.format((String)"Failed to retrieve default libraries for {0}", (Object[])new String[]{javaHome.getAbsolutePath()}));
        }
        return info;
    }

    protected LibraryInfo parseLibraryInfo(IProcess process) {
        int index;
        IStreamsProxy streamsProxy = process.getStreamsProxy();
        String text = null;
        if (streamsProxy != null) {
            text = streamsProxy.getOutputStreamMonitor().getContents();
        }
        if (text != null && text.length() > 0 && (index = text.indexOf(BAR)) > 0) {
            String version = text.substring(0, index);
            if ((index = (text = text.substring(index + 1)).indexOf(BAR)) > 0) {
                String bootPaths = text.substring(0, index);
                String[] bootPath = this.parsePaths(bootPaths);
                if ((index = (text = text.substring(index + 1)).indexOf(BAR)) > 0) {
                    String extDirPaths = text.substring(0, index);
                    String endorsedDirsPath = text.substring(index + 1);
                    String[] extDirs = this.parsePaths(extDirPaths);
                    String[] endDirs = this.parsePaths(endorsedDirsPath);
                    return new LibraryInfo(version, bootPath, extDirs, endDirs);
                }
            }
        }
        return null;
    }

    protected String[] parsePaths(String paths) {
        String path;
        ArrayList<String> list = new ArrayList<String>();
        int pos = 0;
        int index = paths.indexOf(File.pathSeparatorChar, pos);
        while (index > 0) {
            path = paths.substring(pos, index);
            list.add(path);
            pos = index + 1;
            index = paths.indexOf(File.pathSeparatorChar, pos);
        }
        path = paths.substring(pos);
        if (!path.equals("null")) {
            list.add(path);
        }
        return list.toArray(new String[list.size()]);
    }

    public void disposeVMInstall(String id) {
        IVMInstall vm = this.findVMInstall(id);
        if (vm != null) {
            String path = vm.getInstallLocation().getAbsolutePath();
            LaunchingPlugin.setLibraryInfo(path, null);
            fgFailedInstallPath.remove(path);
            fgDefaultLibLocs.remove(path);
        }
        super.disposeVMInstall(id);
    }

    public URL getDefaultJavadocLocation(File installLocation) {
        LibraryInfo libInfo;
        File javaExecutable = StandardVMType.findJavaExecutable(installLocation);
        if (javaExecutable != null && (libInfo = this.getLibraryInfo(installLocation, javaExecutable)) != null) {
            String version = libInfo.getVersion();
            return StandardVMType.getDefaultJavadocLocation(version);
        }
        return null;
    }

    public static URL getDefaultJavadocLocation(String version) {
        try {
            if (version.startsWith("1.7")) {
                return new URL("http://download.oracle.com/javase/7/docs/api/");
            }
            if (version.startsWith("1.6")) {
                return new URL("http://download.oracle.com/javase/6/docs/api/");
            }
            if (version.startsWith("1.5")) {
                return new URL("http://download.oracle.com/javase/1.5.0/docs/api/");
            }
            if (version.startsWith("1.4")) {
                return new URL("http://download.oracle.com/javase/1.4.2/docs/api/");
            }
            if (version.startsWith("1.3")) {
                return new URL("http://download.oracle.com/javase/1.3/docs/api/");
            }
        }
        catch (MalformedURLException malformedURLException) {}
        return null;
    }
}

