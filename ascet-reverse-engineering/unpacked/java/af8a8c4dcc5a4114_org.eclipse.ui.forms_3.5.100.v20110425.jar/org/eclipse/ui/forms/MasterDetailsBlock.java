/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.SashForm
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Sash
 */
package org.eclipse.ui.forms;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.swt.custom.SashForm;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Sash;
import org.eclipse.ui.forms.DetailsPart;
import org.eclipse.ui.forms.FormColors;
import org.eclipse.ui.forms.IManagedForm;
import org.eclipse.ui.forms.widgets.FormToolkit;
import org.eclipse.ui.forms.widgets.ScrolledForm;

public abstract class MasterDetailsBlock {
    protected DetailsPart detailsPart;
    protected SashForm sashForm;
    static final int DRAGGER_SIZE = 40;

    public void createContent(IManagedForm managedForm) {
        ScrolledForm form = managedForm.getForm();
        this.createContent(managedForm, form.getBody());
    }

    public void createContent(IManagedForm managedForm, Composite parent) {
        ScrolledForm form = managedForm.getForm();
        FormToolkit toolkit = managedForm.getToolkit();
        this.applyLayout(parent);
        this.sashForm = new MDSashForm(parent, 0);
        this.sashForm.setData("form", (Object)managedForm);
        toolkit.adapt((Control)this.sashForm, false, false);
        this.sashForm.setMenu(parent.getMenu());
        this.applyLayoutData(this.sashForm);
        this.createMasterPart(managedForm, (Composite)this.sashForm);
        this.createDetailsPart(managedForm, (Composite)this.sashForm);
        this.hookResizeListener();
        this.createToolBarActions(managedForm);
        form.updateToolBar();
    }

    protected void applyLayoutData(SashForm sashForm) {
        sashForm.setLayoutData((Object)new GridData(1808));
    }

    protected void applyLayout(Composite parent) {
        GridLayout layout = new GridLayout();
        layout.marginWidth = 0;
        layout.marginHeight = 0;
        parent.setLayout((Layout)layout);
    }

    private void hookResizeListener() {
        Listener listener = ((MDSashForm)this.sashForm).listener;
        Control[] children = this.sashForm.getChildren();
        int i = 0;
        while (i < children.length) {
            if (!(children[i] instanceof Sash)) {
                children[i].addListener(11, listener);
            }
            ++i;
        }
    }

    protected abstract void createMasterPart(IManagedForm var1, Composite var2);

    protected abstract void registerPages(DetailsPart var1);

    protected abstract void createToolBarActions(IManagedForm var1);

    private void createDetailsPart(IManagedForm mform, Composite parent) {
        this.detailsPart = new DetailsPart(mform, parent, 0);
        mform.addPart(this.detailsPart);
        this.registerPages(this.detailsPart);
    }

    private void onSashPaint(Event e) {
        Sash sash = (Sash)e.widget;
        IManagedForm form = (IManagedForm)sash.getParent().getData("form");
        FormColors colors = form.getToolkit().getColors();
        boolean vertical = (sash.getStyle() & 0x200) != 0;
        GC gc = e.gc;
        Boolean hover = (Boolean)sash.getData("hover");
        gc.setBackground(colors.getColor("org.eclipse.ui.forms.TB_BG"));
        gc.setForeground(colors.getColor("org.eclipse.ui.forms.TB_BORDER"));
        Point size = sash.getSize();
        if (vertical) {
            if (hover != null) {
                gc.fillRectangle(0, 0, size.x, size.y);
            }
        } else if (hover != null) {
            gc.fillRectangle(0, 0, size.x, size.y);
        }
    }

    static /* synthetic */ void access$0(MasterDetailsBlock masterDetailsBlock, Event event) {
        masterDetailsBlock.onSashPaint(event);
    }

    class MDSashForm
    extends SashForm {
        ArrayList sashes = new ArrayList();
        Listener listener = new Listener(this){
            final /* synthetic */ MDSashForm this$1;
            {
                this.this$1 = mDSashForm;
            }

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 6: {
                        e.widget.setData("hover", (Object)Boolean.TRUE);
                        ((Control)e.widget).redraw();
                        break;
                    }
                    case 7: {
                        e.widget.setData("hover", null);
                        ((Control)e.widget).redraw();
                        break;
                    }
                    case 9: {
                        MasterDetailsBlock.access$0(MDSashForm.access$1(this.this$1), e);
                        break;
                    }
                    case 11: {
                        MDSashForm.access$0(this.this$1);
                    }
                }
            }
        };

        public MDSashForm(Composite parent, int style) {
            super(parent, style);
        }

        public void layout(boolean changed) {
            super.layout(changed);
            this.hookSashListeners();
        }

        public void layout(Control[] children) {
            super.layout(children);
            this.hookSashListeners();
        }

        private void hookSashListeners() {
            this.purgeSashes();
            Control[] children = this.getChildren();
            int i = 0;
            while (i < children.length) {
                Sash sash;
                if (children[i] instanceof Sash && !this.sashes.contains(sash = (Sash)children[i])) {
                    sash.addListener(9, this.listener);
                    sash.addListener(6, this.listener);
                    sash.addListener(7, this.listener);
                    this.sashes.add(sash);
                }
                ++i;
            }
        }

        private void purgeSashes() {
            Iterator iter = this.sashes.iterator();
            while (iter.hasNext()) {
                Sash sash = (Sash)iter.next();
                if (!sash.isDisposed()) continue;
                iter.remove();
            }
        }

        static /* synthetic */ void access$0(MDSashForm mDSashForm) {
            mDSashForm.hookSashListeners();
        }

        static /* synthetic */ MasterDetailsBlock access$1(MDSashForm mDSashForm) {
            return mDSashForm.MasterDetailsBlock.this;
        }
    }
}

