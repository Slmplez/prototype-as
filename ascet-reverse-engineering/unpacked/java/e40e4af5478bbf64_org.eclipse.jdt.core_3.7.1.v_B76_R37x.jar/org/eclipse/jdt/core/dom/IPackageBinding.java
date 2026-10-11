/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.IBinding;

public interface IPackageBinding
extends IBinding {
    public String getName();

    public boolean isUnnamed();

    public String[] getNameComponents();
}

