/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.dialogs;

import org.eclipse.jface.fieldassist.DecoratedField;
import org.eclipse.jface.fieldassist.FieldDecorationRegistry;
import org.eclipse.jface.fieldassist.TextControlCreator;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Text;

public class ImageAndMessageArea
extends Composite {
    private int BORDER_MARGIN = 2;
    private DecoratedField messageField;
    private Composite container;

    public ImageAndMessageArea(Composite parent, int style) {
        super(parent, style);
        this.container = new Composite((Composite)this, style);
        GridLayout glayout = new GridLayout();
        glayout.numColumns = 2;
        glayout.marginWidth = 0;
        glayout.marginHeight = 0;
        glayout.marginTop = this.BORDER_MARGIN;
        glayout.marginBottom = this.BORDER_MARGIN;
        this.container.setLayout((Layout)glayout);
        this.messageField = new DecoratedField(this.container, 8 | style, new TextControlCreator());
        this.setFont(JFaceResources.getDialogFont());
        GridData gd = new GridData(4, 4, true, true);
        int lineHeight = ((Text)this.messageField.getControl()).getLineHeight();
        gd.heightHint = (style & 0x40) > 0 ? 2 * lineHeight : lineHeight;
        this.messageField.getLayoutControl().setLayoutData((Object)gd);
        this.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent e) {
                ImageAndMessageArea.this.onPaint(e);
            }
        });
        this.setLayout(new Layout(){

            public void layout(Composite parent, boolean changed) {
                Rectangle carea = ImageAndMessageArea.this.getClientArea();
                ImageAndMessageArea.this.container.setBounds(carea.x + ImageAndMessageArea.this.BORDER_MARGIN, carea.y + ImageAndMessageArea.this.BORDER_MARGIN, carea.width - 2 * ImageAndMessageArea.this.BORDER_MARGIN, carea.height - 2 * ImageAndMessageArea.this.BORDER_MARGIN);
            }

            public Point computeSize(Composite parent, int wHint, int hHint, boolean changed) {
                Point size = ImageAndMessageArea.this.container.computeSize(wHint, hHint, changed);
                size.x += 4;
                size.y += 4;
                return size;
            }
        });
        this.setVisible(false);
    }

    public void setBackground(Color bg) {
        super.setBackground(bg);
        this.messageField.getLayoutControl().setBackground(bg);
        this.messageField.getControl().setBackground(bg);
        this.container.setBackground(bg);
    }

    public void setText(String text) {
        ((Text)this.messageField.getControl()).setText(text);
    }

    public void setImage(Image image) {
        FieldDecorationRegistry registry = FieldDecorationRegistry.getDefault();
        registry.registerFieldDecoration("messageImage", null, image);
        this.messageField.addFieldDecoration(registry.getFieldDecoration("messageImage"), 16512, false);
    }

    private void onPaint(PaintEvent e) {
        Rectangle carea = this.getClientArea();
        e.gc.setForeground(this.getForeground());
        e.gc.drawPolyline(new int[]{carea.x, carea.y + carea.height - 1, carea.x, carea.y + 2, carea.x + 2, carea.y, carea.x + carea.width - 3, carea.y, carea.x + carea.width - 1, carea.y + 2, carea.x + carea.width - 1, carea.y + carea.height - 1});
    }

    public void setFont(Font font) {
        super.setFont(font);
        ((Text)this.messageField.getControl()).setFont(font);
    }

    public void setToolTipText(String text) {
        super.setToolTipText(text);
        ((Text)this.messageField.getControl()).setToolTipText(text);
    }
}

