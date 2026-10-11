/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.launching;

import java.io.File;
import org.eclipse.jdt.internal.launching.StandardVMDebugger;
import org.eclipse.jdt.internal.launching.StandardVMRunner;
import org.eclipse.jdt.internal.launching.StandardVMType;
import org.eclipse.jdt.launching.AbstractVMInstall;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.IVMRunner;

public class StandardVM
extends AbstractVMInstall {
    public static final String VAR_PORT = "${port}";

    StandardVM(IVMInstallType type, String id) {
        super(type, id);
    }

    public IVMRunner getVMRunner(String mode) {
        if ("run".equals(mode)) {
            return new StandardVMRunner(this);
        }
        if ("debug".equals(mode)) {
            return new StandardVMDebugger(this);
        }
        return null;
    }

    public String getJavaVersion() {
        File executable;
        StandardVMType installType = (StandardVMType)this.getVMInstallType();
        File installLocation = this.getInstallLocation();
        if (installLocation != null && (executable = this.getJavaExecutable()) != null) {
            String vmVersion = installType.getVMVersion(installLocation, executable);
            StringBuffer version = new StringBuffer();
            int i = 0;
            while (i < vmVersion.length()) {
                char ch = vmVersion.charAt(i);
                if (!Character.isDigit(ch) && ch != '.') break;
                version.append(ch);
                ++i;
            }
            if (version.length() > 0) {
                return version.toString();
            }
        }
        return null;
    }

    File getJavaExecutable() {
        File installLocation = this.getInstallLocation();
        if (installLocation != null) {
            return StandardVMType.findJavaExecutable(installLocation);
        }
        return null;
    }

    public String getDebugArgs() {
        return null;
    }
}

