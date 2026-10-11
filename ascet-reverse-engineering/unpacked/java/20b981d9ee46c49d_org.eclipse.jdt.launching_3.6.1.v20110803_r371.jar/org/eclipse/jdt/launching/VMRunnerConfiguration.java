/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.launching;

import java.util.Map;
import org.eclipse.jdt.internal.launching.LaunchingMessages;

public class VMRunnerConfiguration {
    private String fClassToLaunch;
    private String[] fVMArgs;
    private String[] fProgramArgs;
    private String[] fEnvironment;
    private String[] fClassPath;
    private String[] fBootClassPath;
    private String fWorkingDirectory;
    private Map fVMSpecificAttributesMap;
    private boolean fResume = true;
    private static final String[] fgEmpty = new String[0];

    public VMRunnerConfiguration(String classToLaunch, String[] classPath) {
        if (classToLaunch == null) {
            throw new IllegalArgumentException(LaunchingMessages.vmRunnerConfig_assert_classNotNull);
        }
        if (classPath == null) {
            throw new IllegalArgumentException(LaunchingMessages.vmRunnerConfig_assert_classPathNotNull);
        }
        this.fClassToLaunch = classToLaunch;
        this.fClassPath = classPath;
    }

    public void setVMSpecificAttributesMap(Map map) {
        this.fVMSpecificAttributesMap = map;
    }

    public void setVMArguments(String[] args) {
        if (args == null) {
            throw new IllegalArgumentException(LaunchingMessages.vmRunnerConfig_assert_vmArgsNotNull);
        }
        this.fVMArgs = args;
    }

    public void setProgramArguments(String[] args) {
        if (args == null) {
            throw new IllegalArgumentException(LaunchingMessages.vmRunnerConfig_assert_programArgsNotNull);
        }
        this.fProgramArgs = args;
    }

    public void setEnvironment(String[] environment) {
        this.fEnvironment = environment;
    }

    public void setBootClassPath(String[] bootClassPath) {
        this.fBootClassPath = bootClassPath;
    }

    public Map getVMSpecificAttributesMap() {
        return this.fVMSpecificAttributesMap;
    }

    public String getClassToLaunch() {
        return this.fClassToLaunch;
    }

    public String[] getClassPath() {
        return this.fClassPath;
    }

    public String[] getBootClassPath() {
        return this.fBootClassPath;
    }

    public String[] getVMArguments() {
        if (this.fVMArgs == null) {
            return fgEmpty;
        }
        return this.fVMArgs;
    }

    public String[] getProgramArguments() {
        if (this.fProgramArgs == null) {
            return fgEmpty;
        }
        return this.fProgramArgs;
    }

    public String[] getEnvironment() {
        return this.fEnvironment;
    }

    public void setWorkingDirectory(String path) {
        this.fWorkingDirectory = path;
    }

    public String getWorkingDirectory() {
        return this.fWorkingDirectory;
    }

    public void setResumeOnStartup(boolean resume) {
        this.fResume = resume;
    }

    public boolean isResumeOnStartup() {
        return this.fResume;
    }
}

