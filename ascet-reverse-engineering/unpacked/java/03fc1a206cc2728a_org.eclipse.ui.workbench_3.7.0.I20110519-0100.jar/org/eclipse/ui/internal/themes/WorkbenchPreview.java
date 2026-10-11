/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.custom.CTabFolder
 *  org.eclipse.swt.custom.CTabItem
 *  org.eclipse.swt.custom.ViewForm
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal.themes;

import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.custom.CTabFolder;
import org.eclipse.swt.custom.CTabItem;
import org.eclipse.swt.custom.ViewForm;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.themes.ITheme;
import org.eclipse.ui.themes.IThemePreview;

public class WorkbenchPreview
implements IThemePreview {
    private static int tabPos = PlatformUI.getPreferenceStore().getInt("VIEW_TAB_POSITION");
    private boolean disposed = false;
    private CTabFolder folder;
    private ITheme theme;
    private ToolBar toolBar;
    private CLabel viewMessage;
    private ViewForm viewForm;
    private IPropertyChangeListener fontAndColorListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            if (!WorkbenchPreview.this.disposed) {
                WorkbenchPreview.this.setColorsAndFonts();
                WorkbenchPreview.this.viewForm.layout(true);
            }
        }
    };

    public void createControl(Composite parent, ITheme currentTheme) {
        this.theme = currentTheme;
        this.folder = new CTabFolder(parent, 2048);
        this.folder.setUnselectedCloseVisible(false);
        this.folder.setEnabled(false);
        this.folder.setMaximizeVisible(true);
        this.folder.setMinimizeVisible(true);
        this.viewForm = new ViewForm((Composite)this.folder, 0);
        this.viewForm.marginHeight = 0;
        this.viewForm.marginWidth = 0;
        this.viewForm.verticalSpacing = 0;
        this.viewForm.setBorderVisible(false);
        this.toolBar = new ToolBar((Composite)this.viewForm, 0x800040);
        ToolItem toolItem = new ToolItem(this.toolBar, 8);
        Image hoverImage = WorkbenchImages.getImage("IMG_LCL_VIEW_MENU");
        toolItem.setImage(hoverImage);
        this.viewForm.setTopRight((Control)this.toolBar);
        this.viewMessage = new CLabel((Composite)this.viewForm, 0);
        this.viewMessage.setText("Etu?");
        this.viewForm.setTopLeft((Control)this.viewMessage);
        CTabItem item = new CTabItem(this.folder, 64);
        item.setText("Lorem");
        Label text = new Label((Composite)this.viewForm, 0);
        this.viewForm.setContent((Control)text);
        text.setText("Lorem ipsum dolor sit amet");
        item = new CTabItem(this.folder, 64);
        item.setText("Ipsum");
        item.setControl((Control)this.viewForm);
        item.setImage(WorkbenchImages.getImage("IMG_TOOL_COPY"));
        this.folder.setSelection(item);
        item = new CTabItem(this.folder, 64);
        item.setText("Dolor");
        item = new CTabItem(this.folder, 64);
        item.setText("Sit");
        currentTheme.addPropertyChangeListener(this.fontAndColorListener);
        this.setColorsAndFonts();
        this.setTabPosition();
        this.setTabStyle();
    }

    protected void setTabStyle() {
        boolean traditionalTab = PlatformUI.getPreferenceStore().getBoolean("SHOW_TRADITIONAL_STYLE_TABS");
        this.folder.setSimple(traditionalTab);
    }

    protected void setTabPosition() {
        tabPos = PlatformUI.getPreferenceStore().getInt("VIEW_TAB_POSITION");
        this.folder.setTabPosition(tabPos);
    }

    private void setColorsAndFonts() {
        this.folder.setSelectionForeground(this.theme.getColorRegistry().get("org.eclipse.ui.workbench.ACTIVE_TAB_TEXT_COLOR"));
        this.folder.setForeground(this.theme.getColorRegistry().get("org.eclipse.ui.workbench.INACTIVE_TAB_TEXT_COLOR"));
        Color[] colors = new Color[]{this.theme.getColorRegistry().get("org.eclipse.ui.workbench.INACTIVE_TAB_BG_START"), this.theme.getColorRegistry().get("org.eclipse.ui.workbench.INACTIVE_TAB_BG_END")};
        colors[0] = this.theme.getColorRegistry().get("org.eclipse.ui.workbench.ACTIVE_TAB_BG_START");
        colors[1] = this.theme.getColorRegistry().get("org.eclipse.ui.workbench.ACTIVE_TAB_BG_END");
        this.folder.setSelectionBackground(colors, new int[]{this.theme.getInt("org.eclipse.ui.workbench.ACTIVE_TAB_PERCENT")}, this.theme.getBoolean("org.eclipse.ui.workbench.ACTIVE_TAB_VERTICAL"));
        this.folder.setFont(this.theme.getFontRegistry().get("org.eclipse.ui.workbench.TAB_TEXT_FONT"));
        this.viewMessage.setFont(this.theme.getFontRegistry().get("org.eclipse.ui.workbench.VIEW_MESSAGE_TEXT_FONT"));
    }

    public void dispose() {
        this.disposed = true;
        this.theme.removePropertyChangeListener(this.fontAndColorListener);
    }
}

