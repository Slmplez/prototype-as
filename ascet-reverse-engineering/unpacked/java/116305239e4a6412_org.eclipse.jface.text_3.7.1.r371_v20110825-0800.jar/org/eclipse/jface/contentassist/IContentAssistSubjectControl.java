/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.contentassist;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IEventConsumer;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;

public interface IContentAssistSubjectControl {
    public Control getControl();

    public int getLineHeight();

    public int getCaretOffset();

    public Point getLocationAtOffset(int var1);

    public String getLineDelimiter();

    public Point getWidgetSelectionRange();

    public Point getSelectedRange();

    public void setSelectedRange(int var1, int var2);

    public void revealRange(int var1, int var2);

    public IDocument getDocument();

    public boolean appendVerifyKeyListener(VerifyKeyListener var1);

    public boolean prependVerifyKeyListener(VerifyKeyListener var1);

    public void removeVerifyKeyListener(VerifyKeyListener var1);

    public boolean supportsVerifyKeyListener();

    public void addKeyListener(KeyListener var1);

    public void removeKeyListener(KeyListener var1);

    public void setEventConsumer(IEventConsumer var1);

    public void removeSelectionListener(SelectionListener var1);

    public boolean addSelectionListener(SelectionListener var1);
}

