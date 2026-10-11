/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.frameworkadmin.utils.Utils
 *  org.eclipse.equinox.p2.metadata.Version
 */
package org.eclipse.equinox.internal.p2.publisher.eclipse;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import org.eclipse.equinox.internal.frameworkadmin.utils.Utils;
import org.eclipse.equinox.internal.p2.publisher.eclipse.ExecutablesDescriptor;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.pde.internal.swt.tools.IconExe;

public class BrandingIron {
    private static final String MARKER_NAME = "%EXECUTABLE_NAME%";
    private static final String BUNDLE_NAME = "%BUNDLE_NAME%";
    private static final String ICON_NAME = "%ICON_NAME%";
    private static final String MARKER_KEY = "<key>CFBundleExecutable</key>";
    private static final String BUNDLE_KEY = "<key>CFBundleName</key>";
    private static final String BUNDLE_ID_KEY = "<key>CFBundleIdentifier</key>";
    private static final String BUNDLE_INFO_KEY = "<key>CFBundleGetInfoString</key>";
    private static final String BUNDLE_VERSION_KEY = "<key>CFBundleVersion</key>";
    private static final String BUNDLE_SHORT_VERSION_KEY = "<key>CFBundleShortVersionString</key>";
    private static final String ICON_KEY = "<key>CFBundleIconFile</key>";
    private static final String STRING_START = "<string>";
    private static final String STRING_END = "</string>";
    private static final String XDOC_ICON = "-Xdock:icon=../Resources/Eclipse.icns";
    private static final String XDOC_ICON_PREFIX = "-Xdock:icon=../Resources/";
    private String[] icons = null;
    private String name;
    private String description;
    private String os = "win32";
    private boolean brandIcons = true;
    private String id;
    private Version version;

    public void setName(String value) {
        this.name = value;
    }

    public void setIcons(String[] value) {
        this.icons = value == null || value.length == 0 ? null : value;
    }

    public void setIcons(String value) {
        this.icons = Utils.getTokens((String)value, (String)",");
        if (this.icons[0].startsWith("${")) {
            if (this.icons.length > 1) {
                String[] temp = new String[this.icons.length - 1];
                System.arraycopy(this.icons, 1, temp, 0, temp.length);
                this.icons = temp;
            } else {
                this.icons = null;
            }
        }
        if (this.icons != null) {
            int i = 0;
            while (i < this.icons.length) {
                this.icons[i] = this.icons[i].trim();
                ++i;
            }
        }
    }

    public void brand(ExecutablesDescriptor descriptor) throws Exception {
        String testName;
        if (this.name.startsWith("${")) {
            return;
        }
        if (this.icons == null || this.icons[0].startsWith("${")) {
            this.brandIcons = false;
        }
        File root = descriptor.getLocation();
        String string = testName = this.os.equals("win32") ? String.valueOf(this.name) + ".exe" : this.name;
        if (!root.exists() || !this.brandIcons && new File(root, testName).exists()) {
            return;
        }
        try {
            root = root.getCanonicalFile();
        }
        catch (IOException iOException) {
            root = root.getAbsoluteFile();
        }
        descriptor.setLocation(root);
        if ("win32".equals(this.os)) {
            this.brandWindows(descriptor);
        } else if ("linux".equals(this.os)) {
            this.brandLinux(descriptor);
        } else if ("solaris".equals(this.os)) {
            this.brandSolaris(descriptor);
        } else if ("macosx".equals(this.os)) {
            this.brandMac(descriptor);
        } else if ("aix".equals(this.os)) {
            this.brandAIX(descriptor);
        } else if ("hpux".equals(this.os)) {
            this.brandHPUX(descriptor);
        } else {
            this.renameLauncher(descriptor);
        }
        descriptor.setExecutableName(this.name, true);
    }

    private void brandAIX(ExecutablesDescriptor descriptor) {
        this.renameLauncher(descriptor);
    }

    private void brandHPUX(ExecutablesDescriptor descriptor) {
        this.renameLauncher(descriptor);
    }

    private void brandLinux(ExecutablesDescriptor descriptor) throws Exception {
        this.renameLauncher(descriptor);
        if (this.brandIcons) {
            File icon = null;
            if (this.icons.length > 0) {
                int i = 0;
                while (i < this.icons.length) {
                    if (this.icons[i].toLowerCase().endsWith(".xpm")) {
                        icon = new File(this.icons[i]);
                        break;
                    }
                    ++i;
                }
            }
            if (icon != null) {
                File targetIcon = new File(descriptor.getLocation(), "icon.xpm");
                org.eclipse.pde.internal.publishing.Utils.copy(icon, targetIcon);
                descriptor.addFile(targetIcon);
            }
        }
    }

    private void brandSolaris(ExecutablesDescriptor descriptor) throws Exception {
        this.renameLauncher(descriptor);
        if (!this.brandIcons) {
            return;
        }
        File root = descriptor.getLocation();
        int i = 0;
        while (i < this.icons.length) {
            String extension;
            String icon = this.icons[i];
            int iconNameLength = icon.length();
            if (iconNameLength >= 5 && (extension = icon.substring(iconNameLength - 5)).charAt(0) == '.' && extension.endsWith(".pm") && "lmst".indexOf(extension.charAt(1)) >= 0) {
                File targetIcon = new File(root, String.valueOf(this.name) + extension);
                org.eclipse.pde.internal.publishing.Utils.copy(new File(icon), targetIcon);
                descriptor.addFile(targetIcon);
            }
            ++i;
        }
    }

    private void brandMac(ExecutablesDescriptor descriptor) throws Exception {
        String appName = this.name;
        if (appName.equals("eclipse")) {
            appName = "Eclipse";
        } else if (appName.equals("launcher")) {
            appName = "Launcher";
        }
        File root = descriptor.getLocation();
        File target = new File(root, String.valueOf(appName) + ".app/Contents");
        target.mkdirs();
        new File(target, "MacOS").mkdirs();
        new File(target, "Resources").mkdirs();
        File initialRoot = new File(root, "Launcher.app/Contents");
        if (!initialRoot.exists()) {
            initialRoot = new File(root, "launcher.app/Contents");
        }
        if (!initialRoot.exists()) {
            initialRoot = new File(root, "Eclipse.app/Contents");
        }
        if (!initialRoot.exists()) {
            initialRoot = new File(root, "eclipse.app/Contents");
        }
        if (!initialRoot.exists()) {
            throw new FileNotFoundException("cannot find launcher root (Eclipse.app or Launcher.app)");
        }
        initialRoot = initialRoot.getCanonicalFile();
        this.copyMacLauncher(descriptor, initialRoot, target);
        String iconName = "";
        if (this.brandIcons) {
            File icon = null;
            int i = 0;
            while (i < this.icons.length) {
                if (this.icons[i].toLowerCase().endsWith(".icns") && (icon = new File(this.icons[i])).exists()) break;
                ++i;
            }
            if (icon != null) {
                iconName = icon.getName();
                File initialIcon = new File(initialRoot, "Resources/Eclipse.icns");
                try {
                    initialIcon = initialIcon.getCanonicalFile();
                }
                catch (IOException iOException) {}
                File targetIcon = new File(target, "Resources/" + iconName);
                initialIcon.delete();
                descriptor.removeFile(initialIcon);
                org.eclipse.pde.internal.publishing.Utils.copy(icon, targetIcon);
                descriptor.addFile(targetIcon);
            }
        }
        this.copyMacIni(descriptor, initialRoot, target, iconName);
        this.modifyInfoPListFile(descriptor, initialRoot, target, iconName);
        File splashApp = new File(initialRoot, "Resources/Splash.app");
        if (splashApp.exists()) {
            this.brandMacSplash(descriptor, initialRoot, target, iconName);
        }
        this.moveContents(descriptor, initialRoot, target);
        initialRoot.getParentFile().delete();
    }

    private void brandMacSplash(ExecutablesDescriptor descriptor, File initialRoot, File target, String iconName) {
        File initialLauncher;
        String splashContents = "Resources/Splash.app/Contents";
        this.modifyInfoPListFile(descriptor, new File(initialRoot, splashContents), new File(target, splashContents), iconName);
        String splashMacOS = String.valueOf(splashContents) + "/MacOS";
        File macOSDir = new File(target, "MacOS");
        File splashMacOSDir = new File(target, splashMacOS);
        splashMacOSDir.mkdirs();
        File targetLauncher = new File(splashMacOSDir, this.name);
        int result = -1;
        String osName = System.getProperty("os.name");
        if (osName != null && !osName.startsWith("Windows")) {
            try {
                String[] command = new String[]{"ln", "-sf", "../../../MacOS/" + this.name, this.name};
                Process proc = Runtime.getRuntime().exec(command, null, splashMacOSDir);
                result = proc.waitFor();
            }
            catch (IOException iOException) {
            }
            catch (InterruptedException interruptedException) {}
        }
        if (result != 0) {
            try {
                org.eclipse.pde.internal.publishing.Utils.copy(new File(macOSDir, this.name), targetLauncher);
                try {
                    Runtime.getRuntime().exec(new String[]{"chmod", "755", targetLauncher.getAbsolutePath()});
                }
                catch (IOException iOException) {}
            }
            catch (IOException iOException) {
                System.out.println("Could not copy macosx splash launcher");
            }
        }
        if ((initialLauncher = this.findLauncher(new File(initialRoot, splashMacOS))) != null) {
            try {
                if (!initialLauncher.getCanonicalFile().equals(targetLauncher.getCanonicalFile())) {
                    initialLauncher.delete();
                }
            }
            catch (IOException iOException) {}
            descriptor.removeFile(initialLauncher);
        }
        descriptor.addFile(targetLauncher);
    }

    private File findLauncher(File root) {
        String[] stringArray = new String[]{"launcher", "eclipse"};
        int n = stringArray.length;
        int n2 = 0;
        while (n2 < n) {
            String launcherName = stringArray[n2];
            File launcher = new File(root, launcherName);
            if (launcher.exists()) {
                return launcher;
            }
            ++n2;
        }
        return null;
    }

    private void moveContents(ExecutablesDescriptor descriptor, File source, File target) {
        if (!source.exists()) {
            return;
        }
        try {
            source = source.getCanonicalFile();
            target = target.getCanonicalFile();
        }
        catch (IOException iOException) {
            System.out.println("Could not copy macosx resources.");
            return;
        }
        if (source.equals(target)) {
            return;
        }
        target.getParentFile().mkdirs();
        if (source.isDirectory()) {
            target.mkdirs();
            File[] contents = source.listFiles();
            int i = 0;
            while (i < contents.length) {
                File dest = new File(target, contents[i].getName());
                if (contents[i].isFile()) {
                    contents[i].renameTo(dest);
                    descriptor.replace(contents[i], dest);
                } else {
                    this.moveContents(descriptor, contents[i], dest);
                }
                ++i;
            }
            source.delete();
        } else {
            source.renameTo(target);
            descriptor.replace(source, target);
        }
    }

    private void brandWindows(ExecutablesDescriptor descriptor) throws Exception {
        File root = descriptor.getLocation();
        File templateLauncher = new File(root, String.valueOf(this.name) + ".exe");
        if (!templateLauncher.exists()) {
            templateLauncher = new File(root, "launcher.exe");
        }
        if (!templateLauncher.exists()) {
            templateLauncher = new File(root, "eclipse.exe");
        }
        if (this.brandIcons) {
            if (templateLauncher.exists()) {
                String[] args = new String[this.icons.length + 1];
                args[0] = templateLauncher.getAbsolutePath();
                System.arraycopy(this.icons, 0, args, 1, this.icons.length);
                IconExe.main(args);
            } else {
                System.out.println("Could not find executable to brand");
            }
        }
        File targetLauncher = new File(root, String.valueOf(this.name) + ".exe");
        if (templateLauncher.exists() && !templateLauncher.getName().equals(String.valueOf(this.name) + ".exe")) {
            templateLauncher.renameTo(targetLauncher);
            descriptor.replace(templateLauncher, targetLauncher);
        }
        descriptor.setExecutableName(this.name, true);
    }

    private void renameLauncher(ExecutablesDescriptor descriptor) {
        File root = descriptor.getLocation();
        File launcher = this.findLauncher(root);
        if (launcher == null) {
            return;
        }
        File targetLauncher = new File(root, this.name);
        launcher.renameTo(targetLauncher);
        descriptor.replace(launcher, targetLauncher);
        descriptor.setExecutableName(this.name, true);
    }

    private void copyMacLauncher(ExecutablesDescriptor descriptor, File initialRoot, File target) {
        File launcher = this.getCanonicalFile(new File(initialRoot, "MacOS/launcher"));
        File eclipseLauncher = this.getCanonicalFile(new File(initialRoot, "MacOS/eclipse"));
        File targetFile = this.getCanonicalFile(new File(target, "MacOS/" + this.name));
        if (!launcher.exists()) {
            launcher = eclipseLauncher;
        } else if (eclipseLauncher.exists() && !targetFile.equals(eclipseLauncher)) {
            eclipseLauncher.delete();
            descriptor.removeFile(eclipseLauncher);
        }
        if (!targetFile.equals(launcher)) {
            try {
                org.eclipse.pde.internal.publishing.Utils.copy(launcher, targetFile);
            }
            catch (IOException iOException) {
                System.out.println("Could not copy macosx launcher");
                return;
            }
            launcher.delete();
            launcher.getParentFile().delete();
            descriptor.replace(launcher, targetFile);
        }
        try {
            Runtime.getRuntime().exec(new String[]{"chmod", "755", targetFile.getAbsolutePath()});
        }
        catch (IOException iOException) {}
        descriptor.setExecutableName(this.name, false);
    }

    private File getCanonicalFile(File file) {
        try {
            return file.getCanonicalFile();
        }
        catch (IOException iOException) {
            return file;
        }
    }

    private void copyMacIni(ExecutablesDescriptor descriptor, File initialRoot, File target, String iconName) {
        int xdoc;
        StringBuffer buffer;
        String brandedIniName = "MacOS/" + this.name + ".ini";
        File targetFile = this.getCanonicalFile(new File(target, brandedIniName));
        File brandedIni = this.getCanonicalFile(new File(initialRoot, brandedIniName));
        File ini = this.getCanonicalFile(new File(initialRoot, "MacOS/eclipse.ini"));
        File ini2 = this.getCanonicalFile(new File(initialRoot, "MacOS/Eclipse.ini"));
        if (targetFile.exists()) {
            if (brandedIni.exists() && !brandedIni.equals(targetFile)) {
                brandedIni.delete();
                descriptor.removeFile(brandedIni);
            }
            if (ini.exists() && !ini.equals(targetFile)) {
                ini.delete();
                descriptor.removeFile(ini);
            }
            if (ini2.exists() && !ini2.equals(targetFile)) {
                ini2.delete();
                descriptor.removeFile(ini2);
            }
            ini = targetFile;
        } else if (brandedIni.exists()) {
            if (ini.exists() && !ini.equals(brandedIni)) {
                ini.delete();
                descriptor.removeFile(ini);
            }
            if (ini2.exists() && !ini2.equals(brandedIni)) {
                ini2.delete();
                descriptor.removeFile(ini2);
            }
            ini = brandedIni;
        } else if (ini.exists()) {
            if (ini2.exists() && !ini2.equals(ini)) {
                System.out.printf("Found both %s and %s - discarding the latter", ini.getAbsolutePath(), ini2.getAbsolutePath());
                ini2.delete();
                descriptor.removeFile(ini2);
            }
        } else if (ini2.exists()) {
            ini = ini2;
        } else {
            return;
        }
        try {
            buffer = this.readFile(ini);
        }
        catch (IOException iOException) {
            System.out.println("Impossible to brand ini file");
            return;
        }
        if (iconName.length() > 0 && (xdoc = this.scan(buffer, 0, XDOC_ICON)) != -1) {
            String icns = XDOC_ICON_PREFIX + iconName;
            buffer.replace(xdoc, xdoc + XDOC_ICON.length(), icns);
        }
        try {
            this.transferStreams(new ByteArrayInputStream(buffer.toString().getBytes()), new FileOutputStream(targetFile));
            if (!ini.equals(targetFile)) {
                ini.delete();
                descriptor.replace(ini, targetFile);
            }
        }
        catch (FileNotFoundException fileNotFoundException) {
            System.out.println("Impossible to brand ini file");
            return;
        }
        catch (IOException iOException) {
            System.out.println("Impossible to brand ini file");
            return;
        }
    }

    private void modifyInfoPListFile(ExecutablesDescriptor descriptor, File initialRoot, File targetRoot, String iconName) {
        int iconPos;
        StringBuffer buffer;
        File infoPList = new File(initialRoot, "Info.plist");
        try {
            buffer = this.readFile(infoPList);
        }
        catch (IOException iOException) {
            System.out.println("Impossible to brand info.plist file");
            return;
        }
        int exePos = this.scan(buffer, 0, MARKER_NAME);
        if (exePos != -1) {
            buffer.replace(exePos, exePos + MARKER_NAME.length(), this.name);
        } else {
            this.replacePlistValue(buffer, MARKER_KEY, this.name);
        }
        int bundlePos = this.scan(buffer, 0, BUNDLE_NAME);
        if (bundlePos != -1) {
            buffer.replace(bundlePos, bundlePos + BUNDLE_NAME.length(), this.name);
        } else {
            this.replacePlistValue(buffer, BUNDLE_KEY, this.name);
        }
        this.replacePlistValue(buffer, BUNDLE_ID_KEY, this.id);
        this.replacePlistValue(buffer, BUNDLE_INFO_KEY, this.description);
        if (this.version != null) {
            StringBuffer sv = new StringBuffer(this.version.getSegment(0).toString());
            sv.append('.');
            sv.append(this.version.getSegmentCount() > 1 ? this.version.getSegment(1).toString() : "0");
            sv.append('.');
            sv.append(this.version.getSegmentCount() > 2 ? this.version.getSegment(2).toString() : "0");
            this.replacePlistValue(buffer, BUNDLE_VERSION_KEY, this.version.toString());
            this.replacePlistValue(buffer, BUNDLE_SHORT_VERSION_KEY, sv.toString());
        }
        if ((iconPos = this.scan(buffer, 0, ICON_NAME)) != -1) {
            buffer.replace(iconPos, iconPos + ICON_NAME.length(), iconName);
        } else {
            this.replacePlistValue(buffer, ICON_KEY, iconName);
        }
        File target = new File(targetRoot, "Info.plist");
        try {
            target.getParentFile().mkdirs();
            this.transferStreams(new ByteArrayInputStream(buffer.toString().getBytes()), new FileOutputStream(target));
        }
        catch (FileNotFoundException fileNotFoundException) {
            System.out.println("Impossible to brand info.plist file");
            return;
        }
        catch (IOException iOException) {
            System.out.println("Impossible to brand info.plist file");
            return;
        }
        try {
            if (!infoPList.getCanonicalFile().equals(target.getCanonicalFile())) {
                infoPList.delete();
            }
        }
        catch (IOException iOException) {}
        descriptor.replace(infoPList, target);
    }

    private void replacePlistValue(StringBuffer buffer, String key, String value) {
        if (value == null) {
            return;
        }
        int exePos = this.scan(buffer, 0, key);
        if (exePos != -1) {
            int start = this.scan(buffer, exePos + key.length(), STRING_START);
            int end = this.scan(buffer, start + STRING_START.length(), STRING_END);
            if (start > -1 && end > start) {
                buffer.replace(start + STRING_START.length(), end, value);
            }
        }
    }

    private int scan(StringBuffer buf, int start, String targetName) {
        return this.scan(buf, start, new String[]{targetName});
    }

    private int scan(StringBuffer buf, int start, String[] targets) {
        int i = start;
        while (i < buf.length()) {
            int j = 0;
            while (j < targets.length) {
                String match;
                if (i < buf.length() - targets[j].length() && targets[j].equalsIgnoreCase(match = buf.substring(i, i + targets[j].length()))) {
                    return i;
                }
                ++j;
            }
            ++i;
        }
        return -1;
    }

    private StringBuffer readFile(File targetName) throws IOException {
        InputStreamReader reader = new InputStreamReader(new BufferedInputStream(new FileInputStream(targetName)));
        StringBuffer result = new StringBuffer();
        char[] buf = new char[4096];
        try {
            int count = reader.read(buf, 0, buf.length);
            while (count != -1) {
                result.append(buf, 0, count);
                count = reader.read(buf, 0, buf.length);
            }
        }
        catch (Throwable throwable) {
            try {
                reader.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            reader.close();
        }
        catch (IOException iOException) {}
        return result;
    }

    private void transferStreams(InputStream source, OutputStream destination) throws IOException {
        source = new BufferedInputStream(source);
        destination = new BufferedOutputStream(destination);
        try {
            byte[] buffer = new byte[8192];
            while (true) {
                int bytesRead = -1;
                bytesRead = source.read(buffer);
                if (bytesRead != -1) {
                    destination.write(buffer, 0, bytesRead);
                    continue;
                }
                break;
            }
        }
        catch (Throwable throwable) {
            try {
                source.close();
            }
            catch (IOException iOException) {}
            try {
                destination.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            source.close();
        }
        catch (IOException iOException) {}
        try {
            destination.close();
        }
        catch (IOException iOException) {}
    }

    public void setOS(String value) {
        this.os = value;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setVersion(Version version) {
        this.version = version;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}

