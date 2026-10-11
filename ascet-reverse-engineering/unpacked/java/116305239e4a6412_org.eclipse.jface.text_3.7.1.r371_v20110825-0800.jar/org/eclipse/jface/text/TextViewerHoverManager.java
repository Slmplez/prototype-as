/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ILog
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Display
 *  org.osgi.framework.Bundle
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.text.AbstractHoverInformationControlManager;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextHover;
import org.eclipse.jface.text.ITextHoverExtension;
import org.eclipse.jface.text.ITextHoverExtension2;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.IWidgetTokenKeeper;
import org.eclipse.jface.text.IWidgetTokenKeeperExtension;
import org.eclipse.jface.text.IWidgetTokenOwner;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.TextViewer;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Display;
import org.osgi.framework.Bundle;

class TextViewerHoverManager
extends AbstractHoverInformationControlManager
implements IWidgetTokenKeeper,
IWidgetTokenKeeperExtension {
    public static final int WIDGET_PRIORITY = 0;
    private TextViewer fTextViewer;
    private Thread fThread;
    private ITextListener fStopper;
    private Object fMutex = new Object();
    private volatile ITextHover fTextHover;
    private boolean fProcessMouseHoverEvent = true;
    private MouseMoveListener fMouseMoveListener;
    private IViewportListener fViewportListener;

    public TextViewerHoverManager(TextViewer textViewer, IInformationControlCreator creator) {
        super(creator);
        this.fTextViewer = textViewer;
        this.fStopper = new ITextListener(){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            public void textChanged(TextEvent event) {
                Object object = TextViewerHoverManager.this.fMutex;
                synchronized (object) {
                    if (TextViewerHoverManager.this.fThread != null) {
                        TextViewerHoverManager.this.fThread.interrupt();
                        TextViewerHoverManager.this.fThread = null;
                    }
                }
            }
        };
        this.fViewportListener = new IViewportListener(){

            public void viewportChanged(int verticalOffset) {
                TextViewerHoverManager.this.fProcessMouseHoverEvent = false;
            }
        };
        this.fTextViewer.addViewportListener(this.fViewportListener);
        this.fMouseMoveListener = new MouseMoveListener(){

            public void mouseMove(MouseEvent event) {
                TextViewerHoverManager.this.fProcessMouseHoverEvent = true;
            }
        };
        this.fTextViewer.getTextWidget().addMouseMoveListener(this.fMouseMoveListener);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void computeInformation() {
        if (!this.fProcessMouseHoverEvent) {
            this.setInformation(null, null);
            return;
        }
        Point location = this.getHoverEventLocation();
        int offset = this.computeOffsetAtLocation(location.x, location.y);
        if (offset == -1) {
            this.setInformation(null, null);
            return;
        }
        final ITextHover hover = this.fTextViewer.getTextHover(offset, this.getHoverEventStateMask());
        if (hover == null) {
            this.setInformation(null, null);
            return;
        }
        final IRegion region = hover.getHoverRegion(this.fTextViewer, offset);
        if (region == null) {
            this.setInformation(null, null);
            return;
        }
        final Rectangle area = JFaceTextUtil.computeArea(region, this.fTextViewer);
        if (area == null || area.isEmpty()) {
            this.setInformation(null, null);
            return;
        }
        if (this.fThread != null) {
            this.setInformation(null, null);
            return;
        }
        this.fThread = new Thread("Text Viewer Hover Presenter"){

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            public void run() {
                block27: {
                    boolean hasFinished = false;
                    try {
                        try {
                            if (TextViewerHoverManager.this.fThread != null) {
                                Object information;
                                try {
                                    information = hover instanceof ITextHoverExtension2 ? ((ITextHoverExtension2)((Object)hover)).getHoverInfo2(TextViewerHoverManager.this.fTextViewer, region) : hover.getHoverInfo(TextViewerHoverManager.this.fTextViewer, region);
                                }
                                catch (ArrayIndexOutOfBoundsException arrayIndexOutOfBoundsException) {
                                    information = null;
                                }
                                if (hover instanceof ITextHoverExtension) {
                                    TextViewerHoverManager.this.setCustomInformationControlCreator(((ITextHoverExtension)((Object)hover)).getHoverControlCreator());
                                } else {
                                    TextViewerHoverManager.this.setCustomInformationControlCreator(null);
                                }
                                TextViewerHoverManager.this.setInformation(information, area);
                                if (information != null) {
                                    TextViewerHoverManager.this.fTextHover = hover;
                                }
                            } else {
                                TextViewerHoverManager.this.setInformation(null, null);
                            }
                            hasFinished = true;
                        }
                        catch (RuntimeException ex) {
                            String PLUGIN_ID = "org.eclipse.jface.text";
                            ILog log = Platform.getLog((Bundle)Platform.getBundle((String)PLUGIN_ID));
                            log.log((IStatus)new Status(4, PLUGIN_ID, 0, "Unexpected runtime error while computing a text hover", (Throwable)ex));
                            Object object = TextViewerHoverManager.this.fMutex;
                            synchronized (object) {
                                if (TextViewerHoverManager.this.fTextViewer != null) {
                                    TextViewerHoverManager.this.fTextViewer.removeTextListener(TextViewerHoverManager.this.fStopper);
                                }
                                TextViewerHoverManager.this.fThread = null;
                                if (!hasFinished) {
                                    TextViewerHoverManager.this.setInformation(null, null);
                                }
                                break block27;
                            }
                        }
                    }
                    catch (Throwable throwable) {
                        Object object = TextViewerHoverManager.this.fMutex;
                        synchronized (object) {
                            if (TextViewerHoverManager.this.fTextViewer != null) {
                                TextViewerHoverManager.this.fTextViewer.removeTextListener(TextViewerHoverManager.this.fStopper);
                            }
                            TextViewerHoverManager.this.fThread = null;
                            if (!hasFinished) {
                                TextViewerHoverManager.this.setInformation(null, null);
                            }
                        }
                        throw throwable;
                    }
                    Object object = TextViewerHoverManager.this.fMutex;
                    synchronized (object) {
                        if (TextViewerHoverManager.this.fTextViewer != null) {
                            TextViewerHoverManager.this.fTextViewer.removeTextListener(TextViewerHoverManager.this.fStopper);
                        }
                        TextViewerHoverManager.this.fThread = null;
                        if (!hasFinished) {
                            TextViewerHoverManager.this.setInformation(null, null);
                        }
                    }
                }
            }
        };
        this.fThread.setDaemon(true);
        this.fThread.setPriority(1);
        Object object = this.fMutex;
        synchronized (object) {
            this.fTextViewer.addTextListener(this.fStopper);
            this.fThread.start();
        }
    }

    protected void presentInformation() {
        if (this.fTextViewer == null) {
            return;
        }
        StyledText textWidget = this.fTextViewer.getTextWidget();
        if (textWidget != null && !textWidget.isDisposed()) {
            Display display = textWidget.getDisplay();
            if (display == null) {
                return;
            }
            display.asyncExec(new Runnable(){

                public void run() {
                    TextViewerHoverManager.this.doPresentInformation();
                }
            });
        }
    }

    protected void doPresentInformation() {
        super.presentInformation();
    }

    private int computeOffsetAtLocation(int x, int y) {
        try {
            StyledText styledText = this.fTextViewer.getTextWidget();
            int widgetOffset = styledText.getOffsetAtLocation(new Point(x, y));
            Point p = styledText.getLocationAtOffset(widgetOffset);
            if (p.x > x) {
                --widgetOffset;
            }
            if (this.fTextViewer instanceof ITextViewerExtension5) {
                ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fTextViewer);
                return extension.widgetOffset2ModelOffset(widgetOffset);
            }
            return widgetOffset + this.fTextViewer._getVisibleRegionOffset();
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return -1;
        }
    }

    protected void showInformationControl(Rectangle subjectArea) {
        if (this.fTextViewer != null && this.fTextViewer.requestWidgetToken(this, 0)) {
            super.showInformationControl(subjectArea);
        } else if (DEBUG) {
            System.out.println("TextViewerHoverManager#showInformationControl(..) did not get widget token");
        }
    }

    protected void hideInformationControl() {
        try {
            this.fTextHover = null;
            super.hideInformationControl();
        }
        finally {
            if (this.fTextViewer != null) {
                this.fTextViewer.releaseWidgetToken(this);
            }
        }
    }

    void replaceInformationControl(boolean takeFocus) {
        if (this.fTextViewer != null) {
            this.fTextViewer.releaseWidgetToken(this);
        }
        super.replaceInformationControl(takeFocus);
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
        this.fTextHover = null;
        super.hideInformationControl();
        return true;
    }

    public boolean requestWidgetToken(IWidgetTokenOwner owner, int priority) {
        if (priority > 0) {
            this.fTextHover = null;
            super.hideInformationControl();
            return true;
        }
        return false;
    }

    public boolean setFocus(IWidgetTokenOwner owner) {
        if (!this.hasInformationControlReplacer()) {
            return false;
        }
        IInformationControl iControl = this.getCurrentInformationControl();
        if (this.canReplace(iControl)) {
            if (this.cancelReplacingDelay()) {
                this.replaceInformationControl(true);
            }
            return true;
        }
        return false;
    }

    protected ITextHover getCurrentTextHover() {
        return this.fTextHover;
    }

    public void dispose() {
        if (this.fTextViewer != null) {
            this.fTextViewer.removeViewportListener(this.fViewportListener);
            this.fViewportListener = null;
            StyledText st = this.fTextViewer.getTextWidget();
            if (st != null && !st.isDisposed()) {
                st.removeMouseMoveListener(this.fMouseMoveListener);
            }
            this.fMouseMoveListener = null;
        }
        super.dispose();
    }
}

