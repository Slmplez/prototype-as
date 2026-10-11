/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Monitor
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.internal.text.InformationControlReplacer;
import org.eclipse.jface.internal.text.InternalAccessor;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IInformationControlCreatorExtension;
import org.eclipse.jface.text.IInformationControlExtension;
import org.eclipse.jface.text.IInformationControlExtension2;
import org.eclipse.jface.text.IInformationControlExtension3;
import org.eclipse.jface.text.IInformationControlExtension5;
import org.eclipse.jface.text.ITextViewerExtension8;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Monitor;

public abstract class AbstractInformationControlManager {
    private static final Anchor[] ANCHORS = new Anchor[]{new Anchor(128), new Anchor(1024), new Anchor(16384), new Anchor(131072)};
    public static final Anchor ANCHOR_TOP = ANCHORS[0];
    public static final Anchor ANCHOR_BOTTOM = ANCHORS[1];
    public static final Anchor ANCHOR_LEFT = ANCHORS[2];
    public static final Anchor ANCHOR_RIGHT = ANCHORS[3];
    public static final Anchor ANCHOR_GLOBAL = new Anchor(0x1000000);
    public static final String STORE_LOCATION_X = "location.x";
    public static final String STORE_LOCATION_Y = "location.y";
    public static final String STORE_SIZE_WIDTH = "size.width";
    public static final String STORE_SIZE_HEIGHT = "size.height";
    protected static final boolean DEBUG = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface.text/debug/AbstractInformationControlManager"));
    private Control fSubjectControl;
    private Rectangle fSubjectArea;
    private Object fInformation;
    private boolean fTakesFocusWhenVisible = false;
    protected IInformationControl fInformationControl;
    protected IInformationControlCreator fInformationControlCreator;
    protected IInformationControlCloser fInformationControlCloser;
    protected boolean fDisposed = false;
    private InformationControlReplacer fInformationControlReplacer;
    private boolean fEnabled = false;
    private Point fSizeConstraints;
    private int fMarginY = 5;
    private int fMarginX = 5;
    private int fWidthConstraint = 60;
    private int fHeightConstraint = 6;
    private boolean fEnforceAsMinimalSize = false;
    private boolean fEnforceAsMaximalSize = false;
    private Anchor fAnchor = ANCHOR_BOTTOM;
    private Anchor[] fFallbackAnchors = ANCHORS;
    private volatile IInformationControlCreator fCustomInformationControlCreator;
    private boolean fIsCustomInformationControl = false;
    private IDialogSettings fDialogSettings;
    private boolean fIsRestoringLocation;
    private boolean fIsRestoringSize;
    private DisposeListener fSubjectControlDisposeListener;

    protected AbstractInformationControlManager(IInformationControlCreator creator) {
        Assert.isNotNull((Object)creator);
        this.fInformationControlCreator = creator;
    }

    protected abstract void computeInformation();

    protected final void setInformation(String information, Rectangle subjectArea) {
        this.setInformation((Object)information, subjectArea);
    }

    protected final void setInformation(Object information, Rectangle subjectArea) {
        this.fInformation = information;
        this.fSubjectArea = subjectArea;
        this.presentInformation();
    }

    protected void setCloser(IInformationControlCloser closer) {
        this.fInformationControlCloser = closer;
    }

    void setInformationControlReplacer(InformationControlReplacer replacer) {
        if (this.fInformationControlReplacer != null) {
            this.fInformationControlReplacer.dispose();
        }
        this.fInformationControlReplacer = replacer;
    }

    InformationControlReplacer getInformationControlReplacer() {
        return this.fInformationControlReplacer;
    }

    boolean hasInformationControlReplacer() {
        return this.fInformationControlReplacer != null;
    }

    boolean canReplace(IInformationControl iControl) {
        return iControl instanceof IInformationControlExtension3 && iControl instanceof IInformationControlExtension5 && ((IInformationControlExtension5)((Object)iControl)).getInformationPresenterControlCreator() != null;
    }

    IInformationControl getCurrentInformationControl() {
        return this.fInformationControl;
    }

    boolean isReplaceInProgress() {
        return this.fInformationControlReplacer != null && this.fInformationControlReplacer.isReplacing();
    }

    public void setMargins(int xMargin, int yMargin) {
        this.fMarginX = xMargin;
        this.fMarginY = yMargin;
    }

    public void setSizeConstraints(int widthInChar, int heightInChar, boolean enforceAsMinimalSize, boolean enforceAsMaximalSize) {
        this.fSizeConstraints = null;
        this.fWidthConstraint = widthInChar;
        this.fHeightConstraint = heightInChar;
        this.fEnforceAsMinimalSize = enforceAsMinimalSize;
        this.fEnforceAsMaximalSize = enforceAsMaximalSize;
    }

    public void setRestoreInformationControlBounds(IDialogSettings dialogSettings, boolean restoreLocation, boolean restoreSize) {
        Assert.isTrue((dialogSettings != null && (restoreLocation || restoreSize) ? 1 : 0) != 0);
        this.fDialogSettings = dialogSettings;
        this.fIsRestoringLocation = restoreLocation;
        this.fIsRestoringSize = restoreSize;
    }

    public void setAnchor(Anchor anchor) {
        this.fAnchor = anchor;
    }

    public void setFallbackAnchors(Anchor[] fallbackAnchors) {
        if (fallbackAnchors != null) {
            this.fFallbackAnchors = new Anchor[fallbackAnchors.length];
            System.arraycopy(fallbackAnchors, 0, this.fFallbackAnchors, 0, fallbackAnchors.length);
        } else {
            this.fFallbackAnchors = null;
        }
    }

    protected void setCustomInformationControlCreator(IInformationControlCreator informationControlCreator) {
        IInformationControlCreatorExtension extension;
        if (informationControlCreator != null && this.fCustomInformationControlCreator instanceof IInformationControlCreatorExtension && (extension = (IInformationControlCreatorExtension)((Object)this.fCustomInformationControlCreator)).canReplace(informationControlCreator)) {
            return;
        }
        this.fCustomInformationControlCreator = informationControlCreator;
    }

    public void takesFocusWhenVisible(boolean takesFocus) {
        this.fTakesFocusWhenVisible = takesFocus;
    }

    protected boolean isTakingFocusWhenVisible() {
        return this.fTakesFocusWhenVisible;
    }

    protected void handleSubjectControlDisposed() {
        this.disposeInformationControl();
    }

    public void install(Control subjectControl) {
        if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed() && this.fSubjectControlDisposeListener != null) {
            this.fSubjectControl.removeDisposeListener(this.fSubjectControlDisposeListener);
        }
        this.fSubjectControl = subjectControl;
        if (this.fSubjectControl != null) {
            this.fSubjectControl.addDisposeListener(this.getSubjectControlDisposeListener());
        }
        if (this.fInformationControlCloser != null) {
            this.fInformationControlCloser.setSubjectControl(subjectControl);
        }
        this.setEnabled(true);
        this.fDisposed = false;
    }

    private DisposeListener getSubjectControlDisposeListener() {
        if (this.fSubjectControlDisposeListener == null) {
            this.fSubjectControlDisposeListener = new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    AbstractInformationControlManager.this.handleSubjectControlDisposed();
                }
            };
        }
        return this.fSubjectControlDisposeListener;
    }

    protected Control getSubjectControl() {
        return this.fSubjectControl;
    }

    protected Rectangle getSubjectArea() {
        return this.fSubjectArea;
    }

    public void setEnabled(boolean enabled) {
        this.fEnabled = enabled;
    }

    protected boolean isEnabled() {
        return this.fEnabled;
    }

    protected Point computeSizeConstraints(Control subjectControl, IInformationControl informationControl) {
        if (this.fSizeConstraints == null) {
            if (informationControl instanceof IInformationControlExtension5) {
                IInformationControlExtension5 iControl5 = (IInformationControlExtension5)((Object)informationControl);
                this.fSizeConstraints = iControl5.computeSizeConstraints(this.fWidthConstraint, this.fHeightConstraint);
                if (this.fSizeConstraints != null) {
                    return Geometry.copy((Point)this.fSizeConstraints);
                }
            }
            if (subjectControl == null) {
                return null;
            }
            GC gc = new GC((Drawable)subjectControl);
            gc.setFont(subjectControl.getFont());
            int width = gc.getFontMetrics().getAverageCharWidth();
            int height = gc.getFontMetrics().getHeight();
            gc.dispose();
            this.fSizeConstraints = new Point(this.fWidthConstraint * width, this.fHeightConstraint * height);
        }
        return new Point(this.fSizeConstraints.x, this.fSizeConstraints.y);
    }

    protected Point computeSizeConstraints(Control subjectControl, Rectangle subjectArea, IInformationControl informationControl) {
        return this.computeSizeConstraints(subjectControl, informationControl);
    }

    protected void handleInformationControlDisposed() {
        this.storeInformationControlBounds();
        if (this.fInformationControl instanceof IInformationControlExtension5) {
            this.fSizeConstraints = null;
        }
        this.fInformationControl = null;
        if (this.fInformationControlCloser != null) {
            this.fInformationControlCloser.setInformationControl(null);
            this.fInformationControlCloser.stop();
        }
    }

    protected IInformationControl getInformationControl() {
        if (this.fDisposed) {
            return this.fInformationControl;
        }
        IInformationControlCreator creator = null;
        if (this.fCustomInformationControlCreator == null) {
            creator = this.fInformationControlCreator;
            if (this.fIsCustomInformationControl && this.fInformationControl != null) {
                if (this.fInformationControl instanceof IInformationControlExtension5) {
                    this.fSizeConstraints = null;
                }
                this.fInformationControl.dispose();
                this.fInformationControl = null;
            }
            this.fIsCustomInformationControl = false;
        } else {
            creator = this.fCustomInformationControlCreator;
            if (creator instanceof IInformationControlCreatorExtension) {
                IInformationControlCreatorExtension extension = (IInformationControlCreatorExtension)((Object)creator);
                if (this.fInformationControl != null && extension.canReuse(this.fInformationControl)) {
                    return this.fInformationControl;
                }
            }
            if (this.fInformationControl != null) {
                if (this.fInformationControl instanceof IInformationControlExtension5) {
                    this.fSizeConstraints = null;
                }
                this.fInformationControl.dispose();
                this.fInformationControl = null;
            }
            this.fIsCustomInformationControl = true;
        }
        if (this.fInformationControl == null) {
            this.fInformationControl = creator.createInformationControl(this.fSubjectControl.getShell());
            this.fInformationControl.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    AbstractInformationControlManager.this.handleInformationControlDisposed();
                }
            });
            if (this.fInformationControlCloser != null) {
                this.fInformationControlCloser.setInformationControl(this.fInformationControl);
            }
        }
        return this.fInformationControl;
    }

    protected Point computeLocation(Rectangle subjectArea, Point controlSize, Anchor anchor) {
        boolean isRTL;
        int xShift = 0;
        int yShift = 0;
        switch (anchor.getSWTFlag()) {
            case 0x1000000: {
                Point subjectControlSize = this.fSubjectControl.getSize();
                Point location = new Point(subjectControlSize.x / 2, subjectControlSize.y / 2);
                location.x -= controlSize.x / 2;
                location.y -= controlSize.y / 2;
                return this.fSubjectControl.toDisplay(location);
            }
            case 1024: {
                yShift = subjectArea.height + this.fMarginY;
                break;
            }
            case 131072: {
                xShift = this.fMarginX + subjectArea.width;
                break;
            }
            case 128: {
                yShift = -controlSize.y - this.fMarginY;
                break;
            }
            case 16384: {
                xShift = -controlSize.x - this.fMarginX;
            }
        }
        boolean bl = isRTL = this.fSubjectControl != null && (this.fSubjectControl.getStyle() & 0x4000000) != 0;
        if (isRTL) {
            xShift += controlSize.x;
        }
        return this.fSubjectControl.toDisplay(new Point(subjectArea.x + xShift, subjectArea.y + yShift));
    }

    protected Rectangle computeAvailableArea(Rectangle subjectArea, Rectangle bounds, Anchor anchor) {
        Rectangle area;
        switch (anchor.getSWTFlag()) {
            case 0x1000000: {
                area = bounds;
                break;
            }
            case 1024: {
                int y = subjectArea.y + subjectArea.height + this.fMarginY;
                area = new Rectangle(bounds.x, y, bounds.width, bounds.y + bounds.height - y);
                break;
            }
            case 131072: {
                int x = subjectArea.x + subjectArea.width + this.fMarginX;
                area = new Rectangle(x, bounds.y, bounds.x + bounds.width - x, bounds.height);
                break;
            }
            case 128: {
                area = new Rectangle(bounds.x, bounds.y, bounds.width, subjectArea.y - bounds.y - this.fMarginY);
                break;
            }
            case 16384: {
                area = new Rectangle(bounds.x, bounds.y, subjectArea.x - bounds.x - this.fMarginX, bounds.height);
                break;
            }
            default: {
                Assert.isLegal((boolean)false);
                return null;
            }
        }
        area.intersect(bounds);
        return area;
    }

    protected boolean updateLocation(Point location, Point size, Rectangle displayArea, Anchor anchor) {
        int displayLowerRightX = displayArea.x + displayArea.width;
        int displayLowerRightY = displayArea.y + displayArea.height;
        int lowerRightX = location.x + size.x;
        int lowerRightY = location.y + size.y;
        if (ANCHOR_BOTTOM == anchor || ANCHOR_TOP == anchor) {
            if (ANCHOR_BOTTOM == anchor ? lowerRightY > displayLowerRightY : location.y < displayArea.y) {
                return false;
            }
            if (lowerRightX > displayLowerRightX) {
                location.x -= lowerRightX - displayLowerRightX;
            }
            return location.x >= displayArea.x && location.y >= displayArea.y;
        }
        if (ANCHOR_RIGHT == anchor || ANCHOR_LEFT == anchor) {
            if (ANCHOR_RIGHT == anchor ? lowerRightX > displayLowerRightX : location.x < displayArea.x) {
                return false;
            }
            if (lowerRightY > displayLowerRightY) {
                location.y -= lowerRightY - displayLowerRightY;
            }
            return location.x >= displayArea.x && location.y >= displayArea.y;
        }
        if (ANCHOR_GLOBAL == anchor) {
            if (lowerRightX > displayLowerRightX) {
                location.x -= lowerRightX - displayLowerRightX;
            }
            if (lowerRightY > displayLowerRightY) {
                location.y -= lowerRightY - displayLowerRightY;
            }
            return location.x >= displayArea.x && location.y >= displayArea.y;
        }
        return false;
    }

    protected Anchor getNextFallbackAnchor(Anchor anchor) {
        if (anchor == null || this.fFallbackAnchors == null) {
            return null;
        }
        int i = 0;
        while (i < this.fFallbackAnchors.length) {
            if (this.fFallbackAnchors[i] == anchor) {
                return this.fFallbackAnchors[i + 1 == this.fFallbackAnchors.length ? 0 : i + 1];
            }
            ++i;
        }
        return null;
    }

    protected Point computeInformationControlLocation(Rectangle subjectArea, Point controlSize) {
        Rectangle subjectAreaDisplayRelative = Geometry.toDisplay((Control)this.fSubjectControl, (Rectangle)subjectArea);
        Anchor testAnchor = this.fAnchor;
        Rectangle bestBounds = null;
        int bestArea = Integer.MIN_VALUE;
        Anchor bestAnchor = null;
        do {
            Monitor monitor;
            Point upperLeft;
            if (this.updateLocation(upperLeft = this.computeLocation(subjectArea, controlSize, testAnchor), controlSize, (monitor = this.getClosestMonitor(subjectAreaDisplayRelative, testAnchor)).getClientArea(), testAnchor)) {
                return upperLeft;
            }
            Rectangle available = this.computeAvailableArea(subjectAreaDisplayRelative, monitor.getClientArea(), testAnchor);
            Rectangle proposed = new Rectangle(upperLeft.x, upperLeft.y, controlSize.x, controlSize.y);
            available.intersect(proposed);
            int area = available.width * available.height;
            if (area <= bestArea) continue;
            bestArea = area;
            bestBounds = available;
            bestAnchor = testAnchor;
        } while ((testAnchor = this.getNextFallbackAnchor(testAnchor)) != this.fAnchor && testAnchor != null);
        if (bestAnchor != ANCHOR_GLOBAL) {
            Geometry.set((Point)controlSize, (Point)Geometry.getSize((Rectangle)bestBounds));
        }
        return Geometry.getLocation((Rectangle)bestBounds);
    }

    private Monitor getClosestMonitor(Rectangle area, Anchor anchor) {
        Point center = ANCHOR_GLOBAL == anchor ? Geometry.centerPoint((Rectangle)area) : Geometry.centerPoint((Rectangle)Geometry.getExtrudedEdge((Rectangle)area, (int)0, (int)anchor.getSWTFlag()));
        return this.getClosestMonitor(this.fSubjectControl.getDisplay(), Geometry.createRectangle((Point)center, (Point)new Point(0, 0)));
    }

    private Monitor getClosestMonitor(Display display, Rectangle rectangle) {
        int closest = Integer.MAX_VALUE;
        Point toFind = Geometry.centerPoint((Rectangle)rectangle);
        Monitor[] monitors = display.getMonitors();
        Monitor result = monitors[0];
        int idx = 0;
        while (idx < monitors.length) {
            Monitor current = monitors[idx];
            Rectangle clientArea = current.getClientArea();
            if (clientArea.contains(toFind)) {
                return current;
            }
            int distance = Geometry.distanceSquared((Point)Geometry.centerPoint((Rectangle)clientArea), (Point)toFind);
            if (distance < closest) {
                closest = distance;
                result = current;
            }
            ++idx;
        }
        return result;
    }

    public void showInformation() {
        if (this.fEnabled) {
            this.doShowInformation();
        }
    }

    protected void doShowInformation() {
        this.fSubjectArea = null;
        this.fInformation = null;
        this.computeInformation();
    }

    protected void presentInformation() {
        boolean hasContents = false;
        if (this.fInformation instanceof String) {
            hasContents = ((String)this.fInformation).trim().length() > 0;
        } else {
            boolean bl = hasContents = this.fInformation != null;
        }
        if (this.fSubjectArea != null && hasContents) {
            this.internalShowInformationControl(this.fSubjectArea, this.fInformation);
        } else {
            this.hideInformationControl();
        }
    }

    private void internalShowInformationControl(Rectangle subjectArea, Object information) {
        if (this instanceof InformationControlReplacer) {
            ((InformationControlReplacer)this).showInformationControl(subjectArea, information);
            return;
        }
        IInformationControl informationControl = this.getInformationControl();
        if (informationControl != null) {
            IInformationControlExtension extension;
            Point sizeConstraints = this.computeSizeConstraints(this.fSubjectControl, this.fSubjectArea, informationControl);
            if (informationControl instanceof IInformationControlExtension3) {
                IInformationControlExtension3 iControl3 = (IInformationControlExtension3)((Object)informationControl);
                Rectangle trim = iControl3.computeTrim();
                sizeConstraints.x += trim.width;
                sizeConstraints.y += trim.height;
            }
            informationControl.setSizeConstraints(sizeConstraints.x, sizeConstraints.y);
            if (informationControl instanceof IInformationControlExtension2) {
                ((IInformationControlExtension2)((Object)informationControl)).setInput(information);
            } else {
                informationControl.setInformation(information.toString());
            }
            if (informationControl instanceof IInformationControlExtension && !(extension = (IInformationControlExtension)((Object)informationControl)).hasContents()) {
                return;
            }
            Point size = null;
            Point location = null;
            Rectangle bounds = this.restoreInformationControlBounds();
            if (bounds != null) {
                if (bounds.x > -1 && bounds.y > -1) {
                    location = Geometry.getLocation((Rectangle)bounds);
                }
                if (bounds.width > -1 && bounds.height > -1) {
                    size = Geometry.getSize((Rectangle)bounds);
                }
            }
            if (size == null) {
                size = informationControl.computeSizeHint();
            }
            if (this.fEnforceAsMinimalSize) {
                size = Geometry.max((Point)size, (Point)sizeConstraints);
            }
            if (this.fEnforceAsMaximalSize) {
                size = Geometry.min((Point)size, (Point)sizeConstraints);
            }
            if (location == null) {
                location = this.computeInformationControlLocation(subjectArea, size);
            }
            Rectangle controlBounds = Geometry.createRectangle((Point)location, (Point)size);
            this.cropToClosestMonitor(controlBounds);
            location = Geometry.getLocation((Rectangle)controlBounds);
            size = Geometry.getSize((Rectangle)controlBounds);
            informationControl.setLocation(location);
            informationControl.setSize(size.x, size.y);
            this.showInformationControl(subjectArea);
        }
    }

    void cropToClosestMonitor(Rectangle bounds) {
        Rectangle monitorBounds = this.getClosestMonitor(this.fSubjectControl.getDisplay(), bounds).getClientArea();
        bounds.intersect(monitorBounds);
    }

    protected void hideInformationControl() {
        if (this.fInformationControl != null) {
            this.storeInformationControlBounds();
            this.fInformationControl.setVisible(false);
            if (this.fInformationControlCloser != null) {
                this.fInformationControlCloser.stop();
            }
        }
        if (this.canClearDataOnHide()) {
            this.fSubjectArea = null;
            this.fInformation = null;
        }
    }

    protected boolean canClearDataOnHide() {
        return true;
    }

    protected void showInformationControl(Rectangle subjectArea) {
        this.fInformationControl.setVisible(true);
        if (this.fInformationControl == null) {
            return;
        }
        if (this.fTakesFocusWhenVisible) {
            this.fInformationControl.setFocus();
        }
        if (this.fInformationControlCloser != null) {
            this.fInformationControlCloser.start(subjectArea);
        }
    }

    void replaceInformationControl(boolean takeFocus) {
        if (this.fInformationControlReplacer != null && this.canReplace(this.fInformationControl)) {
            IInformationControlExtension3 iControl3 = (IInformationControlExtension3)((Object)this.fInformationControl);
            Rectangle b = iControl3.getBounds();
            Rectangle t = iControl3.computeTrim();
            Rectangle contentBounds = new Rectangle(b.x - t.x, b.y - t.y, b.width - t.width, b.height - t.height);
            IInformationControlCreator informationPresenterControlCreator = ((IInformationControlExtension5)((Object)this.fInformationControl)).getInformationPresenterControlCreator();
            this.fInformationControlReplacer.replaceInformationControl(informationPresenterControlCreator, contentBounds, this.fInformation, this.fSubjectArea, takeFocus);
        }
        this.hideInformationControl();
    }

    public void disposeInformationControl() {
        if (this.fInformationControl != null) {
            this.fInformationControl.dispose();
            this.handleInformationControlDisposed();
        }
    }

    public void dispose() {
        if (!this.fDisposed) {
            this.fDisposed = true;
            this.setEnabled(false);
            this.disposeInformationControl();
            if (this.fInformationControlReplacer != null) {
                this.fInformationControlReplacer.dispose();
                this.fInformationControlReplacer = null;
            }
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed() && this.fSubjectControlDisposeListener != null) {
                this.fSubjectControl.removeDisposeListener(this.fSubjectControlDisposeListener);
            }
            this.fSubjectControl = null;
            this.fSubjectControlDisposeListener = null;
            this.fIsCustomInformationControl = false;
            this.fCustomInformationControlCreator = null;
            this.fInformationControlCreator = null;
            this.fInformationControlCloser = null;
        }
    }

    protected void storeInformationControlBounds() {
        if (this.fDialogSettings == null || this.fInformationControl == null || !this.fIsRestoringLocation && !this.fIsRestoringSize) {
            return;
        }
        if (!(this.fInformationControl instanceof IInformationControlExtension3)) {
            throw new UnsupportedOperationException();
        }
        boolean controlRestoresSize = ((IInformationControlExtension3)((Object)this.fInformationControl)).restoresSize();
        boolean controlRestoresLocation = ((IInformationControlExtension3)((Object)this.fInformationControl)).restoresLocation();
        Rectangle bounds = ((IInformationControlExtension3)((Object)this.fInformationControl)).getBounds();
        if (bounds == null) {
            return;
        }
        if (this.fIsRestoringSize && controlRestoresSize) {
            this.fDialogSettings.put(STORE_SIZE_WIDTH, bounds.width);
            this.fDialogSettings.put(STORE_SIZE_HEIGHT, bounds.height);
        }
        if (this.fIsRestoringLocation && controlRestoresLocation) {
            this.fDialogSettings.put(STORE_LOCATION_X, bounds.x);
            this.fDialogSettings.put(STORE_LOCATION_Y, bounds.y);
        }
    }

    protected Rectangle restoreInformationControlBounds() {
        if (this.fDialogSettings == null || !this.fIsRestoringLocation && !this.fIsRestoringSize) {
            return null;
        }
        if (!(this.fInformationControl instanceof IInformationControlExtension3)) {
            throw new UnsupportedOperationException();
        }
        boolean controlRestoresSize = ((IInformationControlExtension3)((Object)this.fInformationControl)).restoresSize();
        boolean controlRestoresLocation = ((IInformationControlExtension3)((Object)this.fInformationControl)).restoresLocation();
        Rectangle bounds = new Rectangle(-1, -1, -1, -1);
        if (this.fIsRestoringSize && controlRestoresSize) {
            try {
                bounds.width = this.fDialogSettings.getInt(STORE_SIZE_WIDTH);
                bounds.height = this.fDialogSettings.getInt(STORE_SIZE_HEIGHT);
            }
            catch (NumberFormatException numberFormatException) {
                bounds.width = -1;
                bounds.height = -1;
            }
        }
        if (this.fIsRestoringLocation && controlRestoresLocation) {
            try {
                bounds.x = this.fDialogSettings.getInt(STORE_LOCATION_X);
                bounds.y = this.fDialogSettings.getInt(STORE_LOCATION_Y);
            }
            catch (NumberFormatException numberFormatException) {
                bounds.x = -1;
                bounds.y = -1;
            }
        }
        if (bounds.x == -1 && bounds.y == -1 && bounds.width == -1 && bounds.height == -1) {
            return null;
        }
        Rectangle maxBounds = null;
        if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
            maxBounds = this.fSubjectControl.getDisplay().getBounds();
        } else {
            Display display = Display.getCurrent();
            if (display == null) {
                display = Display.getDefault();
            }
            if (display != null && !display.isDisposed()) {
                maxBounds = display.getBounds();
            }
        }
        if (bounds.width > -1 && bounds.height > -1) {
            if (maxBounds != null) {
                bounds.width = Math.min(bounds.width, maxBounds.width);
                bounds.height = Math.min(bounds.height, maxBounds.height);
            }
            bounds.width = Math.max(bounds.width, 30);
            bounds.height = Math.max(bounds.height, 30);
        }
        if (bounds.x > -1 && bounds.y > -1 && maxBounds != null) {
            bounds.x = Math.max(bounds.x, maxBounds.x);
            bounds.y = Math.max(bounds.y, maxBounds.y);
            if (bounds.width > -1 && bounds.height > -1) {
                bounds.x = Math.min(bounds.x, maxBounds.width - bounds.width);
                bounds.y = Math.min(bounds.y, maxBounds.height - bounds.height);
            }
        }
        return bounds;
    }

    public InternalAccessor getInternalAccessor() {
        return new MyInternalAccessor();
    }

    public static final class Anchor {
        private final int fFlag;

        private Anchor(int flag) {
            this.fFlag = flag;
        }

        int getSWTFlag() {
            return this.fFlag;
        }

        public String toString() {
            switch (this.fFlag) {
                case 1024: {
                    return "BOTTOM";
                }
                case 128: {
                    return "TOP";
                }
                case 16384: {
                    return "LEFT";
                }
                case 131072: {
                    return "RIGHT";
                }
                case 0x1000000: {
                    return "CENTER";
                }
            }
            return Integer.toHexString(this.fFlag);
        }
    }

    public static interface IInformationControlCloser {
        public void setSubjectControl(Control var1);

        public void setInformationControl(IInformationControl var1);

        public void start(Rectangle var1);

        public void stop();
    }

    class MyInternalAccessor
    extends InternalAccessor {
        MyInternalAccessor() {
        }

        public IInformationControl getCurrentInformationControl() {
            return AbstractInformationControlManager.this.getCurrentInformationControl();
        }

        public void setInformationControlReplacer(InformationControlReplacer replacer) {
            AbstractInformationControlManager.this.setInformationControlReplacer(replacer);
        }

        public InformationControlReplacer getInformationControlReplacer() {
            return AbstractInformationControlManager.this.getInformationControlReplacer();
        }

        public boolean canReplace(IInformationControl control) {
            return AbstractInformationControlManager.this.canReplace(control);
        }

        public boolean isReplaceInProgress() {
            return AbstractInformationControlManager.this.isReplaceInProgress();
        }

        public void replaceInformationControl(boolean takeFocus) {
            AbstractInformationControlManager.this.replaceInformationControl(takeFocus);
        }

        public void cropToClosestMonitor(Rectangle bounds) {
            AbstractInformationControlManager.this.cropToClosestMonitor(bounds);
        }

        public void setHoverEnrichMode(ITextViewerExtension8.EnrichMode mode) {
            throw new UnsupportedOperationException("only implemented in AbstractHoverInformationControlManager");
        }

        public boolean getAllowMouseExit() {
            throw new UnsupportedOperationException("only implemented in AnnotationBarHoverManager");
        }
    }
}

