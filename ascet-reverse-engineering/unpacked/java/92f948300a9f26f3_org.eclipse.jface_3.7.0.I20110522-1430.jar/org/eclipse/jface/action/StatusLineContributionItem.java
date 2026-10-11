/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Label
 */
package org.eclipse.jface.action;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.LegacyActionTools;
import org.eclipse.jface.action.StatusLineLayoutData;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;

public class StatusLineContributionItem
extends ContributionItem {
    private static final int DEFAULT_CHAR_WIDTH = 40;
    public static final int CALC_TRUE_WIDTH = -1;
    private int charWidth;
    private CLabel label;
    private Composite statusLine = null;
    private String text = "";
    private int widthHint = -1;
    private int heightHint = -1;

    public StatusLineContributionItem(String id) {
        this(id, 40);
    }

    public StatusLineContributionItem(String id, int charWidth) {
        super(id);
        this.charWidth = charWidth;
        this.setVisible(false);
    }

    public void fill(Composite parent) {
        this.statusLine = parent;
        Label sep = new Label(parent, 2);
        this.label = new CLabel(this.statusLine, 32);
        this.label.setText(this.text);
        if (this.charWidth == -1) {
            Point preferredSize = this.label.computeSize(-1, -1);
            this.widthHint = preferredSize.x;
            this.heightHint = preferredSize.y;
        } else if (this.widthHint < 0) {
            GC gc = new GC((Drawable)this.statusLine);
            gc.setFont(this.statusLine.getFont());
            FontMetrics fm = gc.getFontMetrics();
            this.widthHint = fm.getAverageCharWidth() * this.charWidth;
            this.heightHint = fm.getHeight();
            gc.dispose();
        }
        StatusLineLayoutData data = new StatusLineLayoutData();
        data.widthHint = this.widthHint;
        this.label.setLayoutData((Object)data);
        data = new StatusLineLayoutData();
        data.heightHint = this.heightHint;
        sep.setLayoutData((Object)data);
    }

    public Point getDisplayLocation() {
        if (this.label != null && this.statusLine != null) {
            return this.statusLine.toDisplay(this.label.getLocation());
        }
        return null;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String text) {
        Assert.isNotNull((Object)text);
        this.text = LegacyActionTools.escapeMnemonics(text);
        if (this.label != null && !this.label.isDisposed()) {
            this.label.setText(this.text);
        }
        if (this.text.length() == 0) {
            if (this.isVisible()) {
                this.setVisible(false);
                IContributionManager contributionManager = this.getParent();
                if (contributionManager != null) {
                    contributionManager.update(true);
                }
            }
        } else if (!this.isVisible() || this.charWidth == -1) {
            this.setVisible(true);
            IContributionManager contributionManager = this.getParent();
            if (contributionManager != null) {
                contributionManager.update(true);
            }
        }
    }
}

