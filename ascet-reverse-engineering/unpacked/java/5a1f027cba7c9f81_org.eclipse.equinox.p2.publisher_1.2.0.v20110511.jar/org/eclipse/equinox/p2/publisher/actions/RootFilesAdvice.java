/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.publisher.actions;

import java.io.File;
import org.eclipse.equinox.p2.publisher.AbstractAdvice;
import org.eclipse.equinox.p2.publisher.actions.IRootFilesAdvice;

public class RootFilesAdvice
extends AbstractAdvice
implements IRootFilesAdvice {
    private File root;
    private File[] excludedFiles;
    private File[] includedFiles;
    private String configSpec;

    public RootFilesAdvice(File root, File[] includedFiles, File[] excludedFiles, String configSpec) {
        this.root = root;
        this.excludedFiles = excludedFiles;
        this.includedFiles = includedFiles;
        this.configSpec = configSpec;
    }

    public File getRoot() {
        return this.root;
    }

    protected String getConfigSpec() {
        return this.configSpec;
    }

    public File[] getExcludedFiles() {
        return this.excludedFiles;
    }

    public File[] getIncludedFiles() {
        return this.includedFiles;
    }
}

