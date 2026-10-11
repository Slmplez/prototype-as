/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.preference.IPreferencePageContainer
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.custom.ScrolledComposite
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.FormAttachment
 *  org.eclipse.swt.layout.FormData
 *  org.eclipse.swt.layout.FormLayout
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.IPreferencePageContainer;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.custom.ScrolledComposite;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FormAttachment;
import org.eclipse.swt.layout.FormData;
import org.eclipse.swt.layout.FormLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;

public class PreferencesPageContainer
implements IPreferencePageContainer {
    private Composite control;
    private ScrolledComposite scrolled;

    void createContents(Composite parent, int style) {
        this.scrolled = new ScrolledComposite(parent, 768);
        GridData newPageData = new GridData(1808);
        this.scrolled.setLayoutData((Object)newPageData);
        this.control = new Composite((Composite)this.scrolled, style);
        this.scrolled.setContent((Control)this.control);
        this.scrolled.setExpandVertical(true);
        this.scrolled.setExpandHorizontal(true);
        GridData controlData = new GridData(1808);
        this.control.setLayoutData((Object)controlData);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.verticalSpacing = 1;
        this.control.setLayout((Layout)layout);
    }

    Control getControl() {
        return this.control;
    }

    boolean show(IPreferenceNode node) {
        this.createGeneralEntry(node);
        this.control.layout(true);
        return true;
    }

    private void createGeneralEntry(IPreferenceNode node) {
        PreferenceEntry entry = this.createEntry(node, "General", 0);
        entry.addSubNodes();
    }

    private PreferenceEntry createEntry(IPreferenceNode node, String name, int indent) {
        PreferenceEntry entry = new PreferenceEntry(node, name);
        entry.createContents(indent);
        return entry;
    }

    public IPreferenceStore getPreferenceStore() {
        return null;
    }

    public void updateButtons() {
    }

    public void updateMessage() {
    }

    public void updateTitle() {
    }

    private void adjustScrollbars(Point contentSize) {
        Point size = this.control.getSize();
        this.scrolled.setMinHeight(size.y + contentSize.y);
        this.scrolled.setMinWidth(Math.max(size.x, contentSize.x));
    }

    static /* synthetic */ void access$2(PreferencesPageContainer preferencesPageContainer, Point point) {
        preferencesPageContainer.adjustScrollbars(point);
    }

    private class PreferenceEntry {
        Composite composite;
        IPreferenceNode node;
        String title;
        int offset;
        Label expandImage;
        Label titleLabel;
        Composite pageContainer;

        PreferenceEntry(IPreferenceNode displayedNode, String pageTitle) {
            this.node = displayedNode;
            this.title = pageTitle;
        }

        private void addSubNodes() {
            IPreferenceNode[] subnodes = this.node.getSubNodes();
            PreferenceEntry previous = null;
            int i = 0;
            while (i < subnodes.length) {
                PreferenceEntry entry = PreferencesPageContainer.this.createEntry(subnodes[i], subnodes[i].getLabelText(), this.offset + 1);
                if (previous == null) {
                    entry.composite.moveBelow((Control)this.composite);
                } else {
                    entry.composite.moveBelow((Control)previous.composite);
                }
                previous = entry;
                ++i;
            }
        }

        void createContents(int indent) {
            this.composite = new Composite(PreferencesPageContainer.this.control, 0);
            GridData gridData = new GridData(768);
            gridData.horizontalIndent = 7 * indent;
            this.composite.setLayoutData((Object)gridData);
            FormLayout layout = new FormLayout();
            layout.marginHeight = 0;
            layout.marginWidth = 0;
            this.composite.setLayout((Layout)layout);
            Font titleFont = JFaceResources.getBannerFont();
            this.expandImage = new Label(this.composite, 131072);
            this.expandImage.setText("+");
            this.expandImage.setFont(titleFont);
            FormData imageData = new FormData();
            imageData.top = new FormAttachment(0);
            imageData.left = new FormAttachment(0, 4);
            this.expandImage.setLayoutData((Object)imageData);
            this.titleLabel = new Label(this.composite, 16384);
            this.titleLabel.setText(this.title);
            this.titleLabel.setFont(titleFont);
            FormData titleData = new FormData();
            titleData.right = new FormAttachment(100);
            titleData.top = new FormAttachment(0);
            titleData.left = new FormAttachment((Control)this.expandImage, 4);
            this.titleLabel.setLayoutData((Object)titleData);
            this.titleLabel.addMouseListener((MouseListener)new MouseAdapter(this){
                final /* synthetic */ PreferenceEntry this$1;
                {
                    this.this$1 = preferenceEntry;
                }

                public void mouseDown(MouseEvent e) {
                    if (this.this$1.pageContainer == null) {
                        boolean adjustScrollbars = false;
                        this.this$1.pageContainer = new Composite(this.this$1.composite, 2048);
                        FormData containerData = new FormData();
                        containerData.top = new FormAttachment((Control)this.this$1.titleLabel, 0);
                        containerData.left = new FormAttachment(0);
                        containerData.right = new FormAttachment(100);
                        this.this$1.pageContainer.setLayoutData((Object)containerData);
                        this.this$1.pageContainer.setLayout((Layout)new GridLayout());
                        this.this$1.node.createPage();
                        this.this$1.node.getPage().createControl(this.this$1.pageContainer);
                        this.this$1.node.getPage().setContainer((IPreferencePageContainer)PreferenceEntry.access$2(this.this$1));
                        this.this$1.node.getPage().getControl().setLayoutData((Object)new GridData(1808));
                        adjustScrollbars = true;
                        Point contentSize = this.this$1.node.getPage().computeSize();
                        Rectangle totalArea = this.this$1.composite.getClientArea();
                        if (contentSize.x < totalArea.width) {
                            contentSize.x = totalArea.width;
                        }
                        this.this$1.node.getPage().setSize(contentSize);
                        if (adjustScrollbars) {
                            PreferencesPageContainer.access$2(PreferenceEntry.access$2(this.this$1), contentSize);
                        }
                        this.this$1.expandImage.setText("-");
                        PreferenceEntry.access$0(this.this$1);
                        PreferenceEntry.access$1(this.this$1, this.this$1.composite.getDisplay().getSystemColor(29));
                    } else {
                        PreferenceEntry.access$1(this.this$1, null);
                        this.this$1.pageContainer.dispose();
                        this.this$1.pageContainer = null;
                        this.this$1.expandImage.setText("+");
                    }
                    PreferencesPageContainer.access$1(PreferenceEntry.access$2(this.this$1)).layout(true);
                }
            });
            this.offset = indent;
        }

        private void setSelectionColors(Color highlight) {
            this.composite.setBackground(highlight);
            this.titleLabel.setBackground(highlight);
            this.expandImage.setBackground(highlight);
        }

        static /* synthetic */ void access$1(PreferenceEntry preferenceEntry, Color color) {
            preferenceEntry.setSelectionColors(color);
        }

        static /* synthetic */ PreferencesPageContainer access$2(PreferenceEntry preferenceEntry) {
            return preferenceEntry.PreferencesPageContainer.this;
        }
    }
}

