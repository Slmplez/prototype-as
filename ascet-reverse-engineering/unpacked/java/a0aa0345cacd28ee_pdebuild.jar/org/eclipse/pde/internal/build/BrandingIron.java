/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.pde.internal.swt.tools.IconExe
 */
package org.eclipse.pde.internal.build;

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
import org.eclipse.pde.internal.build.IXMLConstants;
import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.swt.tools.IconExe;

public class BrandingIron
implements IXMLConstants {
    private static final String MARKER_NAME = "%EXECUTABLE_NAME%";
    private static final String BUNDLE_NAME = "%BUNDLE_NAME%";
    private static final String ICON_NAME = "%ICON_NAME%";
    private static final String MARKER_KEY = "<key>CFBundleExecutable</key>";
    private static final String BUNDLE_KEY = "<key>CFBundleName</key>";
    private static final String ICON_KEY = "<key>CFBundleIconFile</key>";
    private static final String STRING_START = "<string>";
    private static final String STRING_END = "</string>";
    private static final String XDOC_ICON = "-Xdock:icon=../Resources/Eclipse.icns";
    private String[] icons = null;
    private String root;
    private String name;
    private String os = "win32";
    private boolean brandIcons = true;

    public void setName(String value) {
        this.name = value;
    }

    public void setIcons(String value) {
        this.icons = value.split(",\\s*");
        if (this.icons[0].startsWith("${")) {
            if (this.icons.length > 1) {
                String[] temp = new String[this.icons.length - 1];
                System.arraycopy(this.icons, 1, temp, 0, temp.length);
                this.icons = temp;
            } else {
                this.icons = null;
            }
        }
    }

    public void setRoot(String value) {
        this.root = value;
    }

    public void brand() throws Exception {
        String testName;
        if (this.name.startsWith("${")) {
            return;
        }
        if (this.icons == null || this.icons[0].startsWith("${")) {
            this.brandIcons = false;
        }
        String string = testName = this.os.equals("win32") ? String.valueOf(this.name) + ".exe" : this.name;
        if (!new File(this.root).exists() || !this.brandIcons && new File(this.root, testName).exists()) {
            return;
        }
        if ("win32".equals(this.os)) {
            this.brandWindows();
        } else if ("linux".equals(this.os)) {
            this.brandLinux();
        } else if ("solaris".equals(this.os)) {
            this.brandSolaris();
        } else if ("macosx".equals(this.os)) {
            this.brandMac();
        } else if ("aix".equals(this.os)) {
            this.brandAIX();
        } else if ("hpux".equals(this.os)) {
            this.brandHPUX();
        } else {
            this.renameLauncher();
        }
    }

    private void brandAIX() {
        this.renameLauncher();
    }

    private void brandHPUX() {
        this.renameLauncher();
    }

    private void brandLinux() throws Exception {
        this.renameLauncher();
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
            } else {
                icon = new File(this.icons[0]);
            }
            if (icon != null) {
                Utils.copy(icon, new File(this.root, "icon.xpm"));
            }
        }
    }

    private void brandSolaris() throws Exception {
        this.renameLauncher();
        if (!this.brandIcons) {
            return;
        }
        int i = 0;
        while (i < this.icons.length) {
            String icon = this.icons[i];
            if (icon.endsWith(".l.pm")) {
                Utils.copy(new File(icon), new File(this.root, String.valueOf(this.name) + ".l.pm"));
            }
            if (icon.endsWith(".m.pm")) {
                Utils.copy(new File(icon), new File(this.root, String.valueOf(this.name) + ".m.pm"));
            }
            if (icon.endsWith(".s.pm")) {
                Utils.copy(new File(icon), new File(this.root, String.valueOf(this.name) + ".s.pm"));
            }
            if (icon.endsWith(".t.pm")) {
                Utils.copy(new File(icon), new File(this.root, String.valueOf(this.name) + ".t.pm"));
            }
            ++i;
        }
    }

    private void brandMac() throws Exception {
        File targetFolder;
        File rootFolder;
        String target = String.valueOf(this.root) + '/' + this.name + ".app/Contents";
        new File(target).mkdirs();
        new File(String.valueOf(target) + "/MacOS").mkdirs();
        new File(String.valueOf(target) + "/Resources").mkdirs();
        String initialRoot = String.valueOf(this.root) + "/Eclipse.app/Contents";
        this.copyMacLauncher(initialRoot, target);
        String iconName = "";
        File splashApp = new File(initialRoot, "Resources/Splash.app");
        if (this.brandIcons) {
            File icon = null;
            if (this.icons.length > 1) {
                int i = 0;
                while (i < this.icons.length) {
                    if (this.icons[i].toLowerCase().endsWith(".icns")) {
                        icon = new File(this.icons[i]);
                        break;
                    }
                    ++i;
                }
            } else {
                icon = new File(this.icons[0]);
            }
            iconName = icon.getName();
            Utils.copy(icon, new File(String.valueOf(target) + "/Resources/" + icon.getName()));
            new File(String.valueOf(initialRoot) + "/Resources/Eclipse.icns").delete();
            if (!splashApp.exists()) {
                new File(String.valueOf(initialRoot) + "/Resources/").delete();
            }
        }
        this.copyMacIni(initialRoot, target, iconName);
        this.modifyInfoPListFile(initialRoot, target, iconName);
        if (splashApp.exists()) {
            this.brandMacSplash(initialRoot, target, iconName);
        }
        if (!(rootFolder = this.getCanonicalFile(new File(initialRoot))).equals(targetFolder = this.getCanonicalFile(new File(target)))) {
            rootFolder.delete();
            if (rootFolder.exists()) {
                this.moveContents(rootFolder, targetFolder);
            }
            rootFolder.getParentFile().delete();
        }
    }

    private void brandMacSplash(String initialRoot, String target, String iconName) {
        String splashContents = "/Resources/Splash.app/Contents";
        this.modifyInfoPListFile(String.valueOf(initialRoot) + splashContents, String.valueOf(target) + splashContents, iconName);
        int result = -1;
        String osName = System.getProperty("os.name");
        if (osName != null && !osName.startsWith("Windows")) {
            try {
                String[] command = new String[]{"ln", "-sf", "../../../MacOS/" + this.name, "MacOS/" + this.name};
                File linkDir = new File(target, splashContents);
                Process proc = Runtime.getRuntime().exec(command, null, linkDir);
                result = proc.waitFor();
            }
            catch (IOException iOException) {
            }
            catch (InterruptedException interruptedException) {}
        }
        if (result != 0) {
            File macOSDir = new File(target, "MacOS");
            File splashMacOSDir = new File(target, String.valueOf(splashContents) + "/MacOS");
            splashMacOSDir.mkdirs();
            try {
                File targetFile = new File(splashMacOSDir, this.name);
                Utils.copy(new File(macOSDir, this.name), targetFile);
                try {
                    Runtime.getRuntime().exec(new String[]{"chmod", "755", targetFile.getAbsolutePath()});
                }
                catch (IOException iOException) {}
            }
            catch (IOException iOException) {
                System.out.println("Could not copy macosx splash launcher");
            }
        }
    }

    private void moveContents(File source, File target) {
        if (!source.exists()) {
            return;
        }
        try {
            if (source.getCanonicalFile().equals(target.getCanonicalFile())) {
                return;
            }
        }
        catch (IOException iOException) {
            System.out.println("Could not copy macosx resources.");
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
                } else {
                    this.moveContents(contents[i], dest);
                }
                ++i;
            }
            source.delete();
        } else {
            source.renameTo(target);
        }
    }

    private void brandWindows() throws Exception {
        File templateLauncher = new File(this.root, String.valueOf(this.name) + ".exe");
        if (!templateLauncher.exists()) {
            templateLauncher = new File(this.root, "launcher.exe");
        }
        if (!templateLauncher.exists()) {
            templateLauncher = new File(this.root, "eclipse.exe");
        }
        if (this.brandIcons) {
            if (templateLauncher.exists()) {
                String[] args = new String[this.icons.length + 1];
                args[0] = templateLauncher.getAbsolutePath();
                System.arraycopy(this.icons, 0, args, 1, this.icons.length);
                IconExe.main((String[])args);
            } else {
                System.out.println("Warning: Could not find executable to brand.");
            }
        }
        if (templateLauncher.exists() && !templateLauncher.getName().equals(String.valueOf(this.name) + ".exe")) {
            templateLauncher.renameTo(new File(this.root, String.valueOf(this.name) + ".exe"));
        }
    }

    private void renameLauncher() {
        if (!new File(this.root, "launcher").renameTo(new File(this.root, this.name))) {
            new File(this.root, "eclipse").renameTo(new File(this.root, this.name));
        }
    }

    private void copyMacLauncher(String initialRoot, String target) {
        String targetLauncher = String.valueOf(target) + "/MacOS/";
        File launcher = this.getCanonicalFile(new File(String.valueOf(initialRoot) + "/MacOS/launcher"));
        File eclipseLauncher = this.getCanonicalFile(new File(String.valueOf(initialRoot) + "/MacOS/eclipse"));
        File targetFile = this.getCanonicalFile(new File(targetLauncher, this.name));
        if (!launcher.exists()) {
            launcher = eclipseLauncher;
        } else if (eclipseLauncher.exists() && !targetFile.equals(eclipseLauncher)) {
            eclipseLauncher.delete();
        }
        try {
            if (targetFile.equals(launcher)) {
                try {
                    Runtime.getRuntime().exec(new String[]{"chmod", "755", targetFile.getAbsolutePath()});
                }
                catch (IOException iOException) {}
                return;
            }
            Utils.copy(launcher, targetFile);
        }
        catch (IOException iOException) {
            System.out.println("Could not copy macosx launcher");
            return;
        }
        try {
            Runtime.getRuntime().exec(new String[]{"chmod", "755", targetFile.getAbsolutePath()});
        }
        catch (IOException iOException) {}
        launcher.delete();
        launcher.getParentFile().delete();
    }

    private File getCanonicalFile(File file) {
        try {
            return file.getCanonicalFile();
        }
        catch (IOException iOException) {
            return file;
        }
    }

    private void copyMacIni(String initialRoot, String target, String iconName) {
        int xdoc;
        StringBuffer buffer;
        File targetFile = this.getCanonicalFile(new File(target, "/MacOS/" + this.name + ".ini"));
        File brandedIni = this.getCanonicalFile(new File(initialRoot, "/MacOS/" + this.name + ".ini"));
        File ini = this.getCanonicalFile(new File(initialRoot, "/MacOS/eclipse.ini"));
        if (targetFile.exists()) {
            if (brandedIni.exists() && !brandedIni.equals(targetFile)) {
                brandedIni.delete();
            }
            if (ini.exists() && !ini.equals(targetFile)) {
                ini.delete();
            }
            ini = targetFile;
        } else if (brandedIni.exists()) {
            if (ini.exists() && !ini.equals(brandedIni)) {
                ini.delete();
            }
            ini = brandedIni;
        } else if (!ini.exists()) {
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
            String icns = XDOC_ICON.replaceFirst("Eclipse.icns", iconName);
            buffer.replace(xdoc, xdoc + XDOC_ICON.length(), icns);
        }
        try {
            this.transferStreams(new ByteArrayInputStream(buffer.toString().getBytes()), new FileOutputStream(targetFile));
            if (!ini.equals(targetFile)) {
                ini.delete();
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

    private void modifyInfoPListFile(String initialRoot, String targetRoot, String iconName) {
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
            exePos = this.scan(buffer, 0, MARKER_KEY);
            if (exePos != -1) {
                int start = this.scan(buffer, exePos + MARKER_KEY.length(), STRING_START);
                int end = this.scan(buffer, start + STRING_START.length(), STRING_END);
                if (start > -1 && end > start) {
                    buffer.replace(start + STRING_START.length(), end, this.name);
                }
            }
        }
        int bundlePos = this.scan(buffer, 0, BUNDLE_NAME);
        if (bundlePos != -1) {
            buffer.replace(bundlePos, bundlePos + BUNDLE_NAME.length(), this.name);
        } else {
            exePos = this.scan(buffer, 0, BUNDLE_KEY);
            if (exePos != -1) {
                int start = this.scan(buffer, exePos + BUNDLE_KEY.length(), STRING_START);
                int end = this.scan(buffer, start + STRING_START.length(), STRING_END);
                if (start > -1 && end > start) {
                    buffer.replace(start + STRING_START.length(), end, this.name);
                }
            }
        }
        int iconPos = this.scan(buffer, 0, ICON_NAME);
        if (iconPos != -1) {
            buffer.replace(iconPos, iconPos + ICON_NAME.length(), iconName);
        } else {
            exePos = this.scan(buffer, 0, ICON_KEY);
            if (exePos != -1) {
                int start = this.scan(buffer, exePos + ICON_KEY.length(), STRING_START);
                int end = this.scan(buffer, start + STRING_START.length(), STRING_END);
                if (start > -1 && end > start) {
                    buffer.replace(start + STRING_START.length(), end, iconName);
                }
            }
        }
        File target = null;
        try {
            target = new File(targetRoot, "Info.plist");
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
}

