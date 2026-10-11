/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.INavigationLocation;
import org.eclipse.ui.INavigationLocationProvider;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.internal.NavigationHistoryEditorInfo;

public class NavigationHistoryEntry {
    private IWorkbenchPage page;
    NavigationHistoryEditorInfo editorInfo;
    String historyText;
    INavigationLocation location;
    private IMemento locationMemento;

    public NavigationHistoryEntry(NavigationHistoryEditorInfo editorInfo, IWorkbenchPage page, IEditorPart part, INavigationLocation location) {
        this.editorInfo = editorInfo;
        this.page = page;
        this.location = location;
        if (location != null) {
            this.historyText = location.getText();
        }
        if ((this.historyText == null || this.historyText.length() == 0) && part != null) {
            this.historyText = part.getTitle();
        }
    }

    void restoreLocation() {
        if (this.editorInfo.editorInput != null && this.editorInfo.editorID != null) {
            try {
                IEditorPart editor = this.page.openEditor(this.editorInfo.editorInput, this.editorInfo.editorID, true);
                if (this.location == null && editor instanceof INavigationLocationProvider) {
                    this.location = ((INavigationLocationProvider)((Object)editor)).createEmptyNavigationLocation();
                }
                if (this.location != null) {
                    if (this.locationMemento != null) {
                        this.location.setInput(this.editorInfo.editorInput);
                        this.location.restoreState(this.locationMemento);
                        this.locationMemento = null;
                    }
                    this.location.restoreLocation();
                }
            }
            catch (PartInitException partInitException) {}
        }
    }

    String getHistoryText() {
        if (this.location != null) {
            String text = this.location.getText();
            if (text == null || text.equals("")) {
                text = this.historyText;
            } else {
                this.historyText = text;
            }
            return text;
        }
        return this.historyText;
    }

    boolean handlePartClosed() {
        if (!this.editorInfo.isPersistable()) {
            return false;
        }
        if (this.location != null) {
            this.locationMemento = XMLMemento.createWriteRoot("position");
            this.location.saveState(this.locationMemento);
            this.location.releaseState();
        }
        return true;
    }

    void saveState(IMemento mem, ArrayList entries) {
        mem.putString("historyLabel", this.getHistoryText());
        if (this.locationMemento != null) {
            IMemento childMem = mem.createChild("position");
            childMem.putMemento(this.locationMemento);
        } else if (this.location != null) {
            IMemento childMem = mem.createChild("position");
            this.location.saveState(childMem);
        }
    }

    void restoreState(IMemento mem) {
        this.historyText = mem.getString("historyLabel");
        this.locationMemento = mem.getChild("position");
    }

    public String toString() {
        return "Input<" + this.editorInfo.editorInput + "> Details<" + this.location + ">";
    }

    void dispose() {
        if (this.location != null) {
            this.location.dispose();
        }
        this.editorInfo = null;
    }

    boolean mergeInto(NavigationHistoryEntry currentEntry) {
        if (this.editorInfo.editorInput != null && this.editorInfo.editorInput.equals(currentEntry.editorInfo.editorInput)) {
            if (this.location != null) {
                if (currentEntry.location == null) {
                    currentEntry.location = this.location;
                    this.location = null;
                    return true;
                }
                return this.location.mergeInto(currentEntry.location);
            }
            if (currentEntry.location == null) {
                return true;
            }
        }
        return false;
    }
}

