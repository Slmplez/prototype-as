/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 */
package org.eclipse.jdt.launching;

import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.JavaRuntime;

public abstract class AbstractVMInstallType
implements IVMInstallType,
IExecutableExtension {
    private List fVMs = new ArrayList(10);
    private String fId;

    protected AbstractVMInstallType() {
    }

    public IVMInstall[] getVMInstalls() {
        IVMInstall[] vms = new IVMInstall[this.fVMs.size()];
        return this.fVMs.toArray(vms);
    }

    public void disposeVMInstall(String id) {
        int i = 0;
        while (i < this.fVMs.size()) {
            IVMInstall vm = (IVMInstall)this.fVMs.get(i);
            if (vm.getId().equals(id)) {
                this.fVMs.remove(i);
                JavaRuntime.fireVMRemoved(vm);
                return;
            }
            ++i;
        }
    }

    public IVMInstall findVMInstall(String id) {
        int i = 0;
        while (i < this.fVMs.size()) {
            IVMInstall vm = (IVMInstall)this.fVMs.get(i);
            if (vm.getId().equals(id)) {
                return vm;
            }
            ++i;
        }
        return null;
    }

    public IVMInstall createVMInstall(String id) throws IllegalArgumentException {
        if (this.findVMInstall(id) != null) {
            String format = LaunchingMessages.vmInstallType_duplicateVM;
            throw new IllegalArgumentException(MessageFormat.format((String)format, (Object[])new String[]{id}));
        }
        IVMInstall vm = this.doCreateVMInstall(id);
        this.fVMs.add(vm);
        return vm;
    }

    protected abstract IVMInstall doCreateVMInstall(String var1);

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) {
        this.fId = config.getAttribute("id");
    }

    public String getId() {
        return this.fId;
    }

    public IVMInstall findVMInstallByName(String name) {
        int i = 0;
        while (i < this.fVMs.size()) {
            IVMInstall vm = (IVMInstall)this.fVMs.get(i);
            if (vm.getName().equals(name)) {
                return vm;
            }
            ++i;
        }
        return null;
    }

    public URL getDefaultJavadocLocation(File installLocation) {
        return null;
    }

    public String getDefaultVMArguments(File installLocation) {
        return null;
    }
}

