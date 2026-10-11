/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.text.IPainter
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.ITextViewerExtension2
 *  org.eclipse.jface.text.WhitespaceCharacterPainter
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.text.IPainter;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension2;
import org.eclipse.jface.text.WhitespaceCharacterPainter;
import org.eclipse.ui.texteditor.AbstractTextEditor;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class ShowWhitespaceCharactersAction
extends TextEditorAction {
    private IPreferenceStore fStore;
    private IPainter fWhitespaceCharPainter;
    private boolean fShowLeadingSpaces;
    private boolean fShowEnclosedSpaces;
    private boolean fShowTrailingSpaces;
    private boolean fShowLeadingIdeographicSpaces;
    private boolean fShowEnclosedIdeographicSpaces;
    private boolean fShowTrailingIdeographicSpace;
    private boolean fShowLeadingTabs;
    private boolean fShowEnclosedTabs;
    private boolean fShowTrailingTabs;
    private boolean fShowCarriageReturn;
    private boolean fShowLineFeed;
    private int fAlpha;

    public ShowWhitespaceCharactersAction(ResourceBundle resourceBundle, String prefix, ITextEditor editor, IPreferenceStore store) {
        super(resourceBundle, prefix, editor, 2);
        this.fStore = store;
        this.synchronizeWithPreference();
    }

    public void setPreferenceStore(IPreferenceStore store) {
        this.fStore = store;
        this.synchronizeWithPreference();
    }

    public void run() {
        this.togglePainterState(this.isChecked());
        if (this.fStore != null) {
            this.fStore.setValue("showWhitespaceCharacters", this.isChecked());
        }
    }

    public void update() {
        this.setEnabled(this.getTextViewer() instanceof ITextViewerExtension2);
        this.synchronizeWithPreference();
    }

    private void installPainter() {
        Assert.isTrue((this.fWhitespaceCharPainter == null ? 1 : 0) != 0);
        ITextViewer viewer = this.getTextViewer();
        if (viewer instanceof ITextViewerExtension2) {
            this.fWhitespaceCharPainter = this.fStore != null ? new WhitespaceCharacterPainter(viewer, this.fShowLeadingSpaces, this.fShowEnclosedSpaces, this.fShowTrailingSpaces, this.fShowLeadingIdeographicSpaces, this.fShowEnclosedIdeographicSpaces, this.fShowTrailingIdeographicSpace, this.fShowLeadingTabs, this.fShowEnclosedTabs, this.fShowTrailingTabs, this.fShowCarriageReturn, this.fShowLineFeed, this.fAlpha) : new WhitespaceCharacterPainter(viewer);
            ((ITextViewerExtension2)viewer).addPainter(this.fWhitespaceCharPainter);
        }
    }

    private void uninstallPainter() {
        if (this.fWhitespaceCharPainter == null) {
            return;
        }
        ITextViewer viewer = this.getTextViewer();
        if (viewer instanceof ITextViewerExtension2) {
            ((ITextViewerExtension2)viewer).removePainter(this.fWhitespaceCharPainter);
        }
        this.fWhitespaceCharPainter.deactivate(true);
        this.fWhitespaceCharPainter = null;
    }

    private ITextViewer getTextViewer() {
        ITextEditor editor = this.getTextEditor();
        if (editor instanceof AbstractTextEditor) {
            return ((AbstractTextEditor)editor).getSourceViewer();
        }
        return null;
    }

    private void synchronizeWithPreference() {
        boolean checked = false;
        if (this.fStore != null) {
            checked = this.fStore.getBoolean("showWhitespaceCharacters");
            this.fShowLeadingSpaces = this.fStore.getBoolean("showLeadingSpaces");
            this.fShowEnclosedSpaces = this.fStore.getBoolean("showEnclosedSpaces");
            this.fShowTrailingSpaces = this.fStore.getBoolean("showTrailingSpaces");
            this.fShowLeadingIdeographicSpaces = this.fStore.getBoolean("showLeadingIdeographicSpaces");
            this.fShowEnclosedIdeographicSpaces = this.fStore.getBoolean("showEnclosedIdeographicSpaces");
            this.fShowTrailingIdeographicSpace = this.fStore.getBoolean("showTrailingIdeographicSpaces");
            this.fShowLeadingTabs = this.fStore.getBoolean("showLeadingTabs");
            this.fShowEnclosedTabs = this.fStore.getBoolean("showEnclosedTabs");
            this.fShowTrailingTabs = this.fStore.getBoolean("showTrailingTabs");
            this.fShowCarriageReturn = this.fStore.getBoolean("showCarriageReturn");
            this.fShowLineFeed = this.fStore.getBoolean("showLineFeed");
            this.fAlpha = this.fStore.getInt("whitespaceCharacterAlphaValue");
        }
        if (checked != this.isChecked()) {
            this.setChecked(checked);
            this.togglePainterState(checked);
        } else if (checked) {
            this.uninstallPainter();
            this.installPainter();
        }
    }

    private void togglePainterState(boolean newState) {
        if (newState) {
            this.installPainter();
        } else {
            this.uninstallPainter();
        }
    }
}

