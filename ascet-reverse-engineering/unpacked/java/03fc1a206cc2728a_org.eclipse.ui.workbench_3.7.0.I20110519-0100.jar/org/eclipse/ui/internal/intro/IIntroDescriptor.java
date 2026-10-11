/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.intro;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.intro.IIntroPart;

public interface IIntroDescriptor {
    public IIntroPart createIntro() throws CoreException;

    public String getId();

    public ImageDescriptor getImageDescriptor();

    public String getLabelOverride();
}

