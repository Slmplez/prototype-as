/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IFindReplaceTarget
 *  org.eclipse.jface.text.IFindReplaceTargetExtension
 *  org.eclipse.jface.text.IFindReplaceTargetExtension3
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.text.IFindReplaceTarget;
import org.eclipse.jface.text.IFindReplaceTargetExtension;
import org.eclipse.jface.text.IFindReplaceTargetExtension3;
import org.eclipse.jface.text.IRegion;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.ui.texteditor.AbstractTextEditor;
import org.eclipse.ui.texteditor.IFindReplaceTargetExtension2;

class FindReplaceTarget
implements IFindReplaceTarget,
IFindReplaceTargetExtension,
IFindReplaceTargetExtension2,
IFindReplaceTargetExtension3 {
    private AbstractTextEditor fEditor;
    private IFindReplaceTarget fTarget;

    public FindReplaceTarget(AbstractTextEditor editor, IFindReplaceTarget target) {
        this.fEditor = editor;
        this.fTarget = target;
    }

    private IFindReplaceTarget getTarget() {
        return this.fTarget;
    }

    private IFindReplaceTargetExtension getExtension() {
        if (this.fTarget instanceof IFindReplaceTargetExtension) {
            return (IFindReplaceTargetExtension)this.fTarget;
        }
        return null;
    }

    public boolean canPerformFind() {
        if (this.getTarget() != null) {
            return this.getTarget().canPerformFind();
        }
        return false;
    }

    public int findAndSelect(int offset, String findString, boolean searchForward, boolean caseSensitive, boolean wholeWord) {
        if (this.getTarget() != null) {
            return this.getTarget().findAndSelect(offset, findString, searchForward, caseSensitive, wholeWord);
        }
        return -1;
    }

    public int findAndSelect(int offset, String findString, boolean searchForward, boolean caseSensitive, boolean wholeWord, boolean regExSearch) {
        if (this.getTarget() instanceof IFindReplaceTargetExtension3) {
            return ((IFindReplaceTargetExtension3)this.getTarget()).findAndSelect(offset, findString, searchForward, caseSensitive, wholeWord, regExSearch);
        }
        if (!regExSearch && this.getTarget() != null) {
            return this.getTarget().findAndSelect(offset, findString, searchForward, caseSensitive, wholeWord);
        }
        return -1;
    }

    public Point getSelection() {
        if (this.getTarget() != null) {
            return this.getTarget().getSelection();
        }
        return new Point(-1, -1);
    }

    public String getSelectionText() {
        if (this.getTarget() != null) {
            return this.getTarget().getSelectionText();
        }
        return "";
    }

    public boolean isEditable() {
        if (this.getTarget() != null) {
            if (this.getTarget().isEditable()) {
                return true;
            }
            return this.fEditor.isEditorInputModifiable();
        }
        return false;
    }

    public void replaceSelection(String text) {
        if (this.getTarget() != null) {
            this.getTarget().replaceSelection(text);
        }
    }

    public void replaceSelection(String text, boolean regExReplace) {
        if (this.getTarget() instanceof IFindReplaceTargetExtension3) {
            ((IFindReplaceTargetExtension3)this.getTarget()).replaceSelection(text, regExReplace);
            return;
        }
        if (!regExReplace && this.getTarget() != null) {
            this.getTarget().replaceSelection(text);
        }
    }

    public void beginSession() {
        if (this.getExtension() != null) {
            this.getExtension().beginSession();
        }
    }

    public void endSession() {
        if (this.getExtension() != null) {
            this.getExtension().endSession();
        }
    }

    public IRegion getScope() {
        if (this.getExtension() != null) {
            return this.getExtension().getScope();
        }
        return null;
    }

    public void setScope(IRegion scope) {
        if (this.getExtension() != null) {
            this.getExtension().setScope(scope);
        }
    }

    public Point getLineSelection() {
        if (this.getExtension() != null) {
            return this.getExtension().getLineSelection();
        }
        return null;
    }

    public void setSelection(int offset, int length) {
        if (this.getExtension() != null) {
            this.getExtension().setSelection(offset, length);
        }
    }

    public void setScopeHighlightColor(Color color) {
        if (this.getExtension() != null) {
            this.getExtension().setScopeHighlightColor(color);
        }
    }

    public void setReplaceAllMode(boolean replaceAll) {
        if (this.getExtension() != null) {
            this.getExtension().setReplaceAllMode(replaceAll);
        }
    }

    public boolean validateTargetState() {
        return this.fEditor.validateEditorInputState();
    }
}

