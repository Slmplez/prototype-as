/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.frameworkadmin.utils.Utils
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException
 *  org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxLauncherData;
import org.eclipse.equinox.internal.frameworkadmin.equinox.EquinoxManipulatorImpl;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Log;
import org.eclipse.equinox.internal.frameworkadmin.equinox.Messages;
import org.eclipse.equinox.internal.frameworkadmin.equinox.ParserUtils;
import org.eclipse.equinox.internal.frameworkadmin.equinox.utils.FileUtils;
import org.eclipse.equinox.internal.frameworkadmin.utils.Utils;
import org.eclipse.equinox.internal.provisional.frameworkadmin.FrameworkAdminRuntimeException;
import org.eclipse.equinox.internal.provisional.frameworkadmin.LauncherData;
import org.eclipse.osgi.util.NLS;

public class EclipseLauncherParser {
    private static final String MAC_OS_APP_FOLDER = ".app/Contents/MacOS";
    private static final String CONFIGURATION_FOLDER = "configuration";

    private URI getOSGiInstallArea(List lines, URI base, LauncherData launcherData) {
        File osgiInstallArea = ParserUtils.getOSGiInstallArea(lines, null, base);
        if (osgiInstallArea == null) {
            osgiInstallArea = ParserUtils.getOSGiInstallArea(lines, null, launcherData);
        }
        if (osgiInstallArea != null) {
            return URIUtil.makeAbsolute((URI)osgiInstallArea.toURI(), (URI)base);
        }
        return null;
    }

    private void setInstall(List lines, LauncherData launcherData, File launcherFolder) {
        if (launcherData.getFwConfigLocation() == null || launcherData.getFwJar() == null) {
            ParserUtils.removeArgument("-install", lines);
            return;
        }
        String launcherString = launcherFolder.getAbsolutePath().replace('\\', '/');
        if (launcherString.endsWith(MAC_OS_APP_FOLDER)) {
            launcherFolder = launcherFolder.getParentFile().getParentFile().getParentFile();
        }
        if (!ParserUtils.fromOSGiJarToOSGiInstallArea(launcherData.getFwJar().getAbsolutePath()).equals(launcherFolder)) {
            ParserUtils.setValueForArgument("-install", launcherFolder.getAbsolutePath().replace('\\', '/'), lines);
        }
    }

    void read(File launcherConfigFile, LauncherData launcherData) throws IOException {
        URI configArea;
        if (!launcherConfigFile.exists()) {
            return;
        }
        List lines = FileUtils.loadFile(launcherConfigFile);
        URI launcherFolder = launcherData.getLauncher().getParentFile().toURI();
        this.getStartup(lines, launcherFolder);
        this.getFrameworkJar(lines, launcherFolder, launcherData);
        URI osgiInstallArea = this.getOSGiInstallArea(lines, launcherFolder, launcherData);
        if (osgiInstallArea == null) {
            URI uRI = osgiInstallArea = launcherData.getFwJar() != null ? ParserUtils.fromOSGiJarToOSGiInstallArea(launcherData.getFwJar().getAbsolutePath()).toURI() : launcherFolder;
        }
        if ((configArea = this.getConfigurationLocation(lines, osgiInstallArea, launcherData)) == null) {
            throw new FrameworkAdminRuntimeException(Messages.exception_nullConfigArea, "");
        }
        this.getPersistentDataLocation(lines, osgiInstallArea, configArea, launcherData);
        this.getLauncherLibrary(lines, launcherFolder);
        this.getJVMArgs(lines, launcherData);
        this.getProgramArgs(lines, launcherData);
        this.getVM(lines, launcherFolder, launcherData);
        Log.log(3, NLS.bind((String)Messages.log_configFile, (Object)launcherConfigFile.getAbsolutePath()));
    }

    private void getFrameworkJar(List lines, URI launcherFolder, LauncherData launcherData) {
        File fwJar = launcherData.getFwJar();
        if (fwJar != null) {
            return;
        }
        URI location = ParserUtils.getFrameworkJar(lines, launcherFolder);
        if (location != null) {
            launcherData.setFwJar(URIUtil.toFile((URI)location));
        }
    }

    private void getPersistentDataLocation(List lines, URI osgiInstallArea, URI configArea, LauncherData launcherData) {
        if (launcherData.getFwPersistentDataLocation() == null) {
            launcherData.setFwPersistentDataLocation(URIUtil.toFile((URI)configArea), ParserUtils.isArgumentSet("-clean", lines));
        }
    }

    private void getVM(List lines, URI launcherFolder, LauncherData launcherData) {
        String vm = ParserUtils.getValueForArgument("-vm", lines);
        if (vm == null) {
            return;
        }
        try {
            URI VMFullPath = URIUtil.makeAbsolute((URI)FileUtils.fromPath(vm), (URI)launcherFolder);
            launcherData.setJvm(URIUtil.toFile((URI)VMFullPath));
            ParserUtils.setValueForArgument("-vm", VMFullPath.toString(), lines);
        }
        catch (URISyntaxException uRISyntaxException) {
            Log.log(1, NLS.bind((String)Messages.log_failed_make_absolute, (Object)vm));
            return;
        }
    }

    private void setVM(List lines, File vm, URI launcherFolder) {
        if (vm == null) {
            if (ParserUtils.getValueForArgument("-vm", lines) != null) {
                return;
            }
            ParserUtils.removeArgument("-vm", lines);
            return;
        }
        URI vmRelativePath = null;
        if (vm.isAbsolute()) {
            vmRelativePath = launcherFolder.relativize(vm.toURI());
        } else {
            String path = vm.getPath().replace('\\', '/');
            try {
                vmRelativePath = URIUtil.fromString((String)path);
            }
            catch (URISyntaxException uRISyntaxException) {
                vmRelativePath = launcherFolder.relativize(vm.toURI());
            }
        }
        ParserUtils.setValueForArgument("-vm", FileUtils.toPath(vmRelativePath).replace('\\', '/'), lines);
    }

    private void getJVMArgs(List lines, LauncherData launcherData) {
        ArrayList<String> vmargs = new ArrayList<String>(lines.size());
        boolean foundVmArgs = false;
        Iterator iterator = lines.iterator();
        while (iterator.hasNext()) {
            String line = (String)iterator.next();
            if (!foundVmArgs) {
                if (!"-vmargs".equals(line)) continue;
                foundVmArgs = true;
                continue;
            }
            vmargs.add(line);
        }
        launcherData.setJvmArgs(null);
        launcherData.setJvmArgs(vmargs.toArray(new String[vmargs.size()]));
    }

    private void setJVMArgs(List lines, LauncherData launcherData) {
        ParserUtils.removeArgument("-vmargs", lines);
        if (launcherData.getJvmArgs() == null || launcherData.getJvmArgs().length == 0) {
            return;
        }
        String[] args = launcherData.getJvmArgs();
        lines.add("-vmargs");
        int i = 0;
        while (i < args.length) {
            lines.add(args[i]);
            ++i;
        }
    }

    private void getProgramArgs(List lines, LauncherData launcherData) {
        ArrayList<String> args = new ArrayList<String>(lines.size());
        Iterator iterator = lines.iterator();
        while (iterator.hasNext()) {
            String line = (String)iterator.next();
            if ("-vmargs".equals(line)) break;
            args.add(line);
        }
        launcherData.setProgramArgs(null);
        launcherData.setProgramArgs(args.toArray(new String[args.size()]));
    }

    private URI getLauncherLibrary(List lines, URI launcherFolder) {
        String launcherLibrary = ParserUtils.getValueForArgument("--launcher.library", lines);
        if (launcherLibrary == null) {
            return null;
        }
        URI result = null;
        try {
            result = URIUtil.makeAbsolute((URI)FileUtils.fromPath(launcherLibrary), (URI)launcherFolder);
            ParserUtils.setValueForArgument("--launcher.library", result.toString(), lines);
        }
        catch (URISyntaxException uRISyntaxException) {
            Log.log(1, NLS.bind((String)Messages.log_failed_make_absolute, (Object)launcherLibrary));
            return null;
        }
        return result;
    }

    private void setLauncherLibrary(List lines, URI launcherFolder) {
        String launcherLibrary = ParserUtils.getValueForArgument("--launcher.library", lines);
        if (launcherLibrary == null) {
            return;
        }
        try {
            URI result = URIUtil.makeRelative((URI)FileUtils.fromPath(launcherLibrary), (URI)launcherFolder);
            ParserUtils.setValueForArgument("--launcher.library", FileUtils.toPath(result).replace('\\', '/'), lines);
        }
        catch (URISyntaxException uRISyntaxException) {
            Log.log(1, NLS.bind((String)Messages.log_failed_make_absolute, (Object)launcherLibrary));
            return;
        }
    }

    private URI getConfigurationLocation(List lines, URI osgiInstallArea, LauncherData data) {
        String configuration = ParserUtils.getValueForArgument("-configuration", lines);
        if (configuration == null) {
            try {
                return URIUtil.makeAbsolute((URI)new URI(CONFIGURATION_FOLDER), (URI)osgiInstallArea);
            }
            catch (URISyntaxException uRISyntaxException) {}
        }
        URI result = null;
        try {
            result = URIUtil.makeAbsolute((URI)FileUtils.fromPath(configuration), (URI)osgiInstallArea);
            ParserUtils.setValueForArgument("-configuration", result.toString(), lines);
            data.setFwConfigLocation(URIUtil.toFile((URI)result));
        }
        catch (URISyntaxException uRISyntaxException) {
            Log.log(1, NLS.bind((String)Messages.log_failed_make_absolute, (Object)configuration));
            return null;
        }
        return result;
    }

    private void setConfigurationLocation(List lines, URI osgiInstallArea, LauncherData data) {
        String result = FileUtils.toPath(URIUtil.makeRelative((URI)data.getFwConfigLocation().toURI(), (URI)osgiInstallArea));
        if (CONFIGURATION_FOLDER.equals(result)) {
            if (ParserUtils.getValueForArgument("-configuration", lines) != null) {
                ParserUtils.removeArgument("-configuration", lines);
            }
            return;
        }
        if (ParserUtils.getValueForArgument("-configuration", lines) == null) {
            ParserUtils.setValueForArgument("-configuration", result.replace('\\', '/'), lines);
        }
    }

    private URI getStartup(List lines, URI launcherFolder) {
        String startup = ParserUtils.getValueForArgument("-startup", lines);
        if (startup == null) {
            return null;
        }
        URI result = null;
        try {
            result = URIUtil.makeAbsolute((URI)FileUtils.fromPath(startup), (URI)launcherFolder);
            ParserUtils.setValueForArgument("-startup", result.toString(), lines);
        }
        catch (URISyntaxException uRISyntaxException) {
            Log.log(1, NLS.bind((String)Messages.log_failed_make_absolute, (Object)startup));
            return null;
        }
        return result;
    }

    private void setStartup(List lines, URI launcherFolder) {
        String startup = ParserUtils.getValueForArgument("-startup", lines);
        if (startup == null) {
            return;
        }
        try {
            URI result = URIUtil.makeRelative((URI)FileUtils.fromPath(startup), (URI)launcherFolder);
            ParserUtils.setValueForArgument("-startup", FileUtils.toPath(result).replace('\\', '/'), lines);
        }
        catch (URISyntaxException uRISyntaxException) {
            Log.log(1, NLS.bind((String)Messages.log_failed_make_relative, (Object)startup));
            return;
        }
    }

    void save(EquinoxLauncherData launcherData, boolean backup) throws IOException {
        File previousLauncherIni;
        File launcherConfigFile = EquinoxManipulatorImpl.getLauncherConfigLocation(launcherData);
        if (launcherConfigFile == null) {
            throw new IllegalStateException(Messages.exception_launcherLocationNotSet);
        }
        if (!Utils.createParentDir((File)launcherConfigFile)) {
            throw new IllegalStateException(Messages.exception_failedToCreateDir);
        }
        File launcherFolder = launcherData.getLauncher().getParentFile();
        ArrayList<String> newlines = new ArrayList<String>();
        newlines.addAll(Arrays.asList(launcherData.getProgramArgs()));
        this.setStartup(newlines, launcherFolder.toURI());
        this.setInstall(newlines, launcherData, launcherFolder);
        File osgiInstallArea = ParserUtils.getOSGiInstallArea(newlines, null, launcherData);
        this.setConfigurationLocation(newlines, osgiInstallArea.toURI(), launcherData);
        this.setLauncherLibrary(newlines, launcherFolder.toURI());
        this.setVM(newlines, launcherData.getJvm(), launcherFolder.toURI());
        launcherData.setProgramArgs(null);
        launcherData.setProgramArgs(newlines.toArray(new String[newlines.size()]));
        this.setJVMArgs(newlines, launcherData);
        if (backup && launcherConfigFile.exists()) {
            File dest = Utils.getSimpleDataFormattedFile((File)launcherConfigFile);
            if (!launcherConfigFile.renameTo(dest)) {
                throw new IOException(NLS.bind((String)Messages.exception_failedToRename, (Object)launcherConfigFile, (Object)dest));
            }
            Log.log(3, (Object)this, "save()", NLS.bind((String)Messages.log_renameSuccessful, (Object)launcherConfigFile, (Object)dest));
        }
        if (newlines.size() > 0) {
            BufferedWriter bw = null;
            try {
                bw = new BufferedWriter(new FileWriter(launcherConfigFile));
                int j = 0;
                while (j < newlines.size()) {
                    String arg = (String)newlines.get(j);
                    if (arg != null) {
                        bw.write(arg);
                        bw.newLine();
                    }
                    ++j;
                }
                bw.flush();
                Log.log(3, NLS.bind((String)Messages.log_launcherConfigSave, (Object)launcherConfigFile));
            }
            finally {
                if (bw != null) {
                    bw.close();
                }
            }
        }
        if ((previousLauncherIni = launcherData.getPreviousLauncherIni()) != null && !previousLauncherIni.equals(launcherConfigFile)) {
            previousLauncherIni.delete();
        }
        launcherData.setLauncherConfigLocation(launcherConfigFile);
    }
}

