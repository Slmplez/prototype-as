/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.jface.resource.FontRegistry
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.custom.CTabFolder
 *  org.eclipse.swt.custom.CTabItem
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.internal.presentations.defaultpresentation;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.jface.resource.FontRegistry;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.custom.CTabFolder;
import org.eclipse.swt.custom.CTabItem;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.presentations.util.PartInfo;
import org.eclipse.ui.internal.presentations.util.WidgetTabItem;
import org.eclipse.ui.internal.util.Util;

public class DefaultTabItem
extends WidgetTabItem {
    public static String DIRTY_PREFIX = "*";
    private boolean busy = false;
    private boolean bold = false;
    private Font lastFont = null;
    private String shortName = "";
    private String longName = "";

    public DefaultTabItem(CTabFolder parent, int index, int flags) {
        super((Widget)DefaultTabItem.getTab(parent, index, flags));
        this.updateFont();
    }

    private static CTabItem getTab(CTabFolder parent, int index, int flags) {
        return new CTabItem(parent, flags, index);
    }

    public Rectangle getBounds() {
        return Geometry.toDisplay((Control)this.getItem().getParent(), (Rectangle)this.getItem().getBounds());
    }

    public CTabItem getItem() {
        return (CTabItem)this.getWidget();
    }

    public boolean isShowing() {
        return this.getItem().isShowing();
    }

    public void setInfo(PartInfo info) {
        String toolTipText;
        CTabItem tabItem = this.getItem();
        this.shortName = DefaultTabItem.computeShortName(info);
        this.longName = DefaultTabItem.computeLongName(info);
        this.updateTabText();
        if (tabItem.getImage() != info.image) {
            tabItem.setImage(info.image);
        }
        if ((toolTipText = info.toolTip).equals("")) {
            toolTipText = null;
        }
        if (!Util.equals(toolTipText, tabItem.getToolTipText())) {
            if (toolTipText != null) {
                toolTipText = DefaultTabItem.escapeAmpersands(toolTipText);
            }
            tabItem.setToolTipText(toolTipText);
        }
    }

    public void updateTabText() {
        CTabItem tabItem = this.getItem();
        String newName = tabItem.getParent().getSingle() ? this.longName : this.shortName;
        if (!Util.equals(newName = DefaultTabItem.escapeAmpersands(newName), tabItem.getText())) {
            tabItem.setText(newName);
        }
    }

    public static String escapeAmpersands(String input) {
        StringBuffer title = new StringBuffer(input.length());
        int i = 0;
        while (i < input.length()) {
            char character = input.charAt(i);
            title.append(character);
            if (character == '&') {
                title.append(character);
            }
            ++i;
        }
        return title.toString();
    }

    public void setBold(boolean bold) {
        this.bold = bold;
        super.setBold(bold);
        this.updateFont();
    }

    public void setBusy(boolean busy) {
        this.busy = busy;
        super.setBusy(busy);
        this.updateFont();
    }

    private void updateFont() {
        CTabItem tabItem = this.getItem();
        FontRegistry registry = PlatformUI.getWorkbench().getThemeManager().getCurrentTheme().getFontRegistry();
        Font targetFont = null;
        if (this.busy) {
            targetFont = registry.getItalic("org.eclipse.ui.workbench.TAB_TEXT_FONT");
        } else if (this.bold) {
            targetFont = registry.getBold("org.eclipse.ui.workbench.TAB_TEXT_FONT");
        }
        if (this.lastFont != targetFont) {
            tabItem.setFont(targetFont);
            this.lastFont = targetFont;
        }
    }

    private static String computeShortName(PartInfo info) {
        String text = info.name;
        if (info.dirty) {
            text = String.valueOf(DIRTY_PREFIX) + text;
        }
        return text;
    }

    private static String computeLongName(PartInfo info) {
        String text = info.name;
        String contentDescription = info.contentDescription;
        if (contentDescription.equals("")) {
            String titleTooltip = info.toolTip.trim();
            if (titleTooltip.endsWith(info.name)) {
                titleTooltip = titleTooltip.substring(0, titleTooltip.lastIndexOf(info.name)).trim();
            }
            if (titleTooltip.endsWith("\\")) {
                titleTooltip = titleTooltip.substring(0, titleTooltip.lastIndexOf("\\")).trim();
            }
            if (titleTooltip.endsWith("/")) {
                titleTooltip = titleTooltip.substring(0, titleTooltip.lastIndexOf("/")).trim();
            }
            contentDescription = titleTooltip;
        }
        if (!contentDescription.equals("")) {
            text = MessageFormat.format((String)WorkbenchMessages.EditorPart_AutoTitleFormat, (Object[])new String[]{text, contentDescription});
        }
        if (info.dirty) {
            text = String.valueOf(DIRTY_PREFIX) + text;
        }
        return text;
    }
}

