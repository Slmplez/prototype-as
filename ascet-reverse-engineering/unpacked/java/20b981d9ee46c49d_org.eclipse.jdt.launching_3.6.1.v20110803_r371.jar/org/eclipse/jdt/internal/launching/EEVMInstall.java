/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.launching;

import java.io.File;
import org.eclipse.jdt.internal.launching.StandardVM;
import org.eclipse.jdt.launching.IVMInstallType;

public class EEVMInstall
extends StandardVM {
    public static final String ATTR_JAVA_VERSION = "ATTR_JAVA_VERSION";
    public static final String ATTR_EXECUTION_ENVIRONMENT_ID = "ATTR_EXECUTION_ENVIRONMENT_ID";
    public static final String ATTR_JAVA_EXE = "ATTR_JAVA_EXE";
    public static final String ATTR_DEBUG_ARGS = "ATTR_DEBUG_ARGS";
    public static final String ATTR_DEFINITION_FILE = "ATTR_DEFINITION_FILE";

    EEVMInstall(IVMInstallType type, String id) {
        super(type, id);
    }

    public String getJavaVersion() {
        return this.getAttribute(ATTR_JAVA_VERSION);
    }

    File getJavaExecutable() {
        String exe = this.getAttribute(ATTR_JAVA_EXE);
        if (exe != null) {
            return new File(exe);
        }
        return null;
    }

    public String getDebugArgs() {
        return this.getAttribute(ATTR_DEBUG_ARGS);
    }
}

