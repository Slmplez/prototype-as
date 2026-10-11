/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.jdt.internal.launching.Standard11xVMRunner;
import org.eclipse.jdt.internal.launching.StandardVM;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.IVMRunner;

public class Standard11xVM
extends StandardVM {
    public Standard11xVM(IVMInstallType type, String id) {
        super(type, id);
    }

    public IVMRunner getVMRunner(String mode) {
        if ("run".equals(mode)) {
            return new Standard11xVMRunner(this);
        }
        return null;
    }
}

