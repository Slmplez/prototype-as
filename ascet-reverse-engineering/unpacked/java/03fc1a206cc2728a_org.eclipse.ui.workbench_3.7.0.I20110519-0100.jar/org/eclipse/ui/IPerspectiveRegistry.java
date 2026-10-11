/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IPerspectiveDescriptor;

public interface IPerspectiveRegistry {
    public IPerspectiveDescriptor clonePerspective(String var1, String var2, IPerspectiveDescriptor var3) throws IllegalArgumentException;

    public void deletePerspective(IPerspectiveDescriptor var1);

    public IPerspectiveDescriptor findPerspectiveWithId(String var1);

    public IPerspectiveDescriptor findPerspectiveWithLabel(String var1);

    public String getDefaultPerspective();

    public IPerspectiveDescriptor[] getPerspectives();

    public void setDefaultPerspective(String var1);

    public void revertPerspective(IPerspectiveDescriptor var1);
}

