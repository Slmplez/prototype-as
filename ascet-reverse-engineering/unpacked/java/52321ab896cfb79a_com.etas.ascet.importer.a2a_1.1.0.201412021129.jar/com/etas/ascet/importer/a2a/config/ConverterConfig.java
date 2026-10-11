/*
 * Decompiled with CFR 0.152.
 */
package com.etas.ascet.importer.a2a.config;

import com.etas.ascet.importer.a2a.config.IConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class ConverterConfig
implements IConfig {
    private String outputFolder;
    private List<File> inputFiles = new ArrayList<File>();
    private String asError;
    private String asWarning;
    private boolean nameSpaceRequired = true;
    private boolean projectsRequired = true;
    private boolean transferRequired = true;

    @Override
    public String getOutputFolder() {
        if (this.outputFolder == null) {
            return "";
        }
        return this.outputFolder;
    }

    @Override
    public void setOutputFolder(String outputFolder) {
        this.outputFolder = outputFolder;
    }

    @Override
    public void setInputFiles(List<File> inputFilesCol) {
        this.inputFiles = inputFilesCol;
    }

    @Override
    public void addInputFile(File file) {
        this.inputFiles.add(file);
    }

    @Override
    public List<File> getInputFiles() {
        return this.inputFiles;
    }

    @Override
    public boolean isNameSpaceRequired() {
        return this.nameSpaceRequired;
    }

    @Override
    public void setNameSpaceRequired(boolean nameSpaceRequired) {
        this.nameSpaceRequired = nameSpaceRequired;
    }

    @Override
    public boolean isProjectsRequired() {
        return this.projectsRequired;
    }

    @Override
    public void setProjectsRequired(boolean projectsRequired) {
        this.projectsRequired = projectsRequired;
    }

    @Override
    public boolean isTransferRequired() {
        return this.transferRequired;
    }

    @Override
    public void setTransferRequired(boolean transferRequired) {
        this.transferRequired = transferRequired;
    }

    @Override
    public String getAsWarning() {
        return this.asWarning;
    }

    @Override
    public void setAsWarning(String asWarning) {
        this.asWarning = asWarning;
    }

    @Override
    public String getAsError() {
        return this.asError;
    }

    @Override
    public void setAsError(String asError) {
        this.asError = asError;
    }
}

