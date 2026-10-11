/*
 * Decompiled with CFR 0.152.
 */
package com.etas.ascet.importer.a2a.config;

import java.io.File;
import java.util.List;

public interface IConfig {
    public String getOutputFolder();

    public void setOutputFolder(String var1);

    public void setInputFiles(List<File> var1);

    public void addInputFile(File var1);

    public List<File> getInputFiles();

    public boolean isNameSpaceRequired();

    public void setNameSpaceRequired(boolean var1);

    public boolean isProjectsRequired();

    public void setProjectsRequired(boolean var1);

    public boolean isTransferRequired();

    public void setTransferRequired(boolean var1);

    public String getAsWarning();

    public void setAsWarning(String var1);

    public String getAsError();

    public void setAsError(String var1);
}

