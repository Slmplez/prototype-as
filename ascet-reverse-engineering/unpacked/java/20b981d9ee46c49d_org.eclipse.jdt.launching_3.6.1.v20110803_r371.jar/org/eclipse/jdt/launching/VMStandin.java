/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.launching;

import java.util.Iterator;
import java.util.Map;
import org.eclipse.jdt.launching.AbstractVMInstall;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstall2;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.JavaRuntime;

public class VMStandin
extends AbstractVMInstall {
    private String fJavaVersion = null;

    public VMStandin(IVMInstallType type, String id) {
        super(type, id);
        this.setNotify(false);
    }

    public VMStandin(IVMInstall sourceVM, String id) {
        super(sourceVM.getVMInstallType(), id);
        this.setNotify(false);
        this.init(sourceVM);
    }

    public VMStandin(IVMInstall realVM) {
        this(realVM.getVMInstallType(), realVM.getId());
        this.init(realVM);
    }

    private void init(IVMInstall realVM) {
        IVMInstall2 vm2;
        this.setName(realVM.getName());
        this.setInstallLocation(realVM.getInstallLocation());
        this.setLibraryLocations(realVM.getLibraryLocations());
        this.setJavadocLocation(realVM.getJavadocLocation());
        if (realVM instanceof IVMInstall2) {
            vm2 = (IVMInstall2)((Object)realVM);
            this.setVMArgs(vm2.getVMArgs());
            this.fJavaVersion = vm2.getJavaVersion();
        } else {
            this.setVMArguments(realVM.getVMArguments());
            this.fJavaVersion = null;
        }
        if (realVM instanceof AbstractVMInstall) {
            vm2 = (AbstractVMInstall)realVM;
            Map attributes = ((AbstractVMInstall)vm2).getAttributes();
            Iterator iterator = attributes.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                this.setAttribute((String)entry.getKey(), (String)entry.getValue());
            }
        }
    }

    public IVMInstall convertToRealVM() {
        IVMInstallType vmType = this.getVMInstallType();
        IVMInstall realVM = vmType.findVMInstall(this.getId());
        boolean notify = true;
        if (realVM == null) {
            realVM = vmType.createVMInstall(this.getId());
            notify = false;
        }
        if (realVM instanceof AbstractVMInstall) {
            ((AbstractVMInstall)realVM).setNotify(notify);
        }
        realVM.setName(this.getName());
        realVM.setInstallLocation(this.getInstallLocation());
        realVM.setLibraryLocations(this.getLibraryLocations());
        realVM.setJavadocLocation(this.getJavadocLocation());
        if (realVM instanceof IVMInstall2) {
            IVMInstall2 vm2 = (IVMInstall2)((Object)realVM);
            vm2.setVMArgs(this.getVMArgs());
        } else {
            realVM.setVMArguments(this.getVMArguments());
        }
        if (realVM instanceof AbstractVMInstall) {
            AbstractVMInstall avm = (AbstractVMInstall)realVM;
            Iterator iterator = this.getAttributes().entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                avm.setAttribute((String)entry.getKey(), (String)entry.getValue());
            }
            avm.setNotify(true);
        }
        if (!notify) {
            JavaRuntime.fireVMAdded(realVM);
        }
        return realVM;
    }

    public String getJavaVersion() {
        return this.fJavaVersion;
    }
}

