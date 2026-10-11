/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.jface.internal.text;

import org.eclipse.jface.internal.text.InformationControlReplacer;
import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlExtension3;
import org.eclipse.jface.text.IInformationControlExtension5;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.IWidgetTokenKeeper;
import org.eclipse.jface.text.IWidgetTokenKeeperExtension;
import org.eclipse.jface.text.IWidgetTokenOwner;
import org.eclipse.jface.text.TextViewer;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class StickyHoverManager
extends InformationControlReplacer
implements IWidgetTokenKeeper,
IWidgetTokenKeeperExtension {
    private static final int WIDGET_PRIORITY = -5;
    private final TextViewer fTextViewer;

    public StickyHoverManager(TextViewer textViewer) {
        super(new InformationControlReplacer.DefaultInformationControlCreator());
        this.fTextViewer = textViewer;
        this.setCloser(new Closer());
        this.install((Control)this.fTextViewer.getTextWidget());
    }

    protected void showInformationControl(Rectangle subjectArea) {
        if (this.fTextViewer != null && this.fTextViewer.requestWidgetToken(this, -5)) {
            super.showInformationControl(subjectArea);
        } else if (DEBUG) {
            System.out.println("cancelled StickyHoverManager.showInformationControl(..): did not get widget token (with prio)");
        }
    }

    public void hideInformationControl() {
        try {
            super.hideInformationControl();
        }
        finally {
            if (this.fTextViewer != null) {
                this.fTextViewer.releaseWidgetToken(this);
            }
        }
    }

    protected void handleInformationControlDisposed() {
        try {
            super.handleInformationControlDisposed();
        }
        finally {
            if (this.fTextViewer != null) {
                this.fTextViewer.releaseWidgetToken(this);
            }
        }
    }

    public boolean requestWidgetToken(IWidgetTokenOwner owner) {
        this.hideInformationControl();
        if (DEBUG) {
            System.out.println("StickyHoverManager gave up widget token (no prio)");
        }
        return true;
    }

    public boolean requestWidgetToken(IWidgetTokenOwner owner, int priority) {
        if (this.getCurrentInformationControl2() != null) {
            if (this.getCurrentInformationControl2().isFocusControl()) {
                if (DEBUG) {
                    System.out.println("StickyHoverManager kept widget token (focused)");
                }
                return false;
            }
            if (priority > -5) {
                this.hideInformationControl();
                if (DEBUG) {
                    System.out.println("StickyHoverManager gave up widget token (prio)");
                }
                return true;
            }
            if (DEBUG) {
                System.out.println("StickyHoverManager kept widget token (prio)");
            }
            return false;
        }
        if (DEBUG) {
            System.out.println("StickyHoverManager gave up widget token (no iControl)");
        }
        return true;
    }

    public boolean setFocus(IWidgetTokenOwner owner) {
        IInformationControl iControl = this.getCurrentInformationControl2();
        if (iControl instanceof IInformationControlExtension5) {
            IInformationControlExtension5 iControl5 = (IInformationControlExtension5)((Object)iControl);
            if (iControl5.isVisible()) {
                iControl.setFocus();
                return iControl.isFocusControl();
            }
            return false;
        }
        iControl.setFocus();
        return iControl.isFocusControl();
    }

    class Closer
    implements AbstractInformationControlManager.IInformationControlCloser,
    ControlListener,
    MouseListener,
    IViewportListener,
    KeyListener,
    FocusListener,
    Listener {
        private Control fSubjectControl;
        private boolean fIsActive = false;
        private Display fDisplay;

        Closer() {
        }

        public void setSubjectControl(Control control) {
            this.fSubjectControl = control;
        }

        public void setInformationControl(IInformationControl control) {
        }

        public void start(Rectangle informationArea) {
            if (this.fIsActive) {
                return;
            }
            this.fIsActive = true;
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.addControlListener((ControlListener)this);
                this.fSubjectControl.addMouseListener((MouseListener)this);
                this.fSubjectControl.addKeyListener((KeyListener)this);
            }
            StickyHoverManager.this.fTextViewer.addViewportListener(this);
            IInformationControl fInformationControlToClose = StickyHoverManager.this.getCurrentInformationControl2();
            if (fInformationControlToClose != null) {
                fInformationControlToClose.addFocusListener(this);
            }
            this.fDisplay = this.fSubjectControl.getDisplay();
            if (!this.fDisplay.isDisposed()) {
                this.fDisplay.addFilter(5, (Listener)this);
                this.fDisplay.addFilter(16, (Listener)this);
            }
        }

        public void stop() {
            IInformationControl fInformationControlToClose;
            if (!this.fIsActive) {
                return;
            }
            this.fIsActive = false;
            StickyHoverManager.this.fTextViewer.removeViewportListener(this);
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.removeControlListener((ControlListener)this);
                this.fSubjectControl.removeMouseListener((MouseListener)this);
                this.fSubjectControl.removeKeyListener((KeyListener)this);
            }
            if ((fInformationControlToClose = StickyHoverManager.this.getCurrentInformationControl2()) != null) {
                fInformationControlToClose.removeFocusListener(this);
            }
            if (this.fDisplay != null && !this.fDisplay.isDisposed()) {
                this.fDisplay.removeFilter(5, (Listener)this);
                this.fDisplay.removeFilter(16, (Listener)this);
            }
            this.fDisplay = null;
        }

        public void controlResized(ControlEvent e) {
            StickyHoverManager.this.hideInformationControl();
        }

        public void controlMoved(ControlEvent e) {
            StickyHoverManager.this.hideInformationControl();
        }

        public void mouseDown(MouseEvent e) {
            StickyHoverManager.this.hideInformationControl();
        }

        public void mouseUp(MouseEvent e) {
        }

        public void mouseDoubleClick(MouseEvent e) {
            StickyHoverManager.this.hideInformationControl();
        }

        public void viewportChanged(int topIndex) {
            StickyHoverManager.this.hideInformationControl();
        }

        public void keyPressed(KeyEvent e) {
            StickyHoverManager.this.hideInformationControl();
        }

        public void keyReleased(KeyEvent e) {
        }

        public void focusGained(FocusEvent e) {
        }

        public void focusLost(FocusEvent e) {
            if (DEBUG) {
                System.out.println("StickyHoverManager.Closer.focusLost(): " + e);
            }
            Display d = this.fSubjectControl.getDisplay();
            d.asyncExec(new Runnable(this){
                final /* synthetic */ Closer this$1;
                {
                    this.this$1 = closer;
                }

                public void run() {
                    Closer.access$0(this.this$1).hideInformationControl();
                }
            });
        }

        public void handleEvent(Event event) {
            if (event.type == 5) {
                if (!(event.widget instanceof Control) || event.widget.isDisposed()) {
                    return;
                }
                IInformationControl infoControl = StickyHoverManager.this.getCurrentInformationControl2();
                if (infoControl != null && !infoControl.isFocusControl() && infoControl instanceof IInformationControlExtension3) {
                    IInformationControlExtension3 iControl3 = (IInformationControlExtension3)((Object)infoControl);
                    Rectangle controlBounds = iControl3.getBounds();
                    if (controlBounds != null) {
                        Point mouseLoc = event.display.map((Control)event.widget, null, event.x, event.y);
                        int margin = StickyHoverManager.this.getKeepUpMargin();
                        Geometry.expand((Rectangle)controlBounds, (int)margin, (int)margin, (int)margin, (int)margin);
                        if (!controlBounds.contains(mouseLoc)) {
                            StickyHoverManager.this.hideInformationControl();
                        }
                    }
                } else if (this.fDisplay != null && !this.fDisplay.isDisposed()) {
                    this.fDisplay.removeFilter(5, (Listener)this);
                }
            } else if (event.type == 16) {
                IInformationControl iControl;
                if (DEBUG) {
                    System.out.println("StickyHoverManager.Closer.handleEvent(): focusOut: " + event);
                }
                if ((iControl = StickyHoverManager.this.getCurrentInformationControl2()) != null && !iControl.isFocusControl()) {
                    StickyHoverManager.this.hideInformationControl();
                }
            }
        }

        static /* synthetic */ StickyHoverManager access$0(Closer closer) {
            return closer.StickyHoverManager.this;
        }
    }
}

