/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.custom.ScrolledComposite
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;

public class InfoForm {
    private ScrolledComposite fScrolledComposite;
    private Color fBackgroundColor;
    private Color fForegroundColor;
    private Color fSeparatorColor;
    private Label fHeader;
    private Label fBanner;
    private StyledText fText;
    private IPropertyChangeListener fPropertyChangeListener;

    public InfoForm(Composite parent) {
        Display display = parent.getDisplay();
        this.fBackgroundColor = display.getSystemColor(25);
        this.fForegroundColor = display.getSystemColor(24);
        this.fSeparatorColor = new Color((Device)display, 152, 170, 203);
        this.fPropertyChangeListener = new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                InfoForm.this.handlePropertyChange(event);
            }
        };
        JFaceResources.getFontRegistry().addListener(this.fPropertyChangeListener);
        this.fScrolledComposite = new ScrolledComposite(parent, 768);
        this.fScrolledComposite.setAlwaysShowScrollBars(false);
        this.fScrolledComposite.setExpandHorizontal(true);
        this.fScrolledComposite.setExpandVertical(true);
        this.fScrolledComposite.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                JFaceResources.getFontRegistry().removeListener(InfoForm.this.fPropertyChangeListener);
                InfoForm.this.fScrolledComposite = null;
                InfoForm.this.fSeparatorColor.dispose();
                InfoForm.this.fSeparatorColor = null;
                InfoForm.this.fHeader = null;
                InfoForm.this.fBanner = null;
                InfoForm.this.fText = null;
            }
        });
        Composite composite = this.createComposite((Composite)this.fScrolledComposite);
        composite.setLayout((Layout)new GridLayout());
        this.fHeader = this.createHeader(composite, null);
        this.createLabel(composite, null);
        this.createLabel(composite, null);
        this.fBanner = this.createBanner(composite, null);
        Composite separator = this.createCompositeSeparator(composite);
        GridData data = new GridData(768);
        data.heightHint = 2;
        separator.setLayoutData((Object)data);
        this.fText = this.createText(composite, null);
        this.createLabel(composite, null);
        this.fScrolledComposite.setContent((Control)composite);
        this.fScrolledComposite.setMinSize(composite.computeSize(-1, -1));
        this.createActionControls(composite);
    }

    protected void createActionControls(Composite parent) {
    }

    public Control getControl() {
        return this.fScrolledComposite;
    }

    public void setHeaderText(String header) {
        this.fHeader.setText(header);
    }

    public void setBannerText(String banner) {
        this.fBanner.setText(banner);
    }

    public void setInfo(String info) {
        this.fText.setText(info);
    }

    protected void handlePropertyChange(PropertyChangeEvent event) {
        if (this.fHeader != null) {
            this.fHeader.setFont(JFaceResources.getHeaderFont());
        }
        if (this.fBanner != null) {
            this.fBanner.setFont(JFaceResources.getBannerFont());
        }
        Control control = this.fScrolledComposite.getContent();
        this.fScrolledComposite.setMinSize(control.computeSize(-1, -1));
        this.fScrolledComposite.setContent(control);
        this.fScrolledComposite.layout(true);
        this.fScrolledComposite.redraw();
    }

    private Composite createComposite(Composite parent) {
        Composite composite = new Composite(parent, 0);
        composite.setBackground(this.fBackgroundColor);
        return composite;
    }

    private Composite createCompositeSeparator(Composite parent) {
        Composite composite = new Composite(parent, 524288);
        composite.setBackground(this.fSeparatorColor);
        return composite;
    }

    private Label createLabel(Composite parent, String text) {
        Label label = new Label(parent, 0);
        GridData data = new GridData(768);
        label.setLayoutData((Object)data);
        if (text != null) {
            label.setText(text);
        }
        label.setBackground(this.fBackgroundColor);
        label.setForeground(this.fForegroundColor);
        return label;
    }

    private StyledText createText(Composite parent, String text) {
        StyledText widget = new StyledText(parent, 10);
        GridData data = new GridData(768);
        widget.setLayoutData((Object)data);
        if (text != null) {
            widget.setText(text);
        }
        widget.setBackground(this.fBackgroundColor);
        widget.setForeground(this.fForegroundColor);
        widget.setCaret(null);
        return widget;
    }

    private Label createHeader(Composite parent, String text) {
        Label label = new Label(parent, 0);
        GridData data = new GridData(768);
        label.setLayoutData((Object)data);
        if (text != null) {
            label.setText(text);
        }
        label.setBackground(this.fBackgroundColor);
        label.setForeground(this.fForegroundColor);
        label.setFont(JFaceResources.getHeaderFont());
        return label;
    }

    private Label createBanner(Composite parent, String text) {
        Label label = new Label(parent, 0);
        if (text != null) {
            label.setText(text);
        }
        label.setBackground(this.fBackgroundColor);
        label.setForeground(this.fForegroundColor);
        label.setFont(JFaceResources.getBannerFont());
        return label;
    }
}

