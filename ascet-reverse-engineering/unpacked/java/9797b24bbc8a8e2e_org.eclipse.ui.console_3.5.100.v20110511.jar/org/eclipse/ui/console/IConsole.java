/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.ui.part.IPageBookViewPage
 */
package org.eclipse.ui.console;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.part.IPageBookViewPage;

public interface IConsole {
    public String getName();

    public ImageDescriptor getImageDescriptor();

    public IPageBookViewPage createPage(IConsoleView var1);

    public void addPropertyChangeListener(IPropertyChangeListener var1);

    public void removePropertyChangeListener(IPropertyChangeListener var1);

    public String getType();
}

