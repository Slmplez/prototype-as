/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.packager;

import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.BundleHelper;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;

public class FetchFileGenerator
extends AbstractScriptGenerator {
    private static final String ENTRY_SEPARATOR = "%";
    private static final String FILTER_SEPARATOR = "&";
    private static final String DATA_SEPARATOR = "|";
    private static final String UNKNOWN = "*";
    private String[] filters;
    private String mapLocation;
    private String collectedFiles;
    private String[] componentFilter;
    private Properties mapContent;

    private void displayDebugInfo() {
        if (!BundleHelper.getDefault().isDebugging()) {
            return;
        }
        System.out.println("Filters: " + (this.filters != null ? Utils.getStringFromArray(this.filters, ", ") : "NONE"));
        System.out.println("Component filter: " + (this.componentFilter != null ? Utils.getStringFromArray(this.componentFilter, ", ") : "NONE"));
        System.out.println("Map location: " + this.mapLocation);
    }

    public void generate() throws CoreException {
        this.collectedFiles = "";
        this.displayDebugInfo();
        this.openScript(workingDirectory, "fetch.xml");
        this.generatePrologue();
        try {
            this.processMapFile();
            this.writeDirectory();
            this.generateEpilogue();
        }
        finally {
            this.closeScript();
        }
    }

    private void generatePrologue() {
        this.script.printProjectDeclaration("Packager' File fetcher", "main", ".");
        this.script.println();
        this.script.printTargetDeclaration("main", null, null, null, null);
    }

    private void generateEpilogue() {
        this.script.printTargetEnd();
        this.script.printProjectEnd();
        this.script.close();
    }

    public void generateFetchFileFor(String fileName, String baseurl, String loginInfo) {
        String login = null;
        String password = null;
        String[] login_password = Utils.getArrayFromString(loginInfo, ":");
        if (login_password.length == 2) {
            login = login_password[0];
            password = login_password[1];
        } else {
            Status status = new Status(2, "org.eclipse.pde.build", 1, NLS.bind((String)Messages.warning_missingPassword, (Object)fileName), null);
            BundleHelper.getDefault().getLog().log((IStatus)status);
        }
        this.script.printGet(String.valueOf(baseurl) + fileName, String.valueOf(Utils.getPropertyFormat("downloadDirectory")) + '/' + fileName, login, password, true);
    }

    public void setContentFilter(String filters) {
        this.filters = Utils.getArrayFromStringWithBlank(filters, ",");
    }

    public void setMapLocation(String mapLocation) {
        this.mapLocation = mapLocation;
    }

    private void writeDirectory() throws CoreException {
        Properties selectedFiles = new Properties();
        selectedFiles.put("toUnzip", this.collectedFiles);
        try {
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(String.valueOf(workingDirectory) + '/' + "packager.directory.txt"));
            try {
                selectedFiles.store(stream, null);
            }
            finally {
                ((OutputStream)stream).close();
            }
        }
        catch (FileNotFoundException e) {
            String message = NLS.bind((String)Messages.exception_writingFile, (Object)(String.valueOf(workingDirectory) + '/' + "packager.directory.txt"));
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
        }
        catch (IOException e) {
            String message = NLS.bind((String)Messages.exception_writingFile, (Object)(String.valueOf(workingDirectory) + '/' + "packager.directory.txt"));
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 12, message, (Throwable)e));
        }
    }

    private void processMapFile() throws CoreException {
        this.mapContent = FetchFileGenerator.readProperties(this.mapLocation, "", 4);
        Iterator iter = this.mapContent.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry mapEntry = iter.next();
            String fileName = (String)mapEntry.getKey();
            String[] fileDescription = Utils.getArrayFromStringWithBlank((String)mapEntry.getValue(), DATA_SEPARATOR);
            if (fileDescription.length < 4) {
                String message = NLS.bind((String)Messages.error_incorrectDirectoryEntry, (Object)(String.valueOf((String)mapEntry.getKey()) + '=' + (String)mapEntry.getValue()));
                throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 9, message, null));
            }
            String userInfos = "";
            try {
                userInfos = new URL(fileDescription[0]).getUserInfo();
            }
            catch (MalformedURLException e) {
                Status status = new Status(4, "org.eclipse.pde.build", 3, NLS.bind((String)Messages.exception_url, (Object)fileDescription[0]), (Throwable)e);
                throw new CoreException((IStatus)status);
            }
            if (this.filterByConfig(fileDescription[1]) && this.filterByFilter(fileDescription[3]) && this.filterByComponentName(fileDescription.length > 4 ? fileDescription[4] : UNKNOWN)) {
                this.generateFetchFileFor(fileName, fileDescription[0], userInfos);
                this.collectedFiles = String.valueOf(this.collectedFiles) + fileName + DATA_SEPARATOR + (fileDescription[2].equals("") ? "." : fileDescription[2]) + DATA_SEPARATOR + fileDescription[1] + ENTRY_SEPARATOR;
                continue;
            }
            if (!BundleHelper.getDefault().isDebugging()) continue;
            Status status = new Status(1, "org.eclipse.pde.build", 21, NLS.bind((String)Messages.error_fetchingFailed, (Object)fileDescription[2]), null);
            BundleHelper.getDefault().getLog().log((IStatus)status);
        }
    }

    private boolean filterByFilter(String filterString) {
        if (this.filters.length == 0) {
            return true;
        }
        String[] entryFilters = Utils.getArrayFromStringWithBlank(filterString, ",");
        if (entryFilters.length == 0) {
            return true;
        }
        int i = 0;
        while (i < entryFilters.length) {
            int j = 0;
            while (j < this.filters.length) {
                if (this.filters[j].equals(entryFilters[i])) {
                    return true;
                }
                ++j;
            }
            ++i;
        }
        return false;
    }

    private boolean filterByConfig(String entryConfigString) {
        String[] entryConfigs = Utils.getArrayFromStringWithBlank(entryConfigString, FILTER_SEPARATOR);
        if (entryConfigs.length == 0 || this.containsGenericConfig(FetchFileGenerator.getConfigInfos())) {
            return true;
        }
        int i = 0;
        while (i < entryConfigs.length) {
            Iterator iter = FetchFileGenerator.getConfigInfos().iterator();
            Config aConfig = new Config(entryConfigs[i]);
            while (iter.hasNext()) {
                if (!aConfig.equals(iter.next()) && !aConfig.equals(Config.genericConfig())) continue;
                return true;
            }
            ++i;
        }
        return false;
    }

    boolean containsGenericConfig(List configs) {
        if (configs == null) {
            return false;
        }
        Iterator iter = configs.iterator();
        while (iter.hasNext()) {
            if (!Config.genericConfig().equals(iter.next())) continue;
            return true;
        }
        return false;
    }

    private boolean filterByComponentName(String componentName) {
        if (componentName.equals(UNKNOWN) || this.componentFilter == null) {
            return true;
        }
        int i = 0;
        while (i < this.componentFilter.length) {
            if (this.componentFilter[i].equalsIgnoreCase(componentName) || this.componentFilter[i].equalsIgnoreCase(UNKNOWN)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void setComponentFilter(String componentFiler) {
        this.componentFilter = Utils.getArrayFromStringWithBlank(componentFiler, ",");
    }
}

