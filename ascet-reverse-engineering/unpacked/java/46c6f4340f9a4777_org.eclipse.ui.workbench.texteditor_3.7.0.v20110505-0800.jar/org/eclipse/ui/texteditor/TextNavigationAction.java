/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IMenuCreator
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Event;

public class TextNavigationAction
extends Action {
    private StyledText fTextWidget;
    private int fAction;

    public TextNavigationAction(StyledText textWidget, int action) {
        this.fTextWidget = textWidget;
        this.fAction = action;
    }

    protected StyledText getTextWidget() {
        return this.fTextWidget;
    }

    public void run() {
        Point selection = this.fTextWidget.getSelection();
        this.fTextWidget.invokeAction(this.fAction);
        this.fireSelectionChanged(selection);
    }

    private void doFireSelectionChanged(Point selection) {
        Event event = new Event();
        event.x = selection.x;
        event.y = selection.y;
        this.fTextWidget.notifyListeners(13, event);
    }

    protected void fireSelectionChanged() {
        this.fireSelectionChanged(null);
    }

    protected void fireSelectionChanged(Point oldSelection) {
        Point selection = this.fTextWidget.getSelection();
        if (oldSelection == null || !selection.equals((Object)oldSelection)) {
            this.doFireSelectionChanged(selection);
        }
    }

    public void runWithEvent(Event event) {
        this.run();
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
    }

    public int getAccelerator() {
        return 0;
    }

    public String getDescription() {
        return null;
    }

    public ImageDescriptor getDisabledImageDescriptor() {
        return null;
    }

    public HelpListener getHelpListener() {
        return null;
    }

    public ImageDescriptor getHoverImageDescriptor() {
        return null;
    }

    public ImageDescriptor getImageDescriptor() {
        return null;
    }

    public IMenuCreator getMenuCreator() {
        return null;
    }

    public int getStyle() {
        return 0;
    }

    public String getText() {
        return null;
    }

    public String getToolTipText() {
        return null;
    }

    public boolean isChecked() {
        return false;
    }

    public boolean isEnabled() {
        return true;
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
    }

    public void setAccelerator(int keycode) {
    }

    public void setChecked(boolean checked) {
    }

    public void setDescription(String text) {
    }

    public void setDisabledImageDescriptor(ImageDescriptor newImage) {
    }

    public void setEnabled(boolean enabled) {
    }

    public void setHelpListener(HelpListener listener) {
    }

    public void setHoverImageDescriptor(ImageDescriptor newImage) {
    }

    public void setImageDescriptor(ImageDescriptor newImage) {
    }

    public void setMenuCreator(IMenuCreator creator) {
    }

    public void setText(String text) {
    }

    public void setToolTipText(String text) {
    }
}

