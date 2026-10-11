/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.revisions.RevisionInformation
 *  org.eclipse.jface.text.source.Annotation
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.text.revisions.RevisionInformation;
import org.eclipse.jface.text.source.Annotation;

public interface ITextEditorExtension4 {
    public Annotation gotoAnnotation(boolean var1);

    public void showRevisionInformation(RevisionInformation var1, String var2);
}

