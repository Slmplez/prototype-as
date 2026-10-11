/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.internal.text;

import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.AbstractReusableInformationControlCreator;
import org.eclipse.jface.text.DefaultInformationControl;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IInformationControlExtension2;
import org.eclipse.jface.text.IInformationControlExtension3;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Shell;

public class InformationControlReplacer
extends AbstractInformationControlManager {
    private static final int MIN_WIDTH = 80;
    private static final int MIN_HEIGHT = 50;
    private boolean fIsReplacing;
    private Object fReplacableInformation;
    private boolean fDelayedInformationSet;
    private Rectangle fReplaceableArea;
    private Rectangle fContentBounds;

    public InformationControlReplacer(IInformationControlCreator creator) {
        super(creator);
        this.takesFocusWhenVisible(false);
    }

    public void replaceInformationControl(IInformationControlCreator informationPresenterControlCreator, Rectangle contentBounds, Object information, Rectangle subjectArea, boolean takeFocus) {
        try {
            this.fIsReplacing = true;
            if (!this.fDelayedInformationSet) {
                this.fReplacableInformation = information;
            } else {
                takeFocus = true;
            }
            this.fContentBounds = contentBounds;
            this.fReplaceableArea = subjectArea;
            this.setCustomInformationControlCreator(informationPresenterControlCreator);
            this.takesFocusWhenVisible(takeFocus);
            this.showInformation();
        }
        finally {
            this.fIsReplacing = false;
            this.fReplacableInformation = null;
            this.fDelayedInformationSet = false;
            this.fReplaceableArea = null;
            this.setCustomInformationControlCreator(null);
        }
    }

    protected void computeInformation() {
        if (this.fIsReplacing && this.fReplacableInformation != null) {
            this.setInformation(this.fReplacableInformation, this.fReplaceableArea);
            return;
        }
        if (DEBUG) {
            System.out.println("InformationControlReplacer: no active replaceable");
        }
    }

    public void showInformationControl(Rectangle subjectArea, Object information) {
        IInformationControl informationControl = this.getInformationControl();
        Rectangle controlBounds = this.fContentBounds;
        if (informationControl instanceof IInformationControlExtension3) {
            IInformationControlExtension3 iControl3 = (IInformationControlExtension3)((Object)informationControl);
            Rectangle trim = iControl3.computeTrim();
            controlBounds = Geometry.add((Rectangle)controlBounds, (Rectangle)trim);
            controlBounds.width = Math.max(controlBounds.width, 80);
            controlBounds.height = Math.max(controlBounds.height, 50);
            this.getInternalAccessor().cropToClosestMonitor(controlBounds);
        }
        Point location = Geometry.getLocation((Rectangle)controlBounds);
        Point size = Geometry.getSize((Rectangle)controlBounds);
        informationControl.setSizeConstraints(size.x, size.y);
        if (informationControl instanceof IInformationControlExtension2) {
            ((IInformationControlExtension2)((Object)informationControl)).setInput(information);
        } else {
            informationControl.setInformation(information.toString());
        }
        informationControl.setLocation(location);
        informationControl.setSize(size.x, size.y);
        this.showInformationControl(subjectArea);
    }

    public void hideInformationControl() {
        super.hideInformationControl();
    }

    public void setDelayedInput(Object input) {
        this.fReplacableInformation = input;
        if (!this.isReplacing()) {
            this.fDelayedInformationSet = true;
        } else if (this.getCurrentInformationControl2() instanceof IInformationControlExtension2) {
            ((IInformationControlExtension2)((Object)this.getCurrentInformationControl2())).setInput(input);
        } else if (this.getCurrentInformationControl2() != null) {
            this.getCurrentInformationControl2().setInformation(input.toString());
        }
    }

    public boolean isReplacing() {
        return this.fIsReplacing;
    }

    public IInformationControl getCurrentInformationControl2() {
        return this.getInternalAccessor().getCurrentInformationControl();
    }

    public int getKeepUpMargin() {
        return 15;
    }

    protected static class DefaultInformationControlCreator
    extends AbstractReusableInformationControlCreator {
        protected DefaultInformationControlCreator() {
        }

        public IInformationControl doCreateInformationControl(Shell shell) {
            return new DefaultInformationControl(shell, true);
        }
    }
}

