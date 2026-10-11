/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 */
package org.eclipse.equinox.internal.p2.publisher.eclipse;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.pde.internal.publishing.Activator;

public class ExecutablesDescriptor {
    private File location;
    private Set<File> files;
    private String executableName;
    private boolean temporary = false;
    private final String os;
    private File iniFile;

    public static File findExecutable(String os, File root, String baseName) {
        if ("macosx".equals(os)) {
            return new File(root, String.valueOf(baseName) + ".app/Contents/MacOS/" + baseName);
        }
        if (!"win32".equals(os)) {
            return new File(root, baseName);
        }
        return new File(root, String.valueOf(baseName) + ".exe");
    }

    public static ExecutablesDescriptor createExecutablesFromFeature(File executablesFeatureLocation, String configSpec) {
        if (executablesFeatureLocation == null || !executablesFeatureLocation.exists()) {
            return null;
        }
        String[] config = AbstractPublisherAction.parseConfigSpec((String)configSpec);
        File result = new File(executablesFeatureLocation, "bin/" + config[0] + "/" + config[1] + "/" + config[2]);
        if (!result.exists()) {
            return null;
        }
        return new ExecutablesDescriptor(config[1], "launcher", result, new File[]{result});
    }

    public static ExecutablesDescriptor createDescriptor(String os, String executable, File location) {
        if ("macosx".equals(os)) {
            return ExecutablesDescriptor.createMacDescriptor(os, executable, location);
        }
        if (!"win32".equals(os)) {
            return ExecutablesDescriptor.createUnixDescriptor(os, executable, location);
        }
        return ExecutablesDescriptor.createWindowsDescriptor(os, executable, location);
    }

    private static ExecutablesDescriptor createWindowsDescriptor(String os, String executable, File location) {
        ExecutablesDescriptor result = new ExecutablesDescriptor(os, executable, location, null);
        File file = new File(location, String.valueOf(executable) + ".exe");
        if (file.isFile()) {
            result.addFile(file);
            result.iniFile = new File(location, String.valueOf(executable) + ".ini");
        }
        if ((file = new File(location, "eclipsec.exe")).isFile()) {
            result.addFile(file);
        }
        return result;
    }

    private static ExecutablesDescriptor createUnixDescriptor(String os, String executable, File location) {
        ExecutablesDescriptor result = new ExecutablesDescriptor(os, executable, location, null);
        File[] files = location.listFiles();
        int i = 0;
        while (files != null && i < files.length) {
            String extension = new Path(files[i].getName()).getFileExtension();
            if (files[i].isFile() && (extension == null || extension.equals("so"))) {
                result.addFile(files[i]);
            }
            ++i;
        }
        result.iniFile = new File(location, String.valueOf(executable) + ".ini");
        return result;
    }

    private static ExecutablesDescriptor createMacDescriptor(String os, String executable, File location) {
        File[] files = location.listFiles(new FilenameFilter(){

            public boolean accept(File dir, String name) {
                int length = name.length();
                return length > 3 && name.substring(length - 4, length).equalsIgnoreCase(".app");
            }
        });
        ExecutablesDescriptor result = new ExecutablesDescriptor(os, executable, location, files);
        result.iniFile = new File(location, String.valueOf(executable) + ".ini");
        return result;
    }

    public ExecutablesDescriptor(String os, String executable, File location, File[] files) {
        this.os = os;
        this.executableName = executable;
        this.location = location;
        if (files == null) {
            this.files = new HashSet<File>(11);
        } else {
            this.files = new HashSet<File>(files.length);
            int i = 0;
            while (i < files.length) {
                this.addAllFiles(files[i]);
                ++i;
            }
        }
    }

    public ExecutablesDescriptor(ExecutablesDescriptor descriptor) {
        this.os = descriptor.os;
        this.location = descriptor.location;
        this.executableName = descriptor.executableName;
        this.temporary = descriptor.temporary;
        this.files = new HashSet<File>(descriptor.files);
    }

    public void addAllFiles(File file) {
        if (file.isFile()) {
            this.files.add(this.relativize(file));
        } else {
            File absolute = file.isAbsolute() ? file : new File(this.location, file.getPath());
            File[] list = absolute.listFiles();
            int i = 0;
            while (i < list.length) {
                this.addAllFiles(list[i]);
                ++i;
            }
        }
    }

    public void addFile(File file) {
        this.files.add(this.relativize(file));
    }

    private File relativize(File file) {
        if (!file.isAbsolute()) {
            return file;
        }
        String path = file.getPath();
        if (!path.startsWith(this.location.getPath())) {
            throw new IllegalArgumentException(String.valueOf(file.toString()) + " must be related to " + this.location);
        }
        if ((path = path.substring(this.location.getPath().length())).startsWith("/") || path.startsWith("\\")) {
            path = path.substring(1);
        }
        return new File(path);
    }

    public void removeFile(File file) {
        this.files.remove(this.relativize(file));
    }

    public void replace(File oldFile, File newFile) {
        this.removeFile(oldFile);
        this.addFile(newFile);
    }

    public File[] getFiles() {
        File[] result = this.files.toArray(new File[this.files.size()]);
        int i = 0;
        while (i < result.length) {
            result[i] = new File(this.location, result[i].getPath());
            ++i;
        }
        return result;
    }

    public String getExecutableName() {
        return this.executableName;
    }

    public File getExecutable() {
        return ExecutablesDescriptor.findExecutable(this.os, this.location, this.executableName);
    }

    public File getIniLocation() {
        return this.iniFile;
    }

    public File getLocation() {
        return this.location;
    }

    public void setLocation(File value) {
        this.location = value;
    }

    public boolean isTemporary() {
        return this.temporary;
    }

    public void setExecutableName(String value, boolean updateFiles) {
        if (updateFiles) {
            this.updateExecutableName(value);
        }
        this.executableName = value;
    }

    public void makeTemporaryCopy() {
        if (this.isTemporary()) {
            return;
        }
        File tempFile = null;
        try {
            tempFile = File.createTempFile("p2.brandingIron", "");
            tempFile.delete();
            Iterator<File> iterator = this.files.iterator();
            while (iterator.hasNext()) {
                File file = iterator.next();
                FileUtils.copy((File)this.location, (File)tempFile, (File)file, (boolean)true);
            }
        }
        catch (IOException e) {
            LogHelper.log((IStatus)new Status(4, Activator.ID, "Error publishing artifacts", (Throwable)e));
        }
        this.location = tempFile;
        this.temporary = true;
    }

    private void updateExecutableName(String newName) {
        if (newName.equalsIgnoreCase(this.executableName)) {
            return;
        }
        String targetIni = String.valueOf(this.executableName) + ".ini";
        String targetExecutable = this.executableName;
        String executableExtension = "win32".equals(this.os) ? ".exe" : "";
        targetExecutable = String.valueOf(this.executableName) + executableExtension;
        HashSet<File> filesCopy = new HashSet<File>(this.files);
        Iterator iterator = filesCopy.iterator();
        while (iterator.hasNext()) {
            File file = (File)iterator.next();
            String base = file.getParent();
            String string = base = base == null ? "" : String.valueOf(base) + "/";
            if ("macosx".equals(this.os) && base.startsWith(String.valueOf(this.executableName) + ".app")) {
                base = String.valueOf(newName) + ".app" + base.substring(this.executableName.length() + 4);
            }
            if (file.getName().equalsIgnoreCase(targetExecutable)) {
                this.replace(file, new File(String.valueOf(base) + newName + executableExtension));
                continue;
            }
            if (file.getName().equalsIgnoreCase(targetIni)) {
                this.replace(file, new File(String.valueOf(base) + newName + ".ini"));
                continue;
            }
            if (!"macosx".equals(this.os)) continue;
            this.replace(file, new File(String.valueOf(base) + file.getName()));
        }
    }
}

