/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.application;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.application.IActionBarConfigurer;
import org.eclipse.ui.application.IWorkbenchConfigurer;
import org.eclipse.ui.presentations.AbstractPresentationFactory;

public interface IWorkbenchWindowConfigurer {
    public IWorkbenchWindow getWindow();

    public IWorkbenchConfigurer getWorkbenchConfigurer();

    public IActionBarConfigurer getActionBarConfigurer();

    public String getTitle();

    public void setTitle(String var1);

    public boolean getShowMenuBar();

    public void setShowMenuBar(boolean var1);

    public boolean getShowCoolBar();

    public void setShowCoolBar(boolean var1);

    public boolean getShowStatusLine();

    public void setShowStatusLine(boolean var1);

    public boolean getShowPerspectiveBar();

    public void setShowPerspectiveBar(boolean var1);

    public boolean getShowFastViewBars();

    public void setShowFastViewBars(boolean var1);

    public boolean getShowProgressIndicator();

    public void setShowProgressIndicator(boolean var1);

    public int getShellStyle();

    public void setShellStyle(int var1);

    public Point getInitialSize();

    public void setInitialSize(Point var1);

    public Object getData(String var1);

    public void setData(String var1, Object var2);

    public void addEditorAreaTransfer(Transfer var1);

    public void configureEditorAreaDropListener(DropTargetListener var1);

    public AbstractPresentationFactory getPresentationFactory();

    public void setPresentationFactory(AbstractPresentationFactory var1);

    public Menu createMenuBar();

    public Control createCoolBarControl(Composite var1);

    public Control createStatusLineControl(Composite var1);

    public Control createPageComposite(Composite var1);

    public IStatus saveState(IMemento var1);
}

