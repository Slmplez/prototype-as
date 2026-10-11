/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 */
package org.eclipse.ui.texteditor.spelling;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.ui.texteditor.spelling.ISpellingProblemCollector;
import org.eclipse.ui.texteditor.spelling.SpellingContext;

public interface ISpellingEngine {
    public void check(IDocument var1, IRegion[] var2, SpellingContext var3, ISpellingProblemCollector var4, IProgressMonitor var5);
}

