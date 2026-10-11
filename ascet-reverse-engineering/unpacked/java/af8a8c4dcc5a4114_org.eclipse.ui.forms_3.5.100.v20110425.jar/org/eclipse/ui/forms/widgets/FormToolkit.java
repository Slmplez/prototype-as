/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.window.Window
 *  org.eclipse.swt.custom.CCombo
 *  org.eclipse.swt.custom.ScrolledComposite
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.Text
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.forms.widgets;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.window.Window;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Text;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.forms.FormColors;
import org.eclipse.ui.forms.HyperlinkGroup;
import org.eclipse.ui.forms.widgets.ExpandableComposite;
import org.eclipse.ui.forms.widgets.Form;
import org.eclipse.ui.forms.widgets.FormText;
import org.eclipse.ui.forms.widgets.Hyperlink;
import org.eclipse.ui.forms.widgets.ImageHyperlink;
import org.eclipse.ui.forms.widgets.LayoutComposite;
import org.eclipse.ui.forms.widgets.ScrolledForm;
import org.eclipse.ui.forms.widgets.ScrolledPageBook;
import org.eclipse.ui.forms.widgets.Section;
import org.eclipse.ui.internal.forms.widgets.FormFonts;
import org.eclipse.ui.internal.forms.widgets.FormUtil;

public class FormToolkit {
    public static final String KEY_DRAW_BORDER = "FormWidgetFactory.drawBorder";
    public static final String TREE_BORDER = "treeBorder";
    public static final String TEXT_BORDER = "textBorder";
    private int borderStyle = 0;
    private FormColors colors;
    private int orientation = Window.getDefaultOrientation();
    private BorderPainter borderPainter;
    private BoldFontHolder boldFontHolder;
    private HyperlinkGroup hyperlinkGroup;
    private boolean isDisposed = false;
    VisibilityHandler visibilityHandler;
    KeyboardHandler keyboardHandler;

    public FormToolkit(Display display) {
        this(new FormColors(display));
    }

    public FormToolkit(FormColors colors) {
        this.colors = colors;
        this.initialize();
    }

    public Button createButton(Composite parent, String text, int style) {
        Button button = new Button(parent, style | 0x800000 | this.orientation);
        if (text != null) {
            button.setText(text);
        }
        this.adapt((Control)button, true, true);
        return button;
    }

    public Composite createComposite(Composite parent) {
        return this.createComposite(parent, 0);
    }

    public Composite createComposite(Composite parent, int style) {
        LayoutComposite composite = new LayoutComposite(parent, style | this.orientation);
        this.adapt(composite);
        return composite;
    }

    public Composite createCompositeSeparator(Composite parent) {
        final Composite composite = new Composite(parent, this.orientation);
        composite.addListener(9, new Listener(){

            public void handleEvent(Event e) {
                if (composite.isDisposed()) {
                    return;
                }
                Rectangle bounds = composite.getBounds();
                GC gc = e.gc;
                gc.setForeground(FormToolkit.this.colors.getColor("org.eclipse.ui.forms.SEPARATOR"));
                if (FormToolkit.this.colors.getBackground() != null) {
                    gc.setBackground(FormToolkit.this.colors.getBackground());
                }
                gc.fillGradientRectangle(0, 0, bounds.width, bounds.height, false);
            }
        });
        if (parent instanceof Section) {
            ((Section)parent).setSeparatorControl((Control)composite);
        }
        return composite;
    }

    public Label createLabel(Composite parent, String text) {
        return this.createLabel(parent, text, 0);
    }

    public Label createLabel(Composite parent, String text, int style) {
        Label label = new Label(parent, style | this.orientation);
        if (text != null) {
            label.setText(text);
        }
        this.adapt((Control)label, false, false);
        return label;
    }

    public Hyperlink createHyperlink(Composite parent, String text, int style) {
        Hyperlink hyperlink = new Hyperlink(parent, style | this.orientation);
        if (text != null) {
            hyperlink.setText(text);
        }
        hyperlink.addFocusListener((FocusListener)this.visibilityHandler);
        hyperlink.addKeyListener((KeyListener)this.keyboardHandler);
        this.hyperlinkGroup.add(hyperlink);
        return hyperlink;
    }

    public ImageHyperlink createImageHyperlink(Composite parent, int style) {
        ImageHyperlink hyperlink = new ImageHyperlink(parent, style | this.orientation);
        hyperlink.addFocusListener((FocusListener)this.visibilityHandler);
        hyperlink.addKeyListener((KeyListener)this.keyboardHandler);
        this.hyperlinkGroup.add(hyperlink);
        return hyperlink;
    }

    public FormText createFormText(Composite parent, boolean trackFocus) {
        FormText engine = new FormText(parent, 0x40 | this.orientation);
        engine.marginWidth = 1;
        engine.marginHeight = 0;
        engine.setHyperlinkSettings(this.getHyperlinkGroup());
        this.adapt((Control)engine, trackFocus, true);
        engine.setMenu(parent.getMenu());
        return engine;
    }

    public void adapt(Control control, boolean trackFocus, boolean trackKeyboard) {
        control.setBackground(this.colors.getBackground());
        control.setForeground(this.colors.getForeground());
        if (control instanceof ExpandableComposite) {
            ExpandableComposite ec = (ExpandableComposite)control;
            if (ec.toggle != null) {
                if (trackFocus) {
                    ec.toggle.addFocusListener((FocusListener)this.visibilityHandler);
                }
                if (trackKeyboard) {
                    ec.toggle.addKeyListener((KeyListener)this.keyboardHandler);
                }
            }
            if (ec.textLabel != null) {
                if (trackFocus) {
                    ec.textLabel.addFocusListener((FocusListener)this.visibilityHandler);
                }
                if (trackKeyboard) {
                    ec.textLabel.addKeyListener((KeyListener)this.keyboardHandler);
                }
            }
            return;
        }
        if (trackFocus) {
            control.addFocusListener((FocusListener)this.visibilityHandler);
        }
        if (trackKeyboard) {
            control.addKeyListener((KeyListener)this.keyboardHandler);
        }
    }

    public void adapt(Composite composite) {
        composite.setBackground(this.colors.getBackground());
        composite.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDown(MouseEvent e) {
                ((Control)e.widget).setFocus();
            }
        });
        if (composite.getParent() != null) {
            composite.setMenu(composite.getParent().getMenu());
        }
    }

    public static void ensureVisible(Control c) {
        FormUtil.ensureVisible(c);
    }

    public Section createSection(Composite parent, int sectionStyle) {
        Section section = new Section(parent, this.orientation, sectionStyle);
        section.setMenu(parent.getMenu());
        this.adapt((Control)section, true, true);
        if (section.toggle != null) {
            section.toggle.setHoverDecorationColor(this.colors.getColor("org.eclipse.ui.forms.TB_TOGGLE_HOVER"));
            section.toggle.setDecorationColor(this.colors.getColor("org.eclipse.ui.forms.TB_TOGGLE"));
        }
        section.setFont(this.boldFontHolder.getBoldFont(parent.getFont()));
        if ((sectionStyle & 0x100) != 0 || (sectionStyle & 0x200) != 0) {
            this.colors.initializeSectionToolBarColors();
            section.setTitleBarBackground(this.colors.getColor("org.eclipse.ui.forms.TB_BG"));
            section.setTitleBarBorderColor(this.colors.getColor("org.eclipse.ui.forms.TB_BORDER"));
        }
        section.setTitleBarForeground(this.colors.getColor("org.eclipse.ui.forms.TB_TOGGLE"));
        return section;
    }

    public ExpandableComposite createExpandableComposite(Composite parent, int expansionStyle) {
        ExpandableComposite ec = new ExpandableComposite(parent, this.orientation, expansionStyle);
        ec.setMenu(parent.getMenu());
        this.adapt((Control)ec, true, true);
        ec.setFont(this.boldFontHolder.getBoldFont(ec.getFont()));
        return ec;
    }

    public Label createSeparator(Composite parent, int style) {
        Label label = new Label(parent, 2 | style | this.orientation);
        label.setBackground(this.colors.getBackground());
        label.setForeground(this.colors.getBorderColor());
        return label;
    }

    public Table createTable(Composite parent, int style) {
        Table table = new Table(parent, style | this.borderStyle | this.orientation);
        this.adapt((Control)table, false, false);
        return table;
    }

    public Text createText(Composite parent, String value) {
        return this.createText(parent, value, 4);
    }

    public Text createText(Composite parent, String value, int style) {
        Text text = new Text(parent, this.borderStyle | style | this.orientation);
        if (value != null) {
            text.setText(value);
        }
        text.setForeground(this.colors.getForeground());
        text.setBackground(this.colors.getBackground());
        text.addFocusListener((FocusListener)this.visibilityHandler);
        return text;
    }

    public Tree createTree(Composite parent, int style) {
        Tree tree = new Tree(parent, this.borderStyle | style | this.orientation);
        this.adapt((Control)tree, false, false);
        return tree;
    }

    public ScrolledForm createScrolledForm(Composite parent) {
        ScrolledForm form = new ScrolledForm(parent, 0x300 | this.orientation);
        form.setExpandHorizontal(true);
        form.setExpandVertical(true);
        form.setBackground(this.colors.getBackground());
        form.setForeground(this.colors.getColor("org.eclipse.ui.forms.TITLE"));
        form.setFont(JFaceResources.getHeaderFont());
        return form;
    }

    public Form createForm(Composite parent) {
        Form formContent = new Form(parent, this.orientation);
        formContent.setBackground(this.colors.getBackground());
        formContent.setForeground(this.colors.getColor("org.eclipse.ui.forms.TITLE"));
        formContent.setFont(JFaceResources.getHeaderFont());
        return formContent;
    }

    public void decorateFormHeading(Form form) {
        Color top = this.colors.getColor("org.eclipse.ui.forms.H_GRADIENT_END");
        Color bot = this.colors.getColor("org.eclipse.ui.forms.H_GRADIENT_START");
        form.setTextBackground(new Color[]{top, bot}, new int[]{100}, true);
        form.setHeadColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE1", this.colors.getColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE1"));
        form.setHeadColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE2", this.colors.getColor("org.eclipse.ui.forms.H_BOTTOM_KEYLINE2"));
        form.setHeadColor("org.eclipse.ui.forms.H_H_HOVER_LIGHT", this.colors.getColor("org.eclipse.ui.forms.H_H_HOVER_LIGHT"));
        form.setHeadColor("org.eclipse.ui.forms.H_H_HOVER_FULL", this.colors.getColor("org.eclipse.ui.forms.H_H_HOVER_FULL"));
        form.setHeadColor("org.eclipse.ui.forms.TB_TOGGLE", this.colors.getColor("org.eclipse.ui.forms.TB_TOGGLE"));
        form.setHeadColor("org.eclipse.ui.forms.TB_TOGGLE_HOVER", this.colors.getColor("org.eclipse.ui.forms.TB_TOGGLE_HOVER"));
        form.setSeparatorVisible(true);
    }

    public ScrolledPageBook createPageBook(Composite parent, int style) {
        ScrolledPageBook book = new ScrolledPageBook(parent, style | this.orientation);
        this.adapt((Control)book, true, true);
        book.setMenu(parent.getMenu());
        return book;
    }

    public void dispose() {
        if (this.isDisposed) {
            return;
        }
        this.isDisposed = true;
        this.boldFontHolder.dispose();
        if (!this.colors.isShared()) {
            this.colors.dispose();
            this.colors = null;
        }
    }

    public HyperlinkGroup getHyperlinkGroup() {
        return this.hyperlinkGroup;
    }

    public void setBackground(Color bg) {
        this.hyperlinkGroup.setBackground(bg);
        this.colors.setBackground(bg);
    }

    public void refreshHyperlinkColors() {
        this.hyperlinkGroup.initializeDefaultForegrounds(this.colors.getDisplay());
    }

    public void paintBordersFor(Composite parent) {
        if (this.borderPainter == null) {
            this.borderPainter = new BorderPainter();
        }
        parent.addPaintListener((PaintListener)this.borderPainter);
    }

    public FormColors getColors() {
        return this.colors;
    }

    public int getBorderStyle() {
        return this.borderStyle;
    }

    public int getBorderMargin() {
        return this.getBorderStyle() == 2048 ? 0 : 2;
    }

    public void setBorderStyle(int style) {
        this.borderStyle = style;
    }

    public static void setControlVisible(Control c, boolean verticalOnly) {
        ScrolledComposite scomp = FormUtil.getScrolledComposite(c);
        if (scomp == null) {
            return;
        }
        Point location = FormUtil.getControlLocation(scomp, c);
        scomp.setOrigin(location);
    }

    private void initialize() {
        this.initializeBorderStyle();
        this.hyperlinkGroup = new HyperlinkGroup(this.colors.getDisplay());
        this.hyperlinkGroup.setBackground(this.colors.getBackground());
        this.visibilityHandler = new VisibilityHandler();
        this.keyboardHandler = new KeyboardHandler();
        this.boldFontHolder = new BoldFontHolder();
    }

    private void initializeBorderStyle() {
        String osname = System.getProperty("os.name");
        String osversion = System.getProperty("os.version");
        if (osname.startsWith("Windows") && "5.1".compareTo(osversion) <= 0) {
            RGB rgb = this.colors.getSystemColor(22);
            if (rgb.red != 212 || rgb.green != 208 || rgb.blue != 200) {
                this.borderStyle = 2048;
            }
        } else if (osname.startsWith("Mac")) {
            this.borderStyle = 2048;
        }
    }

    public int getOrientation() {
        return this.orientation;
    }

    public void setOrientation(int orientation) {
        this.orientation = orientation;
    }

    private class BoldFontHolder {
        private Map fontMap;

        public Font getBoldFont(Font font) {
            if (font == null) {
                return null;
            }
            if (this.fontMap == null) {
                this.fontMap = new HashMap();
            }
            if (this.fontMap.containsKey(font)) {
                return (Font)this.fontMap.get(font);
            }
            Font boldFont = FormFonts.getInstance().getBoldFont(FormToolkit.this.colors.getDisplay(), font);
            this.fontMap.put(font, boldFont);
            return boldFont;
        }

        public void dispose() {
            if (this.fontMap == null) {
                return;
            }
            Iterator iter = this.fontMap.values().iterator();
            while (iter.hasNext()) {
                Font boldFont = (Font)iter.next();
                if (boldFont == null || FormToolkit.this.colors.getDisplay() == null) continue;
                FormFonts.getInstance().markFinished(boldFont, FormToolkit.this.colors.getDisplay());
                Object var2_2 = null;
            }
        }
    }

    private class BorderPainter
    implements PaintListener {
        private BorderPainter() {
        }

        public void paintControl(PaintEvent event) {
            Composite composite = (Composite)event.widget;
            Control[] children = composite.getChildren();
            int i = 0;
            while (i < children.length) {
                block13: {
                    boolean textBorder;
                    boolean inactiveBorder;
                    Control c;
                    block14: {
                        c = children[i];
                        inactiveBorder = false;
                        textBorder = false;
                        if (!c.isVisible() || c instanceof Hyperlink) break block13;
                        Object flag = c.getData(FormToolkit.KEY_DRAW_BORDER);
                        if (flag == null) break block14;
                        if (flag.equals(Boolean.FALSE)) break block13;
                        if (flag.equals(FormToolkit.TREE_BORDER)) {
                            inactiveBorder = true;
                        } else if (flag.equals(FormToolkit.TEXT_BORDER)) {
                            textBorder = true;
                        }
                    }
                    if (FormToolkit.this.getBorderStyle() != 2048 || (inactiveBorder || textBorder) && !(c instanceof Text) && !(c instanceof Table) && !(c instanceof Tree)) {
                        GC gc;
                        Rectangle b;
                        if (!inactiveBorder && (c instanceof Text || c instanceof CCombo || textBorder)) {
                            b = c.getBounds();
                            gc = event.gc;
                            gc.setForeground(c.getBackground());
                            gc.drawRectangle(b.x - 1, b.y - 1, b.width + 1, b.height + 1);
                            gc.setForeground(FormToolkit.this.colors.getBorderColor());
                            if (c instanceof CCombo) {
                                gc.drawRectangle(b.x - 1, b.y - 1, b.width + 1, b.height + 1);
                            } else {
                                gc.drawRectangle(b.x - 1, b.y - 2, b.width + 1, b.height + 3);
                            }
                        } else if (inactiveBorder || c instanceof Table || c instanceof Tree) {
                            b = c.getBounds();
                            gc = event.gc;
                            gc.setForeground(FormToolkit.this.colors.getBorderColor());
                            gc.drawRectangle(b.x - 1, b.y - 1, b.width + 1, b.height + 1);
                        }
                    }
                }
                ++i;
            }
        }
    }

    private static class KeyboardHandler
    extends KeyAdapter {
        private KeyboardHandler() {
        }

        public void keyPressed(KeyEvent e) {
            Widget w = e.widget;
            if (w instanceof Control && e.doit) {
                FormUtil.processKey(e.keyCode, (Control)w);
            }
        }
    }

    private static class VisibilityHandler
    extends FocusAdapter {
        private boolean handleNextFocusGained = true;

        private VisibilityHandler() {
        }

        public void focusGained(FocusEvent e) {
            if (!this.handleNextFocusGained) {
                this.handleNextFocusGained = true;
            } else {
                Widget w = e.widget;
                if (w instanceof Control) {
                    FormUtil.ensureVisible((Control)w);
                }
            }
        }

        public void focusLost(FocusEvent e) {
            Widget w = e.widget;
            if (w instanceof Control) {
                this.handleNextFocusGained = w.getDisplay().getActiveShell() == ((Control)w).getShell();
            }
        }
    }
}

