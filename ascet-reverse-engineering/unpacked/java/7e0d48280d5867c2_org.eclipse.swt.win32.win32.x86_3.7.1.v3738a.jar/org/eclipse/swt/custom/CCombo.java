/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleTextAdapter;
import org.eclipse.swt.accessibility.AccessibleTextEvent;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.List;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ScrollBar;
import org.eclipse.swt.widgets.Scrollable;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.TypedListener;

public class CCombo
extends Composite {
    Text text;
    List list;
    int visibleItemCount;
    Shell popup;
    Button arrow;
    boolean hasFocus;
    Listener listener;
    Listener filter;
    Color foreground;
    Color background;
    Font font;
    Shell _shell;
    static final String PACKAGE_PREFIX = "org.eclipse.swt.custom.";

    public CCombo(Composite parent, int style) {
        style = CCombo.checkStyle(style);
        super(parent, style);
        this.visibleItemCount = 5;
        this._shell = super.getShell();
        int textStyle = 4;
        if ((style & 8) != 0) {
            textStyle |= 8;
        }
        if ((style & 0x800000) != 0) {
            textStyle |= 0x800000;
        }
        this.text = new Text(this, textStyle);
        int arrowStyle = 1028;
        if ((style & 0x800000) != 0) {
            arrowStyle |= 0x800000;
        }
        this.arrow = new Button(this, arrowStyle);
        this.listener = new Listener(){

            public void handleEvent(Event event) {
                if (CCombo.this.isDisposed()) {
                    return;
                }
                if (CCombo.this.popup == event.widget) {
                    CCombo.this.popupEvent(event);
                    return;
                }
                if (CCombo.this.text == event.widget) {
                    CCombo.this.textEvent(event);
                    return;
                }
                if (CCombo.this.list == event.widget) {
                    CCombo.this.listEvent(event);
                    return;
                }
                if (CCombo.this.arrow == event.widget) {
                    CCombo.this.arrowEvent(event);
                    return;
                }
                if (CCombo.this == event.widget) {
                    CCombo.this.comboEvent(event);
                    return;
                }
                if (CCombo.this.getShell() == event.widget) {
                    CCombo.this.getDisplay().asyncExec(new Runnable(this){
                        final /* synthetic */ 1 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public void run() {
                            if (1.access$0(this.this$1).isDisposed()) {
                                return;
                            }
                            1.access$0(this.this$1).handleFocus(16);
                        }
                    });
                }
            }

            static /* synthetic */ CCombo access$0(1 var0) {
                return var0.CCombo.this;
            }
        };
        this.filter = new Listener(){

            public void handleEvent(Event event) {
                if (CCombo.this.isDisposed()) {
                    return;
                }
                if (event.type == 13) {
                    if (event.widget instanceof ScrollBar) {
                        CCombo.this.handleScroll(event);
                    }
                    return;
                }
                Shell shell = ((Control)event.widget).getShell();
                if (shell == CCombo.this.getShell()) {
                    CCombo.this.handleFocus(16);
                }
            }
        };
        int[] comboEvents = new int[]{12, 15, 10, 11};
        int i = 0;
        while (i < comboEvents.length) {
            this.addListener(comboEvents[i], this.listener);
            ++i;
        }
        int[] textEvents = new int[]{14, 29, 1, 2, 35, 24, 3, 4, 8, 6, 7, 32, 5, 37, 31, 15, 25};
        int i2 = 0;
        while (i2 < textEvents.length) {
            this.text.addListener(textEvents[i2], this.listener);
            ++i2;
        }
        int[] arrowEvents = new int[]{29, 3, 6, 7, 32, 5, 4, 37, 13, 15};
        int i3 = 0;
        while (i3 < arrowEvents.length) {
            this.arrow.addListener(arrowEvents[i3], this.listener);
            ++i3;
        }
        this.createPopup(null, -1);
        this.initAccessible();
    }

    static int checkStyle(int style) {
        int mask = 0x6800808;
        return 0x80000 | style & mask;
    }

    public void add(String string) {
        this.checkWidget();
        if (string == null) {
            SWT.error(4);
        }
        this.list.add(string);
    }

    public void add(String string, int index) {
        this.checkWidget();
        if (string == null) {
            SWT.error(4);
        }
        this.list.add(string, index);
    }

    public void addModifyListener(ModifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(24, typedListener);
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

    public void addVerifyListener(VerifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(25, typedListener);
    }

    void arrowEvent(Event event) {
        switch (event.type) {
            case 15: {
                this.handleFocus(15);
                break;
            }
            case 3: 
            case 4: 
            case 5: 
            case 6: 
            case 7: 
            case 29: 
            case 32: {
                Point pt = this.getDisplay().map(this.arrow, this, event.x, event.y);
                event.x = pt.x;
                event.y = pt.y;
                this.notifyListeners(event.type, event);
                event.type = 0;
                break;
            }
            case 37: {
                Point pt = this.getDisplay().map(this.arrow, this, event.x, event.y);
                event.x = pt.x;
                event.y = pt.y;
                this.notifyListeners(37, event);
                event.type = 0;
                if (this.isDisposed() || !event.doit || event.count == 0) break;
                event.doit = false;
                int oldIndex = this.getSelectionIndex();
                if (event.count > 0) {
                    this.select(Math.max(oldIndex - 1, 0));
                } else {
                    this.select(Math.min(oldIndex + 1, this.getItemCount() - 1));
                }
                if (oldIndex != this.getSelectionIndex()) {
                    Event e = new Event();
                    e.time = event.time;
                    e.stateMask = event.stateMask;
                    this.notifyListeners(13, e);
                }
                if (!this.isDisposed()) break;
                break;
            }
            case 13: {
                this.text.setFocus();
                this.dropDown(!this.isDropped());
            }
        }
    }

    protected void checkSubclass() {
        int index;
        String name = this.getClass().getName();
        if (!name.substring(0, (index = name.lastIndexOf(46)) + 1).equals(PACKAGE_PREFIX)) {
            SWT.error(43);
        }
    }

    public void clearSelection() {
        this.checkWidget();
        this.text.clearSelection();
        this.list.deselectAll();
    }

    void comboEvent(Event event) {
        switch (event.type) {
            case 12: {
                this.removeListener(12, this.listener);
                this.notifyListeners(12, event);
                event.type = 0;
                if (this.popup != null && !this.popup.isDisposed()) {
                    this.list.removeListener(12, this.listener);
                    this.popup.dispose();
                }
                Shell shell = this.getShell();
                shell.removeListener(27, this.listener);
                Display display = this.getDisplay();
                display.removeFilter(15, this.filter);
                this.popup = null;
                this.text = null;
                this.list = null;
                this.arrow = null;
                this._shell = null;
                break;
            }
            case 15: {
                Control focusControl = this.getDisplay().getFocusControl();
                if (focusControl == this.arrow || focusControl == this.list) {
                    return;
                }
                if (this.isDropped()) {
                    this.list.setFocus();
                    break;
                }
                this.text.setFocus();
                break;
            }
            case 10: {
                this.dropDown(false);
                break;
            }
            case 11: {
                this.internalLayout(false);
            }
        }
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int width = 0;
        int height = 0;
        String[] items = this.list.getItems();
        GC gc = new GC(this.text);
        int spacer = gc.stringExtent((String)" ").x;
        int textWidth = gc.stringExtent((String)this.text.getText()).x;
        int i = 0;
        while (i < items.length) {
            textWidth = Math.max(gc.stringExtent((String)items[i]).x, textWidth);
            ++i;
        }
        gc.dispose();
        Point textSize = this.text.computeSize(-1, -1, changed);
        Point arrowSize = this.arrow.computeSize(-1, -1, changed);
        Point listSize = this.list.computeSize(-1, -1, changed);
        int borderWidth = this.getBorderWidth();
        height = Math.max(textSize.y, arrowSize.y);
        width = Math.max(textWidth + 2 * spacer + arrowSize.x + 2 * borderWidth, listSize.x);
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        return new Point(width + 2 * borderWidth, height + 2 * borderWidth);
    }

    public void copy() {
        this.checkWidget();
        this.text.copy();
    }

    void createPopup(String[] items, int selectionIndex) {
        this.popup = new Shell(this.getShell(), 16392);
        int style = this.getStyle();
        int listStyle = 516;
        if ((style & 0x800000) != 0) {
            listStyle |= 0x800000;
        }
        if ((style & 0x4000000) != 0) {
            listStyle |= 0x4000000;
        }
        if ((style & 0x2000000) != 0) {
            listStyle |= 0x2000000;
        }
        this.list = new List(this.popup, listStyle);
        if (this.font != null) {
            this.list.setFont(this.font);
        }
        if (this.foreground != null) {
            this.list.setForeground(this.foreground);
        }
        if (this.background != null) {
            this.list.setBackground(this.background);
        }
        int[] popupEvents = new int[]{21, 9};
        int i = 0;
        while (i < popupEvents.length) {
            this.popup.addListener(popupEvents[i], this.listener);
            ++i;
        }
        int[] listEvents = new int[]{4, 13, 31, 1, 2, 15, 16, 12};
        int i2 = 0;
        while (i2 < listEvents.length) {
            this.list.addListener(listEvents[i2], this.listener);
            ++i2;
        }
        if (items != null) {
            this.list.setItems(items);
        }
        if (selectionIndex != -1) {
            this.list.setSelection(selectionIndex);
        }
    }

    public void cut() {
        this.checkWidget();
        this.text.cut();
    }

    public void deselect(int index) {
        this.checkWidget();
        if (index >= 0 && index < this.list.getItemCount() && index == this.list.getSelectionIndex() && this.text.getText().equals(this.list.getItem(index))) {
            this.text.setText("");
            this.list.deselect(index);
        }
    }

    public void deselectAll() {
        this.checkWidget();
        this.text.setText("");
        this.list.deselectAll();
    }

    void dropDown(boolean drop) {
        if (drop == this.isDropped()) {
            return;
        }
        Display display = this.getDisplay();
        if (!drop) {
            display.removeFilter(13, this.filter);
            this.popup.setVisible(false);
            if (!this.isDisposed() && this.isFocusControl()) {
                this.text.setFocus();
            }
            return;
        }
        if (!this.isVisible()) {
            return;
        }
        if (this.getShell() != this.popup.getParent()) {
            String[] items = this.list.getItems();
            int selectionIndex = this.list.getSelectionIndex();
            this.list.removeListener(12, this.listener);
            this.popup.dispose();
            this.popup = null;
            this.list = null;
            this.createPopup(items, selectionIndex);
        }
        Point size = this.getSize();
        int itemCount = this.list.getItemCount();
        itemCount = itemCount == 0 ? this.visibleItemCount : Math.min(this.visibleItemCount, itemCount);
        int itemHeight = this.list.getItemHeight() * itemCount;
        Point listSize = this.list.computeSize(-1, itemHeight, false);
        this.list.setBounds(1, 1, Math.max(size.x - 2, listSize.x), listSize.y);
        int index = this.list.getSelectionIndex();
        if (index != -1) {
            this.list.setTopIndex(index);
        }
        Rectangle listRect = this.list.getBounds();
        Rectangle parentRect = display.map((Control)this.getParent(), null, this.getBounds());
        Point comboSize = this.getSize();
        Rectangle displayRect = this.getMonitor().getClientArea();
        int width = Math.max(comboSize.x, listRect.width + 2);
        int height = listRect.height + 2;
        int x = parentRect.x;
        int y = parentRect.y + comboSize.y;
        if (y + height > displayRect.y + displayRect.height) {
            y = parentRect.y - height;
        }
        if (x + width > displayRect.x + displayRect.width) {
            x = displayRect.x + displayRect.width - listRect.width;
        }
        this.popup.setBounds(x, y, width, height);
        this.popup.setVisible(true);
        if (this.isFocusControl()) {
            this.list.setFocus();
        }
        display.removeFilter(13, this.filter);
        display.addFilter(13, this.filter);
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

    String getAssociatedLabel() {
        Control[] siblings = this.getParent().getChildren();
        int i = 0;
        while (i < siblings.length) {
            if (siblings[i] == this) {
                if (i <= 0) break;
                Control sibling = siblings[i - 1];
                if (sibling instanceof Label) {
                    return ((Label)sibling).getText();
                }
                if (!(sibling instanceof CLabel)) break;
                return ((CLabel)sibling).getText();
            }
            ++i;
        }
        return null;
    }

    public Control[] getChildren() {
        this.checkWidget();
        return new Control[0];
    }

    public boolean getEditable() {
        this.checkWidget();
        return this.text.getEditable();
    }

    public String getItem(int index) {
        this.checkWidget();
        return this.list.getItem(index);
    }

    public int getItemCount() {
        this.checkWidget();
        return this.list.getItemCount();
    }

    public int getItemHeight() {
        this.checkWidget();
        return this.list.getItemHeight();
    }

    public String[] getItems() {
        this.checkWidget();
        return this.list.getItems();
    }

    public boolean getListVisible() {
        this.checkWidget();
        return this.isDropped();
    }

    public Menu getMenu() {
        return this.text.getMenu();
    }

    public Point getSelection() {
        this.checkWidget();
        return this.text.getSelection();
    }

    public int getSelectionIndex() {
        this.checkWidget();
        return this.list.getSelectionIndex();
    }

    public Shell getShell() {
        this.checkWidget();
        Shell shell = super.getShell();
        if (shell != this._shell) {
            if (this._shell != null && !this._shell.isDisposed()) {
                this._shell.removeListener(27, this.listener);
            }
            this._shell = shell;
        }
        return this._shell;
    }

    public int getStyle() {
        int style = super.getStyle();
        style &= 0xFFFFFFF7;
        if (!this.text.getEditable()) {
            style |= 8;
        }
        return style;
    }

    public String getText() {
        this.checkWidget();
        return this.text.getText();
    }

    public int getTextHeight() {
        this.checkWidget();
        return this.text.getLineHeight();
    }

    public int getTextLimit() {
        this.checkWidget();
        return this.text.getTextLimit();
    }

    public int getVisibleItemCount() {
        this.checkWidget();
        return this.visibleItemCount;
    }

    void handleFocus(int type) {
        switch (type) {
            case 15: {
                if (this.hasFocus) {
                    return;
                }
                if (this.getEditable()) {
                    this.text.selectAll();
                }
                this.hasFocus = true;
                Shell shell = this.getShell();
                shell.removeListener(27, this.listener);
                shell.addListener(27, this.listener);
                Display display = this.getDisplay();
                display.removeFilter(15, this.filter);
                display.addFilter(15, this.filter);
                Event e = new Event();
                this.notifyListeners(15, e);
                break;
            }
            case 16: {
                if (!this.hasFocus) {
                    return;
                }
                Control focusControl = this.getDisplay().getFocusControl();
                if (focusControl == this.arrow || focusControl == this.list || focusControl == this.text) {
                    return;
                }
                this.hasFocus = false;
                Shell shell = this.getShell();
                shell.removeListener(27, this.listener);
                Display display = this.getDisplay();
                display.removeFilter(15, this.filter);
                Event e = new Event();
                this.notifyListeners(16, e);
            }
        }
    }

    void handleScroll(Event event) {
        ScrollBar scrollBar = (ScrollBar)event.widget;
        Scrollable scrollableParent = scrollBar.getParent();
        if (scrollableParent.equals(this.list)) {
            return;
        }
        if (this.isParentScrolling(scrollableParent)) {
            this.dropDown(false);
        }
    }

    public int indexOf(String string) {
        this.checkWidget();
        if (string == null) {
            SWT.error(4);
        }
        return this.list.indexOf(string);
    }

    public int indexOf(String string, int start) {
        this.checkWidget();
        if (string == null) {
            SWT.error(4);
        }
        return this.list.indexOf(string, start);
    }

    void initAccessible() {
        AccessibleAdapter accessibleAdapter = new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                String name = null;
                String text = CCombo.this.getAssociatedLabel();
                if (text != null) {
                    name = CCombo.this.stripMnemonic(text);
                }
                e.result = name;
            }

            public void getKeyboardShortcut(AccessibleEvent e) {
                char mnemonic;
                String shortcut = null;
                String text = CCombo.this.getAssociatedLabel();
                if (text != null && (mnemonic = CCombo.this._findMnemonic(text)) != '\u0000') {
                    shortcut = "Alt+" + mnemonic;
                }
                e.result = shortcut;
            }

            public void getHelp(AccessibleEvent e) {
                e.result = CCombo.this.getToolTipText();
            }
        };
        this.getAccessible().addAccessibleListener(accessibleAdapter);
        this.text.getAccessible().addAccessibleListener(accessibleAdapter);
        this.list.getAccessible().addAccessibleListener(accessibleAdapter);
        this.arrow.getAccessible().addAccessibleListener(new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = CCombo.this.isDropped() ? SWT.getMessage("SWT_Close") : SWT.getMessage("SWT_Open");
            }

            public void getKeyboardShortcut(AccessibleEvent e) {
                e.result = "Alt+Down Arrow";
            }

            public void getHelp(AccessibleEvent e) {
                e.result = CCombo.this.getToolTipText();
            }
        });
        this.getAccessible().addAccessibleTextListener(new AccessibleTextAdapter(){

            public void getCaretOffset(AccessibleTextEvent e) {
                e.offset = CCombo.this.text.getCaretPosition();
            }

            public void getSelectionRange(AccessibleTextEvent e) {
                Point sel = CCombo.this.text.getSelection();
                e.offset = sel.x;
                e.length = sel.y - sel.x;
            }
        });
        this.getAccessible().addAccessibleControlListener(new AccessibleControlAdapter(){

            public void getChildAtPoint(AccessibleControlEvent e) {
                Point testPoint = CCombo.this.toControl(e.x, e.y);
                if (CCombo.this.getBounds().contains(testPoint)) {
                    e.childID = -1;
                }
            }

            public void getLocation(AccessibleControlEvent e) {
                Rectangle location = CCombo.this.getBounds();
                Point pt = CCombo.this.getParent().toDisplay(location.x, location.y);
                e.x = pt.x;
                e.y = pt.y;
                e.width = location.width;
                e.height = location.height;
            }

            public void getChildCount(AccessibleControlEvent e) {
                e.detail = 0;
            }

            public void getRole(AccessibleControlEvent e) {
                e.detail = 46;
            }

            public void getState(AccessibleControlEvent e) {
                e.detail = 0;
            }

            public void getValue(AccessibleControlEvent e) {
                e.result = CCombo.this.getText();
            }
        });
        this.text.getAccessible().addAccessibleControlListener(new AccessibleControlAdapter(){

            public void getRole(AccessibleControlEvent e) {
                e.detail = CCombo.this.text.getEditable() ? 42 : 41;
            }
        });
        this.arrow.getAccessible().addAccessibleControlListener(new AccessibleControlAdapter(){

            public void getDefaultAction(AccessibleControlEvent e) {
                e.result = CCombo.this.isDropped() ? SWT.getMessage("SWT_Close") : SWT.getMessage("SWT_Open");
            }
        });
    }

    boolean isDropped() {
        return this.popup.getVisible();
    }

    public boolean isFocusControl() {
        this.checkWidget();
        if (this.text.isFocusControl() || this.arrow.isFocusControl() || this.list.isFocusControl() || this.popup.isFocusControl()) {
            return true;
        }
        return super.isFocusControl();
    }

    boolean isParentScrolling(Control scrollableParent) {
        Composite parent = this.getParent();
        while (parent != null) {
            if (parent.equals(scrollableParent)) {
                return true;
            }
            parent = parent.getParent();
        }
        return false;
    }

    void internalLayout(boolean changed) {
        if (this.isDropped()) {
            this.dropDown(false);
        }
        Rectangle rect = this.getClientArea();
        int width = rect.width;
        int height = rect.height;
        Point arrowSize = this.arrow.computeSize(-1, height, changed);
        this.text.setBounds(0, 0, width - arrowSize.x, height);
        this.arrow.setBounds(width - arrowSize.x, 0, arrowSize.x, arrowSize.y);
    }

    void listEvent(Event event) {
        switch (event.type) {
            case 12: {
                if (this.getShell() == this.popup.getParent()) break;
                String[] items = this.list.getItems();
                int selectionIndex = this.list.getSelectionIndex();
                this.popup = null;
                this.list = null;
                this.createPopup(items, selectionIndex);
                break;
            }
            case 15: {
                this.handleFocus(15);
                break;
            }
            case 16: {
                if (!"carbon".equals(SWT.getPlatform())) {
                    Point point = this.arrow.toControl(this.getDisplay().getCursorLocation());
                    Point size = this.arrow.getSize();
                    Rectangle rect = new Rectangle(0, 0, size.x, size.y);
                    if (rect.contains(point)) {
                        boolean comboShellActivated;
                        boolean bl = comboShellActivated = this.getDisplay().getActiveShell() == this.getShell();
                        if (comboShellActivated) break;
                        this.dropDown(false);
                        break;
                    }
                }
                this.dropDown(false);
                break;
            }
            case 4: {
                if (event.button != 1) {
                    return;
                }
                this.dropDown(false);
                break;
            }
            case 13: {
                int index = this.list.getSelectionIndex();
                if (index == -1) {
                    return;
                }
                this.text.setText(this.list.getItem(index));
                this.text.selectAll();
                this.list.setSelection(index);
                Event e = new Event();
                e.time = event.time;
                e.stateMask = event.stateMask;
                e.doit = event.doit;
                this.notifyListeners(13, e);
                event.doit = e.doit;
                break;
            }
            case 31: {
                switch (event.detail) {
                    case 2: 
                    case 4: 
                    case 32: 
                    case 64: {
                        event.doit = false;
                        break;
                    }
                    case 8: 
                    case 16: {
                        event.doit = this.text.traverse(event.detail);
                        event.detail = 0;
                        if (event.doit) {
                            this.dropDown(false);
                        }
                        return;
                    }
                }
                Event e = new Event();
                e.time = event.time;
                e.detail = event.detail;
                e.doit = event.doit;
                e.character = event.character;
                e.keyCode = event.keyCode;
                e.keyLocation = event.keyLocation;
                this.notifyListeners(31, e);
                event.doit = e.doit;
                event.detail = e.detail;
                break;
            }
            case 2: {
                Event e = new Event();
                e.time = event.time;
                e.character = event.character;
                e.keyCode = event.keyCode;
                e.keyLocation = event.keyLocation;
                e.stateMask = event.stateMask;
                this.notifyListeners(2, e);
                event.doit = e.doit;
                break;
            }
            case 1: {
                Event e;
                if (event.character == '\u001b') {
                    this.dropDown(false);
                }
                if ((event.stateMask & 0x10000) != 0 && (event.keyCode == 0x1000001 || event.keyCode == 0x1000002)) {
                    this.dropDown(false);
                }
                if (event.character == '\r') {
                    this.dropDown(false);
                    e = new Event();
                    e.time = event.time;
                    e.stateMask = event.stateMask;
                    this.notifyListeners(14, e);
                }
                if (this.isDisposed()) break;
                e = new Event();
                e.time = event.time;
                e.character = event.character;
                e.keyCode = event.keyCode;
                e.keyLocation = event.keyLocation;
                e.stateMask = event.stateMask;
                this.notifyListeners(1, e);
                event.doit = e.doit;
            }
        }
    }

    public void paste() {
        this.checkWidget();
        this.text.paste();
    }

    void popupEvent(Event event) {
        switch (event.type) {
            case 9: {
                Rectangle listRect = this.list.getBounds();
                Color black = this.getDisplay().getSystemColor(2);
                event.gc.setForeground(black);
                event.gc.drawRectangle(0, 0, listRect.width + 1, listRect.height + 1);
                break;
            }
            case 21: {
                event.doit = false;
                this.dropDown(false);
            }
        }
    }

    public void redraw() {
        super.redraw();
        this.text.redraw();
        this.arrow.redraw();
        if (this.popup.isVisible()) {
            this.list.redraw();
        }
    }

    public void redraw(int x, int y, int width, int height, boolean all) {
        super.redraw(x, y, width, height, true);
    }

    public void remove(int index) {
        this.checkWidget();
        this.list.remove(index);
    }

    public void remove(int start, int end) {
        this.checkWidget();
        this.list.remove(start, end);
    }

    public void remove(String string) {
        this.checkWidget();
        if (string == null) {
            SWT.error(4);
        }
        this.list.remove(string);
    }

    public void removeAll() {
        this.checkWidget();
        this.text.setText("");
        this.list.removeAll();
    }

    public void removeModifyListener(ModifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(24, listener);
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(13, listener);
        this.removeListener(14, listener);
    }

    public void removeVerifyListener(VerifyListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(25, listener);
    }

    public void select(int index) {
        this.checkWidget();
        if (index == -1) {
            this.list.deselectAll();
            this.text.setText("");
            return;
        }
        if (index >= 0 && index < this.list.getItemCount() && index != this.getSelectionIndex()) {
            this.text.setText(this.list.getItem(index));
            this.text.selectAll();
            this.list.select(index);
            this.list.showSelection();
        }
    }

    public void setBackground(Color color) {
        super.setBackground(color);
        this.background = color;
        if (this.text != null) {
            this.text.setBackground(color);
        }
        if (this.list != null) {
            this.list.setBackground(color);
        }
        if (this.arrow != null) {
            this.arrow.setBackground(color);
        }
    }

    public void setEditable(boolean editable) {
        this.checkWidget();
        this.text.setEditable(editable);
    }

    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (this.popup != null) {
            this.popup.setVisible(false);
        }
        if (this.text != null) {
            this.text.setEnabled(enabled);
        }
        if (this.arrow != null) {
            this.arrow.setEnabled(enabled);
        }
    }

    public boolean setFocus() {
        this.checkWidget();
        if (!this.isEnabled() || !this.getVisible()) {
            return false;
        }
        if (this.isFocusControl()) {
            return true;
        }
        return this.text.setFocus();
    }

    public void setFont(Font font) {
        super.setFont(font);
        this.font = font;
        this.text.setFont(font);
        this.list.setFont(font);
        this.internalLayout(true);
    }

    public void setForeground(Color color) {
        super.setForeground(color);
        this.foreground = color;
        if (this.text != null) {
            this.text.setForeground(color);
        }
        if (this.list != null) {
            this.list.setForeground(color);
        }
        if (this.arrow != null) {
            this.arrow.setForeground(color);
        }
    }

    public void setItem(int index, String string) {
        this.checkWidget();
        this.list.setItem(index, string);
    }

    public void setItems(String[] items) {
        this.checkWidget();
        this.list.setItems(items);
        if (!this.text.getEditable()) {
            this.text.setText("");
        }
    }

    public void setLayout(Layout layout) {
        this.checkWidget();
    }

    public void setListVisible(boolean visible) {
        this.checkWidget();
        this.dropDown(visible);
    }

    public void setMenu(Menu menu) {
        this.text.setMenu(menu);
    }

    public void setSelection(Point selection) {
        this.checkWidget();
        if (selection == null) {
            SWT.error(4);
        }
        this.text.setSelection(selection.x, selection.y);
    }

    public void setText(String string) {
        int index;
        this.checkWidget();
        if (string == null) {
            SWT.error(4);
        }
        if ((index = this.list.indexOf(string)) == -1) {
            this.list.deselectAll();
            this.text.setText(string);
            return;
        }
        this.text.setText(string);
        this.text.selectAll();
        this.list.setSelection(index);
        this.list.showSelection();
    }

    public void setTextLimit(int limit) {
        this.checkWidget();
        this.text.setTextLimit(limit);
    }

    public void setToolTipText(String string) {
        this.checkWidget();
        super.setToolTipText(string);
        this.arrow.setToolTipText(string);
        this.text.setToolTipText(string);
    }

    public void setVisible(boolean visible) {
        super.setVisible(visible);
        if (this.isDisposed()) {
            return;
        }
        if (this.popup == null || this.popup.isDisposed()) {
            return;
        }
        if (!visible) {
            this.popup.setVisible(false);
        }
    }

    public void setVisibleItemCount(int count) {
        this.checkWidget();
        if (count < 0) {
            return;
        }
        this.visibleItemCount = count;
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

    void textEvent(Event event) {
        switch (event.type) {
            case 15: {
                this.handleFocus(15);
                break;
            }
            case 14: {
                this.dropDown(false);
                Event e = new Event();
                e.time = event.time;
                e.stateMask = event.stateMask;
                this.notifyListeners(14, e);
                break;
            }
            case 5: 
            case 6: 
            case 7: 
            case 8: 
            case 29: 
            case 32: {
                Point pt = this.getDisplay().map(this.text, this, event.x, event.y);
                event.x = pt.x;
                event.y = pt.y;
                this.notifyListeners(event.type, event);
                event.type = 0;
                break;
            }
            case 1: {
                Event keyEvent = new Event();
                keyEvent.time = event.time;
                keyEvent.character = event.character;
                keyEvent.keyCode = event.keyCode;
                keyEvent.keyLocation = event.keyLocation;
                keyEvent.stateMask = event.stateMask;
                this.notifyListeners(1, keyEvent);
                if (this.isDisposed()) break;
                event.doit = keyEvent.doit;
                if (!event.doit || event.keyCode != 0x1000001 && event.keyCode != 0x1000002) break;
                event.doit = false;
                if ((event.stateMask & 0x10000) != 0) {
                    boolean dropped = this.isDropped();
                    this.text.selectAll();
                    if (!dropped) {
                        this.setFocus();
                    }
                    this.dropDown(!dropped);
                    break;
                }
                int oldIndex = this.getSelectionIndex();
                if (event.keyCode == 0x1000001) {
                    this.select(Math.max(oldIndex - 1, 0));
                } else {
                    this.select(Math.min(oldIndex + 1, this.getItemCount() - 1));
                }
                if (oldIndex != this.getSelectionIndex()) {
                    Event e = new Event();
                    e.time = event.time;
                    e.stateMask = event.stateMask;
                    this.notifyListeners(13, e);
                }
                if (!this.isDisposed()) break;
                break;
            }
            case 2: {
                Event e = new Event();
                e.time = event.time;
                e.character = event.character;
                e.keyCode = event.keyCode;
                e.keyLocation = event.keyLocation;
                e.stateMask = event.stateMask;
                this.notifyListeners(2, e);
                event.doit = e.doit;
                break;
            }
            case 35: {
                Event e = new Event();
                e.time = event.time;
                this.notifyListeners(35, e);
                break;
            }
            case 24: {
                this.list.deselectAll();
                Event e = new Event();
                e.time = event.time;
                this.notifyListeners(24, e);
                break;
            }
            case 3: {
                Point pt = this.getDisplay().map(this.text, this, event.x, event.y);
                Event mouseEvent = new Event();
                mouseEvent.button = event.button;
                mouseEvent.count = event.count;
                mouseEvent.stateMask = event.stateMask;
                mouseEvent.time = event.time;
                mouseEvent.x = pt.x;
                mouseEvent.y = pt.y;
                this.notifyListeners(3, mouseEvent);
                if (this.isDisposed()) break;
                event.doit = mouseEvent.doit;
                if (!event.doit) break;
                if (event.button != 1) {
                    return;
                }
                if (this.text.getEditable()) {
                    return;
                }
                boolean dropped = this.isDropped();
                this.text.selectAll();
                if (!dropped) {
                    this.setFocus();
                }
                this.dropDown(!dropped);
                break;
            }
            case 4: {
                Point pt = this.getDisplay().map(this.text, this, event.x, event.y);
                Event mouseEvent = new Event();
                mouseEvent.button = event.button;
                mouseEvent.count = event.count;
                mouseEvent.stateMask = event.stateMask;
                mouseEvent.time = event.time;
                mouseEvent.x = pt.x;
                mouseEvent.y = pt.y;
                this.notifyListeners(4, mouseEvent);
                if (this.isDisposed()) break;
                event.doit = mouseEvent.doit;
                if (!event.doit) break;
                if (event.button != 1) {
                    return;
                }
                if (this.text.getEditable()) {
                    return;
                }
                this.text.selectAll();
                break;
            }
            case 37: {
                this.notifyListeners(37, event);
                event.type = 0;
                if (this.isDisposed() || !event.doit || event.count == 0) break;
                event.doit = false;
                int oldIndex = this.getSelectionIndex();
                if (event.count > 0) {
                    this.select(Math.max(oldIndex - 1, 0));
                } else {
                    this.select(Math.min(oldIndex + 1, this.getItemCount() - 1));
                }
                if (oldIndex != this.getSelectionIndex()) {
                    Event e = new Event();
                    e.time = event.time;
                    e.stateMask = event.stateMask;
                    this.notifyListeners(13, e);
                }
                if (!this.isDisposed()) break;
                break;
            }
            case 31: {
                switch (event.detail) {
                    case 32: 
                    case 64: {
                        event.doit = false;
                        break;
                    }
                    case 8: {
                        event.doit = this.traverse(8);
                        event.detail = 0;
                        return;
                    }
                }
                Event e = new Event();
                e.time = event.time;
                e.detail = event.detail;
                e.doit = event.doit;
                e.character = event.character;
                e.keyCode = event.keyCode;
                e.keyLocation = event.keyLocation;
                this.notifyListeners(31, e);
                event.doit = e.doit;
                event.detail = e.detail;
                break;
            }
            case 25: {
                Event e = new Event();
                e.text = event.text;
                e.start = event.start;
                e.end = event.end;
                e.character = event.character;
                e.keyCode = event.keyCode;
                e.keyLocation = event.keyLocation;
                e.stateMask = event.stateMask;
                this.notifyListeners(25, e);
                event.text = e.text;
                event.doit = e.doit;
            }
        }
    }

    public boolean traverse(int event) {
        if (event == 64 || event == 16) {
            return this.text.traverse(event);
        }
        return super.traverse(event);
    }
}

