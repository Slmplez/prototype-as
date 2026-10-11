/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 *  org.eclipse.swt.widgets.Tracker
 */
package org.eclipse.jface.dialogs;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.Util;
import org.eclipse.jface.window.Window;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.swt.widgets.Tracker;

public class PopupDialog
extends Window {
    private static GridDataFactory grabBothGridDataFactory;
    private static final String DIALOG_ORIGIN_X = "DIALOG_X_ORIGIN";
    private static final String DIALOG_ORIGIN_Y = "DIALOG_Y_ORIGIN";
    private static final String DIALOG_WIDTH = "DIALOG_WIDTH";
    private static final String DIALOG_HEIGHT = "DIALOG_HEIGHT";
    private static final String DIALOG_USE_PERSISTED_BOUNDS = "DIALOG_USE_PERSISTED_BOUNDS";
    private static final String DIALOG_VALUE_MIGRATED_TO_34 = "hasBeenMigratedTo34";
    private static final String DIALOG_USE_PERSISTED_SIZE = "DIALOG_USE_PERSISTED_SIZE";
    private static final String DIALOG_USE_PERSISTED_LOCATION = "DIALOG_USE_PERSISTED_LOCATION";
    public static final int HOVER_SHELLSTYLE = 540676;
    public static final int INFOPOPUP_SHELLSTYLE = 4;
    public static final int INFOPOPUPRESIZE_SHELLSTYLE = 16;
    public static final int POPUP_MARGINWIDTH = 0;
    public static final int POPUP_MARGINHEIGHT = 0;
    public static final int POPUP_VERTICALSPACING = 1;
    public static final int POPUP_HORIZONTALSPACING = 1;
    public static final String POPUP_IMG_MENU = "popup_menu_image";
    public static final String POPUP_IMG_MENU_DISABLED = "popup_menu_image_diabled";
    private static GridLayoutFactory popupLayoutFactory;
    private ToolBar toolBar = null;
    private MenuManager menuManager = null;
    private Control dialogArea;
    private Label titleLabel;
    private Label infoLabel;
    private Control titleSeparator;
    private Control infoSeparator;
    private Color infoColor;
    private Font infoFont;
    private Font titleFont;
    private boolean listenToDeactivate;
    private boolean listenToParentDeactivate;
    private Listener parentDeactivateListener;
    private boolean takeFocusOnOpen = false;
    private boolean showDialogMenu = false;
    private boolean showPersistActions = false;
    private boolean persistSize = false;
    private boolean persistLocation = false;
    private boolean isUsing34API = true;
    private String titleText;
    private String infoText;

    private static GridDataFactory getGrabBothGridData() {
        if (grabBothGridDataFactory == null) {
            grabBothGridDataFactory = GridDataFactory.fillDefaults().grab(true, true);
        }
        return grabBothGridDataFactory;
    }

    private static GridLayoutFactory getPopupLayout() {
        if (popupLayoutFactory == null) {
            popupLayoutFactory = GridLayoutFactory.fillDefaults().margins(0, 0).spacing(1, 1);
        }
        return popupLayoutFactory;
    }

    public PopupDialog(Shell parent, int shellStyle, boolean takeFocusOnOpen, boolean persistBounds, boolean showDialogMenu, boolean showPersistActions, String titleText, String infoText) {
        this(parent, shellStyle, takeFocusOnOpen, persistBounds, persistBounds, showDialogMenu, showPersistActions, titleText, infoText, false);
    }

    public PopupDialog(Shell parent, int shellStyle, boolean takeFocusOnOpen, boolean persistSize, boolean persistLocation, boolean showDialogMenu, boolean showPersistActions, String titleText, String infoText) {
        this(parent, shellStyle, takeFocusOnOpen, persistSize, persistLocation, showDialogMenu, showPersistActions, titleText, infoText, true);
    }

    private PopupDialog(Shell parent, int shellStyle, boolean takeFocusOnOpen, boolean persistSize, boolean persistLocation, boolean showDialogMenu, boolean showPersistActions, String titleText, String infoText, boolean use34API) {
        super(parent);
        if ((shellStyle & 8) != 0) {
            shellStyle &= 0xFFFFFB07;
        }
        this.setShellStyle(shellStyle);
        this.takeFocusOnOpen = takeFocusOnOpen;
        this.showDialogMenu = showDialogMenu;
        this.showPersistActions = showPersistActions;
        this.titleText = titleText;
        this.infoText = infoText;
        this.setBlockOnOpen(false);
        this.isUsing34API = use34API;
        this.persistSize = persistSize;
        this.persistLocation = persistLocation;
        this.migrateBoundsSetting();
        this.initializeWidgetState();
    }

    protected void configureShell(Shell shell) {
        GridLayoutFactory.fillDefaults().margins(0, 0).spacing(5, 5).applyTo((Composite)shell);
        shell.addListener(27, new Listener(){

            public void handleEvent(Event event) {
                if (PopupDialog.this.listenToDeactivate && event.widget == PopupDialog.this.getShell() && PopupDialog.this.getShell().getShells().length == 0) {
                    PopupDialog.this.asyncClose();
                } else {
                    PopupDialog.this.listenToDeactivate = true;
                }
            }
        });
        shell.addListener(26, new Listener(){

            public void handleEvent(Event event) {
                if (event.widget == PopupDialog.this.getShell() && PopupDialog.this.getShell().getShells().length == 0) {
                    PopupDialog.this.listenToDeactivate = true;
                    PopupDialog.this.listenToParentDeactivate = !Util.isMac();
                }
            }
        });
        if ((this.getShellStyle() & 0x4000) != 0 && shell.getParent() != null) {
            this.parentDeactivateListener = new Listener(){

                public void handleEvent(Event event) {
                    if (PopupDialog.this.listenToParentDeactivate) {
                        PopupDialog.this.asyncClose();
                    } else {
                        PopupDialog.this.listenToParentDeactivate = PopupDialog.this.listenToDeactivate;
                    }
                }
            };
            shell.getParent().addListener(27, this.parentDeactivateListener);
        }
        shell.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent event) {
                PopupDialog.this.handleDispose();
            }
        });
    }

    private void asyncClose() {
        this.getShell().getDisplay().asyncExec(new Runnable(){

            public void run() {
                PopupDialog.this.close();
            }
        });
    }

    protected Control createContents(Composite parent) {
        Composite composite = new Composite(parent, 0);
        PopupDialog.getPopupLayout().applyTo(composite);
        PopupDialog.getGrabBothGridData().applyTo((Control)composite);
        if (this.hasTitleArea()) {
            this.createTitleMenuArea(composite);
            this.titleSeparator = this.createHorizontalSeparator(composite);
        }
        this.dialogArea = this.createDialogArea(composite);
        if (this.dialogArea.getLayoutData() == null) {
            PopupDialog.getGrabBothGridData().applyTo(this.dialogArea);
        }
        if (this.hasInfoArea()) {
            this.infoSeparator = this.createHorizontalSeparator(composite);
            this.createInfoTextArea(composite);
        }
        this.applyColors(composite);
        this.applyFonts(composite);
        return composite;
    }

    protected Control createDialogArea(Composite parent) {
        Composite composite = new Composite(parent, 0);
        PopupDialog.getPopupLayout().applyTo(composite);
        PopupDialog.getGrabBothGridData().applyTo((Control)composite);
        return composite;
    }

    protected Control getFocusControl() {
        return this.dialogArea;
    }

    protected void setTabOrder(Composite composite) {
    }

    protected boolean hasTitleArea() {
        return this.titleText != null || this.showDialogMenu;
    }

    protected boolean hasInfoArea() {
        return this.infoText != null;
    }

    protected Control createTitleMenuArea(Composite parent) {
        Composite titleAreaComposite = new Composite(parent, 0);
        PopupDialog.getPopupLayout().copy().numColumns(2).applyTo(titleAreaComposite);
        GridDataFactory.fillDefaults().align(4, 0x1000000).grab(true, false).applyTo((Control)titleAreaComposite);
        this.createTitleControl(titleAreaComposite);
        if (this.showDialogMenu) {
            this.createDialogMenu(titleAreaComposite);
        }
        return titleAreaComposite;
    }

    protected Control createTitleControl(Composite parent) {
        this.titleLabel = new Label(parent, 0);
        GridDataFactory.fillDefaults().align(4, 0x1000000).grab(true, false).span(this.showDialogMenu ? 1 : 2, 1).applyTo((Control)this.titleLabel);
        if (this.titleText != null) {
            this.titleLabel.setText(this.titleText);
        }
        return this.titleLabel;
    }

    protected Control createInfoTextArea(Composite parent) {
        this.infoLabel = new Label(parent, 131072);
        this.infoLabel.setText(this.infoText);
        GridDataFactory.fillDefaults().grab(true, false).align(4, 1).applyTo((Control)this.infoLabel);
        Display display = parent.getDisplay();
        this.infoColor = new Color((Device)display, PopupDialog.blend(display.getSystemColor(29).getRGB(), display.getSystemColor(28).getRGB(), 0.56f));
        this.infoLabel.setForeground(this.infoColor);
        return this.infoLabel;
    }

    private static RGB blend(RGB bg, RGB fg, float factor) {
        Assert.isLegal((bg != null ? 1 : 0) != 0);
        Assert.isLegal((fg != null ? 1 : 0) != 0);
        Assert.isLegal((factor >= 0.0f && factor <= 1.0f ? 1 : 0) != 0);
        float complement = 1.0f - factor;
        return new RGB((int)(complement * (float)bg.red + factor * (float)fg.red), (int)(complement * (float)bg.green + factor * (float)fg.green), (int)(complement * (float)bg.blue + factor * (float)fg.blue));
    }

    private Control createHorizontalSeparator(Composite parent) {
        Label separator = new Label(parent, 259);
        GridDataFactory.fillDefaults().align(4, 0x1000000).grab(true, false).applyTo((Control)separator);
        return separator;
    }

    private void createDialogMenu(Composite parent) {
        this.toolBar = new ToolBar(parent, 0x800000);
        ToolItem viewMenuButton = new ToolItem(this.toolBar, 8, 0);
        GridDataFactory.fillDefaults().align(0x1000008, 0x1000000).applyTo((Control)this.toolBar);
        viewMenuButton.setImage(JFaceResources.getImage(POPUP_IMG_MENU));
        viewMenuButton.setDisabledImage(JFaceResources.getImage(POPUP_IMG_MENU_DISABLED));
        viewMenuButton.setToolTipText(JFaceResources.getString("PopupDialog.menuTooltip"));
        viewMenuButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                PopupDialog.this.showDialogMenu();
            }
        });
        this.toolBar.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDown(MouseEvent e) {
                PopupDialog.this.showDialogMenu();
            }
        });
    }

    protected void fillDialogMenu(IMenuManager dialogMenu) {
        dialogMenu.add(new GroupMarker("SystemMenuStart"));
        dialogMenu.add(new MoveAction());
        dialogMenu.add(new ResizeAction());
        if (this.showPersistActions) {
            if (this.isUsing34API) {
                dialogMenu.add(new PersistLocationAction());
                dialogMenu.add(new PersistSizeAction());
            } else {
                dialogMenu.add(new PersistBoundsAction());
            }
        }
        dialogMenu.add(new Separator("SystemMenuEnd"));
    }

    private void performTrackerAction(int style) {
        Shell shell = this.getShell();
        if (shell == null || shell.isDisposed()) {
            return;
        }
        Tracker tracker = new Tracker(shell.getDisplay(), style);
        tracker.setStippled(true);
        Rectangle[] r = new Rectangle[]{shell.getBounds()};
        tracker.setRectangles(r);
        boolean oldListenToDeactivate = this.listenToDeactivate;
        this.listenToDeactivate = false;
        if (tracker.open() && !shell.isDisposed()) {
            shell.setBounds(tracker.getRectangles()[0]);
        }
        tracker.dispose();
        this.listenToDeactivate = oldListenToDeactivate;
    }

    protected void showDialogMenu() {
        if (!this.showDialogMenu) {
            return;
        }
        if (this.menuManager == null) {
            this.menuManager = new MenuManager();
            this.fillDialogMenu(this.menuManager);
        }
        this.listenToDeactivate = !Util.isGtk();
        Menu menu = this.menuManager.createContextMenu((Control)this.getShell());
        Rectangle bounds = this.toolBar.getBounds();
        Point topLeft = new Point(bounds.x, bounds.y + bounds.height);
        topLeft = this.getShell().toDisplay(topLeft);
        menu.setLocation(topLeft.x, topLeft.y);
        menu.setVisible(true);
    }

    protected void setInfoText(String text) {
        this.infoText = text;
        if (this.infoLabel != null) {
            this.infoLabel.setText(text);
        }
    }

    protected void setTitleText(String text) {
        this.titleText = text;
        if (this.titleLabel != null) {
            this.titleLabel.setText(text);
        }
    }

    protected boolean getPersistBounds() {
        return this.persistLocation && this.persistSize;
    }

    protected boolean getPersistLocation() {
        return this.persistLocation;
    }

    protected boolean getPersistSize() {
        return this.persistSize;
    }

    public int open() {
        Shell shell = this.getShell();
        if (shell == null || shell.isDisposed()) {
            shell = null;
            this.create();
            shell = this.getShell();
        }
        this.adjustBounds();
        this.constrainShellSize();
        this.setTabOrder((Composite)this.getContents());
        this.listenToDeactivate = false;
        this.listenToParentDeactivate = false;
        if (this.takeFocusOnOpen) {
            shell.open();
            this.getFocusControl().setFocus();
        } else {
            shell.setVisible(true);
        }
        return 0;
    }

    public boolean close() {
        if (this.getShell() == null || this.getShell().isDisposed()) {
            return true;
        }
        this.saveDialogBounds(this.getShell());
        this.initializeWidgetState();
        if (this.parentDeactivateListener != null) {
            this.getShell().getParent().removeListener(27, this.parentDeactivateListener);
            this.parentDeactivateListener = null;
        }
        return super.close();
    }

    protected IDialogSettings getDialogSettings() {
        return null;
    }

    protected void saveDialogBounds(Shell shell) {
        IDialogSettings settings = this.getDialogSettings();
        if (settings != null) {
            Point shellLocation = shell.getLocation();
            Point shellSize = shell.getSize();
            Shell parent = this.getParentShell();
            if (parent != null) {
                Point parentLocation = parent.getLocation();
                shellLocation.x -= parentLocation.x;
                shellLocation.y -= parentLocation.y;
            }
            String prefix = this.getClass().getName();
            if (this.persistSize) {
                settings.put(String.valueOf(prefix) + DIALOG_WIDTH, shellSize.x);
                settings.put(String.valueOf(prefix) + DIALOG_HEIGHT, shellSize.y);
            }
            if (this.persistLocation) {
                settings.put(String.valueOf(prefix) + DIALOG_ORIGIN_X, shellLocation.x);
                settings.put(String.valueOf(prefix) + DIALOG_ORIGIN_Y, shellLocation.y);
            }
            if (this.showPersistActions && this.showDialogMenu) {
                settings.put(String.valueOf(this.getClass().getName()) + DIALOG_USE_PERSISTED_SIZE, this.persistSize);
                settings.put(String.valueOf(this.getClass().getName()) + DIALOG_USE_PERSISTED_LOCATION, this.persistLocation);
            }
        }
    }

    protected Point getInitialSize() {
        IDialogSettings settings;
        Point result = this.getDefaultSize();
        if (this.persistSize && (settings = this.getDialogSettings()) != null) {
            try {
                int width = settings.getInt(String.valueOf(this.getClass().getName()) + DIALOG_WIDTH);
                int height = settings.getInt(String.valueOf(this.getClass().getName()) + DIALOG_HEIGHT);
                result = new Point(width, height);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    protected Point getDefaultSize() {
        return super.getInitialSize();
    }

    protected Point getDefaultLocation(Point initialSize) {
        return super.getInitialLocation(initialSize);
    }

    protected void adjustBounds() {
    }

    protected Point getInitialLocation(Point initialSize) {
        IDialogSettings settings;
        Point result = this.getDefaultLocation(initialSize);
        if (this.persistLocation && (settings = this.getDialogSettings()) != null) {
            try {
                int x = settings.getInt(String.valueOf(this.getClass().getName()) + DIALOG_ORIGIN_X);
                int y = settings.getInt(String.valueOf(this.getClass().getName()) + DIALOG_ORIGIN_Y);
                result = new Point(x, y);
                Shell parent = this.getParentShell();
                if (parent != null) {
                    Point parentLocation = parent.getLocation();
                    result.x += parentLocation.x;
                    result.y += parentLocation.y;
                }
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    private void applyColors(Composite composite) {
        Color color = this.getForeground();
        if (color == null) {
            color = this.getDefaultForeground();
        }
        this.applyForegroundColor(color, (Control)composite, this.getForegroundColorExclusions());
        color = this.getBackground();
        if (color == null) {
            color = this.getDefaultBackground();
        }
        this.applyBackgroundColor(color, (Control)composite, this.getBackgroundColorExclusions());
    }

    protected Color getForeground() {
        return this.getDefaultForeground();
    }

    protected Color getBackground() {
        return this.getDefaultBackground();
    }

    private Color getDefaultForeground() {
        return this.getShell().getDisplay().getSystemColor(28);
    }

    private Color getDefaultBackground() {
        return this.getShell().getDisplay().getSystemColor(29);
    }

    private void applyFonts(Composite composite) {
        int i;
        FontData[] fontDatas;
        Font font;
        Dialog.applyDialogFont((Control)composite);
        if (this.titleLabel != null) {
            font = this.titleLabel.getFont();
            fontDatas = font.getFontData();
            i = 0;
            while (i < fontDatas.length) {
                fontDatas[i].setStyle(1);
                ++i;
            }
            this.titleFont = new Font((Device)this.titleLabel.getDisplay(), fontDatas);
            this.titleLabel.setFont(this.titleFont);
        }
        if (this.infoLabel != null) {
            font = this.infoLabel.getFont();
            fontDatas = font.getFontData();
            i = 0;
            while (i < fontDatas.length) {
                fontDatas[i].setHeight(fontDatas[i].getHeight() * 9 / 10);
                ++i;
            }
            this.infoFont = new Font((Device)this.infoLabel.getDisplay(), fontDatas);
            this.infoLabel.setFont(this.infoFont);
        }
    }

    private void applyForegroundColor(Color color, Control control, List exclusions) {
        if (!exclusions.contains(control)) {
            control.setForeground(color);
        }
        if (control instanceof Composite) {
            Control[] children = ((Composite)control).getChildren();
            int i = 0;
            while (i < children.length) {
                this.applyForegroundColor(color, children[i], exclusions);
                ++i;
            }
        }
    }

    private void applyBackgroundColor(Color color, Control control, List exclusions) {
        if (!exclusions.contains(control)) {
            control.setBackground(color);
        }
        if (control instanceof Composite) {
            Control[] children = ((Composite)control).getChildren();
            int i = 0;
            while (i < children.length) {
                this.applyBackgroundColor(color, children[i], exclusions);
                ++i;
            }
        }
    }

    protected void applyForegroundColor(Color color, Control control) {
        this.applyForegroundColor(color, control, this.getForegroundColorExclusions());
    }

    protected void applyBackgroundColor(Color color, Control control) {
        this.applyBackgroundColor(color, control, this.getBackgroundColorExclusions());
    }

    protected List getForegroundColorExclusions() {
        ArrayList<Object> list = new ArrayList<Object>(3);
        if (this.infoLabel != null) {
            list.add(this.infoLabel);
        }
        if (this.titleSeparator != null) {
            list.add(this.titleSeparator);
        }
        if (this.infoSeparator != null) {
            list.add(this.infoSeparator);
        }
        return list;
    }

    protected List getBackgroundColorExclusions() {
        ArrayList<Control> list = new ArrayList<Control>(2);
        if (this.titleSeparator != null) {
            list.add(this.titleSeparator);
        }
        if (this.infoSeparator != null) {
            list.add(this.infoSeparator);
        }
        return list;
    }

    private void initializeWidgetState() {
        IDialogSettings settings;
        this.menuManager = null;
        this.dialogArea = null;
        this.titleLabel = null;
        this.titleSeparator = null;
        this.infoSeparator = null;
        this.infoLabel = null;
        this.toolBar = null;
        if (this.showDialogMenu && this.showPersistActions && (settings = this.getDialogSettings()) != null) {
            String key = String.valueOf(this.getClass().getName()) + DIALOG_USE_PERSISTED_SIZE;
            if (settings.get(key) != null || !this.isUsing34API) {
                this.persistSize = settings.getBoolean(key);
            }
            if (settings.get(key = String.valueOf(this.getClass().getName()) + DIALOG_USE_PERSISTED_LOCATION) != null || !this.isUsing34API) {
                this.persistLocation = settings.getBoolean(key);
            }
        }
    }

    private void migrateBoundsSetting() {
        IDialogSettings settings = this.getDialogSettings();
        if (settings == null) {
            return;
        }
        String className = this.getClass().getName();
        String key = String.valueOf(className) + DIALOG_USE_PERSISTED_BOUNDS;
        String value = settings.get(key);
        if (value == null || DIALOG_VALUE_MIGRATED_TO_34.equals(value)) {
            return;
        }
        boolean storeBounds = settings.getBoolean(key);
        settings.put(String.valueOf(className) + DIALOG_USE_PERSISTED_LOCATION, storeBounds);
        settings.put(String.valueOf(className) + DIALOG_USE_PERSISTED_SIZE, storeBounds);
        settings.put(key, DIALOG_VALUE_MIGRATED_TO_34);
    }

    private void handleDispose() {
        if (this.infoColor != null && !this.infoColor.isDisposed()) {
            this.infoColor.dispose();
        }
        this.infoColor = null;
        if (this.infoFont != null && !this.infoFont.isDisposed()) {
            this.infoFont.dispose();
        }
        this.infoFont = null;
        if (this.titleFont != null && !this.titleFont.isDisposed()) {
            this.titleFont.dispose();
        }
        this.titleFont = null;
    }

    private class MoveAction
    extends Action {
        MoveAction() {
            super(JFaceResources.getString("PopupDialog.move"), 1);
        }

        public void run() {
            PopupDialog.this.performTrackerAction(0);
        }
    }

    private class PersistBoundsAction
    extends Action {
        PersistBoundsAction() {
            super(JFaceResources.getString("PopupDialog.persistBounds"), 2);
            this.setChecked(PopupDialog.this.persistLocation && PopupDialog.this.persistSize);
        }

        public void run() {
            PopupDialog.this.persistSize = this.isChecked();
            PopupDialog.this.persistLocation = PopupDialog.this.persistSize;
        }
    }

    private class PersistLocationAction
    extends Action {
        PersistLocationAction() {
            super(JFaceResources.getString("PopupDialog.persistLocation"), 2);
            this.setChecked(PopupDialog.this.persistLocation);
        }

        public void run() {
            PopupDialog.this.persistLocation = this.isChecked();
        }
    }

    private class PersistSizeAction
    extends Action {
        PersistSizeAction() {
            super(JFaceResources.getString("PopupDialog.persistSize"), 2);
            this.setChecked(PopupDialog.this.persistSize);
        }

        public void run() {
            PopupDialog.this.persistSize = this.isChecked();
        }
    }

    private class ResizeAction
    extends Action {
        ResizeAction() {
            super(JFaceResources.getString("PopupDialog.resize"), 1);
        }

        public void run() {
            PopupDialog.this.performTrackerAction(16);
        }
    }
}

