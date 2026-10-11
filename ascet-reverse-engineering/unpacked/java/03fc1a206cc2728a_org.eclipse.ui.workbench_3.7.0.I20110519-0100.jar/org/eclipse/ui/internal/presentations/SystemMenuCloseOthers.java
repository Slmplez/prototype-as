/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 */
package org.eclipse.ui.internal.presentations;

import java.util.Arrays;
import java.util.LinkedList;
import org.eclipse.jface.action.Action;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.presentations.ISelfUpdatingAction;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IStackPresentationSite;

public class SystemMenuCloseOthers
extends Action
implements ISelfUpdatingAction {
    private IStackPresentationSite stackPresentation;
    private IPresentablePart current;

    public SystemMenuCloseOthers(IStackPresentationSite stackPresentation) {
        this.stackPresentation = stackPresentation;
        this.setText(WorkbenchMessages.PartPane_closeOthers);
    }

    public void dispose() {
        this.stackPresentation = null;
    }

    public void run() {
        LinkedList<IPresentablePart> others = new LinkedList<IPresentablePart>();
        others.addAll(Arrays.asList(this.stackPresentation.getPartList()));
        others.remove(this.current);
        this.stackPresentation.close(others.toArray(new IPresentablePart[others.size()]));
    }

    public void update() {
        this.setTarget(this.stackPresentation.getSelectedPart());
    }

    public boolean shouldBeVisible() {
        return true;
    }

    public void setTarget(IPresentablePart current) {
        this.current = current;
        this.setEnabled(current != null && this.stackPresentation.getPartList().length > 1);
    }
}

