/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.jface.layout.GridLayoutFactory
 *  org.eclipse.jface.window.ToolTip
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeItem
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.FrameworkUtil
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.jface.window.ToolTip;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.testing.ContributionInfoMessages;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.testing.ContributionInfo;
import org.osgi.framework.Bundle;
import org.osgi.framework.FrameworkUtil;

public class SpyHandler
extends AbstractHandler {
    static /* synthetic */ Class class$0;

    public Object execute(ExecutionEvent event) {
        Control control;
        Shell shell = HandlerUtil.getActiveShell(event);
        if (shell != null && (control = shell.getDisplay().getFocusControl()) != null) {
            this.showTooltip(control);
        }
        return null;
    }

    protected void showTooltip(Control control) {
        ContributionInfo contributionInfo = null;
        Point offset = new Point(0, 0);
        while (control != null) {
            TreeItem treeItem;
            Tree tree;
            if (control instanceof Table) {
                TableItem tableItem;
                Table table = (Table)control;
                if (table.getSelectionCount() == 1 && (contributionInfo = this.getContributionInfo((tableItem = table.getSelection()[0]).getData(), ContributionInfoMessages.ContributionInfo_TableItem)) != null) {
                    Rectangle bounds = tableItem.getBounds();
                    offset = new Point(bounds.x, bounds.y);
                    break;
                }
            } else if (control instanceof Tree && (tree = (Tree)control).getSelectionCount() == 1 && (contributionInfo = this.getContributionInfo((treeItem = tree.getSelection()[0]).getData(), ContributionInfoMessages.ContributionInfo_TreeItem)) != null) {
                Rectangle bounds = treeItem.getBounds();
                offset = new Point(bounds.x, bounds.y);
                break;
            }
            String optionalElementType = control instanceof Shell ? ContributionInfoMessages.ContributionInfo_Window : null;
            contributionInfo = this.getContributionInfo(control.getData(), optionalElementType);
            if (contributionInfo != null) break;
            control = control.getParent();
        }
        if (contributionInfo == null) {
            return;
        }
        this.doShowTooltip(control, offset, contributionInfo);
    }

    protected void doShowTooltip(Control control, Point offset, final ContributionInfo contributionInfo) {
        ToolTip toolTip = new ToolTip(control, 2, true){

            protected Composite createToolTipContentArea(Event event, Composite parent) {
                Composite composite = new Composite(parent, 0);
                composite.setBackground(parent.getDisplay().getSystemColor(29));
                Text text = new Text(composite, 8);
                text.setBackground(parent.getDisplay().getSystemColor(29));
                String info = NLS.bind((String)ContributionInfoMessages.ContributionInfo_ContributedBy, (Object)contributionInfo.getElementType(), (Object)contributionInfo.getBundleId());
                text.setText(info);
                GridLayoutFactory.fillDefaults().margins(2, 2).generateLayout(composite);
                return composite;
            }
        };
        toolTip.setHideOnMouseDown(false);
        toolTip.setHideDelay(3000);
        toolTip.show(offset);
    }

    ContributionInfo getContributionInfo(Object data, String optionalElementType) {
        Bundle bundle;
        if (data instanceof ContributionInfo) {
            return (ContributionInfo)data;
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.testing.ContributionInfo");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ContributionInfo result = (ContributionInfo)Util.getAdapter(data, clazz);
        if (optionalElementType != null && result == null && data != null && (bundle = FrameworkUtil.getBundle(data.getClass())) != null) {
            result = new ContributionInfo(bundle.getSymbolicName(), optionalElementType != null ? optionalElementType : ContributionInfoMessages.ContributionInfo_Unknown, null);
        }
        return result;
    }
}

