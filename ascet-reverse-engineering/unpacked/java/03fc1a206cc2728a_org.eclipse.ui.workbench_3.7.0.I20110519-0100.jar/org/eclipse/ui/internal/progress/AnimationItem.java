/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.progress;

import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.progress.AnimationManager;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;

public abstract class AnimationItem {
    WorkbenchWindow window;
    IAnimationContainer animationContainer = new IAnimationContainer(){

        public void animationDone() {
        }

        public void animationStart() {
        }
    };

    public AnimationItem(WorkbenchWindow workbenchWindow) {
        this.window = workbenchWindow;
    }

    public void createControl(Composite parent) {
        Control animationItem = this.createAnimationItem(parent);
        animationItem.addMouseListener(new MouseListener(){

            public void mouseDoubleClick(MouseEvent arg0) {
                ProgressManagerUtil.openProgressView(AnimationItem.this.window);
            }

            public void mouseDown(MouseEvent arg0) {
            }

            public void mouseUp(MouseEvent arg0) {
            }
        });
        animationItem.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                AnimationManager.getInstance().removeItem(AnimationItem.this);
            }
        });
        AnimationManager.getInstance().addItem(this);
    }

    protected abstract Control createAnimationItem(Composite var1);

    void paintImage(PaintEvent event, Image image, ImageData imageData) {
        event.gc.drawImage(image, 0, 0);
    }

    public abstract Control getControl();

    void animationStart() {
        this.animationContainer.animationStart();
    }

    void animationDone() {
        this.animationContainer.animationDone();
    }

    public int getPreferredWidth() {
        return AnimationManager.getInstance().getPreferredWidth() + 5;
    }

    void setAnimationContainer(IAnimationContainer container) {
        this.animationContainer = container;
    }

    public WorkbenchWindow getWindow() {
        return this.window;
    }

    static interface IAnimationContainer {
        public void animationStart();

        public void animationDone();
    }
}

