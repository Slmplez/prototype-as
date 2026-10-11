/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.jface.text;

import org.eclipse.jface.text.IAutoIndentStrategy;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IEventConsumer;
import org.eclipse.jface.text.IFindReplaceTarget;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextDoubleClickStrategy;
import org.eclipse.jface.text.ITextHover;
import org.eclipse.jface.text.ITextInputListener;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextOperationTarget;
import org.eclipse.jface.text.IUndoManager;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;

public interface ITextViewer {
    public StyledText getTextWidget();

    public void setUndoManager(IUndoManager var1);

    public void setTextDoubleClickStrategy(ITextDoubleClickStrategy var1, String var2);

    public void setAutoIndentStrategy(IAutoIndentStrategy var1, String var2);

    public void setTextHover(ITextHover var1, String var2);

    public void activatePlugins();

    public void resetPlugins();

    public void addViewportListener(IViewportListener var1);

    public void removeViewportListener(IViewportListener var1);

    public void addTextListener(ITextListener var1);

    public void removeTextListener(ITextListener var1);

    public void addTextInputListener(ITextInputListener var1);

    public void removeTextInputListener(ITextInputListener var1);

    public void setDocument(IDocument var1);

    public IDocument getDocument();

    public void setEventConsumer(IEventConsumer var1);

    public void setEditable(boolean var1);

    public boolean isEditable();

    public void setDocument(IDocument var1, int var2, int var3);

    public void setVisibleRegion(int var1, int var2);

    public void resetVisibleRegion();

    public IRegion getVisibleRegion();

    public boolean overlapsWithVisibleRegion(int var1, int var2);

    public void changeTextPresentation(TextPresentation var1, boolean var2);

    public void invalidateTextPresentation();

    public void setTextColor(Color var1);

    public void setTextColor(Color var1, int var2, int var3, boolean var4);

    public ITextOperationTarget getTextOperationTarget();

    public IFindReplaceTarget getFindReplaceTarget();

    public void setDefaultPrefixes(String[] var1, String var2);

    public void setIndentPrefixes(String[] var1, String var2);

    public void setSelectedRange(int var1, int var2);

    public Point getSelectedRange();

    public ISelectionProvider getSelectionProvider();

    public void revealRange(int var1, int var2);

    public void setTopIndex(int var1);

    public int getTopIndex();

    public int getTopIndexStartOffset();

    public int getBottomIndex();

    public int getBottomIndexEndOffset();

    public int getTopInset();
}

