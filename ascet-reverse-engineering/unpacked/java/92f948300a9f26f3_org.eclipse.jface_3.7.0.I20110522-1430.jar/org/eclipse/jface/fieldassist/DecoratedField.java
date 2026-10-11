/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Region
 *  org.eclipse.swt.layout.FormAttachment
 *  org.eclipse.swt.layout.FormData
 *  org.eclipse.swt.layout.FormLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.fieldassist;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.fieldassist.FieldDecoration;
import org.eclipse.jface.fieldassist.FieldDecorationRegistry;
import org.eclipse.jface.fieldassist.IControlCreator;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.layout.FormLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;

public class DecoratedField {
    private static boolean MAC = Util.isMac();
    private static final int LEFT_TOP = 0;
    private static final int LEFT_BOTTOM = 1;
    private static final int RIGHT_TOP = 2;
    private static final int RIGHT_BOTTOM = 3;
    private static final int DECORATION_SLOTS = 4;
    private FieldDecorationData[] decDatas = new FieldDecorationData[4];
    private Control control;
    private Composite form;
    private boolean useMaxDecorationWidth = true;
    private Hover hover;

    public DecoratedField(Composite parent, int style, IControlCreator controlCreator) {
        this.form = this.createForm(parent);
        this.control = controlCreator.createControl(this.form, style);
        this.addControlListeners();
        this.form.setTabList(new Control[]{this.control});
        FormData data = new FormData();
        data.left = new FormAttachment(0, 0);
        data.top = new FormAttachment(0, 0);
        data.right = new FormAttachment(100, 0);
        data.bottom = new FormAttachment(100, 0);
        this.control.setLayoutData((Object)data);
    }

    public void addFieldDecoration(FieldDecoration decoration, int position, boolean showOnFocus) {
        Label label;
        FormData formData;
        int i = this.indexForPosition(position);
        if (this.decDatas[i] == null) {
            formData = this.createFormDataForIndex(i, decoration.getImage());
            label = new Label(this.form, 0x1000300);
            label.addMouseTrackListener(new MouseTrackListener(){

                public void mouseHover(MouseEvent event) {
                    FieldDecorationData decData = (FieldDecorationData)event.widget.getData();
                    String desc = decData.decoration.getDescription();
                    if (desc != null) {
                        DecoratedField.this.showHoverText(desc, (Control)label);
                    }
                }

                public void mouseEnter(MouseEvent event) {
                }

                public void mouseExit(MouseEvent event) {
                    DecoratedField.this.hideHover();
                }
            });
            this.decDatas[i] = new FieldDecorationData(decoration, label, formData, showOnFocus);
        } else {
            label = this.decDatas[i].label;
            formData = this.decDatas[i].data;
            this.decDatas[i].decoration = decoration;
            this.decDatas[i].showOnFocus = showOnFocus;
        }
        label.setImage(this.decDatas[i].decoration.getImage());
        label.setData((Object)this.decDatas[i]);
        label.setLayoutData((Object)formData);
        label.setVisible(!showOnFocus);
        this.updateControlAttachments(i, this.decDatas[i]);
    }

    private void updateControlAttachments(int index, FieldDecorationData decData) {
        FormData formData = (FormData)this.control.getLayoutData();
        int newWidth = this.widthOf(decData.decoration.getImage());
        switch (index) {
            case 0: 
            case 1: {
                int opposing = index == 0 ? 1 : 0;
                if (this.decDatas[opposing] == null) {
                    formData.left = new FormAttachment((Control)decData.label);
                    break;
                }
                if (this.decDatas[opposing].data.width < newWidth) {
                    formData.left = new FormAttachment((Control)decData.label);
                    this.decDatas[opposing].data.left.alignment = 0x1000000;
                    this.decDatas[opposing].data.left.control = decData.label;
                    break;
                }
                formData = null;
                decData.data.left.alignment = 0x1000000;
                decData.data.left.control = this.decDatas[opposing].label;
                break;
            }
            case 2: 
            case 3: {
                int opposing = index == 2 ? 3 : 2;
                if (this.decDatas[opposing] == null) {
                    formData.right = new FormAttachment((Control)decData.label);
                    break;
                }
                if (this.decDatas[opposing].data.width < newWidth) {
                    formData.right = new FormAttachment((Control)decData.label);
                    this.decDatas[opposing].data.right.alignment = 0x1000000;
                    this.decDatas[opposing].data.right.control = decData.label;
                    break;
                }
                formData = null;
                decData.data.right.alignment = 0x1000000;
                decData.data.right.control = this.decDatas[opposing].label;
                break;
            }
            default: {
                return;
            }
        }
        if (formData != null) {
            this.control.setLayoutData((Object)formData);
            this.form.layout();
        }
    }

    public Control getControl() {
        return this.control;
    }

    public Control getLayoutControl() {
        return this.form;
    }

    private Composite createForm(Composite parent) {
        Composite composite = new Composite(parent, 524288);
        composite.setBackgroundMode(1);
        composite.setLayout((Layout)new FormLayout());
        return composite;
    }

    private void addControlListeners() {
        this.control.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent event) {
                if (DecoratedField.this.hover != null) {
                    DecoratedField.this.hover.dispose();
                }
            }
        });
        this.control.addFocusListener(new FocusListener(){

            public void focusGained(FocusEvent event) {
                DecoratedField.this.controlFocusGained();
            }

            public void focusLost(FocusEvent event) {
                DecoratedField.this.controlFocusLost();
            }
        });
    }

    private int indexForPosition(int position) {
        switch (position) {
            case 17408: {
                return 1;
            }
            case 131200: {
                return 2;
            }
            case 132096: {
                return 3;
            }
        }
        return 0;
    }

    private FormData createFormDataForIndex(int index, Image image) {
        Assert.isTrue((index >= 0 && index < 4 ? 1 : 0) != 0, (String)"Index out of range");
        FormData data = new FormData();
        switch (index) {
            case 0: {
                data.left = new FormAttachment(0, 0);
                data.top = new FormAttachment(0, 0);
                break;
            }
            case 1: {
                data.left = new FormAttachment(0, 0);
                data.bottom = new FormAttachment(100, 0);
                break;
            }
            case 2: {
                data.right = new FormAttachment(100, 0);
                data.top = new FormAttachment(0, 0);
                break;
            }
            case 3: {
                data.right = new FormAttachment(100, 0);
                data.bottom = new FormAttachment(100, 0);
            }
        }
        data.width = this.widthOf(image);
        data.height = -1;
        return data;
    }

    public void showHoverText(String text) {
        this.showHoverText(text, this.control);
    }

    public void hideHover() {
        if (this.hover != null) {
            this.hover.setVisible(false);
        }
    }

    private void controlFocusGained() {
        int i = 0;
        while (i < 4) {
            if (this.decDatas[i] != null && this.decDatas[i].showOnFocus) {
                this.setVisible(this.decDatas[i], true);
            }
            ++i;
        }
    }

    private void controlFocusLost() {
        int i = 0;
        while (i < 4) {
            if (this.decDatas[i] != null && this.decDatas[i].showOnFocus) {
                this.setVisible(this.decDatas[i], false);
            }
            ++i;
        }
    }

    public void showDecoration(FieldDecoration decoration) {
        FieldDecorationData data = this.getDecorationData(decoration);
        if (data == null) {
            return;
        }
        data.visible = true;
        if (!data.showOnFocus || this.control.isFocusControl()) {
            this.setVisible(data, true);
        }
    }

    public void hideDecoration(FieldDecoration decoration) {
        FieldDecorationData data = this.getDecorationData(decoration);
        if (data == null) {
            return;
        }
        data.visible = false;
        this.setVisible(data, false);
    }

    public void updateDecoration(FieldDecoration decoration) {
        FieldDecorationData data = this.getDecorationData(decoration);
        if (data == null) {
            return;
        }
        if (data.label != null) {
            data.label.setImage(decoration.getImage());
            if (data.label.getVisible() && this.hover != null) {
                this.showHoverText(decoration.getDescription(), (Control)data.label);
            }
        }
    }

    private void setVisible(FieldDecorationData decData, boolean visible) {
        if (visible && decData.visible) {
            decData.label.setVisible(true);
        } else {
            decData.label.setVisible(false);
        }
    }

    private FieldDecorationData getDecorationData(FieldDecoration dec) {
        int i = 0;
        while (i < 4) {
            if (this.decDatas[i] != null && dec == this.decDatas[i].decoration && this.decDatas[i].label != null && !this.decDatas[i].label.isDisposed()) {
                return this.decDatas[i];
            }
            ++i;
        }
        return null;
    }

    private void showHoverText(String text, Control hoverNear) {
        if (text == null) {
            this.hideHover();
            return;
        }
        if (this.hover == null) {
            this.hover = new Hover(hoverNear.getShell());
        }
        this.hover.setText(text, hoverNear, this.control);
        this.hover.setVisible(true);
    }

    public void setUseMaximumDecorationWidth(boolean useMaximumWidth) {
        this.useMaxDecorationWidth = useMaximumWidth;
    }

    private int widthOf(Image image) {
        if (image == null) {
            return 0;
        }
        return this.useMaxDecorationWidth ? FieldDecorationRegistry.getDefault().getMaximumDecorationWidth() : image.getBounds().width;
    }

    static /* synthetic */ boolean access$0() {
        return MAC;
    }

    private class FieldDecorationData {
        FieldDecoration decoration;
        Label label;
        FormData data;
        boolean showOnFocus;
        boolean visible = true;

        FieldDecorationData(FieldDecoration decoration, Label label, FormData formData, boolean showOnFocus) {
            this.decoration = decoration;
            this.label = label;
            this.data = formData;
            this.showOnFocus = showOnFocus;
        }
    }

    class Hover {
        private static final String EMPTY = "";
        private int hao = 10;
        private int haw = 8;
        private int hah = 10;
        private int hm = 2;
        Shell hoverShell;
        String text = "";
        Region region;
        boolean arrowOnLeft = true;

        Hover(Shell parent) {
            Display display = parent.getDisplay();
            this.hoverShell = new Shell(parent, 540684);
            this.hoverShell.setBackground(display.getSystemColor(29));
            this.hoverShell.setForeground(display.getSystemColor(28));
            this.hoverShell.addPaintListener(new PaintListener(this){
                final /* synthetic */ Hover this$1;
                {
                    this.this$1 = hover;
                }

                public void paintControl(PaintEvent pe) {
                    pe.gc.drawString(this.this$1.text, Hover.access$0(this.this$1), Hover.access$0(this.this$1));
                    if (!DecoratedField.access$0()) {
                        pe.gc.drawPolygon(this.this$1.getPolygon(true));
                    }
                }
            });
            this.hoverShell.addMouseListener((MouseListener)new MouseAdapter(this){
                final /* synthetic */ Hover this$1;
                {
                    this.this$1 = hover;
                }

                public void mouseDown(MouseEvent e) {
                    Hover.access$1(this.this$1).hideHover();
                }
            });
        }

        int[] getPolygon(boolean border) {
            int b;
            Point e = this.getExtent();
            int n = b = border ? 1 : 0;
            if (this.arrowOnLeft) {
                int[] nArray = new int[16];
                nArray[2] = e.x - b;
                nArray[4] = e.x - b;
                nArray[5] = e.y - b;
                nArray[6] = this.hao + this.haw;
                nArray[7] = e.y - b;
                nArray[8] = this.hao + this.haw / 2;
                nArray[9] = e.y + this.hah - b;
                nArray[10] = this.hao;
                nArray[11] = e.y - b;
                nArray[13] = e.y - b;
                return nArray;
            }
            int[] nArray = new int[16];
            nArray[2] = e.x - b;
            nArray[4] = e.x - b;
            nArray[5] = e.y - b;
            nArray[6] = e.x - this.hao - b;
            nArray[7] = e.y - b;
            nArray[8] = e.x - this.hao - this.haw / 2;
            nArray[9] = e.y + this.hah - b;
            nArray[10] = e.x - this.hao - this.haw;
            nArray[11] = e.y - b;
            nArray[13] = e.y - b;
            return nArray;
        }

        void dispose() {
            if (!this.hoverShell.isDisposed()) {
                this.hoverShell.dispose();
            }
            if (this.region != null) {
                this.region.dispose();
            }
        }

        void setVisible(boolean visible) {
            if (visible) {
                if (!this.hoverShell.isVisible()) {
                    this.hoverShell.setVisible(true);
                }
            } else if (this.hoverShell.isVisible()) {
                this.hoverShell.setVisible(false);
            }
        }

        void setText(String t, Control hoverNear, Control targetControl) {
            if (t == null) {
                t = EMPTY;
            }
            if (!t.equals(this.text)) {
                Point oldSize = this.getExtent();
                this.text = t;
                this.hoverShell.redraw();
                Point newSize = this.getExtent();
                if (!oldSize.equals((Object)newSize)) {
                    this.arrowOnLeft = hoverNear.getLocation().x <= targetControl.getLocation().x;
                    this.setNewShape();
                }
            }
            if (hoverNear != null) {
                Point extent = this.getExtent();
                int y = -extent.y - this.hah + 1;
                int x = this.arrowOnLeft ? -this.hao + this.haw / 2 : -extent.x + this.hao + this.haw / 2;
                this.hoverShell.setLocation(hoverNear.toDisplay(x, y));
            }
        }

        boolean isVisible() {
            return this.hoverShell.isVisible();
        }

        Point getExtent() {
            GC gc = new GC((Drawable)this.hoverShell);
            Point e = gc.textExtent(this.text);
            gc.dispose();
            e.x += this.hm * 2;
            e.y += this.hm * 2;
            return e;
        }

        void setNewShape() {
            Region oldRegion = this.region;
            this.region = new Region();
            this.region.add(this.getPolygon(false));
            this.hoverShell.setRegion(this.region);
            if (oldRegion != null) {
                oldRegion.dispose();
            }
        }

        static /* synthetic */ int access$0(Hover hover) {
            return hover.hm;
        }

        static /* synthetic */ DecoratedField access$1(Hover hover) {
            return hover.DecoratedField.this;
        }
    }
}

