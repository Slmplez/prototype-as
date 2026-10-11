/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.accessibility.Accessible
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleControlAdapter
 *  org.eclipse.swt.accessibility.AccessibleControlEvent
 *  org.eclipse.swt.accessibility.AccessibleControlListener
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.custom.ScrolledComposite
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.MenuEvent
 *  org.eclipse.swt.events.MenuListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.internal.SWTEventListener
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.TypedListener
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.forms.widgets;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.swt.SWT;
import org.eclipse.swt.accessibility.Accessible;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleControlListener;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.MenuEvent;
import org.eclipse.swt.events.MenuListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.forms.HyperlinkSettings;
import org.eclipse.ui.forms.events.HyperlinkEvent;
import org.eclipse.ui.forms.events.IHyperlinkListener;
import org.eclipse.ui.forms.widgets.Form;
import org.eclipse.ui.forms.widgets.ILayoutExtension;
import org.eclipse.ui.internal.forms.Messages;
import org.eclipse.ui.internal.forms.widgets.ControlSegment;
import org.eclipse.ui.internal.forms.widgets.FormFonts;
import org.eclipse.ui.internal.forms.widgets.FormTextModel;
import org.eclipse.ui.internal.forms.widgets.FormUtil;
import org.eclipse.ui.internal.forms.widgets.IFocusSelectable;
import org.eclipse.ui.internal.forms.widgets.IHyperlinkSegment;
import org.eclipse.ui.internal.forms.widgets.Locator;
import org.eclipse.ui.internal.forms.widgets.Paragraph;
import org.eclipse.ui.internal.forms.widgets.ParagraphSegment;
import org.eclipse.ui.internal.forms.widgets.SelectionData;
import org.eclipse.ui.internal.forms.widgets.TextSegment;

public class FormText
extends Canvas {
    public static final String URL_HANDLER_ID = "urlHandler";
    public int marginWidth = 0;
    public int marginHeight = 1;
    private static final boolean DEBUG_TEXT = false;
    private static final boolean DEBUG_TEXTSIZE = false;
    private static final boolean DEBUG_FOCUS = false;
    private boolean hasFocus;
    private boolean paragraphsSeparated = true;
    private FormTextModel model;
    private ListenerList listeners;
    private Hashtable resourceTable = new Hashtable();
    private IHyperlinkSegment entered;
    private IHyperlinkSegment armed;
    private boolean mouseFocus = false;
    private boolean controlFocusTransfer = false;
    private boolean inSelection = false;
    private SelectionData selData;
    private static final String INTERNAL_MENU = "__internal_menu__";
    private static final String CONTROL_KEY = "__segment__";

    public FormText(Composite parent, int style) {
        super(parent, 0x40040 | style);
        this.setLayout(new FormTextLayout());
        this.model = new FormTextModel();
        this.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                FormText.this.model.dispose();
                FormText.this.disposeResourceTable(true);
            }
        });
        this.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent e) {
                FormText.this.paint(e);
            }
        });
        this.addListener(1, new Listener(){

            public void handleEvent(Event e) {
                if (e.character == '\r') {
                    FormText.this.activateSelectedLink();
                    return;
                }
            }
        });
        this.addListener(31, new Listener(){

            public void handleEvent(Event e) {
                switch (e.detail) {
                    case 32: 
                    case 64: 
                    case 256: 
                    case 512: {
                        e.doit = false;
                        return;
                    }
                }
                if (!FormText.this.model.hasFocusSegments()) {
                    e.doit = true;
                    return;
                }
                if (e.detail == 16) {
                    e.doit = FormText.this.advance(true);
                } else if (e.detail == 8) {
                    e.doit = FormText.this.advance(false);
                } else if (e.detail != 4) {
                    e.doit = true;
                }
            }
        });
        this.addFocusListener(new FocusListener(){

            public void focusGained(FocusEvent e) {
                if (!FormText.this.hasFocus) {
                    FormText.this.hasFocus = true;
                    if (!FormText.this.mouseFocus && !FormText.this.controlFocusTransfer) {
                        FormText.this.handleFocusChange();
                    }
                }
            }

            public void focusLost(FocusEvent e) {
                if (FormText.this.hasFocus) {
                    FormText.this.hasFocus = false;
                    if (!FormText.this.controlFocusTransfer) {
                        FormText.this.handleFocusChange();
                    }
                }
            }
        });
        this.addMouseListener(new MouseListener(){

            public void mouseDoubleClick(MouseEvent e) {
            }

            public void mouseDown(MouseEvent e) {
                FormText.this.handleMouseClick(e, true);
            }

            public void mouseUp(MouseEvent e) {
                FormText.this.handleMouseClick(e, false);
            }
        });
        this.addMouseTrackListener(new MouseTrackListener(){

            public void mouseEnter(MouseEvent e) {
                FormText.this.handleMouseMove(e);
            }

            public void mouseExit(MouseEvent e) {
                if (FormText.this.entered != null) {
                    FormText.this.exitLink(FormText.this.entered, e.stateMask);
                    FormText.this.paintLinkHover(FormText.this.entered, false);
                    FormText.this.entered = null;
                    FormText.this.setCursor(null);
                }
            }

            public void mouseHover(MouseEvent e) {
                FormText.this.handleMouseHover(e);
            }
        });
        this.addMouseMoveListener(new MouseMoveListener(){

            public void mouseMove(MouseEvent e) {
                FormText.this.handleMouseMove(e);
            }
        });
        this.initAccessible();
        this.ensureBoldFontPresent(this.getFont());
        this.createMenu();
        this.setTabList(new Control[0]);
    }

    public boolean getFocus() {
        return this.hasFocus;
    }

    public boolean isLoading() {
        return false;
    }

    public String getLoadingText() {
        return null;
    }

    public void setLoadingText(String loadingText) {
        this.setText(loadingText, false, false);
    }

    public void setParagraphsSeparated(boolean value) {
        this.paragraphsSeparated = value;
    }

    public boolean getParagraphsSeparated() {
        return this.paragraphsSeparated;
    }

    public void setImage(String key, Image image) {
        this.resourceTable.put("i." + key, image);
    }

    public void setColor(String key, Color color) {
        String fullKey = "c." + key;
        if (color == null) {
            this.resourceTable.remove(fullKey);
        } else {
            this.resourceTable.put(fullKey, color);
        }
    }

    public void setFont(String key, Font font) {
        String fullKey = "f." + key;
        if (font == null) {
            this.resourceTable.remove(fullKey);
        } else {
            this.resourceTable.put(fullKey, font);
        }
        this.model.clearCache(fullKey);
    }

    public void setControl(String key, Control control) {
        String fullKey = "o." + key;
        if (control == null) {
            this.resourceTable.remove(fullKey);
        } else {
            this.resourceTable.put(fullKey, control);
        }
    }

    public void setFont(Font font) {
        super.setFont(font);
        this.model.clearCache(null);
        Font boldFont = (Font)this.resourceTable.get("f.____bold");
        if (boldFont != null) {
            FormFonts.getInstance().markFinished(boldFont, this.getDisplay());
            this.resourceTable.remove("f.____bold");
        }
        this.ensureBoldFontPresent(this.getFont());
    }

    public void setText(String text, boolean parseTags, boolean expandURLs) {
        this.disposeResourceTable(false);
        this.entered = null;
        if (parseTags) {
            this.model.parseTaggedText(text, expandURLs);
        } else {
            this.model.parseRegularText(text, expandURLs);
        }
        this.hookControlSegmentFocus();
        this.layout();
        this.redraw();
    }

    public void setContents(InputStream is, boolean expandURLs) {
        this.entered = null;
        this.disposeResourceTable(false);
        this.model.parseInputStream(is, expandURLs);
        this.hookControlSegmentFocus();
        this.layout();
        this.redraw();
    }

    private void hookControlSegmentFocus() {
        Paragraph[] paragraphs = this.model.getParagraphs();
        if (paragraphs == null) {
            return;
        }
        Listener listener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 15: {
                        if (FormText.this.controlFocusTransfer) break;
                        FormText.this.syncControlSegmentFocus((Control)e.widget);
                        break;
                    }
                    case 31: {
                        switch (e.detail) {
                            case 32: 
                            case 64: 
                            case 256: 
                            case 512: {
                                e.doit = false;
                                return;
                            }
                        }
                        Control c = (Control)e.widget;
                        ControlSegment segment = (ControlSegment)c.getData(FormText.CONTROL_KEY);
                        if (e.detail == 16) {
                            e.doit = FormText.this.advanceControl(c, segment, true);
                        } else if (e.detail == 8) {
                            e.doit = FormText.this.advanceControl(c, segment, false);
                        }
                        if (e.doit) break;
                        e.detail = 0;
                    }
                }
            }
        };
        int i = 0;
        while (i < paragraphs.length) {
            Paragraph p = paragraphs[i];
            ParagraphSegment[] segments = p.getSegments();
            int j = 0;
            while (j < segments.length) {
                ControlSegment cs;
                Control c;
                if (segments[j] instanceof ControlSegment && (c = (cs = (ControlSegment)segments[j]).getControl(this.resourceTable)) != null && c.getData(CONTROL_KEY) == null) {
                    c.setData(CONTROL_KEY, (Object)cs);
                    this.attachTraverseListener(c, listener);
                }
                ++j;
            }
            ++i;
        }
    }

    private void attachTraverseListener(Control c, Listener listener) {
        if (c instanceof Composite) {
            Composite parent = (Composite)c;
            Control[] children = parent.getChildren();
            int i = 0;
            while (i < children.length) {
                this.attachTraverseListener(children[i], listener);
                ++i;
            }
            if (c instanceof Canvas) {
                c.addListener(31, listener);
                c.addListener(15, listener);
            }
        } else {
            c.addListener(31, listener);
            c.addListener(15, listener);
        }
    }

    private void syncControlSegmentFocus(Control control) {
        ControlSegment cs = null;
        while (control != null) {
            cs = (ControlSegment)control.getData(CONTROL_KEY);
            if (cs != null) break;
            control = control.getParent();
        }
        if (cs == null) {
            return;
        }
        IFocusSelectable current = this.model.getSelectedSegment();
        if (current == cs) {
            return;
        }
        IHyperlinkSegment oldLink = null;
        if (current != null && current instanceof IHyperlinkSegment) {
            oldLink = (IHyperlinkSegment)current;
            this.exitLink(oldLink, 0);
        }
        this.model.select(cs);
        if (oldLink != null) {
            this.paintFocusTransfer(oldLink, null);
        }
    }

    private boolean advanceControl(Control c, ControlSegment segment, boolean next) {
        Composite parent = c.getParent();
        if (parent == this) {
            IFocusSelectable nextSegment = this.model.getNextFocusSegment(next);
            if (nextSegment != null) {
                this.controlFocusTransfer = true;
                super.forceFocus();
                this.controlFocusTransfer = false;
                this.model.select(segment);
                return this.advance(next);
            }
            return this.setFocusToNextSibling((Control)this, next);
        }
        if (this.setFocusToNextSibling(c, next)) {
            return true;
        }
        segment = (ControlSegment)parent.getData(CONTROL_KEY);
        return this.advanceControl((Control)parent, segment, next);
    }

    private boolean setFocusToNextSibling(Control c, boolean next) {
        Composite parent = c.getParent();
        Control[] children = parent.getTabList();
        int i = 0;
        while (i < children.length) {
            Control child = children[i];
            if (child == c) {
                int j;
                if (next) {
                    j = i + 1;
                    while (j < children.length) {
                        Control nc = children[j];
                        if (nc.setFocus()) {
                            return false;
                        }
                        ++j;
                    }
                } else {
                    j = i - 1;
                    while (j >= 0) {
                        Control pc = children[j];
                        if (pc.setFocus()) {
                            return false;
                        }
                        --j;
                    }
                }
            }
            ++i;
        }
        return false;
    }

    public void setWhitespaceNormalized(boolean value) {
        this.model.setWhitespaceNormalized(value);
    }

    public boolean isWhitespaceNormalized() {
        return this.model.isWhitespaceNormalized();
    }

    public void setMenu(Menu menu) {
        Menu currentMenu = super.getMenu();
        if (currentMenu != null && INTERNAL_MENU.equals(currentMenu.getData())) {
            if (menu != null) {
                currentMenu.dispose();
                super.setMenu(menu);
            }
        } else {
            super.setMenu(menu);
        }
    }

    private void createMenu() {
        Menu menu = new Menu((Control)this);
        final MenuItem copyItem = new MenuItem(menu, 8);
        copyItem.setText(Messages.FormText_copy);
        SelectionAdapter listener = new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                if (e.widget == copyItem) {
                    FormText.this.copy();
                }
            }
        };
        copyItem.addSelectionListener((SelectionListener)listener);
        menu.addMenuListener(new MenuListener(){

            public void menuShown(MenuEvent e) {
                copyItem.setEnabled(FormText.this.canCopy());
            }

            public void menuHidden(MenuEvent e) {
            }
        });
        menu.setData((Object)INTERNAL_MENU);
        super.setMenu(menu);
    }

    public HyperlinkSettings getHyperlinkSettings() {
        return this.model.getHyperlinkSettings();
    }

    public void setHyperlinkSettings(HyperlinkSettings settings) {
        this.model.setHyperlinkSettings(settings);
    }

    public void addHyperlinkListener(IHyperlinkListener listener) {
        if (this.listeners == null) {
            this.listeners = new ListenerList();
        }
        this.listeners.add((Object)listener);
    }

    public void removeHyperlinkListener(IHyperlinkListener listener) {
        if (this.listeners == null) {
            return;
        }
        this.listeners.remove((Object)listener);
    }

    public void addSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error((int)4);
        }
        TypedListener typedListener = new TypedListener((SWTEventListener)listener);
        this.addListener(13, (Listener)typedListener);
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error((int)4);
        }
        this.removeListener(13, (SWTEventListener)listener);
    }

    public String getSelectionText() {
        this.checkWidget();
        if (this.selData != null) {
            return this.selData.getSelectionText();
        }
        return "";
    }

    public boolean canCopy() {
        return this.selData != null && this.selData.canCopy();
    }

    public void copy() {
        if (!this.canCopy()) {
            return;
        }
        Clipboard clipboard = new Clipboard(this.getDisplay());
        Object[] o = new Object[]{this.getSelectionText()};
        Transfer[] t = new Transfer[]{TextTransfer.getInstance()};
        clipboard.setContents(o, t);
        clipboard.dispose();
    }

    public Object getSelectedLinkHref() {
        IHyperlinkSegment link = this.getSelectedLink();
        return link != null ? link.getHref() : null;
    }

    public String getSelectedLinkText() {
        IHyperlinkSegment link = this.getSelectedLink();
        return link != null ? link.getText() : null;
    }

    private IHyperlinkSegment getSelectedLink() {
        IFocusSelectable segment = this.model.getSelectedSegment();
        if (segment != null && segment instanceof IHyperlinkSegment) {
            return (IHyperlinkSegment)segment;
        }
        return null;
    }

    private void initAccessible() {
        Accessible accessible = this.getAccessible();
        accessible.addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                if (e.childID == -1) {
                    e.result = FormText.this.model.getAccessibleText();
                } else {
                    int linkCount = FormText.this.model.getHyperlinkCount();
                    if (e.childID >= 0 && e.childID < linkCount) {
                        IHyperlinkSegment link = FormText.this.model.getHyperlink(e.childID);
                        e.result = link.getText();
                    }
                }
            }

            public void getHelp(AccessibleEvent e) {
                e.result = FormText.this.getToolTipText();
                int linkCount = FormText.this.model.getHyperlinkCount();
                if (e.result == null && e.childID >= 0 && e.childID < linkCount) {
                    IHyperlinkSegment link = FormText.this.model.getHyperlink(e.childID);
                    e.result = link.getText();
                }
            }
        });
        accessible.addAccessibleControlListener((AccessibleControlListener)new AccessibleControlAdapter(){

            public void getChildAtPoint(AccessibleControlEvent e) {
                Point pt = FormText.this.toControl(new Point(e.x, e.y));
                IHyperlinkSegment link = FormText.this.model.findHyperlinkAt(pt.x, pt.y);
                e.childID = link != null ? FormText.this.model.indexOf(link) : -1;
            }

            public void getLocation(AccessibleControlEvent e) {
                Rectangle location = null;
                if (e.childID != -1 && e.childID != -2) {
                    int index = e.childID;
                    IHyperlinkSegment link = FormText.this.model.getHyperlink(index);
                    if (link != null) {
                        location = link.getBounds();
                    }
                }
                if (location == null) {
                    location = FormText.this.getBounds();
                }
                Point pt = FormText.this.toDisplay(new Point(location.x, location.y));
                e.x = pt.x;
                e.y = pt.y;
                e.width = location.width;
                e.height = location.height;
            }

            public void getFocus(AccessibleControlEvent e) {
                int selectedIndex;
                int childID = -2;
                if (FormText.this.model.hasFocusSegments() && (selectedIndex = FormText.this.model.getSelectedSegmentIndex()) != -1) {
                    childID = selectedIndex;
                }
                e.childID = childID;
            }

            public void getDefaultAction(AccessibleControlEvent e) {
                if (FormText.this.model.getHyperlinkCount() > 0) {
                    e.result = SWT.getMessage((String)"SWT_Press");
                }
            }

            public void getChildCount(AccessibleControlEvent e) {
                e.detail = FormText.this.model.getHyperlinkCount();
            }

            public void getRole(AccessibleControlEvent e) {
                int role = 0;
                int childID = e.childID;
                int linkCount = FormText.this.model.getHyperlinkCount();
                if (childID == -1) {
                    role = linkCount > 0 ? 30 : 42;
                } else if (childID >= 0 && childID < linkCount) {
                    role = 30;
                }
                e.detail = role;
            }

            public void getSelection(AccessibleControlEvent e) {
                int selectedIndex = FormText.this.model.getSelectedSegmentIndex();
                e.childID = selectedIndex == -1 ? -2 : selectedIndex;
            }

            public void getState(AccessibleControlEvent e) {
                int linkCount = FormText.this.model.getHyperlinkCount();
                int selectedIndex = FormText.this.model.getSelectedSegmentIndex();
                int state = 0;
                int childID = e.childID;
                if (childID == -1) {
                    state = 0;
                } else if (childID >= 0 && childID < linkCount) {
                    state = 0x200000;
                    if (FormText.this.isFocusControl()) {
                        state |= 0x100000;
                    }
                    if (selectedIndex == childID) {
                        state |= 2;
                        if (FormText.this.isFocusControl()) {
                            state |= 4;
                        }
                    }
                }
                e.detail = state |= 0x40;
            }

            public void getChildren(AccessibleControlEvent e) {
                int linkCount = FormText.this.model.getHyperlinkCount();
                Object[] children = new Object[linkCount];
                int i = 0;
                while (i < linkCount) {
                    children[i] = new Integer(i);
                    ++i;
                }
                e.children = children;
            }

            public void getValue(AccessibleControlEvent e) {
            }
        });
    }

    private void startSelection(MouseEvent e) {
        this.inSelection = true;
        this.selData = new SelectionData(e);
        this.redraw();
        Form form = FormUtil.getForm((Control)this);
        if (form != null) {
            form.setSelectionText(this);
        }
    }

    private void endSelection(MouseEvent e) {
        this.inSelection = false;
        if (this.selData != null) {
            if (!this.selData.isEnclosed()) {
                this.selData = null;
            } else {
                this.computeSelection();
            }
        }
        this.notifySelectionChanged();
    }

    private void computeSelection() {
        GC gc = new GC((Drawable)this);
        Paragraph[] paragraphs = this.model.getParagraphs();
        IHyperlinkSegment selectedLink = this.getSelectedLink();
        if (this.getDisplay().getFocusControl() != this) {
            selectedLink = null;
        }
        int i = 0;
        while (i < paragraphs.length) {
            Paragraph p = paragraphs[i];
            if (i > 0) {
                this.selData.markNewLine();
            }
            p.computeSelection(gc, this.resourceTable, selectedLink, this.selData);
            ++i;
        }
        gc.dispose();
    }

    void clearSelection() {
        this.selData = null;
        if (!this.isDisposed()) {
            this.redraw();
            this.notifySelectionChanged();
        }
    }

    private void notifySelectionChanged() {
        Event event = new Event();
        event.widget = this;
        event.display = this.getDisplay();
        event.type = 13;
        this.notifyListeners(13, event);
        if (!this.isDisposed()) {
            this.getAccessible().selectionChanged();
        }
    }

    private void handleDrag(MouseEvent e) {
        if (this.selData != null) {
            ScrolledComposite scomp = FormUtil.getScrolledComposite((Control)this);
            if (scomp != null) {
                FormUtil.ensureVisible(scomp, (Control)this, e);
            }
            this.selData.update(e);
            this.redraw();
        }
    }

    private void handleMouseClick(MouseEvent e, boolean down) {
        if (down) {
            this.mouseFocus = true;
            IHyperlinkSegment segmentUnder = this.model.findHyperlinkAt(e.x, e.y);
            if (segmentUnder != null) {
                IHyperlinkSegment oldLink = this.getSelectedLink();
                if (this.getDisplay().getFocusControl() != this) {
                    this.setFocus();
                }
                this.model.selectLink(segmentUnder);
                this.enterLink(segmentUnder, e.stateMask);
                this.paintFocusTransfer(oldLink, segmentUnder);
            }
            if (e.button == 1) {
                this.startSelection(e);
                this.armed = segmentUnder;
            }
        } else {
            if (e.button == 1) {
                this.endSelection(e);
                if (this.isDisposed()) {
                    return;
                }
                IHyperlinkSegment segmentUnder = this.model.findHyperlinkAt(e.x, e.y);
                if (segmentUnder != null && this.armed == segmentUnder && this.selData == null) {
                    this.activateLink(segmentUnder, e.stateMask);
                    this.armed = null;
                }
            }
            this.mouseFocus = false;
        }
    }

    private void handleMouseHover(MouseEvent e) {
    }

    private void updateTooltipText(ParagraphSegment segment) {
        String currentTooltipText;
        String tooltipText = null;
        if (segment != null) {
            tooltipText = segment.getTooltipText();
        }
        if ((currentTooltipText = this.getToolTipText()) != null && tooltipText == null || currentTooltipText == null && tooltipText != null) {
            this.setToolTipText(tooltipText);
        }
    }

    private void handleMouseMove(MouseEvent e) {
        if (this.inSelection) {
            this.handleDrag(e);
            return;
        }
        ParagraphSegment segmentUnder = this.model.findSegmentAt(e.x, e.y);
        this.updateTooltipText(segmentUnder);
        if (segmentUnder == null) {
            if (this.entered != null) {
                this.exitLink(this.entered, e.stateMask);
                this.paintLinkHover(this.entered, false);
                this.entered = null;
            }
            this.setCursor(null);
        } else if (segmentUnder instanceof IHyperlinkSegment) {
            IHyperlinkSegment linkUnder = (IHyperlinkSegment)((Object)segmentUnder);
            if (this.entered != null && linkUnder != this.entered) {
                this.exitLink(this.entered, e.stateMask);
                this.paintLinkHover(this.entered, false);
                this.entered = null;
            }
            if (this.entered == null) {
                this.entered = linkUnder;
                this.enterLink(linkUnder, e.stateMask);
                this.paintLinkHover(this.entered, true);
                this.setCursor(this.model.getHyperlinkSettings().getHyperlinkCursor());
            }
        } else {
            if (this.entered != null) {
                this.exitLink(this.entered, e.stateMask);
                this.paintLinkHover(this.entered, false);
                this.entered = null;
            }
            if (segmentUnder instanceof TextSegment) {
                this.setCursor(this.model.getHyperlinkSettings().getTextCursor());
            } else {
                this.setCursor(null);
            }
        }
    }

    private boolean advance(boolean next) {
        IHyperlinkSegment oldLink;
        IHyperlinkSegment newLink;
        IFocusSelectable current = this.model.getSelectedSegment();
        if (current != null && current instanceof IHyperlinkSegment) {
            this.exitLink((IHyperlinkSegment)current, 0);
        }
        IFocusSelectable newSegment = null;
        boolean valid = false;
        while (!valid) {
            if (!this.model.traverseFocusSelectableObjects(next) || (newSegment = this.model.getSelectedSegment()) == null) break;
            valid = this.setControlFocus(next, newSegment);
        }
        IHyperlinkSegment iHyperlinkSegment = newLink = newSegment instanceof IHyperlinkSegment ? (IHyperlinkSegment)newSegment : null;
        if (valid) {
            this.enterLink(newLink, 0);
        }
        IHyperlinkSegment iHyperlinkSegment2 = oldLink = current instanceof IHyperlinkSegment ? (IHyperlinkSegment)current : null;
        if (oldLink != null || newLink != null) {
            this.paintFocusTransfer(oldLink, newLink);
        }
        if (newLink != null) {
            this.ensureVisible(newLink);
        }
        if (newLink != null) {
            this.getAccessible().setFocus(this.model.getSelectedSegmentIndex());
        }
        return !valid;
    }

    private boolean setControlFocus(boolean next, IFocusSelectable selectable) {
        this.controlFocusTransfer = true;
        boolean result = selectable.setFocus(this.resourceTable, next);
        this.controlFocusTransfer = false;
        return result;
    }

    private void handleFocusChange() {
        if (this.hasFocus) {
            boolean advance = true;
            if (!this.mouseFocus) {
                boolean valid = false;
                IFocusSelectable selectable = null;
                while (!valid) {
                    if (!this.model.traverseFocusSelectableObjects(advance) || (selectable = this.model.getSelectedSegment()) == null) break;
                    valid = this.setControlFocus(advance, selectable);
                }
                if (selectable != null) {
                    this.ensureVisible(selectable);
                }
                if (selectable instanceof IHyperlinkSegment) {
                    this.enterLink((IHyperlinkSegment)selectable, 0);
                    this.paintFocusTransfer(null, (IHyperlinkSegment)selectable);
                }
            }
        } else {
            this.paintFocusTransfer(this.getSelectedLink(), null);
            this.model.selectLink(null);
        }
        if (!this.model.hasFocusSegments()) {
            this.redraw();
        }
    }

    private void enterLink(IHyperlinkSegment link, int stateMask) {
        if (link == null || this.listeners == null) {
            return;
        }
        int size = this.listeners.size();
        HyperlinkEvent he = new HyperlinkEvent((Widget)this, link.getHref(), link.getText(), stateMask);
        Object[] listenerList = this.listeners.getListeners();
        int i = 0;
        while (i < size) {
            IHyperlinkListener listener = (IHyperlinkListener)listenerList[i];
            listener.linkEntered(he);
            ++i;
        }
    }

    private void exitLink(IHyperlinkSegment link, int stateMask) {
        if (link == null || this.listeners == null) {
            return;
        }
        int size = this.listeners.size();
        HyperlinkEvent he = new HyperlinkEvent((Widget)this, link.getHref(), link.getText(), stateMask);
        Object[] listenerList = this.listeners.getListeners();
        int i = 0;
        while (i < size) {
            IHyperlinkListener listener = (IHyperlinkListener)listenerList[i];
            listener.linkExited(he);
            ++i;
        }
    }

    private void paintLinkHover(IHyperlinkSegment link, boolean hover) {
        Color newFg;
        GC gc = new GC((Drawable)this);
        HyperlinkSettings settings = this.getHyperlinkSettings();
        Color color = newFg = hover ? settings.getActiveForeground() : settings.getForeground();
        if (newFg != null) {
            gc.setForeground(newFg);
        }
        gc.setBackground(this.getBackground());
        gc.setFont(this.getFont());
        boolean selected = link == this.getSelectedLink();
        ((ParagraphSegment)((Object)link)).paint(gc, hover, this.resourceTable, selected, this.selData, null);
        gc.dispose();
    }

    private void activateSelectedLink() {
        IHyperlinkSegment link = this.getSelectedLink();
        if (link != null) {
            this.activateLink(link, 0);
        }
    }

    private void activateLink(IHyperlinkSegment link, int stateMask) {
        this.setCursor(this.model.getHyperlinkSettings().getBusyCursor());
        if (this.listeners != null) {
            int size = this.listeners.size();
            HyperlinkEvent e = new HyperlinkEvent((Widget)this, link.getHref(), link.getText(), stateMask);
            Object[] listenerList = this.listeners.getListeners();
            int i = 0;
            while (i < size) {
                IHyperlinkListener listener = (IHyperlinkListener)listenerList[i];
                listener.linkActivated(e);
                ++i;
            }
        }
        if (!this.isDisposed() && this.model.linkExists(link)) {
            this.setCursor(this.model.getHyperlinkSettings().getHyperlinkCursor());
        }
    }

    private void ensureBoldFontPresent(Font regularFont) {
        Font boldFont = (Font)this.resourceTable.get("f.____bold");
        if (boldFont != null) {
            return;
        }
        boldFont = FormFonts.getInstance().getBoldFont(this.getDisplay(), regularFont);
        this.resourceTable.put("f.____bold", boldFont);
    }

    private void paint(PaintEvent e) {
        GC gc = e.gc;
        gc.setFont(this.getFont());
        this.ensureBoldFontPresent(this.getFont());
        gc.setForeground(this.getForeground());
        gc.setBackground(this.getBackground());
        this.repaint(gc, e.x, e.y, e.width, e.height);
    }

    private void repaint(GC gc, int x, int y, int width, int height) {
        Image textBuffer = new Image((Device)this.getDisplay(), width, height);
        Color bg = this.getBackground();
        Color fg = this.getForeground();
        if (!this.getEnabled()) {
            bg = this.getDisplay().getSystemColor(22);
            fg = this.getDisplay().getSystemColor(18);
        }
        GC textGC = new GC((Drawable)textBuffer, gc.getStyle());
        textGC.setForeground(fg);
        textGC.setBackground(bg);
        textGC.setFont(this.getFont());
        textGC.fillRectangle(0, 0, width, height);
        Rectangle repaintRegion = new Rectangle(x, y, width, height);
        Paragraph[] paragraphs = this.model.getParagraphs();
        IHyperlinkSegment selectedLink = this.getSelectedLink();
        if (this.getDisplay().getFocusControl() != this) {
            selectedLink = null;
        }
        int i = 0;
        while (i < paragraphs.length) {
            Paragraph p = paragraphs[i];
            p.paint(textGC, repaintRegion, this.resourceTable, selectedLink, this.selData);
            ++i;
        }
        if (this.hasFocus && !this.model.hasFocusSegments()) {
            textGC.drawFocus(x, y, width, height);
        }
        textGC.dispose();
        gc.drawImage(textBuffer, x, y);
        textBuffer.dispose();
    }

    private int getParagraphSpacing(int lineHeight) {
        return lineHeight / 2;
    }

    private void paintFocusTransfer(IHyperlinkSegment oldLink, IHyperlinkSegment newLink) {
        if (oldLink != null) {
            Rectangle r = oldLink.getBounds();
            this.redraw(r.x, r.y, r.width, r.height, true);
            this.update();
        }
        if (newLink != null) {
            GC gc = new GC((Drawable)this);
            Color bg = this.getBackground();
            Color fg = this.getForeground();
            gc.setFont(this.getFont());
            gc.setBackground(bg);
            gc.setForeground(fg);
            newLink.paintFocus(gc, bg, fg, true, null);
            gc.dispose();
        }
    }

    private void ensureVisible(IFocusSelectable segment) {
        if (this.mouseFocus) {
            this.mouseFocus = false;
            return;
        }
        if (segment == null) {
            return;
        }
        Rectangle bounds = segment.getBounds();
        ScrolledComposite scomp = FormUtil.getScrolledComposite((Control)this);
        if (scomp == null) {
            return;
        }
        Point origin = FormUtil.getControlLocation(scomp, (Control)this);
        origin.x += bounds.x;
        origin.y += bounds.y;
        FormUtil.ensureVisible(scomp, origin, new Point(bounds.width, bounds.height));
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        FormTextLayout layout = (FormTextLayout)this.getLayout();
        Point size = wHint == -1 || hHint == -1 ? layout.computeSize((Composite)this, wHint, hHint, changed) : new Point(wHint, hHint);
        Rectangle trim = this.computeTrim(0, 0, size.x, size.y);
        return new Point(trim.width, trim.height);
    }

    private void disposeResourceTable(boolean disposeBoldFont) {
        Font boldFont;
        if (disposeBoldFont && (boldFont = (Font)this.resourceTable.get("f.____bold")) != null) {
            FormFonts.getInstance().markFinished(boldFont, this.getDisplay());
            this.resourceTable.remove("f.____bold");
        }
        ArrayList<String> imagesToRemove = new ArrayList<String>();
        Enumeration enm = this.resourceTable.keys();
        while (enm.hasMoreElements()) {
            Image image;
            Object obj;
            String key = (String)enm.nextElement();
            if (!key.startsWith("isel.") || !((obj = this.resourceTable.get(key)) instanceof Image) || (image = (Image)obj).isDisposed()) continue;
            image.dispose();
            imagesToRemove.add(key);
        }
        int i = 0;
        while (i < imagesToRemove.size()) {
            this.resourceTable.remove(imagesToRemove.get(i));
            ++i;
        }
    }

    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        this.redraw();
    }

    public boolean setFocus() {
        this.mouseFocus = true;
        FormUtil.setFocusScrollingEnabled((Control)this, false);
        boolean result = super.setFocus();
        this.mouseFocus = false;
        FormUtil.setFocusScrollingEnabled((Control)this, true);
        return result;
    }

    private class FormTextLayout
    extends Layout
    implements ILayoutExtension {
        public int computeMaximumWidth(Composite parent, boolean changed) {
            return this.computeSize((Composite)parent, (int)-1, (int)-1, (boolean)changed).x;
        }

        public int computeMinimumWidth(Composite parent, boolean changed) {
            return this.computeSize((Composite)parent, (int)5, (int)-1, (boolean)true).x;
        }

        public Point computeSize(Composite composite, int wHint, int hHint, boolean changed) {
            long start = 0L;
            int innerWidth = wHint;
            if (innerWidth != -1) {
                innerWidth -= FormText.this.marginWidth * 2;
            }
            Point textSize = this.computeTextSize(innerWidth);
            int textWidth = textSize.x + 2 * FormText.this.marginWidth;
            int textHeight = textSize.y + 2 * FormText.this.marginHeight;
            Point result = new Point(textWidth, textHeight);
            return result;
        }

        private Point computeTextSize(int wHint) {
            Paragraph[] paragraphs = FormText.this.model.getParagraphs();
            GC gc = new GC((Drawable)FormText.this);
            gc.setFont(FormText.this.getFont());
            Locator loc = new Locator();
            int width = wHint != -1 ? wHint : 0;
            FontMetrics fm = gc.getFontMetrics();
            int lineHeight = fm.getHeight();
            boolean selectableInTheLastRow = false;
            int i = 0;
            while (i < paragraphs.length) {
                Paragraph p = paragraphs[i];
                if (i > 0 && FormText.this.getParagraphsSeparated() && p.getAddVerticalSpace()) {
                    loc.y += FormText.this.getParagraphSpacing(lineHeight);
                }
                loc.rowHeight = 0;
                loc.indent = p.getIndent();
                loc.x = p.getIndent();
                ParagraphSegment[] segments = p.getSegments();
                if (segments.length > 0) {
                    selectableInTheLastRow = false;
                    int pwidth = 0;
                    int j = 0;
                    while (j < segments.length) {
                        ParagraphSegment segment = segments[j];
                        segment.advanceLocator(gc, wHint, loc, FormText.this.resourceTable, false);
                        if (wHint != -1) {
                            width = Math.max(width, loc.width);
                        } else {
                            pwidth = Math.max(pwidth, loc.width);
                        }
                        if (segment instanceof IFocusSelectable) {
                            selectableInTheLastRow = true;
                        }
                        ++j;
                    }
                    if (wHint == -1) {
                        width = Math.max(width, pwidth);
                    }
                    loc.y += loc.rowHeight;
                } else {
                    loc.y += lineHeight;
                }
                ++i;
            }
            gc.dispose();
            if (selectableInTheLastRow) {
                ++loc.y;
            }
            return new Point(width, loc.y);
        }

        protected void layout(Composite composite, boolean flushCache) {
            long start = 0L;
            FormText.this.selData = null;
            Rectangle carea = composite.getClientArea();
            GC gc = new GC((Drawable)composite);
            gc.setFont(FormText.this.getFont());
            FormText.this.ensureBoldFontPresent(FormText.this.getFont());
            gc.setForeground(FormText.this.getForeground());
            gc.setBackground(FormText.this.getBackground());
            Locator loc = new Locator();
            loc.marginWidth = FormText.this.marginWidth;
            loc.marginHeight = FormText.this.marginHeight;
            loc.y = FormText.this.marginHeight;
            FontMetrics fm = gc.getFontMetrics();
            int lineHeight = fm.getHeight();
            Paragraph[] paragraphs = FormText.this.model.getParagraphs();
            IHyperlinkSegment selectedLink = FormText.this.getSelectedLink();
            int i = 0;
            while (i < paragraphs.length) {
                Paragraph p = paragraphs[i];
                if (i > 0 && FormText.this.paragraphsSeparated && p.getAddVerticalSpace()) {
                    loc.y += FormText.this.getParagraphSpacing(lineHeight);
                }
                loc.indent = p.getIndent();
                loc.resetCaret();
                loc.rowHeight = 0;
                p.layout(gc, carea.width, loc, lineHeight, FormText.this.resourceTable, selectedLink);
                ++i;
            }
            gc.dispose();
        }
    }
}

