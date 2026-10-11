/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.build.packager;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.build.AbstractScriptGenerator;
import org.eclipse.pde.internal.build.Config;
import org.eclipse.pde.internal.build.Utils;

public class UnzipperGenerator
extends AbstractScriptGenerator {
    private static final String DATA_SEPARATOR = "|";
    private static final String ENTRY_SEPARATOR = "%";
    private static final byte ARCHIVE_NAME = 0;
    private static final byte FOLDER = 1;
    private static final byte CONFIGS = 2;
    private String directoryLocation = "packager.directory.txt";
    private Properties zipsList;
    private String packagingPropertiesLocation;
    private String[] unzipOrder = new String[0];

    public void generate() throws CoreException {
        this.prepareGeneration();
        this.openScript(workingDirectory, "unzipper.xml");
        try {
            this.generatePrologue();
            this.generateUncompressionCommands();
            this.generateEpilogue();
        }
        finally {
            this.closeScript();
        }
    }

    private void prepareGeneration() {
        if (this.packagingPropertiesLocation == null) {
            return;
        }
        Properties packagingProperties = new Properties();
        BufferedInputStream propertyStream = null;
        try {
            propertyStream = new BufferedInputStream(new FileInputStream(this.packagingPropertiesLocation));
            try {
                packagingProperties.load(propertyStream);
            }
            finally {
                ((InputStream)propertyStream).close();
            }
        }
        catch (FileNotFoundException fileNotFoundException) {
        }
        catch (IOException iOException) {}
        this.unzipOrder = Utils.getArrayFromStringWithBlank(packagingProperties.getProperty("unzipOrder", ""), ",");
    }

    private void generateEpilogue() {
        this.script.printTargetEnd();
        this.script.println();
        this.script.printProjectEnd();
    }

    private void generatePrologue() {
        this.script.println();
        this.script.printComment("Unzip script");
        this.script.println();
        this.script.printProjectDeclaration("Unzipper", "main", ".");
        this.script.printTargetDeclaration("main", null, null, null, null);
    }

    private void generateUncompressionCommands() throws CoreException {
        this.zipsList = UnzipperGenerator.readProperties(workingDirectory, this.directoryLocation, 4);
        String zipEntries = this.zipsList.getProperty("toUnzip", "");
        ArrayList<String[]> toUnzipWithOrder = new ArrayList<String[]>(this.unzipOrder.length);
        String[] allZipEntries = Utils.getArrayFromString(zipEntries, ENTRY_SEPARATOR);
        int i = 0;
        while (i < allZipEntries.length) {
            String[] entryDetail = Utils.getArrayFromString(allZipEntries[i], DATA_SEPARATOR);
            this.script.printComment("Uncompress " + entryDetail[0]);
            if (!entryDetail[1].equals(".")) {
                this.script.printMkdirTask("${tempDirectory}/" + entryDetail[1]);
            }
            if (this.delayed(entryDetail[0])) {
                toUnzipWithOrder.add(entryDetail);
            } else {
                this.generateUncompress(entryDetail);
                this.script.println();
                this.script.println();
            }
            ++i;
        }
        i = 0;
        while (i < this.unzipOrder.length) {
            Iterator iter = toUnzipWithOrder.iterator();
            while (iter.hasNext()) {
                String[] entry = (String[])iter.next();
                if (!entry[0].startsWith(this.unzipOrder[i])) continue;
                this.generateUncompress(entry);
                iter.remove();
            }
            ++i;
        }
    }

    private void generateUncompress(String[] entryDetail) {
        if (entryDetail[0].endsWith(".zip")) {
            this.generateUnzipArchive(entryDetail);
            this.generateUnzipRootFiles(entryDetail);
            return;
        }
        if (entryDetail[0].endsWith(".tar.gz") || entryDetail[0].endsWith(".tar")) {
            this.generateUntarArchice(entryDetail);
            this.generateUntarRootFiles(entryDetail);
        }
    }

    private boolean delayed(String fileName) {
        int i = 0;
        while (i < this.unzipOrder.length) {
            if (fileName.startsWith(this.unzipOrder[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private List getMatchingConfig(String[] entryDetail) {
        ArrayList<Config> applyingConfigs = null;
        if (entryDetail.length == 2) {
            applyingConfigs = UnzipperGenerator.getConfigInfos();
        } else {
            String[] configs = Utils.getArrayFromString(entryDetail[2], "&");
            applyingConfigs = new ArrayList<Config>(configs.length);
            int i = 0;
            while (i < configs.length) {
                applyingConfigs.add(new Config(configs[i]));
                ++i;
            }
        }
        return applyingConfigs;
    }

    private void generateUnzipArchive(String[] entryDetail) {
        ArrayList<String> parameters = new ArrayList<String>(1);
        parameters.add("-o -X ${unzipArgs} ");
        parameters.add(String.valueOf(Utils.getPropertyFormat("downloadDirectory")) + '/' + entryDetail[0]);
        this.script.printExecTask("unzip", "${tempDirectory}/" + entryDetail[1], parameters, null, true);
    }

    private void generateUnzipRootFiles(String[] entryDetail) {
        Iterator iter = this.getMatchingConfig(entryDetail).iterator();
        while (iter.hasNext()) {
            Config config = (Config)iter.next();
            ArrayList<String> parameters = new ArrayList<String>(3);
            String rootFilesFolder = "${tempDirectory}/" + config.toString(".") + '/' + entryDetail[1];
            this.script.printMkdirTask(rootFilesFolder);
            parameters.add("-o -X ${unzipArgs} ");
            parameters.add(String.valueOf(Utils.getPropertyFormat("downloadDirectory")) + '/' + entryDetail[0]);
            parameters.add("-x " + (entryDetail[1].equals(".") ? "eclipse/" : "") + "features/*" + " " + (entryDetail[1].equals(".") ? "eclipse/" : "") + "plugins/*");
            this.script.printExecTask("unzip", rootFilesFolder, parameters, null, true);
        }
    }

    private void generateUntarArchice(String[] entryDetail) {
        ArrayList<String> parameters = new ArrayList<String>(2);
        parameters.add("-" + (entryDetail[0].endsWith(".gz") ? "z" : "") + "pxvf");
        parameters.add(String.valueOf(Utils.getPropertyFormat("downloadDirectory")) + '/' + entryDetail[0]);
        this.script.printExecTask("tar", "${tempDirectory}/" + entryDetail[1], parameters, null, true);
    }

    private void generateUntarRootFiles(String[] entryDetail) {
        Iterator iter = this.getMatchingConfig(entryDetail).iterator();
        while (iter.hasNext()) {
            Config config = (Config)iter.next();
            ArrayList<String> parameters = new ArrayList<String>(4);
            String rootFilesFolder = "${tempDirectory}/" + config.toString(".") + '/' + entryDetail[1];
            this.script.printMkdirTask(rootFilesFolder);
            parameters.add("-" + (entryDetail[0].endsWith(".gz") ? "z" : "") + "pxvf");
            parameters.add(String.valueOf(Utils.getPropertyFormat("downloadDirectory")) + '/' + entryDetail[0]);
            parameters.add("--exclude=" + (entryDetail[1].equals(".") ? "eclipse" : "") + "/features/*");
            parameters.add("--exclude=" + (entryDetail[1].equals(".") ? "eclipse" : "") + "/plugins/*");
            this.script.printExecTask("tar", rootFilesFolder, parameters, null, true);
        }
    }

    public void setDirectoryLocation(String filename) {
        this.directoryLocation = filename;
    }

    public void setPropertyFile(String propertyFile) {
        this.packagingPropertiesLocation = propertyFile;
    }
}

