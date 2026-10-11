/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.internal.core.PackageFragmentInfo;

class JarPackageFragmentInfo
extends PackageFragmentInfo {
    JarPackageFragmentInfo() {
    }

    Object[] getNonJavaResources() {
        return this.nonJavaResources;
    }
}

