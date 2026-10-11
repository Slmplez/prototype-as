/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.custom.CTabFolder2Listener;
import org.eclipse.swt.custom.CTabFolderEvent;
import org.eclipse.swt.custom.CTabFolderLayout;
import org.eclipse.swt.custom.CTabFolderListener;
import org.eclipse.swt.custom.CTabFolderRenderer;
import org.eclipse.swt.custom.CTabItem;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.TypedListener;

public class CTabFolder
extends Composite {
    public int marginWidth = 0;
    public int marginHeight = 0;
    public int MIN_TAB_WIDTH = 4;
    public static RGB borderInsideRGB = new RGB(132, 130, 132);
    public static RGB borderMiddleRGB = new RGB(143, 141, 138);
    public static RGB borderOutsideRGB = new RGB(171, 168, 165);
    boolean onBottom = false;
    boolean single = false;
    boolean simple = true;
    int fixedTabHeight = -1;
    int tabHeight;
    int minChars = 20;
    boolean borderVisible = false;
    CTabFolderRenderer renderer;
    CTabItem[] items = new CTabItem[0];
    int firstIndex = -1;
    int selectedIndex = -1;
    int[] priority = new int[0];
    boolean mru = false;
    Listener listener;
    boolean ignoreTraverse;
    CTabFolder2Listener[] folderListeners = new CTabFolder2Listener[0];
    CTabFolderListener[] tabListeners = new CTabFolderListener[0];
    Image selectionBgImage;
    Color[] selectionGradientColors;
    int[] selectionGradientPercents;
    boolean selectionGradientVertical;
    Color selectionForeground;
    Color selectionBackground;
    Color[] gradientColors;
    int[] gradientPercents;
    boolean gradientVertical;
    boolean showUnselectedImage = true;
    boolean showClose = false;
    boolean showUnselectedClose = true;
    Rectangle chevronRect = new Rectangle(0, 0, 0, 0);
    int chevronImageState = 0;
    boolean showChevron = false;
    Menu showMenu;
    boolean showMin = false;
    Rectangle minRect = new Rectangle(0, 0, 0, 0);
    boolean minimized = false;
    int minImageState = 0;
    boolean showMax = false;
    Rectangle maxRect = new Rectangle(0, 0, 0, 0);
    boolean maximized = false;
    int maxImageState = 0;
    Control topRight;
    Rectangle topRightRect = new Rectangle(0, 0, 0, 0);
    int topRightAlignment = 131072;
    boolean inDispose = false;
    Point oldSize;
    Font oldFont;
    static final int DEFAULT_WIDTH = 64;
    static final int DEFAULT_HEIGHT = 64;
    static final int SELECTION_FOREGROUND = 24;
    static final int SELECTION_BACKGROUND = 25;
    static final int FOREGROUND = 21;
    static final int BACKGROUND = 22;
    static final int CHEVRON_CHILD_ID = 0;
    static final int MINIMIZE_CHILD_ID = 1;
    static final int MAXIMIZE_CHILD_ID = 2;
    static final int EXTRA_CHILD_ID_COUNT = 3;

    public CTabFolder(Composite parent, int style) {
        super(parent, CTabFolder.checkStyle(parent, style));
        this.init(style);
    }

    void init(int style) {
        super.setLayout(new CTabFolderLayout());
        int style2 = super.getStyle();
        this.oldFont = this.getFont();
        this.onBottom = (style2 & 0x400) != 0;
        this.showClose = (style2 & 0x40) != 0;
        this.single = (style2 & 4) != 0;
        this.borderVisible = (style & 0x800) != 0;
        Display display = this.getDisplay();
        this.selectionForeground = display.getSystemColor(24);
        this.selectionBackground = display.getSystemColor(25);
        this.renderer = new CTabFolderRenderer(this);
        this.updateTabHeight(false);
        this.listener = new Listener(){

            public void handleEvent(Event event) {
                switch (event.type) {
                    case 12: {
                        CTabFolder.this.onDispose(event);
                        break;
                    }
                    case 29: {
                        CTabFolder.this.onDragDetect(event);
                        break;
                    }
                    case 15: {
                        CTabFolder.this.onFocus(event);
                        break;
                    }
                    case 16: {
                        CTabFolder.this.onFocus(event);
                        break;
                    }
                    case 1: {
                        CTabFolder.this.onKeyDown(event);
                        break;
                    }
                    case 8: {
                        CTabFolder.this.onMouseDoubleClick(event);
                        break;
                    }
                    case 3: {
                        CTabFolder.this.onMouse(event);
                        break;
                    }
                    case 6: {
                        CTabFolder.this.onMouse(event);
                        break;
                    }
                    case 7: {
                        CTabFolder.this.onMouse(event);
                        break;
                    }
                    case 5: {
                        CTabFolder.this.onMouse(event);
                        break;
                    }
                    case 4: {
                        CTabFolder.this.onMouse(event);
                        break;
                    }
                    case 9: {
                        CTabFolder.this.onPaint(event);
                        break;
                    }
                    case 11: {
                        CTabFolder.this.onResize();
                        break;
                    }
                    case 31: {
                        CTabFolder.this.onTraverse(event);
                    }
                }
            }
        };
        int[] folderEvents = new int[]{12, 29, 15, 16, 1, 8, 3, 6, 7, 5, 4, 9, 11, 31};
        int i = 0;
        while (i < folderEvents.length) {
            this.addListener(folderEvents[i], this.listener);
            ++i;
        }
        this.initAccessible();
    }

    static int checkStyle(Composite parent, int style) {
        int mask = 109053126;
        if (((style &= mask) & 0x80) != 0) {
            style &= 0xFFFFFBFF;
        }
        if ((style & 2) != 0) {
            style &= 0xFFFFFFFB;
        }
        if (((style |= 0x100000) & 0x4000000) != 0) {
            return style;
        }
        if ((parent.getStyle() & 0x8000000) != 0 && (style & 0x2000000) == 0) {
            return style;
        }
        return style | 0x20000000;
    }

    public void addCTabFolder2Listener(CTabFolder2Listener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        CTabFolder2Listener[] newListeners = new CTabFolder2Listener[this.folderListeners.length + 1];
        System.arraycopy(this.folderListeners, 0, newListeners, 0, this.folderListeners.length);
        this.folderListeners = newListeners;
        this.folderListeners[this.folderListeners.length - 1] = listener;
    }

    public void addCTabFolderListener(CTabFolderListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        CTabFolderListener[] newTabListeners = new CTabFolderListener[this.tabListeners.length + 1];
        System.arraycopy(this.tabListeners, 0, newTabListeners, 0, this.tabListeners.length);
        this.tabListeners = newTabListeners;
        this.tabListeners[this.tabListeners.length - 1] = listener;
        if (!this.showClose) {
            this.showClose = true;
            this.updateItems();
            this.redraw();
        }
    }

    public void addSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(13, typedListener);
        this.addListener(14, typedListener);
    }

    public Rectangle computeTrim(int x, int y, int width, int height) {
        this.checkWidget();
        return this.renderer.computeTrim(-1, 0, x, y, width, height);
    }

    void createItem(CTabItem item, int index) {
        if (index < 0 || index > this.getItemCount()) {
            SWT.error(6);
        }
        item.parent = this;
        CTabItem[] newItems = new CTabItem[this.items.length + 1];
        System.arraycopy(this.items, 0, newItems, 0, index);
        newItems[index] = item;
        System.arraycopy(this.items, index, newItems, index + 1, this.items.length - index);
        this.items = newItems;
        if (this.selectedIndex >= index) {
            ++this.selectedIndex;
        }
        int[] newPriority = new int[this.priority.length + 1];
        int next = 0;
        int priorityIndex = this.priority.length;
        int i = 0;
        while (i < this.priority.length) {
            if (!this.mru && this.priority[i] == index) {
                priorityIndex = next++;
            }
            newPriority[next++] = this.priority[i] >= index ? this.priority[i] + 1 : this.priority[i];
            ++i;
        }
        newPriority[priorityIndex] = index;
        this.priority = newPriority;
        if (this.items.length == 1) {
            if (!this.updateTabHeight(false)) {
                this.updateItems();
            }
            this.redraw();
        } else {
            this.updateItems();
            this.redrawTabs();
        }
    }

    void destroyItem(CTabItem item) {
        if (this.inDispose) {
            return;
        }
        int index = this.indexOf(item);
        if (index == -1) {
            return;
        }
        if (this.items.length == 1) {
            this.items = new CTabItem[0];
            this.priority = new int[0];
            this.firstIndex = -1;
            this.selectedIndex = -1;
            Control control = item.getControl();
            if (control != null && !control.isDisposed()) {
                control.setVisible(false);
            }
            this.setToolTipText(null);
            GC gc = new GC(this);
            this.setButtonBounds(gc);
            gc.dispose();
            this.redraw();
            return;
        }
        CTabItem[] newItems = new CTabItem[this.items.length - 1];
        System.arraycopy(this.items, 0, newItems, 0, index);
        System.arraycopy(this.items, index + 1, newItems, index, this.items.length - index - 1);
        this.items = newItems;
        int[] newPriority = new int[this.priority.length - 1];
        int next = 0;
        int i = 0;
        while (i < this.priority.length) {
            if (this.priority[i] != index) {
                newPriority[next++] = this.priority[i] > index ? this.priority[i] - 1 : this.priority[i];
            }
            ++i;
        }
        this.priority = newPriority;
        if (this.selectedIndex == index) {
            Control control = item.getControl();
            this.selectedIndex = -1;
            int nextSelection = this.mru ? this.priority[0] : Math.max(0, index - 1);
            this.setSelection(nextSelection, true);
            if (control != null && !control.isDisposed()) {
                control.setVisible(false);
            }
        } else if (this.selectedIndex > index) {
            --this.selectedIndex;
        }
        this.updateItems();
        this.redrawTabs();
    }

    public boolean getBorderVisible() {
        this.checkWidget();
        return this.borderVisible;
    }

    public Rectangle getClientArea() {
        this.checkWidget();
        Rectangle trim = this.renderer.computeTrim(-1, 0, 0, 0, 0, 0);
        if (this.minimized) {
            return new Rectangle(-trim.x, -trim.y, 0, 0);
        }
        Point size = this.getSize();
        int width = size.x - trim.width;
        int height = size.y - trim.height;
        return new Rectangle(-trim.x, -trim.y, width, height);
    }

    public CTabItem getItem(int index) {
        if (index < 0 || index >= this.items.length) {
            SWT.error(6);
        }
        return this.items[index];
    }

    public CTabItem getItem(Point pt) {
        if (this.items.length == 0) {
            return null;
        }
        Point size = this.getSize();
        Rectangle trim = this.renderer.computeTrim(-3, 0, 0, 0, 0, 0);
        if (size.x <= trim.width) {
            return null;
        }
        if (this.showChevron && this.chevronRect.contains(pt)) {
            return null;
        }
        int i = 0;
        while (i < this.priority.length) {
            CTabItem item = this.items[this.priority[i]];
            Rectangle rect = item.getBounds();
            if (rect.contains(pt)) {
                return item;
            }
            ++i;
        }
        return null;
    }

    public int getItemCount() {
        return this.items.length;
    }

    public CTabItem[] getItems() {
        CTabItem[] tabItems = new CTabItem[this.items.length];
        System.arraycopy(this.items, 0, tabItems, 0, this.items.length);
        return tabItems;
    }

    char _findMnemonic(String string) {
        if (string == null) {
            return '\u0000';
        }
        int index = 0;
        int length = string.length();
        while (true) {
            if (index < length && string.charAt(index) != '&') {
                ++index;
                continue;
            }
            if (++index >= length) {
                return '\u0000';
            }
            if (string.charAt(index) != '&') {
                return Character.toLowerCase(string.charAt(index));
            }
            if (++index >= length) break;
        }
        return '\u0000';
    }

    String stripMnemonic(String string) {
        int index = 0;
        int length = string.length();
        while (true) {
            if (index < length && string.charAt(index) != '&') {
                ++index;
                continue;
            }
            if (++index >= length) {
                return string;
            }
            if (string.charAt(index) != '&') {
                return String.valueOf(string.substring(0, index - 1)) + string.substring(index, length);
            }
            if (++index >= length) break;
        }
        return string;
    }

    public boolean getMinimized() {
        this.checkWidget();
        return this.minimized;
    }

    public boolean getMinimizeVisible() {
        this.checkWidget();
        return this.showMin;
    }

    public int getMinimumCharacters() {
        this.checkWidget();
        return this.minChars;
    }

    public boolean getMaximized() {
        this.checkWidget();
        return this.maximized;
    }

    public boolean getMaximizeVisible() {
        this.checkWidget();
        return this.showMax;
    }

    public boolean getMRUVisible() {
        this.checkWidget();
        return this.mru;
    }

    public CTabFolderRenderer getRenderer() {
        this.checkWidget();
        return this.renderer;
    }

    int getRightItemEdge(GC gc) {
        Rectangle trim = this.renderer.computeTrim(-3, 0, 0, 0, 0, 0);
        int x = this.getSize().x - (trim.width + trim.x) - 3;
        if (this.showMin) {
            x -= this.renderer.computeSize((int)-6, (int)0, (GC)gc, (int)-1, (int)-1).x;
        }
        if (this.showMax) {
            x -= this.renderer.computeSize((int)-5, (int)0, (GC)gc, (int)-1, (int)-1).x;
        }
        if (this.showChevron) {
            x -= this.renderer.computeSize((int)-7, (int)0, (GC)gc, (int)-1, (int)-1).x;
        }
        if (this.topRight != null && this.topRightAlignment != 4) {
            Point rightSize = this.topRight.computeSize(-1, -1);
            x -= rightSize.x + 3;
        }
        return Math.max(0, x);
    }

    public CTabItem getSelection() {
        if (this.selectedIndex == -1) {
            return null;
        }
        return this.items[this.selectedIndex];
    }

    public Color getSelectionBackground() {
        this.checkWidget();
        return this.selectionBackground;
    }

    public Color getSelectionForeground() {
        this.checkWidget();
        return this.selectionForeground;
    }

    public int getSelectionIndex() {
        return this.selectedIndex;
    }

    public boolean getSimple() {
        this.checkWidget();
        return this.simple;
    }

    public boolean getSingle() {
        this.checkWidget();
        return this.single;
    }

    public int getStyle() {
        int style = super.getStyle();
        style &= 0xFFFFFB7F;
        style |= this.onBottom ? 1024 : 128;
        style &= 0xFFFFFFF9;
        style |= this.single ? 4 : 2;
        if (this.borderVisible) {
            style |= 0x800;
        }
        style &= 0xFFFFFFBF;
        if (this.showClose) {
            style |= 0x40;
        }
        return style;
    }

    public int getTabHeight() {
        this.checkWidget();
        if (this.fixedTabHeight != -1) {
            return this.fixedTabHeight;
        }
        return this.tabHeight - 1;
    }

    public int getTabPosition() {
        this.checkWidget();
        return this.onBottom ? 1024 : 128;
    }

    public Control getTopRight() {
        this.checkWidget();
        return this.topRight;
    }

    public int getTopRightAlignment() {
        this.checkWidget();
        return this.topRightAlignment;
    }

    public boolean getUnselectedCloseVisible() {
        this.checkWidget();
        return this.showUnselectedClose;
    }

    public boolean getUnselectedImageVisible() {
        this.checkWidget();
        return this.showUnselectedImage;
    }

    public int indexOf(CTabItem item) {
        this.checkWidget();
        if (item == null) {
            SWT.error(4);
        }
        int i = 0;
        while (i < this.items.length) {
            if (this.items[i] == item) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    void initAccessible() {
        final Accessible accessible = this.getAccessible();
        accessible.addAccessibleListener(new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                String name = null;
                int childID = e.childID;
                if (childID >= 0 && childID < CTabFolder.this.items.length) {
                    name = CTabFolder.this.stripMnemonic(CTabFolder.this.items[childID].getText());
                } else if (childID == CTabFolder.this.items.length + 0) {
                    name = SWT.getMessage("SWT_ShowList");
                } else if (childID == CTabFolder.this.items.length + 1) {
                    name = CTabFolder.this.minimized ? SWT.getMessage("SWT_Restore") : SWT.getMessage("SWT_Minimize");
                } else if (childID == CTabFolder.this.items.length + 2) {
                    name = CTabFolder.this.maximized ? SWT.getMessage("SWT_Restore") : SWT.getMessage("SWT_Maximize");
                }
                e.result = name;
            }

            public void getHelp(AccessibleEvent e) {
                String help = null;
                int childID = e.childID;
                if (childID == -1) {
                    help = CTabFolder.this.getToolTipText();
                } else if (childID >= 0 && childID < CTabFolder.this.items.length) {
                    help = CTabFolder.this.items[childID].getToolTipText();
                }
                e.result = help;
            }

            public void getKeyboardShortcut(AccessibleEvent e) {
                char mnemonic;
                String text;
                String shortcut = null;
                int childID = e.childID;
                if (childID >= 0 && childID < CTabFolder.this.items.length && (text = CTabFolder.this.items[childID].getText()) != null && (mnemonic = CTabFolder.this._findMnemonic(text)) != '\u0000') {
                    shortcut = "Alt+" + mnemonic;
                }
                if (childID == -1) {
                    shortcut = "Ctrl+PageDown";
                }
                e.result = shortcut;
            }
        });
        accessible.addAccessibleControlListener(new AccessibleControlAdapter(){

            public void getChildAtPoint(AccessibleControlEvent e) {
                Point testPoint = CTabFolder.this.toControl(e.x, e.y);
                int childID = -2;
                int i = 0;
                while (i < CTabFolder.this.items.length) {
                    if (CTabFolder.this.items[i].getBounds().contains(testPoint)) {
                        childID = i;
                        break;
                    }
                    ++i;
                }
                if (childID == -2) {
                    if (CTabFolder.this.showChevron && CTabFolder.this.chevronRect.contains(testPoint)) {
                        childID = CTabFolder.this.items.length + 0;
                    } else if (CTabFolder.this.showMin && CTabFolder.this.minRect.contains(testPoint)) {
                        childID = CTabFolder.this.items.length + 1;
                    } else if (CTabFolder.this.showMax && CTabFolder.this.maxRect.contains(testPoint)) {
                        childID = CTabFolder.this.items.length + 2;
                    } else {
                        Rectangle location = CTabFolder.this.getBounds();
                        location.height -= CTabFolder.this.getClientArea().height;
                        if (location.contains(testPoint)) {
                            childID = -1;
                        }
                    }
                }
                e.childID = childID;
            }

            public void getLocation(AccessibleControlEvent e) {
                Rectangle location = null;
                Point pt = null;
                int childID = e.childID;
                if (childID == -1) {
                    location = CTabFolder.this.getBounds();
                    pt = CTabFolder.this.getParent().toDisplay(location.x, location.y);
                } else {
                    if (childID >= 0 && childID < CTabFolder.this.items.length && CTabFolder.this.items[childID].isShowing()) {
                        location = CTabFolder.this.items[childID].getBounds();
                    } else if (CTabFolder.this.showChevron && childID == CTabFolder.this.items.length + 0) {
                        location = CTabFolder.this.chevronRect;
                    } else if (CTabFolder.this.showMin && childID == CTabFolder.this.items.length + 1) {
                        location = CTabFolder.this.minRect;
                    } else if (CTabFolder.this.showMax && childID == CTabFolder.this.items.length + 2) {
                        location = CTabFolder.this.maxRect;
                    }
                    if (location != null) {
                        pt = CTabFolder.this.toDisplay(location.x, location.y);
                    }
                }
                if (location != null && pt != null) {
                    e.x = pt.x;
                    e.y = pt.y;
                    e.width = location.width;
                    e.height = location.height;
                }
            }

            public void getChildCount(AccessibleControlEvent e) {
                e.detail = CTabFolder.this.items.length + 3;
            }

            public void getDefaultAction(AccessibleControlEvent e) {
                String action = null;
                int childID = e.childID;
                if (childID >= 0 && childID < CTabFolder.this.items.length) {
                    action = SWT.getMessage("SWT_Switch");
                }
                if (childID >= CTabFolder.this.items.length && childID < CTabFolder.this.items.length + 3) {
                    action = SWT.getMessage("SWT_Press");
                }
                e.result = action;
            }

            public void getFocus(AccessibleControlEvent e) {
                int childID = -2;
                if (CTabFolder.this.isFocusControl()) {
                    childID = CTabFolder.this.selectedIndex == -1 ? -1 : CTabFolder.this.selectedIndex;
                }
                e.childID = childID;
            }

            public void getRole(AccessibleControlEvent e) {
                int role = 0;
                int childID = e.childID;
                if (childID == -1) {
                    role = 60;
                } else if (childID >= 0 && childID < CTabFolder.this.items.length) {
                    role = 37;
                } else if (childID >= CTabFolder.this.items.length && childID < CTabFolder.this.items.length + 3) {
                    role = 43;
                }
                e.detail = role;
            }

            public void getSelection(AccessibleControlEvent e) {
                e.childID = CTabFolder.this.selectedIndex == -1 ? -2 : CTabFolder.this.selectedIndex;
            }

            public void getState(AccessibleControlEvent e) {
                int state = 0;
                int childID = e.childID;
                if (childID == -1) {
                    state = 0;
                } else if (childID >= 0 && childID < CTabFolder.this.items.length) {
                    state = 0x200000;
                    if (CTabFolder.this.isFocusControl()) {
                        state |= 0x100000;
                    }
                    if (CTabFolder.this.selectedIndex == childID) {
                        state |= 2;
                        if (CTabFolder.this.isFocusControl()) {
                            state |= 4;
                        }
                    }
                } else if (childID == CTabFolder.this.items.length + 0) {
                    state = CTabFolder.this.showChevron ? 0 : 32768;
                } else if (childID == CTabFolder.this.items.length + 1) {
                    state = CTabFolder.this.showMin ? 0 : 32768;
                } else if (childID == CTabFolder.this.items.length + 2) {
                    state = CTabFolder.this.showMax ? 0 : 32768;
                }
                e.detail = state;
            }

            public void getChildren(AccessibleControlEvent e) {
                int childIdCount = CTabFolder.this.items.length + 3;
                Object[] children = new Object[childIdCount];
                int i = 0;
                while (i < childIdCount) {
                    children[i] = new Integer(i);
                    ++i;
                }
                e.children = children;
            }
        });
        this.addListener(13, new Listener(){

            public void handleEvent(Event event) {
                if (CTabFolder.this.isFocusControl()) {
                    if (CTabFolder.this.selectedIndex == -1) {
                        accessible.setFocus(-1);
                    } else {
                        accessible.setFocus(CTabFolder.this.selectedIndex);
                    }
                }
            }
        });
        this.addListener(15, new Listener(){

            public void handleEvent(Event event) {
                if (CTabFolder.this.selectedIndex == -1) {
                    accessible.setFocus(-1);
                } else {
                    accessible.setFocus(CTabFolder.this.selectedIndex);
                }
            }
        });
    }

    void onKeyDown(Event event) {
        switch (event.keyCode) {
            case 0x1000003: 
            case 0x1000004: {
                int index;
                int offset;
                int count = this.items.length;
                if (count == 0) {
                    return;
                }
                if (this.selectedIndex == -1) {
                    return;
                }
                int leadKey = (this.getStyle() & 0x4000000) != 0 ? 0x1000004 : 0x1000003;
                int n = offset = event.keyCode == leadKey ? -1 : 1;
                if (!this.mru) {
                    index = this.selectedIndex + offset;
                } else {
                    int[] visible = new int[this.items.length];
                    int idx = 0;
                    int current = -1;
                    int i = 0;
                    while (i < this.items.length) {
                        if (this.items[i].showing) {
                            if (i == this.selectedIndex) {
                                current = idx;
                            }
                            visible[idx++] = i;
                        }
                        ++i;
                    }
                    if (current + offset >= 0 && current + offset < idx) {
                        index = visible[current + offset];
                    } else {
                        if (this.showChevron) {
                            CTabFolderEvent e = new CTabFolderEvent(this);
                            e.widget = this;
                            e.time = event.time;
                            e.x = this.chevronRect.x;
                            e.y = this.chevronRect.y;
                            e.width = this.chevronRect.width;
                            e.height = this.chevronRect.height;
                            e.doit = true;
                            int i2 = 0;
                            while (i2 < this.folderListeners.length) {
                                this.folderListeners[i2].showList(e);
                                ++i2;
                            }
                            if (e.doit && !this.isDisposed()) {
                                this.showList(this.chevronRect);
                            }
                        }
                        return;
                    }
                }
                if (index < 0 || index >= count) {
                    return;
                }
                this.setSelection(index, true);
                this.forceFocus();
            }
        }
    }

    void onDispose(Event event) {
        this.removeListener(12, this.listener);
        this.notifyListeners(12, event);
        event.type = 0;
        this.inDispose = true;
        if (this.showMenu != null && !this.showMenu.isDisposed()) {
            this.showMenu.dispose();
            this.showMenu = null;
        }
        int length = this.items.length;
        int i = 0;
        while (i < length) {
            if (this.items[i] != null) {
                this.items[i].dispose();
            }
            ++i;
        }
        this.selectionGradientColors = null;
        this.selectionGradientPercents = null;
        this.selectionBgImage = null;
        this.selectionBackground = null;
        this.selectionForeground = null;
        if (this.renderer != null) {
            this.renderer.dispose();
        }
        this.renderer = null;
    }

    void onDragDetect(Event event) {
        boolean consume = false;
        if (this.chevronRect.contains(event.x, event.y) || this.minRect.contains(event.x, event.y) || this.maxRect.contains(event.x, event.y)) {
            consume = true;
        } else {
            int i = 0;
            while (i < this.items.length) {
                if (this.items[i].closeRect.contains(event.x, event.y)) {
                    consume = true;
                    break;
                }
                ++i;
            }
        }
        if (consume) {
            event.type = 0;
        }
    }

    void onFocus(Event event) {
        this.checkWidget();
        if (this.selectedIndex >= 0) {
            this.redraw();
        } else {
            this.setSelection(0, true);
        }
    }

    boolean onMnemonic(Event event, boolean doit) {
        char key = event.character;
        int i = 0;
        while (i < this.items.length) {
            char mnemonic;
            if (this.items[i] != null && (mnemonic = this._findMnemonic(this.items[i].getText())) != '\u0000' && Character.toLowerCase(key) == mnemonic) {
                if (doit) {
                    this.setSelection(i, true);
                    this.forceFocus();
                }
                return true;
            }
            ++i;
        }
        return false;
    }

    void onMouseDoubleClick(Event event) {
        if (event.button != 1 || (event.stateMask & 0x100000) != 0 || (event.stateMask & 0x200000) != 0) {
            return;
        }
        Event e = new Event();
        e.item = this.getItem(new Point(event.x, event.y));
        if (e.item != null) {
            this.notifyListeners(14, e);
        }
    }

    void onMouse(Event event) {
        int x = event.x;
        int y = event.y;
        switch (event.type) {
            case 6: {
                this.setToolTipText(null);
                break;
            }
            case 7: {
                if (this.minImageState != 0) {
                    this.minImageState = 0;
                    this.redraw(this.minRect.x, this.minRect.y, this.minRect.width, this.minRect.height, false);
                }
                if (this.maxImageState != 0) {
                    this.maxImageState = 0;
                    this.redraw(this.maxRect.x, this.maxRect.y, this.maxRect.width, this.maxRect.height, false);
                }
                if (this.chevronImageState != 0) {
                    this.chevronImageState = 0;
                    this.redraw(this.chevronRect.x, this.chevronRect.y, this.chevronRect.width, this.chevronRect.height, false);
                }
                int i = 0;
                while (i < this.items.length) {
                    CTabItem item = this.items[i];
                    if (i != this.selectedIndex && item.closeImageState != 8) {
                        item.closeImageState = 8;
                        this.redraw(item.closeRect.x, item.closeRect.y, item.closeRect.width, item.closeRect.height, false);
                    }
                    if ((item.state & 0x20) != 0) {
                        item.state &= 0xFFFFFFDF;
                        this.redraw(item.x, item.y, item.width, item.height, false);
                    }
                    if (i == this.selectedIndex && item.closeImageState != 0) {
                        item.closeImageState = 0;
                        this.redraw(item.closeRect.x, item.closeRect.y, item.closeRect.width, item.closeRect.height, false);
                    }
                    ++i;
                }
                break;
            }
            case 3: {
                if (event.button != 1) {
                    return;
                }
                if (this.minRect.contains(x, y)) {
                    this.minImageState = 2;
                    this.redraw(this.minRect.x, this.minRect.y, this.minRect.width, this.minRect.height, false);
                    this.update();
                    return;
                }
                if (this.maxRect.contains(x, y)) {
                    this.maxImageState = 2;
                    this.redraw(this.maxRect.x, this.maxRect.y, this.maxRect.width, this.maxRect.height, false);
                    this.update();
                    return;
                }
                if (this.chevronRect.contains(x, y)) {
                    this.chevronImageState = this.chevronImageState != 32 ? 32 : 2;
                    this.redraw(this.chevronRect.x, this.chevronRect.y, this.chevronRect.width, this.chevronRect.height, false);
                    this.update();
                    return;
                }
                CTabItem item = null;
                if (this.single) {
                    Rectangle bounds;
                    if (this.selectedIndex != -1 && (bounds = this.items[this.selectedIndex].getBounds()).contains(x, y)) {
                        item = this.items[this.selectedIndex];
                    }
                } else {
                    int i = 0;
                    while (i < this.items.length) {
                        Rectangle bounds = this.items[i].getBounds();
                        if (bounds.contains(x, y)) {
                            item = this.items[i];
                        }
                        ++i;
                    }
                }
                if (item == null) break;
                if (item.closeRect.contains(x, y)) {
                    item.closeImageState = 2;
                    this.redraw(item.closeRect.x, item.closeRect.y, item.closeRect.width, item.closeRect.height, false);
                    this.update();
                    return;
                }
                int index = this.indexOf(item);
                if (item.showing) {
                    int oldSelectedIndex = this.selectedIndex;
                    this.setSelection(index, true);
                    if (oldSelectedIndex == this.selectedIndex) {
                        this.forceFocus();
                    }
                }
                return;
            }
            case 5: {
                this._setToolTipText(event.x, event.y);
                boolean close = false;
                boolean minimize = false;
                boolean maximize = false;
                boolean chevron = false;
                if (this.minRect.contains(x, y)) {
                    minimize = true;
                    if (this.minImageState != 2 && this.minImageState != 32) {
                        this.minImageState = 32;
                        this.redraw(this.minRect.x, this.minRect.y, this.minRect.width, this.minRect.height, false);
                    }
                }
                if (this.maxRect.contains(x, y)) {
                    maximize = true;
                    if (this.maxImageState != 2 && this.maxImageState != 32) {
                        this.maxImageState = 32;
                        this.redraw(this.maxRect.x, this.maxRect.y, this.maxRect.width, this.maxRect.height, false);
                    }
                }
                if (this.chevronRect.contains(x, y)) {
                    chevron = true;
                    if (this.chevronImageState != 2 && this.chevronImageState != 32) {
                        this.chevronImageState = 32;
                        this.redraw(this.chevronRect.x, this.chevronRect.y, this.chevronRect.width, this.chevronRect.height, false);
                    }
                }
                if (this.minImageState != 0 && !minimize) {
                    this.minImageState = 0;
                    this.redraw(this.minRect.x, this.minRect.y, this.minRect.width, this.minRect.height, false);
                }
                if (this.maxImageState != 0 && !maximize) {
                    this.maxImageState = 0;
                    this.redraw(this.maxRect.x, this.maxRect.y, this.maxRect.width, this.maxRect.height, false);
                }
                if (this.chevronImageState != 0 && !chevron) {
                    this.chevronImageState = 0;
                    this.redraw(this.chevronRect.x, this.chevronRect.y, this.chevronRect.width, this.chevronRect.height, false);
                }
                int i = 0;
                while (i < this.items.length) {
                    CTabItem item = this.items[i];
                    close = false;
                    if (item.getBounds().contains(x, y)) {
                        close = true;
                        if (item.closeRect.contains(x, y)) {
                            if (item.closeImageState != 2 && item.closeImageState != 32) {
                                item.closeImageState = 32;
                                this.redraw(item.closeRect.x, item.closeRect.y, item.closeRect.width, item.closeRect.height, false);
                            }
                        } else if (item.closeImageState != 0) {
                            item.closeImageState = 0;
                            this.redraw(item.closeRect.x, item.closeRect.y, item.closeRect.width, item.closeRect.height, false);
                        }
                        if ((item.state & 0x20) == 0) {
                            item.state |= 0x20;
                            this.redraw(item.x, item.y, item.width, item.height, false);
                        }
                    }
                    if (i != this.selectedIndex && item.closeImageState != 8 && !close) {
                        item.closeImageState = 8;
                        this.redraw(item.closeRect.x, item.closeRect.y, item.closeRect.width, item.closeRect.height, false);
                    }
                    if ((item.state & 0x20) != 0 && !close) {
                        item.state &= 0xFFFFFFDF;
                        this.redraw(item.x, item.y, item.width, item.height, false);
                    }
                    if (i == this.selectedIndex && item.closeImageState != 0 && !close) {
                        item.closeImageState = 0;
                        this.redraw(item.closeRect.x, item.closeRect.y, item.closeRect.width, item.closeRect.height, false);
                    }
                    ++i;
                }
                break;
            }
            case 4: {
                SWTEventListener listener;
                if (event.button != 1) {
                    return;
                }
                if (this.chevronRect.contains(x, y)) {
                    boolean selected;
                    boolean bl = selected = this.chevronImageState == 2;
                    if (!selected) {
                        return;
                    }
                    CTabFolderEvent e = new CTabFolderEvent(this);
                    e.widget = this;
                    e.time = event.time;
                    e.x = this.chevronRect.x;
                    e.y = this.chevronRect.y;
                    e.width = this.chevronRect.width;
                    e.height = this.chevronRect.height;
                    e.doit = true;
                    int i = 0;
                    while (i < this.folderListeners.length) {
                        this.folderListeners[i].showList(e);
                        ++i;
                    }
                    if (e.doit && !this.isDisposed()) {
                        this.showList(this.chevronRect);
                    }
                    return;
                }
                if (this.minRect.contains(x, y)) {
                    boolean selected = this.minImageState == 2;
                    this.minImageState = 32;
                    this.redraw(this.minRect.x, this.minRect.y, this.minRect.width, this.minRect.height, false);
                    if (!selected) {
                        return;
                    }
                    CTabFolderEvent e = new CTabFolderEvent(this);
                    e.widget = this;
                    e.time = event.time;
                    int i = 0;
                    while (i < this.folderListeners.length) {
                        if (this.minimized) {
                            this.folderListeners[i].restore(e);
                        } else {
                            this.folderListeners[i].minimize(e);
                        }
                        ++i;
                    }
                    return;
                }
                if (this.maxRect.contains(x, y)) {
                    boolean selected = this.maxImageState == 2;
                    this.maxImageState = 32;
                    this.redraw(this.maxRect.x, this.maxRect.y, this.maxRect.width, this.maxRect.height, false);
                    if (!selected) {
                        return;
                    }
                    CTabFolderEvent e = new CTabFolderEvent(this);
                    e.widget = this;
                    e.time = event.time;
                    int i = 0;
                    while (i < this.folderListeners.length) {
                        if (this.maximized) {
                            this.folderListeners[i].restore(e);
                        } else {
                            this.folderListeners[i].maximize(e);
                        }
                        ++i;
                    }
                    return;
                }
                CTabItem item = null;
                if (this.single) {
                    Rectangle bounds;
                    if (this.selectedIndex != -1 && (bounds = this.items[this.selectedIndex].getBounds()).contains(x, y)) {
                        item = this.items[this.selectedIndex];
                    }
                } else {
                    int i = 0;
                    while (i < this.items.length) {
                        Rectangle bounds = this.items[i].getBounds();
                        if (bounds.contains(x, y)) {
                            item = this.items[i];
                        }
                        ++i;
                    }
                }
                if (item == null || !item.closeRect.contains(x, y)) break;
                boolean selected = item.closeImageState == 2;
                item.closeImageState = 32;
                this.redraw(item.closeRect.x, item.closeRect.y, item.closeRect.width, item.closeRect.height, false);
                if (!selected) {
                    return;
                }
                CTabFolderEvent e = new CTabFolderEvent(this);
                e.widget = this;
                e.time = event.time;
                e.item = item;
                e.doit = true;
                int j = 0;
                while (j < this.folderListeners.length) {
                    listener = this.folderListeners[j];
                    listener.close(e);
                    ++j;
                }
                j = 0;
                while (j < this.tabListeners.length) {
                    listener = this.tabListeners[j];
                    listener.itemClosed(e);
                    ++j;
                }
                if (e.doit) {
                    item.dispose();
                }
                if (!this.isDisposed() && item.isDisposed()) {
                    Display display = this.getDisplay();
                    Point pt = display.getCursorLocation();
                    pt = display.map(null, this, pt.x, pt.y);
                    CTabItem nextItem = this.getItem(pt);
                    if (nextItem != null) {
                        if (nextItem.closeRect.contains(pt)) {
                            if (nextItem.closeImageState != 2 && nextItem.closeImageState != 32) {
                                nextItem.closeImageState = 32;
                                this.redraw(nextItem.closeRect.x, nextItem.closeRect.y, nextItem.closeRect.width, nextItem.closeRect.height, false);
                            }
                        } else if (nextItem.closeImageState != 0) {
                            nextItem.closeImageState = 0;
                            this.redraw(nextItem.closeRect.x, nextItem.closeRect.y, nextItem.closeRect.width, nextItem.closeRect.height, false);
                        }
                    }
                }
                return;
            }
        }
    }

    void onPageTraversal(Event event) {
        int count = this.items.length;
        if (count == 0) {
            return;
        }
        int index = this.selectedIndex;
        if (index == -1) {
            index = 0;
        } else {
            int offset;
            int n = offset = event.detail == 512 ? 1 : -1;
            if (!this.mru) {
                index = (this.selectedIndex + offset + count) % count;
            } else {
                int[] visible = new int[this.items.length];
                int idx = 0;
                int current = -1;
                int i = 0;
                while (i < this.items.length) {
                    if (this.items[i].showing) {
                        if (i == this.selectedIndex) {
                            current = idx;
                        }
                        visible[idx++] = i;
                    }
                    ++i;
                }
                if (current + offset >= 0 && current + offset < idx) {
                    index = visible[current + offset];
                } else if (this.showChevron) {
                    CTabFolderEvent e = new CTabFolderEvent(this);
                    e.widget = this;
                    e.time = event.time;
                    e.x = this.chevronRect.x;
                    e.y = this.chevronRect.y;
                    e.width = this.chevronRect.width;
                    e.height = this.chevronRect.height;
                    e.doit = true;
                    int i2 = 0;
                    while (i2 < this.folderListeners.length) {
                        this.folderListeners[i2].showList(e);
                        ++i2;
                    }
                    if (e.doit && !this.isDisposed()) {
                        this.showList(this.chevronRect);
                    }
                }
            }
        }
        this.setSelection(index, true);
    }

    void onPaint(Event event) {
        if (this.inDispose) {
            return;
        }
        Font font = this.getFont();
        if (this.oldFont == null || !this.oldFont.equals(font)) {
            this.oldFont = font;
            if (!this.updateTabHeight(false)) {
                this.updateItems();
                this.redraw();
                return;
            }
        }
        GC gc = event.gc;
        Font gcFont = gc.getFont();
        Color gcBackground = gc.getBackground();
        Color gcForeground = gc.getForeground();
        Point size = this.getSize();
        Rectangle bodyRect = new Rectangle(0, 0, size.x, size.y);
        this.renderer.draw(-1, 24, bodyRect, gc);
        gc.setFont(gcFont);
        gc.setForeground(gcForeground);
        gc.setBackground(gcBackground);
        this.renderer.draw(-2, 24, bodyRect, gc);
        gc.setFont(gcFont);
        gc.setForeground(gcForeground);
        gc.setBackground(gcBackground);
        if (!this.single) {
            int i = 0;
            while (i < this.items.length) {
                Rectangle itemBounds = this.items[i].getBounds();
                if (i != this.selectedIndex && event.getBounds().intersects(itemBounds)) {
                    this.renderer.draw(i, 0x18 | this.items[i].state, itemBounds, gc);
                }
                ++i;
            }
        }
        gc.setFont(gcFont);
        gc.setForeground(gcForeground);
        gc.setBackground(gcBackground);
        if (this.selectedIndex != -1) {
            this.renderer.draw(this.selectedIndex, this.items[this.selectedIndex].state | 8 | 0x10, this.items[this.selectedIndex].getBounds(), gc);
        }
        gc.setFont(gcFont);
        gc.setForeground(gcForeground);
        gc.setBackground(gcBackground);
        this.renderer.draw(-5, this.maxImageState, this.maxRect, gc);
        this.renderer.draw(-6, this.minImageState, this.minRect, gc);
        this.renderer.draw(-7, this.chevronImageState, this.chevronRect, gc);
        gc.setFont(gcFont);
        gc.setForeground(gcForeground);
        gc.setBackground(gcBackground);
    }

    void onResize() {
        if (this.updateItems()) {
            this.redrawTabs();
        }
        Point size = this.getSize();
        if (this.oldSize == null) {
            this.redraw();
        } else if (this.onBottom && size.y != this.oldSize.y) {
            this.redraw();
        } else {
            int x1 = Math.min(size.x, this.oldSize.x);
            Rectangle trim = this.renderer.computeTrim(-1, 0, 0, 0, 0, 0);
            if (size.x != this.oldSize.x) {
                x1 -= trim.width + trim.x - this.marginWidth + 2;
            }
            if (!this.simple) {
                x1 -= 5;
            }
            int y1 = Math.min(size.y, this.oldSize.y);
            if (size.y != this.oldSize.y) {
                y1 -= trim.height + trim.y - this.marginHeight;
            }
            int x2 = Math.max(size.x, this.oldSize.x);
            int y2 = Math.max(size.y, this.oldSize.y);
            this.redraw(0, y1, x2, y2 - y1, false);
            this.redraw(x1, 0, x2 - x1, y2, false);
        }
        this.oldSize = size;
    }

    void onTraverse(Event event) {
        if (this.ignoreTraverse) {
            return;
        }
        switch (event.detail) {
            case 2: 
            case 4: 
            case 8: 
            case 16: {
                Control focusControl = this.getDisplay().getFocusControl();
                if (focusControl != this) break;
                event.doit = true;
                break;
            }
            case 128: {
                event.doit = this.onMnemonic(event, false);
                break;
            }
            case 256: 
            case 512: {
                event.doit = this.items.length > 0;
            }
        }
        this.ignoreTraverse = true;
        this.notifyListeners(31, event);
        this.ignoreTraverse = false;
        event.type = 0;
        if (this.isDisposed()) {
            return;
        }
        if (!event.doit) {
            return;
        }
        switch (event.detail) {
            case 128: {
                this.onMnemonic(event, true);
                event.detail = 0;
                break;
            }
            case 256: 
            case 512: {
                this.onPageTraversal(event);
                event.detail = 0;
            }
        }
    }

    void redrawTabs() {
        Point size = this.getSize();
        Rectangle trim = this.renderer.computeTrim(-1, 0, 0, 0, 0, 0);
        if (this.onBottom) {
            int h = trim.height + trim.y - this.marginHeight;
            this.redraw(0, size.y - h - 1, size.x, h + 1, false);
        } else {
            this.redraw(0, 0, size.x, -trim.y - this.marginHeight + 1, false);
        }
    }

    public void removeCTabFolder2Listener(CTabFolder2Listener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        if (this.folderListeners.length == 0) {
            return;
        }
        int index = -1;
        int i = 0;
        while (i < this.folderListeners.length) {
            if (listener == this.folderListeners[i]) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        if (this.folderListeners.length == 1) {
            this.folderListeners = new CTabFolder2Listener[0];
            return;
        }
        CTabFolder2Listener[] newTabListeners = new CTabFolder2Listener[this.folderListeners.length - 1];
        System.arraycopy(this.folderListeners, 0, newTabListeners, 0, index);
        System.arraycopy(this.folderListeners, index + 1, newTabListeners, index, this.folderListeners.length - index - 1);
        this.folderListeners = newTabListeners;
    }

    public void removeCTabFolderListener(CTabFolderListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        if (this.tabListeners.length == 0) {
            return;
        }
        int index = -1;
        int i = 0;
        while (i < this.tabListeners.length) {
            if (listener == this.tabListeners[i]) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        if (this.tabListeners.length == 1) {
            this.tabListeners = new CTabFolderListener[0];
            return;
        }
        CTabFolderListener[] newTabListeners = new CTabFolderListener[this.tabListeners.length - 1];
        System.arraycopy(this.tabListeners, 0, newTabListeners, 0, index);
        System.arraycopy(this.tabListeners, index + 1, newTabListeners, index, this.tabListeners.length - index - 1);
        this.tabListeners = newTabListeners;
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(13, listener);
        this.removeListener(14, listener);
    }

    public void reskin(int flags) {
        super.reskin(flags);
        int i = 0;
        while (i < this.items.length) {
            this.items[i].reskin(flags);
            ++i;
        }
    }

    public void setBackground(Color color) {
        super.setBackground(color);
        this.renderer.createAntialiasColors();
        this.redraw();
    }

    public void setBackground(Color[] colors, int[] percents) {
        this.setBackground(colors, percents, false);
    }

    public void setBackground(Color[] colors, int[] percents, boolean vertical) {
        int i;
        this.checkWidget();
        if (colors != null) {
            if (percents == null || percents.length != colors.length - 1) {
                SWT.error(5);
            }
            i = 0;
            while (i < percents.length) {
                if (percents[i] < 0 || percents[i] > 100) {
                    SWT.error(5);
                }
                if (i > 0 && percents[i] < percents[i - 1]) {
                    SWT.error(5);
                }
                ++i;
            }
            if (this.getDisplay().getDepth() < 15) {
                colors = new Color[]{colors[colors.length - 1]};
                percents = new int[]{};
            }
        }
        if (this.gradientColors != null && colors != null && this.gradientColors.length == colors.length) {
            boolean same = false;
            int i2 = 0;
            while (i2 < this.gradientColors.length) {
                same = this.gradientColors[i2] == null ? colors[i2] == null : this.gradientColors[i2].equals(colors[i2]);
                if (!same) break;
                ++i2;
            }
            if (same) {
                i2 = 0;
                while (i2 < this.gradientPercents.length) {
                    boolean bl = same = this.gradientPercents[i2] == percents[i2];
                    if (!same) break;
                    ++i2;
                }
            }
            if (same && this.gradientVertical == vertical) {
                return;
            }
        }
        if (colors == null) {
            this.gradientColors = null;
            this.gradientPercents = null;
            this.gradientVertical = false;
            this.setBackground(null);
        } else {
            this.gradientColors = new Color[colors.length];
            i = 0;
            while (i < colors.length) {
                this.gradientColors[i] = colors[i];
                ++i;
            }
            this.gradientPercents = new int[percents.length];
            i = 0;
            while (i < percents.length) {
                this.gradientPercents[i] = percents[i];
                ++i;
            }
            this.gradientVertical = vertical;
            this.setBackground(this.gradientColors[this.gradientColors.length - 1]);
        }
        this.redraw();
    }

    public void setBackgroundImage(Image image) {
        super.setBackgroundImage(image);
        this.renderer.createAntialiasColors();
        this.redraw();
    }

    public void setBorderVisible(boolean show) {
        this.checkWidget();
        if (this.borderVisible == show) {
            return;
        }
        this.borderVisible = show;
        Rectangle rectBefore = this.getClientArea();
        this.updateItems();
        Rectangle rectAfter = this.getClientArea();
        if (!rectBefore.equals(rectAfter)) {
            this.notifyListeners(11, new Event());
        }
        this.redraw();
    }

    void setButtonBounds(GC gc) {
        int top;
        int right;
        Point size = this.getSize();
        Rectangle trim = this.renderer.computeTrim(-3, 0, 0, 0, 0, 0);
        int borderRight = trim.width + trim.x;
        int borderLeft = -trim.x;
        int borderBottom = trim.height + trim.y;
        int borderTop = -trim.y;
        int oldX = this.maxRect.x;
        int oldY = this.maxRect.y;
        int oldWidth = this.maxRect.width;
        int oldHeight = this.maxRect.height;
        this.maxRect.height = 0;
        this.maxRect.width = 0;
        this.maxRect.y = 0;
        this.maxRect.x = 0;
        if (this.showMax) {
            Point maxSize = this.renderer.computeSize(-5, 0, gc, -1, -1);
            this.maxRect.x = size.x - borderRight - maxSize.x - 3;
            if (borderRight > 0) {
                ++this.maxRect.x;
            }
            this.maxRect.y = this.onBottom ? size.y - borderBottom - this.tabHeight + (this.tabHeight - maxSize.y) / 2 : borderTop + (this.tabHeight - maxSize.y) / 2;
            this.maxRect.width = maxSize.x;
            this.maxRect.height = maxSize.y;
        }
        if (oldX != this.maxRect.x || oldWidth != this.maxRect.width || oldY != this.maxRect.y || oldHeight != this.maxRect.height) {
            int left = Math.min(oldX, this.maxRect.x);
            right = Math.max(oldX + oldWidth, this.maxRect.x + this.maxRect.width);
            top = this.onBottom ? size.y - borderBottom - this.tabHeight : borderTop + 1;
            this.redraw(left, top, right - left, this.tabHeight, false);
        }
        oldX = this.minRect.x;
        oldY = this.minRect.y;
        oldWidth = this.minRect.width;
        oldHeight = this.minRect.height;
        this.minRect.height = 0;
        this.minRect.width = 0;
        this.minRect.y = 0;
        this.minRect.x = 0;
        if (this.showMin) {
            Point minSize = this.renderer.computeSize(-6, 0, gc, -1, -1);
            this.minRect.x = size.x - borderRight - this.maxRect.width - minSize.x - 3;
            if (borderRight > 0) {
                ++this.minRect.x;
            }
            this.minRect.y = this.onBottom ? size.y - borderBottom - this.tabHeight + (this.tabHeight - minSize.y) / 2 : borderTop + (this.tabHeight - minSize.y) / 2;
            this.minRect.width = minSize.x;
            this.minRect.height = minSize.y;
        }
        if (oldX != this.minRect.x || oldWidth != this.minRect.width || oldY != this.minRect.y || oldHeight != this.minRect.height) {
            int left = Math.min(oldX, this.minRect.x);
            right = Math.max(oldX + oldWidth, this.minRect.x + this.minRect.width);
            top = this.onBottom ? size.y - borderBottom - this.tabHeight : borderTop + 1;
            this.redraw(left, top, right - left, this.tabHeight, false);
        }
        oldX = this.topRightRect.x;
        oldY = this.topRightRect.y;
        oldWidth = this.topRightRect.width;
        oldHeight = this.topRightRect.height;
        this.topRightRect.height = 0;
        this.topRightRect.width = 0;
        this.topRightRect.y = 0;
        this.topRightRect.x = 0;
        if (this.topRight != null) {
            switch (this.topRightAlignment) {
                case 4: {
                    int rightEdge = size.x - borderRight - 3 - this.maxRect.width - this.minRect.width;
                    if (!(this.simple || borderRight <= 0 || this.showMax || this.showMin)) {
                        rightEdge -= 2;
                    }
                    if (this.single) {
                        if (this.items.length == 0 || this.selectedIndex == -1) {
                            this.topRightRect.x = borderLeft + 3;
                            this.topRightRect.width = rightEdge - this.topRightRect.x;
                        } else {
                            CTabItem item = this.items[this.selectedIndex];
                            int chevronWidth = this.renderer.computeSize((int)-7, (int)0, (GC)gc, (int)-1, (int)-1).x;
                            if (item.x + item.width + 7 + chevronWidth >= rightEdge) break;
                            this.topRightRect.x = item.x + item.width + 7 + chevronWidth;
                            this.topRightRect.width = rightEdge - this.topRightRect.x;
                        }
                    } else {
                        if (this.showChevron) break;
                        if (this.items.length == 0) {
                            this.topRightRect.x = borderLeft + 3;
                        } else {
                            int lastIndex = this.items.length - 1;
                            CTabItem lastItem = this.items[lastIndex];
                            this.topRightRect.x = lastItem.x + lastItem.width;
                        }
                        this.topRightRect.width = Math.max(0, rightEdge - this.topRightRect.x);
                    }
                    this.topRightRect.y = this.onBottom ? size.y - borderBottom - this.tabHeight : borderTop + 1;
                    this.topRightRect.height = this.tabHeight - 1;
                    break;
                }
                case 131072: {
                    Point topRightSize = this.topRight.computeSize(-1, this.tabHeight, false);
                    int rightEdge = size.x - borderRight - 3 - this.maxRect.width - this.minRect.width;
                    if (!(this.simple || borderRight <= 0 || this.showMax || this.showMin)) {
                        rightEdge -= 2;
                    }
                    this.topRightRect.x = rightEdge - topRightSize.x;
                    this.topRightRect.width = topRightSize.x;
                    this.topRightRect.y = this.onBottom ? size.y - borderBottom - this.tabHeight : borderTop + 1;
                    this.topRightRect.height = this.tabHeight - 1;
                }
            }
            this.topRight.setBounds(this.topRightRect);
        }
        if (oldX != this.topRightRect.x || oldWidth != this.topRightRect.width || oldY != this.topRightRect.y || oldHeight != this.topRightRect.height) {
            int left = Math.min(oldX, this.topRightRect.x);
            int right2 = Math.max(oldX + oldWidth, this.topRightRect.x + this.topRightRect.width);
            int top2 = this.onBottom ? size.y - borderBottom - this.tabHeight : borderTop + 1;
            this.redraw(left, top2, right2 - left, this.tabHeight, false);
        }
        oldX = this.chevronRect.x;
        oldY = this.chevronRect.y;
        oldWidth = this.chevronRect.width;
        oldHeight = this.chevronRect.height;
        this.chevronRect.width = 0;
        this.chevronRect.height = 0;
        this.chevronRect.y = 0;
        this.chevronRect.x = 0;
        Point chevronSize = this.renderer.computeSize(-7, 0, gc, -1, -1);
        if (this.single) {
            if (this.selectedIndex == -1 || this.items.length > 1) {
                this.chevronRect.width = chevronSize.x;
                this.chevronRect.height = chevronSize.y;
                int n = this.chevronRect.y = this.onBottom ? size.y - borderBottom - this.tabHeight + (this.tabHeight - this.chevronRect.height) / 2 : borderTop + (this.tabHeight - this.chevronRect.height) / 2;
                if (this.selectedIndex == -1) {
                    this.chevronRect.x = size.x - borderRight - 3 - this.minRect.width - this.maxRect.width - this.topRightRect.width - this.chevronRect.width;
                } else {
                    CTabItem item = this.items[this.selectedIndex];
                    int w = size.x - borderRight - 3 - this.minRect.width - this.maxRect.width - this.chevronRect.width;
                    if (this.topRightRect.width > 0) {
                        w -= this.topRightRect.width + 3;
                    }
                    this.chevronRect.x = Math.min(item.x + item.width + 3, w);
                }
                if (borderRight > 0) {
                    ++this.chevronRect.x;
                }
            }
        } else if (this.showChevron) {
            this.chevronRect.width = chevronSize.x;
            this.chevronRect.height = chevronSize.y;
            int i = 0;
            int lastIndex = -1;
            while (i < this.priority.length && this.items[this.priority[i]].showing) {
                lastIndex = Math.max(lastIndex, this.priority[i++]);
            }
            if (lastIndex == -1) {
                lastIndex = this.firstIndex;
            }
            CTabItem lastItem = this.items[lastIndex];
            int w = lastItem.x + lastItem.width + 3;
            if (!this.simple && lastIndex == this.selectedIndex) {
                w -= this.renderer.curveIndent;
            }
            this.chevronRect.x = Math.min(w, this.getRightItemEdge(gc));
            int n = this.chevronRect.y = this.onBottom ? size.y - borderBottom - this.tabHeight + (this.tabHeight - this.chevronRect.height) / 2 : borderTop + (this.tabHeight - this.chevronRect.height) / 2;
        }
        if (oldX != this.chevronRect.x || oldWidth != this.chevronRect.width || oldY != this.chevronRect.y || oldHeight != this.chevronRect.height) {
            int left = Math.min(oldX, this.chevronRect.x);
            int right3 = Math.max(oldX + oldWidth, this.chevronRect.x + this.chevronRect.width);
            int top3 = this.onBottom ? size.y - borderBottom - this.tabHeight : borderTop + 1;
            this.redraw(left, top3, right3 - left, this.tabHeight, false);
        }
    }

    public void setFont(Font font) {
        this.checkWidget();
        if (font != null && font.equals(this.getFont())) {
            return;
        }
        super.setFont(font);
        this.oldFont = this.getFont();
        if (!this.updateTabHeight(false)) {
            this.updateItems();
            this.redraw();
        }
    }

    public void setForeground(Color color) {
        super.setForeground(color);
        this.redraw();
    }

    public void setInsertMark(CTabItem item, boolean after) {
        this.checkWidget();
    }

    public void setInsertMark(int index, boolean after) {
        this.checkWidget();
        if (index < -1 || index >= this.getItemCount()) {
            SWT.error(5);
        }
    }

    boolean setItemLocation(GC gc) {
        boolean changed = false;
        if (this.items.length == 0) {
            return false;
        }
        Rectangle trim = this.renderer.computeTrim(-3, 0, 0, 0, 0, 0);
        int borderLeft = -trim.x;
        int borderBottom = trim.height + trim.y;
        int borderTop = -trim.y;
        Point size = this.getSize();
        int y = this.onBottom ? Math.max(borderBottom, size.y - borderBottom - this.tabHeight) : borderTop;
        Point closeButtonSize = this.renderer.computeSize(-8, 0, gc, -1, -1);
        if (this.single) {
            int defaultX = this.getDisplay().getBounds().width + 10;
            int i = 0;
            while (i < this.items.length) {
                CTabItem item = this.items[i];
                if (i == this.selectedIndex) {
                    this.firstIndex = this.selectedIndex;
                    int oldX = item.x;
                    int oldY = item.y;
                    item.x = borderLeft;
                    item.y = y;
                    item.showing = true;
                    if (this.showClose || item.showClose) {
                        item.closeRect.x = borderLeft - this.renderer.computeTrim((int)i, (int)0, (int)0, (int)0, (int)0, (int)0).x;
                        int n = item.closeRect.y = this.onBottom ? size.y - borderBottom - this.tabHeight + (this.tabHeight - closeButtonSize.y) / 2 : borderTop + (this.tabHeight - closeButtonSize.y) / 2;
                    }
                    if (item.x != oldX || item.y != oldY) {
                        changed = true;
                    }
                } else {
                    item.x = defaultX;
                    item.showing = false;
                }
                ++i;
            }
        } else {
            int rightItemEdge = this.getRightItemEdge(gc);
            int maxWidth = rightItemEdge - borderLeft;
            int width = 0;
            int i = 0;
            while (i < this.priority.length) {
                CTabItem item = this.items[this.priority[i]];
                item.showing = i == 0 ? true : item.width > 0 && (width += item.width) <= maxWidth;
                ++i;
            }
            int x = -this.renderer.computeTrim((int)-2, (int)0, (int)0, (int)0, (int)0, (int)0).x;
            int defaultX = this.getDisplay().getBounds().width + 10;
            this.firstIndex = this.items.length - 1;
            int i2 = 0;
            while (i2 < this.items.length) {
                CTabItem item = this.items[i2];
                if (!item.showing) {
                    if (item.x != defaultX) {
                        changed = true;
                    }
                    item.x = defaultX;
                } else {
                    this.firstIndex = Math.min(this.firstIndex, i2);
                    if (item.x != x || item.y != y) {
                        changed = true;
                    }
                    item.x = x;
                    item.y = y;
                    int state = 0;
                    if (i2 == this.selectedIndex) {
                        state |= 2;
                    }
                    Rectangle edgeTrim = this.renderer.computeTrim(i2, state, 0, 0, 0, 0);
                    item.closeRect.x = item.x + item.width - (edgeTrim.width + edgeTrim.x) - closeButtonSize.x;
                    item.closeRect.y = this.onBottom ? size.y - borderBottom - this.tabHeight + (this.tabHeight - closeButtonSize.y) / 2 : borderTop + (this.tabHeight - closeButtonSize.y) / 2;
                    x += item.width;
                    if (!this.simple && i2 == this.selectedIndex) {
                        x -= this.renderer.curveIndent;
                    }
                }
                ++i2;
            }
        }
        return changed;
    }

    boolean setItemSize(GC gc) {
        int[] widths;
        boolean changed = false;
        if (this.isDisposed()) {
            return changed;
        }
        Point size = this.getSize();
        if (size.x <= 0 || size.y <= 0) {
            return changed;
        }
        Rectangle trim = this.renderer.computeTrim(-3, 0, 0, 0, 0, 0);
        int borderRight = trim.width + trim.x;
        int borderLeft = -trim.x;
        this.showChevron = false;
        if (this.single) {
            this.showChevron = true;
            if (this.selectedIndex != -1) {
                CTabItem tab = this.items[this.selectedIndex];
                int width = this.renderer.computeSize((int)this.selectedIndex, (int)2, (GC)gc, (int)-1, (int)-1).x;
                width = Math.min(width, this.getRightItemEdge(gc) - borderLeft);
                if (tab.height != this.tabHeight || tab.width != width) {
                    changed = true;
                    tab.shortenedText = null;
                    tab.shortenedTextWidth = 0;
                    tab.height = this.tabHeight;
                    tab.width = width;
                    tab.closeRect.height = 0;
                    tab.closeRect.width = 0;
                    if (this.showClose || tab.showClose) {
                        Point closeSize = this.renderer.computeSize(-8, 2, gc, -1, -1);
                        tab.closeRect.width = closeSize.x;
                        tab.closeRect.height = closeSize.y;
                    }
                }
            }
            return changed;
        }
        if (this.items.length == 0) {
            return changed;
        }
        int tabAreaWidth = size.x - borderLeft - borderRight - 3;
        if (this.showMin) {
            tabAreaWidth -= this.renderer.computeSize((int)-6, (int)0, (GC)gc, (int)-1, (int)-1).x;
        }
        if (this.showMax) {
            tabAreaWidth -= this.renderer.computeSize((int)-5, (int)0, (GC)gc, (int)-1, (int)-1).x;
        }
        if (this.topRightAlignment == 131072 && this.topRight != null) {
            Point rightSize = this.topRight.computeSize(-1, -1, false);
            tabAreaWidth -= rightSize.x + 3;
        }
        tabAreaWidth = Math.max(0, tabAreaWidth);
        int minWidth = 0;
        int[] minWidths = new int[this.items.length];
        int i = 0;
        while (i < this.priority.length) {
            int index = this.priority[i];
            int state = 0x1000000;
            if (index == this.selectedIndex) {
                state |= 2;
            }
            minWidths[index] = this.renderer.computeSize((int)index, (int)state, (GC)gc, (int)-1, (int)-1).x;
            if ((minWidth += minWidths[index]) > tabAreaWidth) break;
            ++i;
        }
        if (minWidth > tabAreaWidth) {
            int index;
            boolean bl = this.showChevron = this.items.length > 1;
            if (this.showChevron) {
                tabAreaWidth -= this.renderer.computeSize((int)-7, (int)0, (GC)gc, (int)-1, (int)-1).x;
            }
            widths = minWidths;
            int n = index = this.selectedIndex != -1 ? this.selectedIndex : 0;
            if (tabAreaWidth < widths[index]) {
                widths[index] = Math.max(0, tabAreaWidth);
            }
        } else {
            int maxWidth = 0;
            int[] maxWidths = new int[this.items.length];
            int i2 = 0;
            while (i2 < this.items.length) {
                int state = 0;
                if (i2 == this.selectedIndex) {
                    state |= 2;
                }
                maxWidths[i2] = this.renderer.computeSize((int)i2, (int)state, (GC)gc, (int)-1, (int)-1).x;
                maxWidth += maxWidths[i2];
                ++i2;
            }
            if (maxWidth <= tabAreaWidth) {
                widths = maxWidths;
            } else {
                int extra = (tabAreaWidth - minWidth) / this.items.length;
                while (true) {
                    int large = 0;
                    int totalWidth = 0;
                    int i3 = 0;
                    while (i3 < this.items.length) {
                        if (maxWidths[i3] > minWidths[i3] + extra) {
                            totalWidth += minWidths[i3] + extra;
                            ++large;
                        } else {
                            totalWidth += maxWidths[i3];
                        }
                        ++i3;
                    }
                    if (totalWidth >= tabAreaWidth) {
                        --extra;
                        break;
                    }
                    if (large == 0 || tabAreaWidth - totalWidth < large) break;
                    ++extra;
                }
                widths = new int[this.items.length];
                int i4 = 0;
                while (i4 < this.items.length) {
                    widths[i4] = Math.min(maxWidths[i4], minWidths[i4] + extra);
                    ++i4;
                }
            }
        }
        i = 0;
        while (i < this.items.length) {
            CTabItem tab = this.items[i];
            int width = widths[i];
            if (tab.height != this.tabHeight || tab.width != width) {
                changed = true;
                tab.shortenedText = null;
                tab.shortenedTextWidth = 0;
                tab.height = this.tabHeight;
                tab.width = width;
                tab.closeRect.height = 0;
                tab.closeRect.width = 0;
                if ((this.showClose || tab.showClose) && (i == this.selectedIndex || this.showUnselectedClose)) {
                    Point closeSize = this.renderer.computeSize(-8, 0, gc, -1, -1);
                    tab.closeRect.width = closeSize.x;
                    tab.closeRect.height = closeSize.y;
                }
            }
            ++i;
        }
        return changed;
    }

    public void setMaximizeVisible(boolean visible) {
        this.checkWidget();
        if (this.showMax == visible) {
            return;
        }
        this.showMax = visible;
        this.updateItems();
        this.redraw();
    }

    public void setLayout(Layout layout) {
        this.checkWidget();
    }

    public void setMaximized(boolean maximize) {
        this.checkWidget();
        if (this.maximized == maximize) {
            return;
        }
        if (maximize && this.minimized) {
            this.setMinimized(false);
        }
        this.maximized = maximize;
        this.redraw(this.maxRect.x, this.maxRect.y, this.maxRect.width, this.maxRect.height, false);
    }

    public void setMinimizeVisible(boolean visible) {
        this.checkWidget();
        if (this.showMin == visible) {
            return;
        }
        this.showMin = visible;
        this.updateItems();
        this.redraw();
    }

    public void setMinimized(boolean minimize) {
        this.checkWidget();
        if (this.minimized == minimize) {
            return;
        }
        if (minimize && this.maximized) {
            this.setMaximized(false);
        }
        this.minimized = minimize;
        this.redraw(this.minRect.x, this.minRect.y, this.minRect.width, this.minRect.height, false);
    }

    public void setMinimumCharacters(int count) {
        this.checkWidget();
        if (count < 0) {
            SWT.error(6);
        }
        if (this.minChars == count) {
            return;
        }
        this.minChars = count;
        if (this.updateItems()) {
            this.redrawTabs();
        }
    }

    public void setMRUVisible(boolean show) {
        this.checkWidget();
        if (this.mru == show) {
            return;
        }
        this.mru = show;
        if (!this.mru) {
            int idx = this.firstIndex;
            int next = 0;
            int i = this.firstIndex;
            while (i < this.items.length) {
                this.priority[next++] = i++;
            }
            i = 0;
            while (i < idx) {
                this.priority[next++] = i++;
            }
            if (this.updateItems()) {
                this.redrawTabs();
            }
        }
    }

    public void setRenderer(CTabFolderRenderer renderer) {
        this.checkWidget();
        if (this.renderer == renderer) {
            return;
        }
        if (this.renderer != null) {
            this.renderer.dispose();
        }
        if (renderer == null) {
            renderer = new CTabFolderRenderer(this);
        }
        this.renderer = renderer;
        this.updateTabHeight(false);
        Rectangle rectBefore = this.getClientArea();
        this.updateItems();
        Rectangle rectAfter = this.getClientArea();
        if (!rectBefore.equals(rectAfter)) {
            this.notifyListeners(11, new Event());
        }
        this.redraw();
    }

    public void setSelection(CTabItem item) {
        this.checkWidget();
        if (item == null) {
            SWT.error(4);
        }
        int index = this.indexOf(item);
        this.setSelection(index);
    }

    public void setSelection(int index) {
        this.checkWidget();
        if (index < 0 || index >= this.items.length) {
            return;
        }
        CTabItem selection = this.items[index];
        if (this.selectedIndex == index) {
            this.showItem(selection);
            return;
        }
        int oldIndex = this.selectedIndex;
        this.selectedIndex = index;
        if (oldIndex != -1) {
            this.items[oldIndex].closeImageState = 8;
            this.items[oldIndex].state &= 0xFFFFFFFD;
        }
        selection.closeImageState = 0;
        selection.showing = false;
        selection.state |= 2;
        Control newControl = selection.control;
        Control oldControl = null;
        if (oldIndex != -1) {
            oldControl = this.items[oldIndex].control;
        }
        if (newControl != oldControl) {
            if (newControl != null && !newControl.isDisposed()) {
                newControl.setBounds(this.getClientArea());
                newControl.setVisible(true);
            }
            if (oldControl != null && !oldControl.isDisposed()) {
                oldControl.setVisible(false);
            }
        }
        this.showItem(selection);
        this.redraw();
    }

    void setSelection(int index, boolean notify) {
        int oldSelectedIndex = this.selectedIndex;
        this.setSelection(index);
        if (notify && this.selectedIndex != oldSelectedIndex && this.selectedIndex != -1) {
            Event event = new Event();
            event.item = this.getItem(this.selectedIndex);
            this.notifyListeners(13, event);
        }
    }

    public void setSelectionBackground(Color color) {
        this.checkWidget();
        if (this.selectionBackground.equals(color)) {
            return;
        }
        this.setSelectionHighlightGradientColor(null);
        if (color == null) {
            color = this.getDisplay().getSystemColor(25);
        }
        this.selectionBackground = color;
        this.renderer.createAntialiasColors();
        if (this.selectedIndex > -1) {
            this.redraw();
        }
    }

    public void setSelectionBackground(Color[] colors, int[] percents) {
        this.setSelectionBackground(colors, percents, false);
    }

    public void setSelectionBackground(Color[] colors, int[] percents, boolean vertical) {
        int colorsLength;
        int i;
        this.checkWidget();
        Color highlightBeginColor = null;
        if (colors != null) {
            if (percents == null || percents.length != colors.length - 1 && percents.length != colors.length - 2) {
                SWT.error(5);
            }
            i = 0;
            while (i < percents.length) {
                if (percents[i] < 0 || percents[i] > 100) {
                    SWT.error(5);
                }
                if (i > 0 && percents[i] < percents[i - 1]) {
                    SWT.error(5);
                }
                ++i;
            }
            if (percents.length == colors.length - 2) {
                highlightBeginColor = colors[colors.length - 1];
                colorsLength = colors.length - 1;
            } else {
                colorsLength = colors.length;
            }
            if (this.getDisplay().getDepth() < 15) {
                colors = new Color[]{colors[colorsLength - 1]};
                colorsLength = colors.length;
                percents = new int[]{};
            }
        } else {
            colorsLength = 0;
        }
        if (this.selectionBgImage == null) {
            if (this.selectionGradientColors != null && colors != null && this.selectionGradientColors.length == colorsLength) {
                boolean same = false;
                int i2 = 0;
                while (i2 < this.selectionGradientColors.length) {
                    same = this.selectionGradientColors[i2] == null ? colors[i2] == null : this.selectionGradientColors[i2].equals(colors[i2]);
                    if (!same) break;
                    ++i2;
                }
                if (same) {
                    i2 = 0;
                    while (i2 < this.selectionGradientPercents.length) {
                        boolean bl = same = this.selectionGradientPercents[i2] == percents[i2];
                        if (!same) break;
                        ++i2;
                    }
                }
                if (same && this.selectionGradientVertical == vertical) {
                    return;
                }
            }
        } else {
            this.selectionBgImage = null;
        }
        if (colors == null) {
            this.selectionGradientColors = null;
            this.selectionGradientPercents = null;
            this.selectionGradientVertical = false;
            this.setSelectionBackground((Color)null);
            this.setSelectionHighlightGradientColor(null);
        } else {
            this.selectionGradientColors = new Color[colorsLength];
            i = 0;
            while (i < colorsLength) {
                this.selectionGradientColors[i] = colors[i];
                ++i;
            }
            this.selectionGradientPercents = new int[percents.length];
            i = 0;
            while (i < percents.length) {
                this.selectionGradientPercents[i] = percents[i];
                ++i;
            }
            this.selectionGradientVertical = vertical;
            this.setSelectionBackground(this.selectionGradientColors[this.selectionGradientColors.length - 1]);
            this.setSelectionHighlightGradientColor(highlightBeginColor);
        }
        if (this.selectedIndex > -1) {
            this.redraw();
        }
    }

    void setSelectionHighlightGradientColor(Color start) {
        this.renderer.setSelectionHighlightGradientColor(start);
    }

    public void setSelectionBackground(Image image) {
        this.checkWidget();
        if (image == this.selectionBgImage) {
            return;
        }
        this.setSelectionHighlightGradientColor(null);
        if (image != null) {
            this.selectionGradientColors = null;
            this.selectionGradientPercents = null;
            this.renderer.disposeSelectionHighlightGradientColors();
        }
        this.selectionBgImage = image;
        this.renderer.createAntialiasColors();
        if (this.selectedIndex > -1) {
            this.redraw();
        }
    }

    public void setSelectionForeground(Color color) {
        this.checkWidget();
        if (this.selectionForeground.equals(color)) {
            return;
        }
        if (color == null) {
            color = this.getDisplay().getSystemColor(24);
        }
        this.selectionForeground = color;
        if (this.selectedIndex > -1) {
            this.redraw();
        }
    }

    public void setSimple(boolean simple) {
        this.checkWidget();
        if (this.simple != simple) {
            this.simple = simple;
            Rectangle rectBefore = this.getClientArea();
            this.updateItems();
            Rectangle rectAfter = this.getClientArea();
            if (!rectBefore.equals(rectAfter)) {
                this.notifyListeners(11, new Event());
            }
            this.redraw();
        }
    }

    public void setSingle(boolean single) {
        this.checkWidget();
        if (this.single != single) {
            this.single = single;
            if (!single) {
                int i = 0;
                while (i < this.items.length) {
                    if (i != this.selectedIndex && this.items[i].closeImageState == 0) {
                        this.items[i].closeImageState = 8;
                    }
                    ++i;
                }
            }
            Rectangle rectBefore = this.getClientArea();
            this.updateItems();
            Rectangle rectAfter = this.getClientArea();
            if (!rectBefore.equals(rectAfter)) {
                this.notifyListeners(11, new Event());
            }
            this.redraw();
        }
    }

    public void setTabHeight(int height) {
        this.checkWidget();
        if (height < -1) {
            SWT.error(5);
        }
        this.fixedTabHeight = height;
        this.updateTabHeight(false);
    }

    public void setTabPosition(int position) {
        this.checkWidget();
        if (position != 128 && position != 1024) {
            SWT.error(5);
        }
        if (this.onBottom != (position == 1024)) {
            this.onBottom = position == 1024;
            this.updateTabHeight(true);
            Rectangle rectBefore = this.getClientArea();
            this.updateItems();
            Rectangle rectAfter = this.getClientArea();
            if (!rectBefore.equals(rectAfter)) {
                this.notifyListeners(11, new Event());
            }
            this.redraw();
        }
    }

    public void setTopRight(Control control) {
        this.setTopRight(control, 131072);
    }

    public void setTopRight(Control control, int alignment) {
        this.checkWidget();
        if (alignment != 131072 && alignment != 4) {
            SWT.error(5);
        }
        if (control != null && control.getParent() != this) {
            SWT.error(5);
        }
        this.topRight = control;
        this.topRightAlignment = alignment;
        if (this.updateItems()) {
            this.redraw();
        }
    }

    public void setUnselectedCloseVisible(boolean visible) {
        this.checkWidget();
        if (this.showUnselectedClose == visible) {
            return;
        }
        this.showUnselectedClose = visible;
        this.updateItems();
        this.redraw();
    }

    public void setUnselectedImageVisible(boolean visible) {
        this.checkWidget();
        if (this.showUnselectedImage == visible) {
            return;
        }
        this.showUnselectedImage = visible;
        this.updateItems();
        this.redraw();
    }

    public void showItem(CTabItem item) {
        int index;
        this.checkWidget();
        if (item == null) {
            SWT.error(4);
        }
        if (item.isDisposed()) {
            SWT.error(5);
        }
        if ((index = this.indexOf(item)) == -1) {
            SWT.error(5);
        }
        int idx = -1;
        int i = 0;
        while (i < this.priority.length) {
            if (this.priority[i] == index) {
                idx = i;
                break;
            }
            ++i;
        }
        if (this.mru) {
            int[] newPriority = new int[this.priority.length];
            System.arraycopy(this.priority, 0, newPriority, 1, idx);
            System.arraycopy(this.priority, idx + 1, newPriority, idx + 1, this.priority.length - idx - 1);
            newPriority[0] = index;
            this.priority = newPriority;
        }
        if (item.isShowing()) {
            return;
        }
        this.updateItems(index);
        this.redrawTabs();
    }

    void showList(Rectangle rect) {
        if (this.items.length == 0 || !this.showChevron) {
            return;
        }
        if (this.showMenu == null || this.showMenu.isDisposed()) {
            this.showMenu = new Menu(this.getShell(), this.getStyle() & 0x6000000);
        } else {
            MenuItem[] items = this.showMenu.getItems();
            int i = 0;
            while (i < items.length) {
                items[i].dispose();
                ++i;
            }
        }
        int i = 0;
        while (i < this.items.length) {
            CTabItem tab = this.items[i];
            if (!tab.showing) {
                MenuItem item = new MenuItem(this.showMenu, 0);
                item.setText(tab.getText());
                item.setImage(tab.getImage());
                item.setData("CTabFolder_showList_Index", tab);
                item.addSelectionListener(new SelectionAdapter(){

                    public void widgetSelected(SelectionEvent e) {
                        MenuItem menuItem = (MenuItem)e.widget;
                        int index = CTabFolder.this.indexOf((CTabItem)menuItem.getData("CTabFolder_showList_Index"));
                        CTabFolder.this.setSelection(index, true);
                    }
                });
            }
            ++i;
        }
        int x = rect.x;
        int y = rect.y + rect.height;
        Point location = this.getDisplay().map(this, null, x, y);
        this.showMenu.setLocation(location.x, location.y);
        this.showMenu.setVisible(true);
    }

    public void showSelection() {
        this.checkWidget();
        if (this.selectedIndex != -1) {
            this.showItem(this.getSelection());
        }
    }

    void _setToolTipText(int x, int y) {
        String oldTip = this.getToolTipText();
        String newTip = this._getToolTip(x, y);
        if (newTip == null || !newTip.equals(oldTip)) {
            this.setToolTipText(newTip);
        }
    }

    boolean updateItems() {
        return this.updateItems(this.selectedIndex);
    }

    boolean updateItems(int showIndex) {
        GC gc = new GC(this);
        if (!this.single && !this.mru && showIndex != -1) {
            int firstIndex = showIndex;
            if (this.priority[0] < showIndex) {
                int state;
                Rectangle trim = this.renderer.computeTrim(-3, 0, 0, 0, 0, 0);
                int borderLeft = -trim.x;
                int maxWidth = this.getRightItemEdge(gc) - borderLeft;
                int width = 0;
                int[] widths = new int[this.items.length];
                int i = this.priority[0];
                while (i <= showIndex) {
                    state = 0x1000000;
                    if (i == this.selectedIndex) {
                        state |= 2;
                    }
                    widths[i] = this.renderer.computeSize((int)i, (int)state, (GC)gc, (int)-1, (int)-1).x;
                    if ((width += widths[i]) > maxWidth) break;
                    ++i;
                }
                if (width > maxWidth) {
                    width = 0;
                    i = showIndex;
                    while (i >= 0) {
                        state = 0x1000000;
                        if (i == this.selectedIndex) {
                            state |= 2;
                        }
                        if (widths[i] == 0) {
                            widths[i] = this.renderer.computeSize((int)i, (int)state, (GC)gc, (int)-1, (int)-1).x;
                        }
                        if ((width += widths[i]) <= maxWidth) {
                            firstIndex = i--;
                            continue;
                        }
                        break;
                    }
                } else {
                    firstIndex = this.priority[0];
                    i = showIndex + 1;
                    while (i < this.items.length) {
                        state = 0x1000000;
                        if (i == this.selectedIndex) {
                            state |= 2;
                        }
                        widths[i] = this.renderer.computeSize((int)i, (int)state, (GC)gc, (int)-1, (int)-1).x;
                        if ((width += widths[i]) >= maxWidth) break;
                        ++i;
                    }
                    if (width < maxWidth) {
                        i = this.priority[0] - 1;
                        while (i >= 0) {
                            state = 0x1000000;
                            if (i == this.selectedIndex) {
                                state |= 2;
                            }
                            if (widths[i] == 0) {
                                widths[i] = this.renderer.computeSize((int)i, (int)state, (GC)gc, (int)-1, (int)-1).x;
                            }
                            if ((width += widths[i]) <= maxWidth) {
                                firstIndex = i--;
                                continue;
                            }
                            break;
                        }
                    }
                }
            }
            if (firstIndex != this.priority[0]) {
                int index = 0;
                int i = firstIndex;
                while (i < this.items.length) {
                    this.priority[index++] = i++;
                }
                i = 0;
                while (i < firstIndex) {
                    this.priority[index++] = i++;
                }
            }
        }
        boolean oldShowChevron = this.showChevron;
        boolean changed = this.setItemSize(gc);
        changed |= this.setItemLocation(gc);
        this.setButtonBounds(gc);
        if ((changed |= this.showChevron ^ oldShowChevron) && this.getToolTipText() != null) {
            Point pt = this.getDisplay().getCursorLocation();
            pt = this.toControl(pt);
            this._setToolTipText(pt.x, pt.y);
        }
        gc.dispose();
        return changed;
    }

    boolean updateTabHeight(boolean force) {
        int oldHeight = this.tabHeight;
        GC gc = new GC(this);
        this.tabHeight = this.renderer.computeSize((int)-2, (int)0, (GC)gc, (int)-1, (int)-1).y;
        gc.dispose();
        if (!force && this.tabHeight == oldHeight) {
            return false;
        }
        this.oldSize = null;
        this.notifyListeners(11, new Event());
        return true;
    }

    String _getToolTip(int x, int y) {
        if (this.showMin && this.minRect.contains(x, y)) {
            return this.minimized ? SWT.getMessage("SWT_Restore") : SWT.getMessage("SWT_Minimize");
        }
        if (this.showMax && this.maxRect.contains(x, y)) {
            return this.maximized ? SWT.getMessage("SWT_Restore") : SWT.getMessage("SWT_Maximize");
        }
        if (this.showChevron && this.chevronRect.contains(x, y)) {
            return SWT.getMessage("SWT_ShowList");
        }
        CTabItem item = this.getItem(new Point(x, y));
        if (item == null) {
            return null;
        }
        if (!item.showing) {
            return null;
        }
        if ((this.showClose || item.showClose) && item.closeRect.contains(x, y)) {
            return SWT.getMessage("SWT_Close");
        }
        return item.getToolTipText();
    }
}

