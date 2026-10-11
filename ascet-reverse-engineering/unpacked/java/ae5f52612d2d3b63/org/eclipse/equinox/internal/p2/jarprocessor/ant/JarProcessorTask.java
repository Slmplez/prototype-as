/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.DirectoryScanner
 *  org.apache.tools.ant.Task
 *  org.apache.tools.ant.types.FileSet
 *  org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessorExecutor$Options
 */
package org.eclipse.equinox.internal.p2.jarprocessor.ant;

import java.io.File;
import java.util.ArrayList;
import java.util.Properties;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.DirectoryScanner;
import org.apache.tools.ant.Task;
import org.apache.tools.ant.types.FileSet;
import org.eclipse.equinox.internal.p2.jarprocessor.ant.AntBasedProcessorExecutor;
import org.eclipse.internal.provisional.equinox.p2.jarprocessor.JarProcessorExecutor;

public class JarProcessorTask
extends Task {
    private final JarProcessorExecutor.Options options = new JarProcessorExecutor.Options();
    private final Properties signArgs = new Properties();
    private final ArrayList inputFiles = new ArrayList();
    public static final String ALIAS = "alias";
    public static final String KEYSTORE = "keystore";
    public static final String STOREPASS = "storepass";
    public static final String KEYPASS = "keypass";
    public static final String UNSIGN = "unsign";
    public static final String SIGN = "sign";
    private static final String FAKE_COMMAND = "fake";

    public void setAlias(String alias) {
        this.signArgs.setProperty(ALIAS, alias);
    }

    public void setKeystore(String keystore) {
        this.signArgs.setProperty(KEYSTORE, keystore);
    }

    public void setJar(File jar) {
        this.options.input = jar;
        this.options.outputDir = jar.getParentFile().getAbsolutePath();
    }

    public void setInputFolder(File folder) {
        this.options.input = folder;
        this.options.outputDir = folder.getAbsolutePath();
    }

    public void setStorepass(String storepass) {
        this.signArgs.setProperty(STOREPASS, storepass);
    }

    public void setKeypass(String keypass) {
        if (keypass != null && keypass.length() > 0 && !keypass.startsWith("${")) {
            this.signArgs.setProperty(KEYPASS, keypass);
        }
    }

    public void setPack(boolean pack) {
        this.options.pack = pack;
    }

    public void setNormalize(boolean normalize) {
        this.options.repack = normalize;
    }

    public void setUnsign(boolean unsign) {
        if (unsign) {
            this.signArgs.put(UNSIGN, Boolean.TRUE.toString());
            this.options.signCommand = FAKE_COMMAND;
        }
    }

    public void setSign(boolean sign) {
        if (sign) {
            this.signArgs.put(SIGN, Boolean.TRUE.toString());
            this.options.signCommand = FAKE_COMMAND;
        }
    }

    private void adjustAndValidateConfiguration() {
        if (this.options.signCommand != null && this.options.pack) {
            this.options.repack = true;
        }
        if (this.options.signCommand != null && this.signArgs.getProperty(UNSIGN) == null) {
            if (this.signArgs.getProperty(ALIAS) == null) {
                throw new BuildException("Alias must be set");
            }
            if (this.signArgs.getProperty(STOREPASS) == null) {
                throw new BuildException("Storepass must be set");
            }
        }
    }

    public void execute() {
        this.options.processAll = true;
        this.adjustAndValidateConfiguration();
        AntBasedProcessorExecutor executor = new AntBasedProcessorExecutor(this.signArgs, this.getProject(), this.getTaskName());
        if (this.inputFiles.size() > 0) {
            executor.setInputFiles(this.inputFiles);
        }
        executor.runJarProcessor(this.options);
    }

    public void setVerbose(boolean verbose) {
        this.options.verbose = verbose;
    }

    public void addInputFile(File file) {
        this.inputFiles.add(file);
    }

    public void addConfiguredFile(FileSet fileset) {
        DirectoryScanner scanner = fileset.getDirectoryScanner(this.getProject());
        String[] included = scanner.getIncludedFiles();
        int i = 0;
        while (i < included.length) {
            this.addInputFile(new File(scanner.getBasedir(), included[i]));
            ++i;
        }
        included = scanner.getIncludedDirectories();
        i = 0;
        while (i < included.length) {
            this.addInputFile(new File(scanner.getBasedir(), included[i]));
            ++i;
        }
    }
}

